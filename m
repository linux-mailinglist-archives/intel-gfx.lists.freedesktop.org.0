Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB5536750E
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Apr 2021 00:14:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B6346EA06;
	Wed, 21 Apr 2021 22:14:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 565816EA06;
 Wed, 21 Apr 2021 22:14:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4BB79A0009;
 Wed, 21 Apr 2021 22:14:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 21 Apr 2021 22:14:06 -0000
Message-ID: <161904324627.19928.9834754124215335054@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210421120938.546076-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20210421120938.546076-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_docbook_descriptions_for_i915=5Fgem=5Fshrinker?=
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
Content-Type: multipart/mixed; boundary="===============0535024547=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0535024547==
Content-Type: multipart/alternative;
 boundary="===============7991476651441665479=="

--===============7991476651441665479==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix docbook descriptions for i915_gem_shrinker
URL   : https://patchwork.freedesktop.org/series/89297/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9993_full -> Patchwork_19962_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19962_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@process:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +4 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-snb7/igt@gem_ctx_persistence@process.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][2] -> [FAIL][3] ([i915#2846])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][4] ([i915#2846])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271]) +64 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2842])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][11] ([i915#2389]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2190])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb3/igt@gem_huc_copy@huc-copy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-tglb6/igt@gem_huc_copy@huc-copy.html
    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#2190])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          [PASS][15] -> [FAIL][16] ([i915#307])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl1/igt@gem_mmap_gtt@big-copy-odd.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl7/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][17] ([i915#3002])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-snb6/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@set-cache-level:
    - shard-skl:          NOTRUN -> [FAIL][18] ([i915#3324])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl8/igt@gem_userptr_blits@set-cache-level.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][19] ([i915#2724])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-snb6/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][20] ([i915#3318])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          NOTRUN -> [DMESG-WARN][21] ([i915#1436] / [i915#716])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-skl:          NOTRUN -> [FAIL][22] ([i915#3296])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl6/igt@gen9_exec_parse@bb-large.html
    - shard-apl:          NOTRUN -> [FAIL][23] ([i915#3296])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@gen9_exec_parse@bb-large.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][24] ([fdo#109271]) +91 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          NOTRUN -> [INCOMPLETE][25] ([i915#2880])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          NOTRUN -> [FAIL][26] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][27] ([i915#2782])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#2574])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb2/igt@kms_async_flips@test-time-stamp.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-tglb8/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo:
    - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271]) +233 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-snb6/igt@kms_ccs@pipe-a-ccs-on-another-bo.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111304])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl8/igt@kms_ccs@pipe-c-crc-sprite-planes-basic.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +18 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_color@pipe-c-ctm-0-25:
    - shard-skl:          [PASS][33] -> [DMESG-WARN][34] ([i915#1982])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl8/igt@kms_color@pipe-c-ctm-0-25.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl6/igt@kms_color@pipe-c-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl7/igt@kms_color_chamelium@pipe-a-degamma.html
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-snb5/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl6/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][38] ([i915#1319])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][39] ([i915#2105])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_content_protection@uevent.html
    - shard-apl:          NOTRUN -> [FAIL][40] ([i915#2105])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][41] -> [DMESG-WARN][42] ([i915#180]) +2 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#79])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][45] ([i915#180])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
    - shard-skl:          NOTRUN -> [FAIL][46] ([i915#2122])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl6/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2672])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2672])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2642])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#533])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl7/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#533]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-skl:          [PASS][53] -> [INCOMPLETE][54] ([i915#198])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
    - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][57] ([fdo#108145] / [i915#265]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][58] ([i915#265])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][59] ([i915#265])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([fdo#108145] / [i915#265])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2733])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#658]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#658]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][68] ([IGT#2])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][69] ([IGT#2])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271]) +234 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2437]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_writeback@writeback-check-output.html

  * igt@sysfs_clients@fair-1:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2994]) +4 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl7/igt@sysfs_clients@fair-1.html

  * igt@sysfs_clients@sema-50:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +3 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@sysfs_clients@sema-50.html

  
#### Possible fixes ####

  * igt@gem_create@create-clear:
    - shard-skl:          [FAIL][74] ([i915#1888] / [i915#3160]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl8/igt@gem_create@create-clear.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl6/igt@gem_create@create-clear.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][76] ([i915#2846]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-glk9/igt@gem_exec_fair@basic-deadline.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-glk3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [FAIL][78] ([i915#2842]) -> [PASS][79] +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][80] ([i915#2842]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_mmap_gtt@cpuset-big-copy-odd:
    - shard-iclb:         [FAIL][82] ([i915#2428]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-skl:          [INCOMPLETE][84] ([i915#198] / [i915#2405]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@i915_selftest@mock@requests:
    - shard-skl:          [INCOMPLETE][86] ([i915#198]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl6/igt@i915_selftest@mock@requests.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl8/igt@i915_selftest@mock@requests.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][88] ([i915#180]) -> [PASS][89] +3 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:
    - shard-skl:          [FAIL][90] ([i915#2122]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][92] ([i915#155]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][94] ([i915#1188]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@kms_hdr@bpc-switch.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl9/igt@kms_hdr@bpc-switch.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][96] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb4/igt@kms_psr2_su@frontbuffer.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][98] ([fdo#109441]) -> [PASS][99] +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-skl:          [INCOMPLETE][100] ([i915#198] / [i915#2828]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][102] ([i915#1542]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl7/igt@perf@polling-parameterized.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl9/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][104] ([i915#2842]) -> [FAIL][105] ([i915#2852])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [SKIP][106] ([fdo#109271]) -> [FAIL][107] ([i915#2842])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][108] ([i915#2681] / [i915#2684]) -> [WARN][109] ([i915#1804] / [i915#2684])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][110] ([i915#1804] / [i915#2684]) -> [WARN][111] ([i915#2684])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][112] ([i915#2920]) -> [SKIP][113] ([i915#658])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-iclb:         [SKIP][114] ([i915#658]) -> [SKIP][115] ([i915#2920])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#602]) -> ([FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl6/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl1/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl1/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][127], [FAIL][128], [FAIL][129]) ([i915#180] / [i915#3002]) -> ([FAIL][130], [FAIL][131], [FAIL][132]) ([i915#180] / [i915#1814] / [i915#3002])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl3/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl6/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl8/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@runner@aborted.html
    - shard-skl:          ([FAIL][133], [FAIL][134], [FAIL][135]) ([i915#1436] / [i915#2722] / [i915#3002]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([i915#1436] / [i915#1814] / [i915#2029] / [i915#3002])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl10/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl4/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl2/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl1/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl2/igt@runner@aborted.html

  
  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111304]: https://bugs.freedesktop.org/show_bug.cgi?id=111304
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2029]: https://gitlab.freedesktop.org/drm/intel/issues/2029
  [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2405]: https://gitlab.freedesktop.org/drm/intel/issues/2405
  [i915#2428]: https://gitlab.freedesktop.org/drm/intel/issues/2428
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#2505]: https://gitlab.freedesktop.org/drm/intel/issues/2505
  [i915#2574]: https://gitlab.freedesktop.org/drm/intel/issues/2574
  [i915#2642]: https://gitlab.freedesktop.org/drm/intel/issues/2642
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#2672]: https://gitlab.freedesktop.org/drm/intel/issues/2672
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
  [i915#2724]: https://gitlab.freedesktop.org/drm/intel/issues/2724
  [i915#2733]: https://gitlab.freedesktop.org/drm/intel/issues/2733
  [i915#2782]: https://gitlab.freedesktop.org/drm/intel/issues/2782
  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2852]: https://gitlab.freedesktop.org/drm/intel/issues/2852
  [i915#2880]: https://gitlab.freedesktop.org/drm/intel/issues/2880
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#3002]: https://gitlab.freedes

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/index.html

--===============7991476651441665479==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix docbook descriptions for i915_=
gem_shrinker</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89297/">https://patchwork.freedesktop.org/series/89297/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19962/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9993_full -&gt; Patchwork_19962_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19962_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-snb7/igt@gem_ctx_persistence@process.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/1099">i915#1099</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9993/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard=
-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl2/igt@gem_exec_fair@basic-deadline.ht=
ml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/28=
46">i915#2846</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a>) +64 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
962/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>=
)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl8/igt@gem_exec_fair@basic-none@vecs0=
.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/sha=
rd-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl8/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/2389">i915#2389</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9993/shard-tglb3/igt@gem_huc_copy@huc-copy.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-tglb6=
/igt@gem_huc_copy@huc-copy.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/2190">i915#2190</a>)</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-skl7/igt@gem_huc_copy@huc-copy.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
190">i915#2190</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl1/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-s=
kl7/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-snb6/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedes">i915#3002</a>)<=
/li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@set-cache-level:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl8/igt@gem_userptr_blits@set-cache-le=
vel.html">FAIL</a> ([i915#3324])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-snb6/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/272=
4">i915#2724</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl8/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl7/igt@gen9_exec_parse@allowed-single=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1436">i915#1436</a> / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-skl6/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> ([i915#3296])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl8/igt@gen9_exec_parse@bb-large.html">=
FAIL</a> ([i915#3296])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@i915_hangman@engine-error@vecs=
0.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +91 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-snb6/igt@i915_module_load@reload-with-f=
ault-injection.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/2880">i915#2880</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl8/igt@i915_pm_dc@dc6-psr.html">FAIL<=
/a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-snb5/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2782">i915#2782</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/=
shard-tglb8/igt@kms_async_flips@test-time-stamp.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2574">i915#2574</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-snb6/igt@kms_ccs@pipe-a-ccs-on-another-=
bo.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a>) +233 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl8/igt@kms_ccs@pipe-c-crc-sprite-plan=
es-basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D111304">fdo#111304</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-25:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl8/igt@kms_color@pipe-c-ctm-0-25.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-s=
kl6/igt@kms_color@pipe-c-ctm-0-25.html">DMESG-WARN</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-kbl7/igt@kms_color_chamelium@pipe-a-dega=
mma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</p>
</li>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-snb5/igt@kms_color_chamelium@pipe-a-dega=
mma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +13 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl6/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111827">fdo#111827</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl2/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_content_protection@uevent.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
105">i915#2105</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_content_protection@uevent.h=
tml">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
105">i915#2105</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
962/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180=
</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19962/shard-skl9/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> =
([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl2/igt@kms_flip@flip-vs-suspend-inter=
ruptible@b-dp1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/180">i915#180</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate@c-edp1:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl6/igt@kms_flip@plain-flip-fb-recreat=
e@c-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/2672">i915#2672</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/2642">i915#2642</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_pipe_crc_basic@compare-crc-=
sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +2 similar issues</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-kbl7/igt@kms_pipe_crc_basic@compare-crc-=
sanitycheck-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl7/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9993/shard-skl9/igt@kms_plane@plane-panning-bottom-right-suspend-pip=
e-c-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19962/shard-skl7/igt@kms_plane@plane-panning-bottom-righ=
t-suspend-pipe-c-planes.html">INCOMPLETE</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/198">i915#198</a>)</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9993/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pip=
e-c-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19962/shard-apl8/igt@kms_plane@plane-panning-bottom-righ=
t-suspend-pipe-c-planes.html">DMESG-WARN</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/180">i915#180</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_plane_alpha_blend@pipe-a-al=
pha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/265">i915#265</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19962/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D108145">=
fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl1/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2733">i915#2=
733</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-kbl7/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-1.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl8/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-4.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +4 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl1/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-ic=
lb8/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-apl6/igt@kms_sysfs_edid_timing.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2=
">IGT#2</a>)</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19962/shard-kbl2/igt@kms_sysfs_edid_timing.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2=
">IGT#2</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl8/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +234 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl7/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2437">i915#2437</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-apl7/igt@sysfs_clients@fair-1.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-kbl2/igt@sysfs_clients@sema-50.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
2994">i915#2994</a>) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_create@create-clear:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl8/igt@gem_create@create-clear.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1888">i915#1888</a> / [=
i915#3160]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19962/shard-skl6/igt@gem_create@create-clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-glk9/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1996=
2/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-tglb5/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842<=
/a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
962/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#28=
42</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19962/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">FAIL</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2428">i915#24=
28</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19962/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy-odd.html">PASS</a> +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl7/igt@gem_workarounds@suspend-resume-fd.html">INCOMPL=
ETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i9=
15#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/240=
5">i915#2405</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19962/shard-skl1/igt@gem_workarounds@suspend-resume-fd.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@requests:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl6/igt@i915_selftest@mock@requests.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/198">i915#198=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9962/shard-skl8/igt@i915_selftest@mock@requests.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMES=
G-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180"=
>i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19962/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl2/igt@kms_flip@flip-vs-absolute-wf_vblank-interruptib=
le@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19962/shard-skl1/igt@kms_flip@flip-vs-absolute-wf_v=
blank-interruptible@b-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/155"=
>i915#155</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19962/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl7/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-sk=
l9/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb4/igt@kms_psr2_su@frontbuffer.html">SKIP</a> (<a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> =
/ <a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111=
068</a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19962/shard-iclb2/igt@kms_psr2_su@frontbuffer.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb3/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a>=
 (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109=
441</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19962/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl2/igt@kms_vblank@pipe-c-ts-continuation-suspend.html"=
>INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/198">i915#198</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2828">i915#2828</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19962/shard-skl6/igt@kms_vblank@pipe-c-ts-continuation-s=
uspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl7/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/=
shard-skl9/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#=
2842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19962/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2852">i915#2852=
</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> (<=
a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9962/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i915#268=
1</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19962/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804=
</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i91=
5#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19962/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684</=
a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2=
.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2920">i915#2920</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19962/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dm=
g-area-2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19962/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-3.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9993/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
93/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-kbl1/igt@runner@aborted.html">F=
AIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">=
i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/2505">i915#2505</a> / <a href=3D"https://gitlab.freedes">i915#300=
2</a> / [i915#602]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19962/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl6/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19962/shard-kbl2/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19962/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a=
> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1=
814</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2505">=
i915#2505</a> / <a href=3D"https://gitlab.freedes">i915#3002</a>)</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-apl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9993/shard-apl8/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"https=
://gitlab.freedes">i915#3002</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19962/shard-apl2/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/sh=
ard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19962/shard-apl8/igt@runner@aborted.html">FA=
IL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i9=
15#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/181=
4">i915#1814</a> / <a href=3D"https://gitlab.freedes">i915#3002</a>)</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9993/shard-skl10/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9993/shard-skl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9993/shard-skl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"ht=
tps://gitlab.freedesktop.org/drm/intel/issues/2722">i915#2722</a> / <a href=
=3D"https://gitlab.freedes">i915#3002</a>) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19962/shard-skl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl2/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19962/shard-skl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19962/shard-skl2/igt@runner@abor=
ted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2029">i915#2029</a> / <a href=3D"https://gitlab.freedes">i=
915#3002</a>)</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7991476651441665479==--

--===============0535024547==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0535024547==--
