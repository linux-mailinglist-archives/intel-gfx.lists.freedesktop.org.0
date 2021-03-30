Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB7E34F28E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Mar 2021 22:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 933D76E97D;
	Tue, 30 Mar 2021 20:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id DEEC389CAC;
 Tue, 30 Mar 2021 20:54:59 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D85FCA9932;
 Tue, 30 Mar 2021 20:54:59 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Ville Syrjala" <ville.syrjala@linux.intel.com>
Date: Tue, 30 Mar 2021 20:54:59 -0000
Message-ID: <161713769986.22471.11186428533262184817@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20210330184254.6290-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/2=5D_drm/i915=3A_Extract_intel=5Fadjuste?=
 =?utf-8?b?ZF9yYXRlKCk=?=
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
Content-Type: multipart/mixed; boundary="===============1117505273=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1117505273==
Content-Type: multipart/alternative;
 boundary="===============3344738805617282901=="

--===============3344738805617282901==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/2] drm/i915: Extract intel_adjusted_rate()
URL   : https://patchwork.freedesktop.org/series/88592/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9915_full -> Patchwork_19883_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19883_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19883_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19883_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rpm@pm-caching:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb8/igt@i915_pm_rpm@pm-caching.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb7/igt@i915_pm_rpm@pm-caching.html

  * igt@i915_selftest@mock@buddy:
    - shard-skl:          [PASS][3] -> [DMESG-FAIL][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl9/igt@i915_selftest@mock@buddy.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl2/igt@i915_selftest@mock@buddy.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - shard-skl:          [PASS][5] -> [DMESG-WARN][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl10/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl8/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  
Known issues
------------

  Here are the changes found in Patchwork_19883_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@rcs0:
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#198])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl10/igt@gem_ctx_isolation@preservation-s3@rcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#1099]) +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-snb5/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2410])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271]) +128 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-glk3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [PASS][15] -> [FAIL][16] ([i915#2842]) +3 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][19] ([fdo#109271]) +299 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          NOTRUN -> [FAIL][20] ([i915#2389]) +7 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl3/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-skl:          NOTRUN -> [FAIL][21] ([i915#2389]) +3 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl9/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][22] -> [FAIL][23] ([i915#307])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-glk7/igt@gem_mmap_gtt@big-copy-odd.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [PASS][24] -> [FAIL][25] ([i915#307])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-snb:          NOTRUN -> [WARN][26] ([i915#2658])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-snb7/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-skl:          NOTRUN -> [WARN][27] ([i915#2658])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@wc:
    - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#1699]) +3 similar issues
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl6/igt@gem_userptr_blits@process-exit-mmap-busy@wc.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#1699]) +3 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl1/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-apl:          NOTRUN -> [FAIL][30] ([i915#3324])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl1/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl3/igt@gem_workarounds@suspend-resume-fd.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl6/igt@gem_workarounds@suspend-resume-fd.html

  * igt@gen7_exec_parse@basic-offset:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +198 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl2/igt@gen7_exec_parse@basic-offset.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][34] -> [INCOMPLETE][35] ([i915#2782])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][36] -> [FAIL][37] ([i915#2574])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-tglb1/igt@kms_async_flips@test-time-stamp.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-tglb5/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#2705])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_big_joiner@basic.html
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#2705]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl7/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html

  * igt@kms_chamelium@dp-crc-multiple:
    - shard-apl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl6/igt@kms_chamelium@dp-crc-multiple.html

  * igt@kms_chamelium@hdmi-aspect-ratio:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_chamelium@hdmi-aspect-ratio.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-snb:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-snb5/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_content_protection@lic:
    - shard-apl:          NOTRUN -> [TIMEOUT][44] ([i915#1319])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl6/igt@kms_content_protection@lic.html

  * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][45] ([i915#54])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:
    - shard-kbl:          [PASS][46] -> [DMESG-FAIL][47] ([i915#70] / [i915#95]) +10 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-kbl2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-kbl3/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
    - shard-skl:          [PASS][48] -> [DMESG-FAIL][49] ([i915#70]) +3 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl3/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:
    - shard-skl:          [PASS][50] -> [DMESG-FAIL][51] ([i915#1982] / [i915#70]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl9/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.html

  * igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:
    - shard-skl:          [PASS][52] -> [DMESG-WARN][53] ([i915#1982]) +2 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2346])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:
    - shard-glk:          [PASS][56] -> [FAIL][57] ([i915#52] / [i915#54]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled.html

  * igt@kms_flip@plain-flip-ts-check@c-edp1:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#2122]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl8/igt@kms_flip@plain-flip-ts-check@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2672])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][61] ([i915#265])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([fdo#108145] / [i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][65] ([i915#265]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#658]) +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658]) +2 similar issues
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][69] -> [SKIP][70] ([fdo#109642] / [fdo#111068] / [i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb1/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][73] ([i915#31])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-snb5/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-kbl:          [PASS][74] -> [INCOMPLETE][75] ([i915#155])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#533]) +2 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.html
    - shard-skl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#533]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@sysfs_clients@sema-50:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2994]) +3 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl1/igt@sysfs_clients@sema-50.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl1/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][80] ([i915#658]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb4/igt@feature_discovery@psr2.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][82] ([i915#2369] / [i915#3063]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-tglb2/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][84] ([i915#2846]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-kbl4/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [FAIL][86] ([i915#2842]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][88] ([i915#2842]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-glk8/igt@gem_exec_fair@basic-none@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][90] ([i915#2842]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-iclb:         [FAIL][92] ([i915#2842]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb2/igt@gem_exec_fair@basic-pace@rcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_whisper@basic-forked:
    - shard-glk:          [DMESG-WARN][94] ([i915#118] / [i915#95]) -> [PASS][95] +1 similar issue
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-glk6/igt@gem_exec_whisper@basic-forked.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-glk4/igt@gem_exec_whisper@basic-forked.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-iclb:         [FAIL][96] ([i915#307]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [DMESG-WARN][98] ([i915#1982]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl8/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][100] ([i915#2346] / [i915#533]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:
    - shard-glk:          [FAIL][102] ([i915#52] / [i915#54]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-glk2/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [FAIL][104] ([i915#79]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [FAIL][106] ([i915#79]) -> [PASS][107] +1 similar issue
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [FAIL][108] ([i915#2122]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         [FAIL][110] ([i915#49]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][112] ([i915#1188]) -> [PASS][113] +1 similar issue
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl3/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115]
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][116] ([fdo#108145] / [i915#265]) -> [PASS][117] +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping:
    - shard-iclb:         [DMESG-WARN][118] ([i915#1226]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-clipping-clamping.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [SKIP][120] ([fdo#109441]) -> [PASS][121] +1 similar issue
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb3/igt@kms_psr@psr2_suspend.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb2/igt@kms_psr@psr2_suspend.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][122] ([i915#1804] / [i915#2684]) -> [WARN][123] ([i915#2681] / [i915#2684]) +1 similar issue
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][124] ([i915#658]) -> [SKIP][125] ([i915#2920]) +1 similar issue
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         [SKIP][126] ([i915#2920]) -> [SKIP][127] ([i915#658]) +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002]) -> ([FAIL][132], [FAIL][133], [FAIL][134]) ([fdo#109271] / [i915#180] / [i915#3002])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl8/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl1/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl3/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl3/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl2/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl6/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl1/igt@runner@aborted.html
    - shard-skl:          ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([i915#1814] / [i915#2029] / [i915#3002]) -> ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl4/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl8/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl7/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl2/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl3/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1699]: https://gitlab.freedesktop.org/drm/intel/issues/1699
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/in

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/index.html

--===============3344738805617282901==
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
<tr><td><b>Series:</b></td><td>series starting with [1/2] drm/i915: Extract=
 intel_adjusted_rate()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/88592/">https://patchwork.freedesktop.org/series/88592/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19883/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19883/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9915_full -&gt; Patchwork_19883_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19883_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19883_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19883_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_pm_rpm@pm-caching:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb8/igt@i915_pm_rpm@pm-caching.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-icl=
b7/igt@i915_pm_rpm@pm-caching.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@buddy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl9/igt@i915_selftest@mock@buddy.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-sk=
l2/igt@i915_selftest@mock@buddy.html">DMESG-FAIL</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl10/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19883/shard-skl8/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.ht=
ml">DMESG-WARN</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19883_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl1/igt@gem_ctx_isolation@preservation-s3@rcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19883/shard-skl10/igt@gem_ctx_isolation@preservation-s3@rcs0.html">INCOMPLE=
TE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i91=
5#198</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-snb5/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/1099">i915#1099</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1988=
3/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2=
410])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +128 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-glk5/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883=
/shard-glk3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#284=
2])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-tglb2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
883/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i9=
15#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/sha=
rd-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-snb5/igt@gem_exec_flush@basic-batch-ker=
nel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +299 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl3/igt@gem_exec_reloc@basic-many-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl9/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-glk7/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-g=
lk5/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883=
/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a> ([i915#307=
])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-snb7/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl4/igt@gem_pwrite@basic-exhaustion.ht=
ml">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl6/igt@gem_userptr_blits@process-exit=
-mmap-busy@wc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl1/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/1699">i915#1699</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl1/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-apl3/igt@gem_workarounds@suspend-resume-fd.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883=
/shard-apl6/igt@gem_workarounds@suspend-resume-fd.html">DMESG-WARN</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@basic-offset:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl2/igt@gen7_exec_parse@basic-offset.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a>) +198 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shar=
d-snb7/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])<=
/li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/=
shard-tglb5/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2574]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_big_joiner@basic.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2705])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19883/shard-apl7/igt@kms_big_joiner@basic.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo=
#109271</a> / [i915#2705]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111304">fdo#111304</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-crc-multiple:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl6/igt@kms_chamelium@dp-crc-multiple.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-aspect-ratio:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_chamelium@hdmi-aspect-rati=
o.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-snb5/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl6/igt@kms_content_protection@lic.htm=
l">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-1=
28x128-offscreen.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9915/shard-kbl2/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19883/shard-kbl3/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edg=
e.html">DMESG-FAIL</a> ([i915#70] / [i915#95]) +10 similar issues</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9915/shard-skl3/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edge.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19883/shard-skl7/igt@kms_cursor_edge_walk@pipe-a-256x256-bottom-edg=
e.html">DMESG-FAIL</a> ([i915#70]) +3 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl9/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19883/shard-skl4/igt@kms_cursor_edge_walk@pipe-a-256x256-right-edge=
.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in">i9=
15#1982</a> / [i915#70]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl6/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-edge=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19883/shard-skl10/igt@kms_cursor_edge_walk@pipe-c-256x256-bottom-e=
dge.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in"=
>i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19883/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-le=
gacy.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtiled=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19883/shard-glk5/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-xtil=
ed.html">FAIL</a> ([i915#52] / [i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl10/igt@kms_flip@plain-flip-ts-check@c-edp1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
883/shard-skl8/igt@kms_flip@plain-flip-ts-check@c-edp1.html">FAIL</a> ([i91=
5#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19883/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl6/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-min.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl3/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb=
1/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a href=3D"https://bugs=
.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard=
-iclb1/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-snb5/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-kbl1/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19883/shard-kbl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend=
.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/155">i915#155</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19883/shard-apl7/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#533]) +2 similar issues</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19883/shard-skl9/igt@kms_vblank@pipe-d-wait-idle.htm=
l">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1092=
71">fdo#109271</a> / [i915#533]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-apl1/igt@sysfs_clients@sema-50.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19883/shard-skl1/igt@sysfs_clients@split-10.html">S=
KIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">=
fdo#109271</a> / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb4/igt@feature_discovery@psr2.html">SKIP</a> ([i915#6=
58]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
883/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-tglb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19883/shard-tglb2/igt@gem_eio@unwedge-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i=
915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19883/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-tglb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19883/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-glk8/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19883/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19883/shard-kbl6/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19883/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-glk6/igt@gem_exec_whisper@basic-forked.html">DMESG-WARN<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#1=
18</a> / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19883/shard-glk4/igt@gem_exec_whisper@basic-forked.html">PASS<=
/a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
FAIL</a> ([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19883/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-x=
y.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/in">i915#1982</a>) -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl=
8/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">FAIL</a> ([i915#2346] / [i915#533]) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl10/ig=
t@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-pwrite-ytiled.h=
tml">FAIL</a> ([i915#52] / [i915#54]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19883/shard-glk2/igt@kms_draw_crc@draw-metho=
d-rgb565-pwrite-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAI=
L</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19883/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl10/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19883/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.ht=
ml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb=
-plflip-blt.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19883/shard-iclb8/igt@kms_frontbuffer_track=
ing@psr-1p-primscrn-shrfb-plflip-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/sha=
rd-skl3/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19883/shard-apl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe=
-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10814=
5">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19883/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-=
coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb2/igt@kms_plane_scaling@scaler-with-clipping-clampin=
g@pipe-a-scaler-with-clipping-clamping.html">DMESG-WARN</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1226">i915#1226</a>) -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-iclb=
1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-a-scaler-with-cl=
ipping-clamping.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb3/igt@kms_psr@psr2_suspend.html">SKIP</a> (<a href=
=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/s=
hard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19883/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">W=
ARN</a> ([i915#2681] / [i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb4/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19883/shard-iclb2/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19883/shard-iclb1/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9915/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-apl3/igt@runner@aborted.ht=
ml">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1814">i915#1814</a> / [i915#3002]) -&gt; (<a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl2/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19883/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-apl1/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/180">i915#180</a> / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9915/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9915/shard-skl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9915/shard-skl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
15/shard-skl3/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#2029] / [i915=
#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19883/shard-skl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl7/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19883/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19883/shard-skl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19883/shard-skl3/igt@runner@=
aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1814">i915#1814</a> / [i915#2029] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>

</body>
</html>

--===============3344738805617282901==--

--===============1117505273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1117505273==--
