Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D543D9B5C
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 03:58:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F9C46E981;
	Thu, 29 Jul 2021 01:58:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id D40F96E3D3;
 Thu, 29 Jul 2021 01:58:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id CCAB8A00F5;
 Thu, 29 Jul 2021 01:58:01 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Date: Thu, 29 Jul 2021 01:58:01 -0000
Message-ID: <162752388181.27325.10842469444441574662@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210728192100.132425-1-matthew.brost@intel.com>
In-Reply-To: <20210728192100.132425-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Disable_bonding_on_gen12+_platforms?=
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
Content-Type: multipart/mixed; boundary="===============1934069953=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1934069953==
Content-Type: multipart/alternative;
 boundary="===============7523052045246943268=="

--===============7523052045246943268==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Disable bonding on gen12+ platforms
URL   : https://patchwork.freedesktop.org/series/93135/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10413_full -> Patchwork_20727_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_20727_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@runner@aborted:
    - {shard-rkl}:        ([FAIL][1], [FAIL][2], [FAIL][3], [FAIL][4], [FAIL][5]) ([i915#3002] / [i915#3621] / [i915#3810]) -> ([FAIL][6], [FAIL][7], [FAIL][8], [FAIL][9]) ([i915#2029] / [i915#3002] / [i915#3621] / [i915#3810])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-6/igt@runner@aborted.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-5/igt@runner@aborted.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-2/igt@runner@aborted.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-5/igt@runner@aborted.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-6/igt@runner@aborted.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-6/igt@runner@aborted.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-2/igt@runner@aborted.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-6/igt@runner@aborted.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-1/igt@runner@aborted.html

  
Known issues
------------

  Here are the changes found in Patchwork_20727_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-3x:
    - shard-glk:          NOTRUN -> [SKIP][10] ([fdo#109271]) +39 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@feature_discovery@display-3x.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#1099]) +3 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-snb2/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-iclb:         [PASS][12] -> [INCOMPLETE][13] ([i915#3057])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb3/igt@gem_ctx_persistence@many-contexts.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb2/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][14] ([i915#2846])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-apl:          [PASS][15] -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2842])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#2428])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb5/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][25] ([i915#2658])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl8/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#768])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3323])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][28] ([i915#2724])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-snb7/igt@gem_userptr_blits@vma-merge.html
    - shard-apl:          NOTRUN -> [FAIL][29] ([i915#3318])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl3/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1436] / [i915#716])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl1/igt@gen9_exec_parse@allowed-all.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl6/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@batch-invalid-length:
    - shard-snb:          NOTRUN -> [SKIP][32] ([fdo#109271]) +430 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-snb7/igt@gen9_exec_parse@batch-invalid-length.html

  * igt@i915_pm_rpm@basic-rte:
    - shard-kbl:          NOTRUN -> [FAIL][33] ([i915#579])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@i915_pm_rpm@basic-rte.html
    - shard-apl:          NOTRUN -> [FAIL][34] ([i915#579])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl7/igt@i915_pm_rpm@basic-rte.html
    - shard-glk:          NOTRUN -> [FAIL][35] ([i915#579])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@i915_pm_rpm@basic-rte.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          NOTRUN -> [INCOMPLETE][36] ([i915#2782])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-snb2/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          NOTRUN -> [DMESG-WARN][37] ([i915#118] / [i915#95])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][40] ([i915#3722]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
    - shard-iclb:         [PASS][41] -> [DMESG-WARN][42] ([i915#3621])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][43] ([fdo#109271]) +37 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl7/igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-frame-dump:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl1/igt@kms_chamelium@dp-frame-dump.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-glk:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_color@pipe-b-ctm-0-5:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_color@pipe-b-ctm-0-5.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_color_chamelium@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:
    - shard-snb:          NOTRUN -> [SKIP][51] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-snb2/igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([i915#3116])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@legacy:
    - shard-kbl:          NOTRUN -> [TIMEOUT][53] ([i915#1319])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_content_protection@legacy.html
    - shard-apl:          NOTRUN -> [TIMEOUT][54] ([i915#1319])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl7/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +111 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3359]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding.html

  * igt@kms_dp_tiled_display@basic-test-pattern:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([i915#426])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_dp_tiled_display@basic-test-pattern.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          NOTRUN -> [DMESG-WARN][59] ([i915#180])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][60] ([i915#180]) +3 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109285])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-tglb1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111825])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite.html

  * igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533]) +1 similar issue
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl1/igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-kbl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180]) +3 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
    - shard-iclb:         [PASS][70] -> [SKIP][71] ([fdo#109278])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb3/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb2/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-glk:          NOTRUN -> [FAIL][72] ([i915#265])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-apl:          NOTRUN -> [FAIL][73] ([i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html
    - shard-glk:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#658])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +4 similar issues
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl6/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-tglb:         NOTRUN -> [FAIL][79] ([i915#132] / [i915#3467])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][80] -> [SKIP][81] ([fdo#109441])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_selftest@all@damage_iter_no_damage:
    - shard-snb:          NOTRUN -> [INCOMPLETE][82] ([i915#3871])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-snb6/igt@kms_selftest@all@damage_iter_no_damage.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +273 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl6/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS][84] -> [FAIL][85] ([i915#1542])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-skl4/igt@perf@polling-parameterized.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl1/igt@perf@polling-parameterized.html

  * igt@prime_nv_pcopy@test3_3:
    - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109291])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@prime_nv_pcopy@test3_3.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994]) +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl3/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@sema-25:
    - shard-glk:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk7/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@debugfs_test@read_all_entries_display_off:
    - shard-skl:          [INCOMPLETE][89] -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-skl2/igt@debugfs_test@read_all_entries_display_off.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl8/igt@debugfs_test@read_all_entries_display_off.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl7/igt@gem_eio@in-flight-suspend.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@reset-stress:
    - {shard-rkl}:        [FAIL][93] ([i915#3115]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-5/igt@gem_eio@reset-stress.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-1/igt@gem_eio@reset-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [FAIL][95] ([i915#2842]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][97] ([i915#2842]) -> [PASS][98] +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][99] ([i915#2842]) -> [PASS][100] +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_suspend@basic-s4-devices:
    - {shard-rkl}:        [INCOMPLETE][101] ([i915#3189] / [i915#3810]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-1/igt@gem_exec_suspend@basic-s4-devices.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [DMESG-WARN][103] ([i915#118] / [i915#95]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk5/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][105] ([i915#79]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          [DMESG-WARN][107] ([i915#180]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [FAIL][109] ([fdo#108145] / [i915#265]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][111] ([fdo#109441]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          [INCOMPLETE][113] ([i915#155] / [i915#794]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl4/igt@perf_pmu@rc6-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl7/igt@perf_pmu@rc6-suspend.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [INCOMPLETE][115] ([i915#409]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb4/igt@prime_vgem@sync@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@prime_vgem@sync@rcs0.html

  * igt@sysfs_timeslice_duration@timeout@rcs0:
    - {shard-rkl}:        [FAIL][117] ([i915#3259]) -> [PASS][118] +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-5/igt@sysfs_timeslice_duration@timeout@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-1/igt@sysfs_timeslice_duration@timeout@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][119] ([i915#2876]) -> [FAIL][120] ([i915#2842])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][121] ([i915#2684]) -> [WARN][122] ([i915#1804] / [i915#2684])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][123] ([i915#1804] / [i915#2684]) -> [WARN][124] ([i915#2684])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][125] ([i915#2920]) -> [SKIP][126] ([i915#658]) +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][127] ([i915#658]) -> [SKIP][128] ([i915#2920]) +2 similar issues
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363]) -> ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [i915#3002] / [i915#3363] / [i915#716])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl1/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl6/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#3690] / [i915#409]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1814] / [i915#2426] / [i915#3002] / [i915#3690])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb2/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb4/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb5/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb8/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb3/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([fdo#109271] / [i915#180] / [

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/index.html

--===============7523052045246943268==
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
<tr><td><b>Series:</b></td><td>drm/i915: Disable bonding on gen12+ platform=
s</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93135/">https://patchwork.freedesktop.org/series/93135/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20727/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10413_full -&gt; Patchwork_20727_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
20727_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>igt@runner@aborted:<ul>
<li>{shard-rkl}:        (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_10413/shard-rkl-6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-5/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-rkl-2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-rkl-5/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10413/shard-rkl-6/igt@runner@aborted.html">FAIL</a>) ([i915#3002] / =
[i915#3621] / [i915#3810]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20727/shard-rkl-6/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-rk=
l-2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20727/shard-rkl-6/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/sha=
rd-rkl-1/igt@runner@aborted.html">FAIL</a>) ([i915#2029] / [i915#3002] / [i=
915#3621] / [i915#3810])</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20727_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-3x:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-glk7/igt@feature_discovery@display-3x.h=
tml">SKIP</a> ([fdo#109271]) +39 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-snb2/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb3/igt@gem_ctx_persistence@many-contexts.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_207=
27/shard-iclb2/igt@gem_ctx_persistence@many-contexts.html">INCOMPLETE</a> (=
[i915#3057])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl3/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-apl7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
727/shard-apl2/igt@gem_exec_fair@basic-none-share@rcs0.html">SKIP</a> ([fdo=
#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_207=
27/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#=
2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
727/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i91=
5#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/s=
hard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([fdo#109271])<=
/li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb5/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0727/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i=
915#2428])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl8/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@gem_render_copy@yf-tiled-mc-c=
cs-to-vebox-y-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-kbl7/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> ([fdo#109271] / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-snb7/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-apl3/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-kbl1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shar=
d-kbl6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / =
[i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-invalid-length:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-snb7/igt@gen9_exec_parse@batch-invalid-=
length.html">SKIP</a> ([fdo#109271]) +430 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@basic-rte:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-kbl3/igt@i915_pm_rpm@basic-rte.html">FAI=
L</a> ([i915#579])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-apl7/igt@i915_pm_rpm@basic-rte.html">FAI=
L</a> ([i915#579])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-glk7/igt@i915_pm_rpm@basic-rte.html">FAI=
L</a> ([i915#579])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-snb2/igt@i915_selftest@live@hangcheck.h=
tml">INCOMPLETE</a> ([i915#2782])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotat=
e-180.html">DMESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl8/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-skl7/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-async-flip.html">FAIL</a> ([i915#3722]) +1 similar issue<=
/li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate=
-180-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@kms_big_fb@y-tiled-max-hw-str=
ide-64bpp-rotate-180-async-flip.html">DMESG-WARN</a> ([i915#3621])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-kbl7/igt@kms_ccs@pipe-d-crc-primary-bas=
ic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271]) +37 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-frame-dump:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-kbl1/igt@kms_chamelium@dp-frame-dump.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_chamelium@hdmi-crc-nonplan=
ar-formats.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-skl6/igt@kms_color@pipe-b-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-s=
kl8/igt@kms_color@pipe-b-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl3/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_color_chamelium@pipe-b-ct=
m-0-25.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-invalid-ctm-matrix-sizes:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-snb2/igt@kms_color_chamelium@pipe-inval=
id-ctm-matrix-sizes.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +19 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_content_protection@dp-mst=
-type-1.html">SKIP</a> ([i915#3116])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_content_protection@legacy.h=
tml">TIMEOUT</a> ([i915#1319])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-apl7/igt@kms_content_protection@legacy.h=
tml">TIMEOUT</a> ([i915#1319])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-32x32-onscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-3=
2x32-onscreen.html">SKIP</a> ([fdo#109271]) +111 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-max-size-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-=
max-size-sliding.html">SKIP</a> ([i915#3359]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_cursor_crc@pipe-d-cursor-=
32x10-sliding.html">SKIP</a> ([fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_dp_tiled_display@basic-test-pattern:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_dp_tiled_display@basic-te=
st-pattern.html">SKIP</a> ([i915#426])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl1/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-dp1.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_flip@flip-vs-suspend@c-dp1=
.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-tglb1/igt@kms_force_connector_basic@for=
ce-load-detect.html">SKIP</a> ([fdo#109285])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-wc:<=
/p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-cur-indfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-cur-indfb-draw-pwrite.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@disable-crc-after-crtc-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl1/igt@kms_pipe_crc_basic@disable-crc=
-after-crtc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-skl8/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@p=
ipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_plane@plane-panning-bottom-ri=
ght-suspend@pipe-b-planes.html">DMESG-WARN</a> ([i915#180]) +3 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl8/igt@kms_plane_alpha_blend@pipe-b-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb3/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-prem=
ult-vs-constant.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb2/igt@kms_plane_alpha_blend@pipe-b-=
coverage-vs-premult-vs-constant.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-1:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-kbl3/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue=
</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-glk7/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-1.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl6/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-skl7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issu=
e</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-tglb6/igt@kms_psr@psr2_cursor_blt.html"=
>FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/=
shard-iclb5/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@all@damage_iter_no_damage:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-snb6/igt@kms_selftest@all@damage_iter_n=
o_damage.html">INCOMPLETE</a> ([i915#3871])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl6/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +273 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-skl4/igt@perf@polling-parameterized.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard=
-skl1/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_3:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-iclb8/igt@prime_nv_pcopy@test3_3.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-apl3/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20727/shard-glk7/igt@sysfs_clients@sema-25.html">SK=
IP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@debugfs_test@read_all_entries_display_off:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-skl2/igt@debugfs_test@read_all_entries_display_off.html=
">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20727/shard-skl8/igt@debugfs_test@read_all_entries_display_off.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a>=
 ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20727/shard-kbl1/igt@gem_eio@in-flight-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-rkl-5/igt@gem_eio@reset-stress.html">FAIL</a> ([i915#31=
15]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20=
727/shard-rkl-1/igt@gem_eio@reset-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20727/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-glk4/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20727/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAI=
L</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20727/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html=
">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-rkl-5/igt@gem_exec_suspend@basic-s4-devices.html">INCOM=
PLETE</a> ([i915#3189] / [i915#3810]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_20727/shard-rkl-1/igt@gem_exec_suspend@basic=
-s4-devices.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-glk8/igt@gem_exec_whisper@basic-queues-priority-all.htm=
l">DMESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-glk5/igt@gem_exec_whisper@b=
asic-queues-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-glk7/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/Patchwork_20727/shard-glk3/igt@kms_flip@flip-vs-expired=
-vblank-interruptible@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html">DME=
SG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20727/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend=
.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.htm=
l">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20727/shard-skl5/igt@kms_plane_alpha_blend=
@pipe-c-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> (=
[fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20727/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-kbl4/igt@perf_pmu@rc6-suspend.html">INCOMPLETE</a> ([i9=
15#155] / [i915#794]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20727/shard-kbl7/igt@perf_pmu@rc6-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb4/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i=
915#409]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_20727/shard-iclb8/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_timeslice_duration@timeout@rcs0:</p>
<ul>
<li>{shard-rkl}:        <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-rkl-5/igt@sysfs_timeslice_duration@timeout@rcs0.html">F=
AIL</a> ([i915#3259]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_20727/shard-rkl-1/igt@sysfs_timeslice_duration@timeout@rcs0.=
html">PASS</a> +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
([i915#2876]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20727/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> (=
[i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20727/shard-iclb3/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</=
a> ([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20727/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.=
html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a-2.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20727/shard-iclb5/igt@kms_psr2_sf@overlay-primary=
-update-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
2.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-iclb2/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10413/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-kbl1/igt@runner@aborte=
d.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2505] / [=
i915#3002] / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_20727/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-kbl1=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20727/shard-kbl3/igt@runner@aborted.html">FAIL</a>, =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-k=
bl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_20727/shard-kbl6/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20727/shard-kbl6/igt@runner@aborted.html">FAIL=
</a>) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2505] =
/ [i915#3002] / [i915#3363] / [i915#716])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10413/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb4/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10413/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10413/shard-iclb1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_10413/shard-iclb8/igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [=
i915#2426] / [i915#3002] / [i915#3690] / [i915#409]) -&gt; (<a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@runner=
@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20727/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/igt@r=
unner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20727/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20727/shard-iclb1/=
igt@runner@aborted.html">FAIL</a>) ([i915#1814] / [i915#2426] / [i915#3002]=
 / [i915#3690])</p>
</li>
<li>
<p>shard-apl:          ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153],=
 [FAIL][154]) ([fdo#109271] / [i915#180] / [</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7523052045246943268==--

--===============1934069953==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1934069953==--
