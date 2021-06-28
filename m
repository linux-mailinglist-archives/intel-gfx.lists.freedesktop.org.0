Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 934EA3B6B0B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jun 2021 00:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B3D06E5A1;
	Mon, 28 Jun 2021 22:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6A6D96E5A0;
 Mon, 28 Jun 2021 22:46:45 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5BEEAA47E9;
 Mon, 28 Jun 2021 22:46:45 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Bommu Krishnaiah" <krishnaiah.bommu@intel.com>
Date: Mon, 28 Jun 2021 22:46:45 -0000
Message-ID: <162492040534.2575.1680294384864215034@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
In-Reply-To: <20210628143829.22995-1-krishnaiah.bommu@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgVGhl?=
 =?utf-8?q?_Following_Patches_are_to_Fix_the_Critical_KclockWork_Errors_in?=
 =?utf-8?q?_i915=5Fgem_and_gt?=
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
Content-Type: multipart/mixed; boundary="===============1060461254=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1060461254==
Content-Type: multipart/alternative;
 boundary="===============3249859845604037026=="

--===============3249859845604037026==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: The Following Patches are to Fix the Critical KclockWork Errors in i915_gem and gt
URL   : https://patchwork.freedesktop.org/series/91978/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10285_full -> Patchwork_20480_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20480_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - {shard-rkl-6}:      [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - {shard-rkl-2}:      NOTRUN -> [FAIL][3] +18 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0.html

  * {igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs}:
    - {shard-rkl-6}:      NOTRUN -> [SKIP][4] +7 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-6/igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs.html

  * {igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc}:
    - {shard-rkl-5}:      NOTRUN -> [FAIL][5] +23 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-5/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * {igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc}:
    - {shard-rkl-1}:      NOTRUN -> [FAIL][6] +32 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-1/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - {shard-rkl-1}:      NOTRUN -> [SKIP][7] +155 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - {shard-rkl-1}:      NOTRUN -> [INCOMPLETE][8]
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - {shard-rkl-2}:      NOTRUN -> [INCOMPLETE][9] +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - {shard-rkl-5}:      NOTRUN -> [INCOMPLETE][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:
    - {shard-rkl-5}:      NOTRUN -> [SKIP][11] +42 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - {shard-rkl-2}:      NOTRUN -> [SKIP][12] +30 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  
Known issues
------------

  Here are the changes found in Patchwork_20480_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-clear:
    - shard-skl:          [PASS][13] -> [FAIL][14] ([i915#3160])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-skl10/igt@gem_create@create-clear.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl9/igt@gem_create@create-clear.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1099]) +5 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-snb7/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][16] -> [FAIL][17] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2842])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#2842])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][22] -> [SKIP][23] ([i915#2190])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-tglb1/igt@gem_huc_copy@huc-copy.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-tglb6/igt@gem_huc_copy@huc-copy.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][24] ([fdo#109271]) +377 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-skl3/igt@i915_suspend@fence-restore-untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl4/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_big_fb@linear-64bpp-rotate-0:
    - shard-iclb:         [PASS][27] -> [DMESG-WARN][28] ([i915#3621]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-hpd:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl1/igt@kms_chamelium@vga-hpd.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl9/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-snb6/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][33] ([i915#2105])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_legacy@cursor-vs-flip-legacy:
    - shard-glk:          [PASS][34] -> [DMESG-WARN][35] ([i915#118] / [i915#95]) +2 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk5/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk8/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#533]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#2672])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +102 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +5 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +4 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-glk:          NOTRUN -> [SKIP][44] ([fdo#109271]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#1188])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl3/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#533])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
    - shard-apl:          NOTRUN -> [DMESG-WARN][48] ([i915#180])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][49] ([fdo#108145] / [i915#265]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][50] ([fdo#108145] / [i915#265])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][51] ([i915#265])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([fdo#108145] / [i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +3 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([fdo#109441]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb8/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][58] ([i915#31])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-snb7/igt@kms_setmode@basic.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#2437])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_writeback@writeback-check-output.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271]) +119 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2994]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl8/igt@sysfs_clients@fair-0.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2994])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_create@create-clear:
    - shard-glk:          [FAIL][63] ([i915#1888] / [i915#3160]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk3/igt@gem_create@create-clear.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk3/igt@gem_create@create-clear.html

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-apl:          [DMESG-WARN][65] ([i915#180]) -> [PASS][66] +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][67] ([i915#2369] / [i915#3063]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [SKIP][69] ([fdo#109271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          [FAIL][71] ([i915#2842]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk1/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][73] ([i915#2842]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - {shard-rkl-2}:      [FAIL][75] -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@basic-small-bo-tiledx:
    - shard-glk:          [FAIL][77] ([i915#1888]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk3/igt@gem_mmap_gtt@basic-small-bo-tiledx.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk3/igt@gem_mmap_gtt@basic-small-bo-tiledx.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [FAIL][79] ([i915#307]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk1/igt@gem_mmap_gtt@big-copy-odd.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - {shard-rkl-1}:      [FAIL][81] ([i915#307]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][83] ([i915#1436] / [i915#716]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk8/igt@gen9_exec_parse@allowed-all.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk1/igt@gen9_exec_parse@allowed-all.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][85] ([i915#118] / [i915#95]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:
    - shard-glk:          [FAIL][87] ([i915#79]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@c-hdmi-a1:
    - shard-glk:          [FAIL][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-glk8/igt@kms_flip@modeset-vs-vblank-race-interruptible@c-hdmi-a1.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-glk1/igt@kms_flip@modeset-vs-vblank-race-interruptible@c-hdmi-a1.html

  * igt@kms_flip@plain-flip-fb-recreate@b-dp1:
    - shard-kbl:          [FAIL][91] ([i915#2122]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][93] ([i915#1188]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-skl1/igt@kms_hdr@bpc-switch.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [DMESG-WARN][95] ([i915#180]) -> [PASS][96] +3 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][97] ([fdo#108145] / [i915#265]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][99] ([fdo#109441]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-kbl:          [DMESG-WARN][101] ([i915#180] / [i915#295]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][103] ([i915#588]) -> [SKIP][104] ([i915#658])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][105] ([i915#1804] / [i915#2684]) -> [WARN][106] ([i915#2684])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][107] ([i915#2920]) -> [SKIP][108] ([i915#658]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][109] ([i915#658]) -> [SKIP][110] ([i915#2920]) +2 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92]) -> ([FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl1/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl6/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl6/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl3/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl1/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl1/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl1/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl6/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl6/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl7/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl7/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl2/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109300]: https://bugs.freedesktop.org/show_bug.cgi?id=109300
  [fdo#109303]: https://bugs.freedesktop.org/show_bug.cgi?id=109303
  [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
  [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
  [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
  [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
  [fdo#112306]: https://bugs.freedesktop.org/show_bug.cgi?id=112306
  [i915#1021]: https://gitlab.freedesktop.org/drm/intel/issues/1021
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
  [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2292]: https://gitlab.freedesktop.org/drm/intel/issues/2292
  [i915#2369]: https://gitlab.freedesktop.org/drm/intel/issues/2369
  [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
  [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
  [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
  [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#295]: https://gitlab.freedesktop.org/drm/intel/is

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/index.html

--===============3249859845604037026==
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
<tr><td><b>Series:</b></td><td>The Following Patches are to Fix the Critica=
l KclockWork Errors in i915_gem and gt</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/91978/">https://patchwork.freedesktop.org/series/91978/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20480/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20480/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10285_full -&gt; Patchwork_20480_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20480_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>{shard-rkl-6}:      <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
480/shard-rkl-6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>{shard-rkl-2}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-2/igt@gem_exec_fair@basic-pace@bcs0=
.html">FAIL</a> +18 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-a-missing-ccs-buffer-y_tiled_ccs}:</p>
<ul>
<li>{shard-rkl-6}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-6/igt@kms_ccs@pipe-a-missing-ccs-bu=
ffer-y_tiled_ccs.html">SKIP</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc}:</p>
<ul>
<li>{shard-rkl-5}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-5/igt@kms_ccs@pipe-c-bad-rotation-9=
0-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> +23 similar issues</li>
</ul>
</li>
<li>
<p>{igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc}:</p>
<ul>
<li>{shard-rkl-1}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-1/igt@kms_ccs@pipe-c-ccs-on-another=
-bo-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> +32 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:</p>
<ul>
<li>{shard-rkl-1}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-a-2=
56x256-top-edge.html">SKIP</a> +155 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>{shard-rkl-1}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-1/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytileccs.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>{shard-rkl-2}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-2/igt@kms_flip_scaled_crc@flip-32bp=
p-ytile-to-32bpp-ytilegen12rcccs.html">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>{shard-rkl-5}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-5/igt@kms_flip_scaled_crc@flip-64bp=
p-ytile-to-32bpp-ytilercccs.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-indfb-fliptrack-mmap-gtt:</p>
<ul>
<li>{shard-rkl-5}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-5/igt@kms_frontbuffer_tracking@fbc-=
1p-indfb-fliptrack-mmap-gtt.html">SKIP</a> +42 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>{shard-rkl-2}:      NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-rkl-2/igt@kms_plane_alpha_blend@pipe-a-=
alpha-transparent-fb.html">SKIP</a> +30 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20480_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-skl10/igt@gem_create@create-clear.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-s=
kl9/igt@gem_create@create-clear.html">FAIL</a> ([i915#3160])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1099">i915#1099</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/s=
hard-tglb7/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0480/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-kbl3/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2048=
0/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-tglb1/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-tgl=
b6/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/2190">i915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-snb7/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) +377 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-skl3/igt@i915_suspend@fence-restore-untiled.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_204=
80/shard-skl4/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2048=
0/shard-iclb1/igt@kms_big_fb@linear-64bpp-rotate-0.html">DMESG-WARN</a> ([i=
915#3621]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-kbl2/igt@kms_chamelium@hdmi-hpd-storm.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D111827">fdo#111827</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl1/igt@kms_chamelium@vga-hpd.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
11827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-skl9/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-snb6/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +23 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl6/igt@kms_content_protection@uevent.=
html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2105">i915#2105</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-legacy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk5/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20480/shard-glk8/igt@kms_cursor_legacy@cursor-vs-flip-legacy.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a> / [i915#95]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-apl6/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/s=
hard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +3 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl1/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-blt.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +102 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-skl9/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-fullscreen.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +5 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0480/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#18=
0</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-glk1/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-skl8/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard=
-skl3/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-b.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20480/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145"=
>fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-kbl2/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shar=
d-iclb8/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-snb7/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl8/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl6/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a>) +119 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-apl8/igt@sysfs_clients@fair-0.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@sysfs_clients@sema-50.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk3/igt@gem_create@create-clear.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / =
[i915#3160]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20480/shard-glk3/igt@gem_create@create-clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-apl8/igt@gem_ctx_isolation@preservation-s3@rcs0.html">D=
MESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1=
80">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_20480/shard-apl7/igt@gem_ctx_isolation@preservation-s3@rcs0.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2369">i915#2369</a>=
 / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20480/shard-tglb7/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20480/shard-apl3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk1/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20480/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
480/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>{shard-rkl-2}:      <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_204=
80/shard-rkl-2/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-bo-tiledx:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk3/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#=
1888</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20480/shard-glk3/igt@gem_mmap_gtt@basic-small-bo-tiledx.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk1/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i91=
5#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20480/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>{shard-rkl-1}:      <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a=
> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20480/shard-rkl-1/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk8/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1=
436</a> / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20480/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk1/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20480/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.ht=
ml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20480/shard-glk3/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@c-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-glk8/igt@kms_flip@modeset-vs-vblank-race-interruptible@=
c-hdmi-a1.html">FAIL</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20480/shard-glk1/igt@kms_flip@modeset-vs-vblank-race-inte=
rruptible@c-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i9=
15#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20480/shard-kbl7/igt@kms_flip@plain-flip-fb-recreate@b-dp1.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-s=
kl3/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-kbl1/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20480/shard-kbl2/igt@kms_plane@plane-panning=
-bottom-right-suspend@pipe-b-planes.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1081=
45">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/265">i915#265</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20480/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverag=
e-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb3/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_20480/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a> +2 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-kbl6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
s">i915#295</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20480/shard-kbl4/igt@kms_vblank@pipe-a-ts-continuation-suspend.ht=
ml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#588]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_20480/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a=
> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#18=
04</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i=
915#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20480/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2920">i915=
#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_20480/shard-iclb8/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a>=
 ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10285/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-3.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20480/shard-iclb2/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2920">i915#2920</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10285/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl6/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10285/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl3/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_10285/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl1/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
10285/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl6/igt@runner@aborted.htm=
l">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_102=
85/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_10285/shard-kbl7/igt@runner@aborted.html">=
FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436"=
>i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/2292">i915#2292</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2505">i915#2505</a> / [i915#3002] / [i915#3363] / [i915#60=
2] / [i915#92]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20480/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl7/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20480/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl4/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20480/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20480/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20480/shard-kbl1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20480/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#10927=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i91=
5#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814=
">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2505">i915#2505</a> / [i915#3002] / [i915#3363] / [i915#602] / [i915#92])=
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============3249859845604037026==--

--===============1060461254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1060461254==--
