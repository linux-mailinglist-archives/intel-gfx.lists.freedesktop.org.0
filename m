Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6D632226B
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 23:55:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B21EA6E7D9;
	Mon, 22 Feb 2021 22:55:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7E1D26E210;
 Mon, 22 Feb 2021 22:55:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 76A5CA47E2;
 Mon, 22 Feb 2021 22:55:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Imre Deak" <imre.deak@intel.com>
Date: Mon, 22 Feb 2021 22:55:17 -0000
Message-ID: <161403451745.19115.5014801443044099756@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210222210400.940158-1-imre.deak@intel.com>
In-Reply-To: <20210222210400.940158-1-imre.deak@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl+=3A_Sanitize_the_DDI_LANES/IO_and_AUX_power_domain_na?=
 =?utf-8?q?mes?=
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
Content-Type: multipart/mixed; boundary="===============2124643427=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============2124643427==
Content-Type: multipart/alternative;
 boundary="===============6682781750164067366=="

--===============6682781750164067366==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/tgl+: Sanitize the DDI LANES/IO and AUX power domain names
URL   : https://patchwork.freedesktop.org/series/87299/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9795_full -> Patchwork_19717_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19717_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19717_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19717_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-glk:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-glk7/igt@i915_pm_rc6_residency@rc6-idle.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk1/igt@i915_pm_rc6_residency@rc6-idle.html

  
#### Warnings ####

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][3], [FAIL][4], [FAIL][5]) ([i915#2426] / [i915#2505] / [i915#2724] / [i915#3002]) -> ([FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9], [FAIL][10]) ([i915#1814] / [i915#2292] / [i915#2505] / [i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-kbl4/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-kbl1/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-kbl6/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl6/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@runner@aborted.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@runner@aborted.html
    - shard-apl:          ([FAIL][11], [FAIL][12], [FAIL][13]) ([i915#3002]) -> ([FAIL][14], [FAIL][15], [FAIL][16], [FAIL][17]) ([i915#2724] / [i915#3002])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-apl1/igt@runner@aborted.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-apl1/igt@runner@aborted.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-apl3/igt@runner@aborted.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl2/igt@runner@aborted.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl6/igt@runner@aborted.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl1/igt@runner@aborted.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_19717_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([i915#658])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-iclb2/igt@feature_discovery@psr2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][20] ([i915#3002])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-snb6/igt@gem_create@create-massive.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][21] ([i915#3002])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@file:
    - shard-hsw:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#1099])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@gem_ctx_persistence@file.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#1099]) +6 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][24] -> [TIMEOUT][25] ([i915#2481] / [i915#3070])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-iclb5/igt@gem_eio@unwedge-stress.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb8/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][26] -> [DMESG-WARN][27] ([i915#118] / [i915#95])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-glk6/igt@gem_exec_create@forked.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk7/igt@gem_exec_create@forked.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][28] ([i915#2846])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl2/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][29] ([i915#2842])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk6/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#2842])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-snb:          NOTRUN -> [FAIL][32] ([i915#2389]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-snb6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@vcs0:
    - shard-kbl:          NOTRUN -> [FAIL][33] ([i915#2389]) +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@gem_exec_reloc@basic-many-active@vcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [PASS][34] -> [DMESG-WARN][35] ([i915#2803])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs0:
    - shard-tglb:         [PASS][36] -> [DMESG-WARN][37] ([i915#2803])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-tglb7/igt@gem_exec_schedule@u-fairslice@vcs0.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-tglb3/igt@gem_exec_schedule@u-fairslice@vcs0.html

  * igt@gem_pread@exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][38] ([i915#2658])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap-busy@uc:
    - shard-kbl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#1699]) +3 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@gem_userptr_blits@process-exit-mmap-busy@uc.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [INCOMPLETE][40] ([i915#2502] / [i915#2667])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl6/igt@gem_userptr_blits@vma-merge.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][41] ([i915#454])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][42] -> [FAIL][43] ([i915#454])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb4/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [i915#1937])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-hsw:          [PASS][45] -> [WARN][46] ([i915#1519])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-apl:          NOTRUN -> [SKIP][47] ([fdo#109271]) +183 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl2/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-apl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-apl8/igt@i915_suspend@fence-restore-untiled.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl1/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-snb:          [PASS][50] -> [FAIL][51] ([i915#2521])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-snb2/igt@kms_async_flips@alternate-sync-async-flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-snb2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-glk:          NOTRUN -> [SKIP][52] ([fdo#109271]) +29 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-kbl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2705])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_big_joiner@basic.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#2705])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_big_joiner@invalid-modeset.html
    - shard-glk:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#2705])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@hdmi-frame-dump:
    - shard-hsw:          NOTRUN -> [SKIP][56] ([fdo#109271] / [fdo#111827])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@kms_chamelium@hdmi-frame-dump.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +26 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +10 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl10/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
    - shard-snb:          NOTRUN -> [SKIP][59] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-0-5:
    - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_color_chamelium@pipe-c-ctm-0-5.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][62] ([i915#1319])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][63] ([i915#1319]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#2105])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#54]) +5 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +260 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:
    - shard-snb:          NOTRUN -> [SKIP][70] ([fdo#109271]) +386 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#2346])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#79]) +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-kbl:          NOTRUN -> [FAIL][75] ([i915#2641]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
    - shard-apl:          NOTRUN -> [FAIL][76] ([i915#2641])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2672]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
    - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#2642])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2642])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-hsw:          NOTRUN -> [SKIP][80] ([fdo#109271]) +27 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][81] -> [FAIL][82] ([i915#1188])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][83] ([fdo#109271] / [i915#533])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl10/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#533]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-glk:          NOTRUN -> [FAIL][85] ([fdo#108145] / [i915#265])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
    - shard-apl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265]) +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][87] ([i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][88] ([fdo#108145] / [i915#265]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][89] -> [FAIL][90] ([fdo#108145] / [i915#265]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_plane_multiple@atomic-pipe-d-tiling-none:
    - shard-hsw:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#533]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@kms_plane_multiple@atomic-pipe-d-tiling-none.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#658]) +5 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-0:
    - shard-glk:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#658])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_psr2_sf@plane-move-sf-dmg-area-0.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#658]) +7 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][95] -> [SKIP][96] ([fdo#109441]) +2 similar issues
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb6/igt@kms_psr@psr2_suspend.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-glk:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#2437])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_writeback@writeback-fb-id.html
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2437])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_writeback@writeback-fb-id.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#2437]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@perf@non-sampling-read-error:
    - shard-skl:          [PASS][100] -> [DMESG-WARN][101] ([i915#1982]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl2/igt@perf@non-sampling-read-error.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl2/igt@perf@non-sampling-read-error.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][102] -> [FAIL][103] ([i915#1542])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl3/igt@perf@polling-parameterized.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl1/igt@perf@polling-parameterized.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][104] ([i915#180])
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@perf_pmu@rc6-suspend.html

  * igt@sysfs_clients@recycle:
    - shard-hsw:          [PASS][105] -> [FAIL][106] ([i915#3028])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-hsw1/igt@sysfs_clients@recycle.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw7/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-kbl:          NOTRUN -> [FAIL][107] ([i915#3028])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         [PASS][108] -> [FAIL][109] ([i915#3028])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-tglb5/igt@sysfs_clients@recycle-many.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-tglb7/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@split-10@bcs0:
    - shard-kbl:          NOTRUN -> [SKIP][110] ([fdo#109271] / [i915#3026])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@sysfs_clients@split-10@bcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][111] ([i915#2918]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][113] ([i915#3063]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-tglb3/igt@gem_eio@unwedge-stress.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-tglb:         [FAIL][115] ([i915#2846]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-tglb8/igt@gem_exec_fair@basic-deadline.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-tglb1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][117] ([i915#2842]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][119] ([i915#2842]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-hsw:          [FAIL][121] ([i915#2389]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-hsw7/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs1:
    - shard-kbl:          [DMESG-WARN][123] ([i915#1610] / [i915#2803]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-kbl6/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-busy:
    - shard-hsw:          [INCOMPLETE][125] ([i915#2055]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-hsw5/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@gem_fenced_exec_thrash@no-spare-fences-busy.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][127] ([i915#2190]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-tglb8/igt@gem_huc_copy@huc-copy.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [FAIL][129] ([i915#2597]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-tglb5/igt@kms_async_flips@test-time-stamp.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-tglb2/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-iclb:         [DMESG-WARN][131] ([i915#1226]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-iclb2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_color@pipe-b-ctm-red-to-blue:
    - shard-skl:          [FAIL][133] ([i915#129]) -> [PASS][134]
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl2/igt@kms_color@pipe-b-ctm-red-to-blue.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl2/igt@kms_color@pipe-b-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][135] ([i915#54]) -> [PASS][136] +9 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          [INCOMPLETE][137] ([i915#300]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][139] ([i915#1982]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl9/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl1/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-apl:          [DMESG-WARN][141] ([i915#180]) -> [PASS][142]
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][143] ([i915#2122]) -> [PASS][144]
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:
    - shard-iclb:         [SKIP][145] ([i915#668]) -> [PASS][146]
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [FAIL][147] ([fdo#108145] / [i915#265]) -> [PASS][148]
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-iclb:         [SKIP][149] ([fdo#109441]) -> [PASS][150]
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-iclb3/igt@kms_psr@psr2_sprite_plane_

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/index.html

--===============6682781750164067366==
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
<tr><td><b>Series:</b></td><td>drm/i915/tgl+: Sanitize the DDI LANES/IO and=
 AUX power domain names</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87299/">https://patchwork.freedesktop.org/series/87299/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19717/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9795_full -&gt; Patchwork_19717_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19717_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19717_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19717_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@i915_pm_rc6_residency@rc6-idle:<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-glk7/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/sh=
ard-glk1/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9795/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i915#=
2505] / [i915#2724] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/s=
hard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1971=
7/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>) ([i915#1814] / [i915#2292] / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9795/shard-apl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9795/shard-apl3/igt@runner@aborted.html">FAIL</a>) ([i915#3002]) -&gt; (=
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-a=
pl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19717/shard-apl6/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shar=
d-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19717/shard-apl1/igt@runner@aborted.html">FAIL=
</a>) ([i915#2724] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19717_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-icl=
b6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-snb6/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-kbl7/igt@gem_create@create-massive.html"=
>DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@file:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@gem_ctx_persistence@file.html"=
>SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099]) +6 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-iclb5/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-icl=
b8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070])=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-glk6/igt@gem_exec_create@forked.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-glk7=
/igt@gem_exec_create@forked.html">DMESG-WARN</a> ([i915#118] / [i915#95])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl2/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-glk6/igt@gem_exec_fair@basic-none-vip@r=
cs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717=
/shard-glk1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#284=
2])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-snb6/igt@gem_exec_reloc@basic-many-acti=
ve@rcs0.html">FAIL</a> ([i915#2389]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@gem_exec_reloc@basic-many-acti=
ve@vcs0.html">FAIL</a> ([i915#2389]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1971=
7/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([=
i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-tglb7/igt@gem_exec_schedule@u-fairslice@vcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_197=
17/shard-tglb3/igt@gem_exec_schedule@u-fairslice@vcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap-busy@uc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@gem_userptr_blits@process-exit=
-mmap-busy@uc.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl6/igt@gem_userptr_blits@vma-merge.ht=
ml">INCOMPLETE</a> ([i915#2502] / [i915#2667])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html">FAIL=
</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb4/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-hsw5/igt@i915_pm_rc6_residency@rc6-idle.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/sh=
ard-hsw4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> ([i915#1519])</l=
i>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl2/igt@i915_pm_rpm@modeset-lpsp-stres=
s.html">SKIP</a> ([fdo#109271]) +183 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-apl8/igt@i915_suspend@fence-restore-untiled.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1971=
7/shard-apl1/igt@i915_suspend@fence-restore-untiled.html">DMESG-WARN</a> ([=
i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-snb2/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19717/shard-snb2/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_big_fb@yf-tiled-8bpp-rotat=
e-270.html">SKIP</a> ([fdo#109271]) +29 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_big_joiner@basic.html">SKI=
P</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_big_joiner@invalid-modeset.=
html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_big_joiner@invalid-modeset.=
html">SKIP</a> ([fdo#109271] / [i915#2705])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-frame-dump:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@kms_chamelium@hdmi-frame-dump.=
html">SKIP</a> ([fdo#109271] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +26 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-skl10/igt@kms_color@pipe-d-ctm-0-5.html=
">SKIP</a> ([fdo#109271]) +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm=
-blue-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +21 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_color_chamelium@pipe-c-ctm=
-0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
717/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19717/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAI=
L</a> ([i915#54]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +260 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-d-128x128-right-edge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-snb6/igt@kms_cursor_edge_walk@pipe-d-12=
8x128-right-edge.html">SKIP</a> ([fdo#109271]) +386 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19717/shard-skl5/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19717/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@a-edp1.html">FAIL</a> ([i915#79]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> ([fdo#109271] / [i915#2642])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +27 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl9/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl=
1/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-skl10/igt@kms_pipe_crc_basic@compare-cr=
c-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-al=
pha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_plane_alpha_blend@pipe-b-al=
pha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19717/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html">F=
AIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_multiple@atomic-pipe-d-tiling-none:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@kms_plane_multiple@atomic-pipe=
-d-tiling-none.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-apl2/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-0:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-0.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl6/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +7 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-iclb2/igt@kms_psr@psr2_suspend.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-iclb6=
/igt@kms_psr@psr2_suspend.html">SKIP</a> ([fdo#109441]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-glk6/igt@kms_writeback@writeback-fb-id.h=
tml">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-apl6/igt@kms_writeback@writeback-fb-id.h=
tml">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@kms_writeback@writeback-invali=
d-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@perf@non-sampling-read-error:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl2/igt@perf@non-sampling-read-error.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shar=
d-skl2/igt@perf@non-sampling-read-error.html">DMESG-WARN</a> ([i915#1982]) =
+2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl3/igt@perf@polling-parameterized.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-=
skl1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl4/igt@perf_pmu@rc6-suspend.html">DME=
SG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-hsw1/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-hsw7/=
igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19717/shard-kbl1/igt@sysfs_clients@recycle-many.html=
">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9795/shard-tglb5/igt@sysfs_clients@recycle-many.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-=
tglb7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@bcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19717/shard-kbl7/igt@sysfs_clients@split-10@bcs0.ht=
ml">SKIP</a> ([fdo#109271] / [i915#3026])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html">TI=
MEOUT</a> ([i915#2918]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19717/shard-glk9/igt@gem_ctx_persistence@close-replace-rac=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-tglb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19717/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-tglb8/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19717/shard-tglb1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19717/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19717/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-hsw7/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19717/shard-hsw1/igt@gem_exec_reloc@basic-many-active@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-kbl6/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-=
WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_19717/shard-kbl1/igt@gem_exec_schedule@u-fair=
slice@vcs1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-busy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-hsw5/igt@gem_fenced_exec_thrash@no-spare-fences-busy.htm=
l">INCOMPLETE</a> ([i915#2055]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19717/shard-hsw1/igt@gem_fenced_exec_thrash@no-spa=
re-fences-busy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#21=
90]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
717/shard-tglb8/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-tglb5/igt@kms_async_flips@test-time-stamp.html">FAIL</a>=
 ([i915#2597]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19717/shard-tglb2/igt@kms_async_flips@test-time-stamp.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-iclb2/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">DMES=
G-WARN</a> ([i915#1226]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19717/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-180=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl2/igt@kms_color@pipe-b-ctm-red-to-blue.html">FAIL</a>=
 ([i915#129]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19717/shard-skl2/igt@kms_color@pipe-b-ctm-red-to-blue.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19717/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-256x85=
-offscreen.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCO=
MPLETE</a> ([i915#300]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19717/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.=
html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-dpms-off-vs-modeset-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl9/igt@kms_flip@flip-vs-dpms-off-vs-modeset-interrupti=
ble@a-edp1.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19717/shard-skl1/igt@kms_flip@flip-v=
s-dpms-off-vs-modeset-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19717/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</=
a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19717/shard-skl6/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledprimary:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-iclb2/igt@kms_frontbuffer_tracking@fbcpsr-shrfb-scaledpr=
imary.html">SKIP</a> ([i915#668]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19717/shard-iclb6/igt@kms_frontbuffer_tracking@f=
bcpsr-shrfb-scaledprimary.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19717/shard-skl2/igt@kms_plane_alpha_blend@=
pipe-b-coverage-7efc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9795/shard-iclb3/igt@kms_psr@psr2_sprite_plane_">SKIP</a> ([fdo#109=
441]) -&gt; [PASS][150]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============6682781750164067366==--

--===============2124643427==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============2124643427==--
