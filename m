Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74A1C3C68E7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 05:31:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE3756E02B;
	Tue, 13 Jul 2021 03:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D396A89FC5;
 Tue, 13 Jul 2021 03:31:36 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CA1F6A00C9;
 Tue, 13 Jul 2021 03:31:36 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Tue, 13 Jul 2021 03:31:36 -0000
Message-ID: <162614709679.711.16678200964238324816@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210713003854.143197-1-jose.souza@intel.com>
In-Reply-To: <20210713003854.143197-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5BCI=2C1/6=5D_drm/i915/display=3A_Settle_on_?=
 =?utf-8?q?=22adl-x=22_in_WA_comments?=
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
Content-Type: multipart/mixed; boundary="===============0192067337=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0192067337==
Content-Type: multipart/alternative;
 boundary="===============2729266648032920819=="

--===============2729266648032920819==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [CI,1/6] drm/i915/display: Settle on "adl-x" in WA comments
URL   : https://patchwork.freedesktop.org/series/92457/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10335_full -> Patchwork_20581_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20581_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][1] -> [SKIP][2] ([i915#658])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb2/igt@feature_discovery@psr2.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb5/igt@feature_discovery@psr2.html

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4] ([i915#146] / [i915#198])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +3 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2410])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][8] -> [FAIL][9] ([i915#2846])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk3/igt@gem_exec_fair@basic-deadline.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk7/igt@gem_exec_fair@basic-deadline.html
    - shard-apl:          NOTRUN -> [FAIL][10] ([i915#2846])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][11] -> [FAIL][12] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][13] -> [FAIL][14] ([i915#2842])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [PASS][15] -> [FAIL][16] ([i915#2842]) +2 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][17] ([i915#2842]) +2 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][18] -> [FAIL][19] ([i915#2842]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-wide-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][20] ([i915#3633])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-glk:          [PASS][21] -> [FAIL][22] ([i915#307])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk6/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#307])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_offset@clear:
    - shard-skl:          [PASS][25] -> [FAIL][26] ([i915#3160])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl1/igt@gem_mmap_offset@clear.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl7/igt@gem_mmap_offset@clear.html
    - shard-iclb:         [PASS][27] -> [FAIL][28] ([i915#3160])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb1/igt@gem_mmap_offset@clear.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb7/igt@gem_mmap_offset@clear.html

  * igt@gem_pread@exhaustion:
    - shard-skl:          NOTRUN -> [WARN][29] ([i915#2658])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl5/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#3323])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][31] ([i915#2724])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#112306]) +1 similar issue
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-large:
    - shard-skl:          NOTRUN -> [FAIL][33] ([i915#3296])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl3/igt@gen9_exec_parse@bb-large.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][34] -> [FAIL][35] ([i915#454])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#1937])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         NOTRUN -> [WARN][37] ([i915#2684])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_suspend@forcewake:
    - shard-apl:          NOTRUN -> [DMESG-WARN][38] ([i915#180])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl8/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#110723])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_joiner@2x-modeset:
    - shard-iclb:         NOTRUN -> [SKIP][40] ([i915#2705])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_big_joiner@2x-modeset.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271]) +174 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-hpd:
    - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl1/igt@kms_chamelium@hdmi-hpd.html

  * igt@kms_chamelium@hdmi-hpd-storm:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-apl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@kms_chamelium@vga-edid-read.html
    - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109284] / [fdo#111827]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-d-ctm-blue-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [i915#1149])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_color@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-c-ctm-limited-range:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +14 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
    - shard-glk:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk5/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-negative:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_color_chamelium@pipe-d-ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][50] ([i915#1319]) +1 similar issue
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl7/igt@kms_content_protection@atomic.html
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109300] / [fdo#111066])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@kms_content_protection@atomic.html
    - shard-apl:          NOTRUN -> [TIMEOUT][52] ([i915#1319])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109278] / [fdo#109279]) +2 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278]) +18 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109274] / [fdo#109278]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_flip@flip-vs-panning-interruptible@a-edp1:
    - shard-skl:          [PASS][56] -> [DMESG-WARN][57] ([i915#1982])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl8/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [PASS][58] -> [DMESG-WARN][59] ([i915#180])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2122])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#2672])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2672])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:
    - shard-glk:          NOTRUN -> [SKIP][64] ([fdo#109271]) +14 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109280]) +9 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][66] ([i915#1188])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_hdr@static-toggle-suspend:
    - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#1187])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_hdr@static-toggle-suspend.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#533])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl5/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#533])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][72] -> [FAIL][73] ([fdo#108145] / [i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265]) +2 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-a-tiling-none:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3536]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_plane_lowres@pipe-a-tiling-none.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658]) +3 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
    - shard-iclb:         NOTRUN -> [SKIP][77] ([i915#658]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +2 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109642] / [fdo#111068] / [i915#658])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-iclb:         [PASS][82] -> [SKIP][83] ([fdo#109441])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_psr@psr2_primary_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109441])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271]) +114 similar issues
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl4/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-kbl:          [PASS][86] -> [DMESG-WARN][87] ([i915#180]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-snb:          NOTRUN -> [SKIP][88] ([fdo#109271]) +274 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb5/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2437])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@kms_writeback@writeback-fb-id.html

  * igt@nouveau_crc@pipe-c-ctx-flip-detection:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#2530])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@nouveau_crc@pipe-c-ctx-flip-detection.html

  * igt@perf@polling:
    - shard-skl:          [PASS][91] -> [FAIL][92] ([i915#1542])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl3/igt@perf@polling.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl1/igt@perf@polling.html

  * igt@prime_nv_api@i915_nv_import_twice:
    - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109291]) +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@prime_nv_api@i915_nv_import_twice.html

  * igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:
    - shard-apl:          NOTRUN -> [SKIP][94] ([fdo#109271]) +167 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html

  * igt@sysfs_clients@busy:
    - shard-kbl:          NOTRUN -> [SKIP][95] ([fdo#109271] / [i915#2994])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl6/igt@sysfs_clients@busy.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271] / [i915#2994]) +3 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@sysfs_clients@create.html

  * igt@sysfs_clients@recycle:
    - shard-iclb:         NOTRUN -> [SKIP][97] ([i915#2994])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@split-10:
    - shard-skl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2994]) +2 similar issues
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl3/igt@sysfs_clients@split-10.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - {shard-rkl}:        [FAIL][99] ([i915#2410]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][101] ([i915#2842]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [SKIP][103] ([fdo#109271]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][105] ([i915#2842]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_parallel@fds@rcs0:
    - {shard-rkl}:        [INCOMPLETE][107] -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-1/igt@gem_exec_parallel@fds@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-5/igt@gem_exec_parallel@fds@rcs0.html

  * igt@gem_mmap_gtt@big-copy:
    - shard-skl:          [FAIL][109] ([i915#307]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl1/igt@gem_mmap_gtt@big-copy.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@gem_mmap_gtt@big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy:
    - shard-glk:          [FAIL][111] ([i915#307]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy.html

  * igt@gem_mmap_gtt@cpuset-big-copy-xy:
    - shard-iclb:         [FAIL][113] ([i915#307]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html

  * igt@gem_mmap_offset@clear:
    - {shard-rkl}:        [FAIL][115] ([i915#3160]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-1/igt@gem_mmap_offset@clear.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-5/igt@gem_mmap_offset@clear.html

  * igt@gem_softpin@noreloc-s3:
    - shard-apl:          [DMESG-WARN][117] ([i915#180]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-apl1/igt@gem_softpin@noreloc-s3.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@gem_softpin@noreloc-s3.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][119] ([i915#1436] / [i915#716]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_rpm@gem-execbuf:
    - {shard-rkl}:        [SKIP][121] ([fdo#109308]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][123] ([i915#2782]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-snb5/igt@i915_selftest@live@hangcheck.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-iclb:         [DMESG-WARN][125] ([i915#3621]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - {shard-rkl}:        [SKIP][127] ([i915#3721]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-iclb:         [FAIL][129] -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
    - {shard-rkl}:        [FAIL][131] ([i915#3678]) -> [PASS][132] +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_color@pipe-c-ctm-blue-to-red:
    - {shard-rkl}:        [SKIP][133] ([i915#1149] / [i915#1849]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_color@pipe-c-ctm-blue-to-red.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_color@pipe-c-ctm-blue-to-red.html

  * igt@kms_cursor_crc@pipe-c-cursor-dpms:
    - {shard-rkl}:        [SKIP][135] ([fdo#112022]) -> [PASS][136] +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-dpms.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-dpms.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - {shard-rkl}:        [SKIP][137] ([fdo#111825]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:
    - {shard-rkl}:        [SKIP][139] ([fdo#111314]) -> [PASS][140] +1 similar issue
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:
    - shard-skl:          [FAIL][141] ([i915#79]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:
    - shard-glk:          [FAIL][143] ([i915#79]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:
    - shard-skl:          [FAIL][145] ([i915#2122]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@a

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/index.html

--===============2729266648032920819==
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
<tr><td><b>Series:</b></td><td>series starting with [CI,1/6] drm/i915/display: Settle on &quot;adl-x&quot; in WA comments</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/92457/">https://patchwork.freedesktop.org/series/92457/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10335_full -&gt; Patchwork_20581_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20581_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb5/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl3/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl1/igt@gem_ctx_isolation@preservation-s3@vcs0.html">INCOMPLETE</a> ([i915#146] / [i915#198])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-tglb7/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk3/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html">FAIL</a> ([i915#3633])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk5/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk6/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb1/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl1/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl7/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb1/igt@gem_mmap_offset@clear.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb7/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl5/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@gen9_exec_parse@batch-without-end.html">SKIP</a> ([fdo#112306]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl3/igt@gen9_exec_parse@bb-large.html">FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl8/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html">SKIP</a> ([fdo#110723])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@2x-modeset:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_big_joiner@2x-modeset.html">SKIP</a> ([i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271]) +174 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl1/igt@kms_chamelium@hdmi-hpd.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl4/igt@kms_chamelium@hdmi-hpd-storm.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_chamelium@vga-edid-read.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +4 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_color@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-limited-range:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@kms_color_chamelium@pipe-c-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk5/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-negative:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_color_chamelium@pipe-d-ctm-negative.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl7/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319]) +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@kms_content_protection@atomic.html">SKIP</a> ([fdo#109300] / [fdo#111066])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_cursor_crc@pipe-d-cursor-256x256-rapid-movement.html">SKIP</a> ([fdo#109278]) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-panning-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl10/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl8/igt@kms_flip@flip-vs-panning-interruptible@a-edp1.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl7/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk5/igt@kms_frontbuffer_tracking@fbcpsr-2p-pri-indfb-multidraw.html">SKIP</a> ([fdo#109271]) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> ([fdo#109280]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-suspend:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_hdr@static-toggle-suspend.html">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl5/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl7/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-a-tiling-none:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_plane_lowres@pipe-a-tiling-none.html">SKIP</a> ([i915#3536]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_gtt.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl4/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html">SKIP</a> ([fdo#109271]) +114 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl6/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb5/igt@kms_vblank@pipe-d-query-forked-hang.html">SKIP</a> ([fdo#109271]) +274 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@kms_writeback@writeback-fb-id.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-c-ctx-flip-detection:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@nouveau_crc@pipe-c-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl3/igt@perf@polling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl1/igt@perf@polling.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@prime_nv_api@i915_nv_import_twice.html">SKIP</a> ([fdo#109291]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@prime_nv_api@i915_nv_reimport_twice_check_flink_name.html">SKIP</a> ([fdo#109271]) +167 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl6/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl2/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@sysfs_clients@recycle.html">SKIP</a> ([i915#2994])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl3/igt@sysfs_clients@split-10.html">SKIP</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">FAIL</a> ([i915#2410]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-2/igt@gem_ctx_persistence@many-contexts.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">SKIP</a> ([fdo#109271]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_parallel@fds@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-1/igt@gem_exec_parallel@fds@rcs0.html">INCOMPLETE</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-5/igt@gem_exec_parallel@fds@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl1/igt@gem_mmap_gtt@big-copy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl6/igt@gem_mmap_gtt@big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk6/igt@gem_mmap_gtt@cpuset-big-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-big-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb5/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">FAIL</a> ([i915#307]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_mmap_offset@clear:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-1/igt@gem_mmap_offset@clear.html">FAIL</a> ([i915#3160]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-5/igt@gem_mmap_offset@clear.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_softpin@noreloc-s3:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-apl1/igt@gem_softpin@noreloc-s3.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-apl6/igt@gem_softpin@noreloc-s3.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@gem-execbuf:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@i915_pm_rpm@gem-execbuf.html">SKIP</a> ([fdo#109308]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@i915_pm_rpm@gem-execbuf.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-snb6/igt@i915_selftest@live@hangcheck.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb1/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">DMESG-WARN</a> ([i915#3621]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb4/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([i915#3721]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-iclb8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">FAIL</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-iclb2/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">FAIL</a> ([i915#3678]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-blue-to-red:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_color@pipe-c-ctm-blue-to-red.html">SKIP</a> ([i915#1149] / [i915#1849]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_color@pipe-c-ctm-blue-to-red.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-dpms:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_cursor_crc@pipe-c-cursor-dpms.html">SKIP</a> ([fdo#112022]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_cursor_crc@pipe-c-cursor-dpms.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">SKIP</a> ([fdo#111825]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-rkl-5/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-wc-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">FAIL</a> ([i915#79]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10335/shard-skl6/igt@kms_flip@wf_vblank-ts-check-interruptible@a-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20581/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@a">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============2729266648032920819==--

--===============0192067337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0192067337==--
