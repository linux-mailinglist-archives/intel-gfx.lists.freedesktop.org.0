Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4466B403313
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Sep 2021 05:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8A2F6E107;
	Wed,  8 Sep 2021 03:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A12DC6E0F7;
 Wed,  8 Sep 2021 03:47:43 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 92D48AA0EA;
 Wed,  8 Sep 2021 03:47:43 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3877941341571440811=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 08 Sep 2021 03:47:43 -0000
Message-ID: <163107286356.22224.9874467199796474034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210904003544.2422282-1-matthew.d.roper@intel.com>
In-Reply-To: <20210904003544.2422282-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_MOCS_tables_for_XeHP_SDV_and_DG2_=28rev3=29?=
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

--===============3877941341571440811==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Add MOCS tables for XeHP SDV and DG2 (rev3)
URL   : https://patchwork.freedesktop.org/series/94344/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10557_full -> Patchwork_20977_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20977_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_eio@hibernate:
    - {shard-rkl}:        [PASS][1] -> [FAIL][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-6/igt@gem_eio@hibernate.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-2/igt@gem_eio@hibernate.html

  
Known issues
------------

  Here are the changes found in Patchwork_20977_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][3] ([i915#3002]) +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@gem_create@create-massive.html
    - shard-tglb:         NOTRUN -> [DMESG-WARN][4] ([i915#3002])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +6 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-tglb:         [PASS][6] -> [TIMEOUT][7] ([i915#3063]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb5/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-iclb:         [PASS][8] -> [TIMEOUT][9] ([i915#3070])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb1/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_eio@reset-stress:
    - shard-snb:          NOTRUN -> [TIMEOUT][10] ([i915#3427])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-tglb:         NOTRUN -> [FAIL][15] ([i915#2842])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2190])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl2/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#307])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][19] ([i915#2658])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@coherency-sync:
    - shard-tglb:         NOTRUN -> [SKIP][20] ([fdo#110542])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@gem_userptr_blits@coherency-sync.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][22] ([i915#3002])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@unsync-unmap-after-close:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#3297])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-after-close.html

  * igt@gem_workarounds@suspend-resume:
    - shard-tglb:         [PASS][24] -> [INCOMPLETE][25] ([i915#456])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb3/igt@gem_workarounds@suspend-resume.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb7/igt@gem_workarounds@suspend-resume.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-apl:          [PASS][26] -> [DMESG-WARN][27] ([i915#180])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@gem_workarounds@suspend-resume-context.html

  * igt@gen9_exec_parse@bb-chained:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#2856])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@gen9_exec_parse@bb-chained.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#2856]) +2 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][30] -> [FAIL][31] ([i915#454])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([fdo#111644] / [i915#1397] / [i915#2411])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-iclb:         [PASS][34] -> [DMESG-WARN][35] ([i915#3621])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3777]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111615])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +11 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_cdclk@mode-transition:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +299 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_cdclk@mode-transition.html

  * igt@kms_chamelium@hdmi-crc-fast:
    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_chamelium@hdmi-crc-fast.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-5:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-d-ctm-max:
    - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109284] / [fdo#111827]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-max.html

  * igt@kms_content_protection@atomic:
    - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#111828])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-lic-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([i915#3116]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_content_protection@dp-mst-lic-type-1.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([i915#3116])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][51] ([i915#3319])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3359])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
    - shard-tglb:         NOTRUN -> [SKIP][53] ([fdo#111825]) +14 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2346] / [i915#533])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-move:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +38 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-move.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109274])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate@b-edp1:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#2122])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109280])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:
    - shard-tglb:         [PASS][61] -> [INCOMPLETE][62] ([i915#3433])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533]) +2 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-tglb:         NOTRUN -> [SKIP][67] ([i915#3536])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:
    - shard-tglb:         NOTRUN -> [SKIP][68] ([fdo#112054])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2733])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#658]) +6 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#2920]) +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-tglb:         NOTRUN -> [FAIL][73] ([i915#132] / [i915#3467]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_psr@psr2_sprite_blt:
    - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][76] ([IGT#2])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-snb:          NOTRUN -> [SKIP][77] ([fdo#109271]) +488 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_vrr@flip-suspend:
    - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#109502])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_vrr@flip-suspend.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([i915#2530]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb2/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][80] -> [FAIL][81] ([i915#1542])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl2/igt@perf@polling-parameterized.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl6/igt@perf@polling-parameterized.html

  * igt@runner@aborted:
    - shard-snb:          NOTRUN -> ([FAIL][82], [FAIL][83]) ([i915#3002])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@runner@aborted.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@runner@aborted.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#2994]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@sysfs_clients@fair-7.html

  
#### Possible fixes ####

  * igt@fbdev@nullptr:
    - {shard-rkl}:        [SKIP][85] ([i915#2582]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@fbdev@nullptr.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@fbdev@nullptr.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl}:        [FAIL][87] ([i915#2842]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [FAIL][89] ([i915#2842]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][91] ([i915#2849]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - {shard-rkl}:        [INCOMPLETE][93] ([i915#3189]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][95] ([i915#2190]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_backlight@bad-brightness:
    - {shard-rkl}:        [SKIP][97] ([i915#3012]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_backlight@fade_with_suspend:
    - shard-tglb:         [INCOMPLETE][99] ([i915#456]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@i915_pm_backlight@fade_with_suspend.html

  * igt@i915_pm_rpm@gem-execbuf:
    - {shard-rkl}:        [SKIP][101] ([fdo#109308]) -> [PASS][102] +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - {shard-rkl}:        [SKIP][103] ([i915#1397]) -> [PASS][104] +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][105] ([i915#2521]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - {shard-rkl}:        [SKIP][107] ([i915#3638]) -> [PASS][108] +4 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
    - shard-glk:          [DMESG-WARN][109] ([i915#118] / [i915#95]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - {shard-rkl}:        [SKIP][111] ([i915#3721]) -> [PASS][112] +9 similar issues
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-90:
    - {shard-rkl}:        [SKIP][113] ([fdo#111614]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html

  * igt@kms_concurrent@pipe-a:
    - {shard-rkl}:        [SKIP][115] ([i915#1845] / [i915#4070]) -> [PASS][116] +2 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_concurrent@pipe-a.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_concurrent@pipe-a.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:
    - {shard-rkl}:        [SKIP][117] ([fdo#112022] / [i915#4070]) -> [PASS][118] +17 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-tglb:         [INCOMPLETE][119] ([i915#2411]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:
    - shard-skl:          [DMESG-WARN][121] ([i915#1982]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl1/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - {shard-rkl}:        [SKIP][123] ([fdo#111825] / [i915#4070]) -> [PASS][124] +12 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_dp_aux_dev:
    - {shard-rkl}:        [SKIP][125] ([i915#1257]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_dp_aux_dev.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_dp_aux_dev.html

  * igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:
    - {shard-rkl}:        [SKIP][127] ([fdo#111314]) -> [PASS][128] +12 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - {shard-rkl}:        [SKIP][129] ([fdo#110189] / [i915#3955]) -> [PASS][130] +1 similar issue
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][131] ([i915#79]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [DMESG-WARN][133] ([i915#180]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [INCOMPLETE][135] ([i915#636]) -> [PASS][136]
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][137] ([i915#2122]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-iclb:         [SKIP][139] -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@basic:
    - {shard-rkl}:        [SKIP][141] ([i915#1849]) -> [PASS][142] +50 similar issues
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@kms_frontbuffer_tracking@basic.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_frontbuffer_tracking@basic.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - {shard-rkl}:        [SKIP][143] ([i915#3558]) -> [PASS][144] +5 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_plane@plane-panning-bottom-ri

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/index.html

--===============3877941341571440811==
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
<tr><td><b>Series:</b></td><td>drm/i915: Add MOCS tables for XeHP SDV and DG2 (rev3)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/94344/">https://patchwork.freedesktop.org/series/94344/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10557_full -&gt; Patchwork_20977_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_20977_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>igt@gem_eio@hibernate:<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-6/igt@gem_eio@hibernate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-2/igt@gem_eio@hibernate.html">FAIL</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20977_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_create@create-massive.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@gem_ctx_persistence@legacy-engines-queued.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb1/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb5/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3063]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb1/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@gem_eio@reset-stress.html">TIMEOUT</a> ([i915#3427])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl2/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@coherency-sync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@gem_userptr_blits@coherency-sync.html">SKIP</a> ([fdo#110542])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-unmap-after-close:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@gem_userptr_blits@unsync-unmap-after-close.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb3/igt@gem_workarounds@suspend-resume.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb7/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#456])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-apl1/igt@gem_workarounds@suspend-resume-context.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@gem_workarounds@suspend-resume-context.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-chained:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@gen9_exec_parse@bb-chained.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@gen9_exec_parse@valid-registers.html">SKIP</a> ([i915#2856]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> ([fdo#111644] / [i915#1397] / [i915#2411])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb5/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb1/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">DMESG-WARN</a> ([i915#3621])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl8/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_ccs.html">SKIP</a> ([i915#3689]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_ccs@pipe-d-bad-aux-stride-yf_tiled_ccs.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_cdclk@mode-transition.html">SKIP</a> ([fdo#109271]) +299 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-fast:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_chamelium@hdmi-crc-fast.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb2/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_color_chamelium@pipe-b-ctm-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-max:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_color_chamelium@pipe-d-ctm-max.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_content_protection@atomic.html">SKIP</a> ([fdo#111828])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-lic-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_content_protection@dp-mst-lic-type-1.html">SKIP</a> ([i915#3116]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_content_protection@dp-mst-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-rapid-movement.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic.html">SKIP</a> ([fdo#111825]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-move:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-move.html">SKIP</a> ([fdo#109271]) +38 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl3/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl10/igt@kms_flip@plain-flip-fb-recreate@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb5/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-pwrite.html">INCOMPLETE</a> ([i915#3433])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_plane_lowres@pipe-a-tiling-none.html">SKIP</a> ([i915#3536])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-b-tiling-yf:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb2/igt@kms_plane_multiple@atomic-pipe-b-tiling-yf.html">SKIP</a> ([fdo#112054])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +6 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html">SKIP</a> ([i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_psr@psr2_primary_blt.html">FAIL</a> ([i915#132] / [i915#3467]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_blt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb3/igt@kms_psr@psr2_sprite_blt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl3/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@kms_vblank@pipe-d-query-forked-hang.html">SKIP</a> ([fdo#109271]) +488 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@kms_vrr@flip-suspend.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb2/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> ([i915#2530]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl2/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl6/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@runner@aborted.html">FAIL</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-snb5/igt@runner@aborted.html">FAIL</a>) ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl1/igt@sysfs_clients@fair-7.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@nullptr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@fbdev@nullptr.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@fbdev@nullptr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb2/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#2849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@gem_exec_suspend@basic-s4-devices.html">INCOMPLETE</a> ([i915#3189]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@i915_pm_backlight@bad-brightness.html">SKIP</a> ([i915#3012]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@i915_pm_backlight@bad-brightness.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade_with_suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb7/igt@i915_pm_backlight@fade_with_suspend.html">INCOMPLETE</a> ([i915#456]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb3/igt@i915_pm_backlight@fade_with_suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">SKIP</a> ([i915#1397]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>
<p>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">SKIP</a> ([i915#3638]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a> +4 similar issues</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-90:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">SKIP</a> ([fdo#111614]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_big_fb@y-tiled-16bpp-rotate-90.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-a:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_concurrent@pipe-a.html">SKIP</a> ([i915#1845] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_concurrent@pipe-a.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_cursor_crc@pipe-a-cursor-128x42-offscreen.html">PASS</a> +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">INCOMPLETE</a> ([i915#2411]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-tglb1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl1/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl5/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">SKIP</a> ([fdo#111825] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_aux_dev:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_dp_aux_dev.html">SKIP</a> ([i915#1257]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_dp_aux_dev.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-xtiled.html">PASS</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr-suspend:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_fbcon_fbt@psr-suspend.html">SKIP</a> ([fdo#110189] / [i915#3955]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_fbcon_fbt@psr-suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-apl7/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-kbl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">INCOMPLETE</a> ([i915#636]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-kbl4/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">SKIP</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@basic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-1/igt@kms_frontbuffer_tracking@basic.html">SKIP</a> ([i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20977/shard-rkl-6/igt@kms_frontbuffer_tracking@basic.html">PASS</a> +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10557/shard-rkl-2/igt@kms_plane@plane-panning-bottom-ri">SKIP</a> ([i915#3558]) -&gt; [PASS][144] +5 similar issues</li>
</ul>
</li>
</ul>

</body>
</html>

--===============3877941341571440811==--
