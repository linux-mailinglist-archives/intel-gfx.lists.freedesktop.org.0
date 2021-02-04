Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB2930EB9A
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 05:48:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A28D96EC76;
	Thu,  4 Feb 2021 04:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id EDFD46EC73;
 Thu,  4 Feb 2021 04:48:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DEF01AA0EA;
 Thu,  4 Feb 2021 04:48:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Daniel Vetter" <daniel.vetter@ffwll.ch>
Date: Thu, 04 Feb 2021 04:48:03 -0000
Message-ID: <161241408387.4504.410766127283150156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
In-Reply-To: <20210203211948.2529297-1-daniel.vetter@ffwll.ch>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgUkZD?=
 =?utf-8?q?=3A_dma-buf=3A_Require_VM=5FSPECIAL_vma_for_mmap?=
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
Content-Type: multipart/mixed; boundary="===============1618865066=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1618865066==
Content-Type: multipart/alternative;
 boundary="===============4609903314920561412=="

--===============4609903314920561412==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: RFC: dma-buf: Require VM_SPECIAL vma for mmap
URL   : https://patchwork.freedesktop.org/series/86667/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9727_full -> Patchwork_19579_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19579_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19579_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19579_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_mmap_write_crc@main:
    - shard-iclb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb5/igt@kms_mmap_write_crc@main.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb8/igt@kms_mmap_write_crc@main.html
    - shard-skl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl2/igt@kms_mmap_write_crc@main.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl1/igt@kms_mmap_write_crc@main.html
    - shard-tglb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb1/igt@kms_mmap_write_crc@main.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb3/igt@kms_mmap_write_crc@main.html

  * igt@prime_mmap@test_errors:
    - shard-glk:          [PASS][7] -> [DMESG-WARN][8] +9 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk2/igt@prime_mmap@test_errors.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-glk8/igt@prime_mmap@test_errors.html

  * igt@prime_mmap@test_forked:
    - shard-iclb:         [PASS][9] -> [DMESG-WARN][10] +8 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb2/igt@prime_mmap@test_forked.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb3/igt@prime_mmap@test_forked.html

  * igt@prime_mmap@test_map_unmap:
    - shard-snb:          [PASS][11] -> [DMESG-WARN][12] +9 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-snb5/igt@prime_mmap@test_map_unmap.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-snb5/igt@prime_mmap@test_map_unmap.html

  * igt@prime_mmap@test_refcounting:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] +8 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb1/igt@prime_mmap@test_refcounting.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@prime_mmap@test_refcounting.html
    - shard-skl:          [PASS][15] -> [DMESG-WARN][16] +6 similar issues
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl10/igt@prime_mmap@test_refcounting.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl4/igt@prime_mmap@test_refcounting.html
    - shard-apl:          [PASS][17] -> [DMESG-WARN][18] +9 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl2/igt@prime_mmap@test_refcounting.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@prime_mmap@test_refcounting.html

  * igt@prime_mmap_coherency@read:
    - shard-kbl:          [PASS][19] -> [DMESG-WARN][20] +8 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl1/igt@prime_mmap_coherency@read.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@prime_mmap_coherency@read.html
    - shard-hsw:          [PASS][21] -> [DMESG-WARN][22] +9 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-hsw4/igt@prime_mmap_coherency@read.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hsw1/igt@prime_mmap_coherency@read.html

  

### Piglit changes ###

#### Possible regressions ####

  * spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat3-dmat3-zero-sign (NEW):
    - {pig-icl-1065g7}:   NOTRUN -> [CRASH][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/pig-icl-1065g7/spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat3-dmat3-zero-sign.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9727_full and Patchwork_19579_full:

### New Piglit tests (1) ###

  * spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat3-dmat3-zero-sign:
    - Statuses : 1 crash(s)
    - Exec time: [22.90] s

  

Known issues
------------

  Here are the changes found in Patchwork_19579_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-cleanup:
    - shard-hsw:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#1099])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@gem_ctx_persistence@legacy-engines-cleanup.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][25] ([i915#1037] / [i915#180])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [PASS][26] -> [FAIL][27] ([i915#2842]) +2 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][28] -> [FAIL][29] ([i915#2842])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [PASS][30] -> [FAIL][31] ([i915#2842])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][32] -> [SKIP][33] ([fdo#109271])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][34] ([i915#2389])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_schedule@u-fairslice@bcs0:
    - shard-iclb:         [PASS][35] -> [DMESG-WARN][36] ([i915#2803])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb5/igt@gem_exec_schedule@u-fairslice@bcs0.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@gem_exec_schedule@u-fairslice@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#1610])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
    - shard-tglb:         [PASS][39] -> [DMESG-WARN][40] ([i915#2803])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-semaphore-codependency:
    - shard-skl:          [PASS][41] -> [DMESG-WARN][42] ([i915#1610])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl4/igt@gem_exec_schedule@u-semaphore-codependency.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl2/igt@gem_exec_schedule@u-semaphore-codependency.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][43] ([i915#3002])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl4/igt@gem_userptr_blits@input-checking.html
    - shard-kbl:          NOTRUN -> [DMESG-WARN][44] ([i915#3002])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@gem_userptr_blits@input-checking.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271]) +27 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][46] ([i915#2521])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_chamelium@vga-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_chamelium@vga-hpd-after-suspend.html

  * igt@kms_color@pipe-c-ctm-0-5:
    - shard-skl:          [PASS][49] -> [DMESG-WARN][50] ([i915#1982]) +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl10/igt@kms_color@pipe-c-ctm-0-5.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl2/igt@kms_color@pipe-c-ctm-0-5.html

  * igt@kms_color@pipe-d-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271]) +17 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_color@pipe-d-ctm-negative.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-hsw:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-kbl:          NOTRUN -> [TIMEOUT][53] ([i915#1319])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#54]) +9 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:
    - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#2346])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-tglb:         [PASS][58] -> [FAIL][59] ([i915#2346])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][62] -> [DMESG-WARN][63] ([i915#180]) +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:
    - shard-hsw:          NOTRUN -> [SKIP][64] ([fdo#109271]) +21 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([fdo#108145] / [i915#265])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_cursor@pipe-d-overlay-size-64:
    - shard-hsw:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_plane_cursor@pipe-d-overlay-size-64.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#658])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@kms_psr@primary_page_flip:
    - shard-hsw:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#1072])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_psr@primary_page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][71] -> [SKIP][72] ([fdo#109441]) +1 similar issue
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb3/igt@kms_psr@psr2_no_drrs.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [FAIL][73] ([i915#2842]) -> [PASS][74] +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][75] ([i915#2842]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][77] ([i915#2842]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-iclb:         [FAIL][79] ([i915#2842]) -> [PASS][80]
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][81] ([i915#1436] / [i915#716]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-iclb:         [DMESG-FAIL][83] ([i915#2291] / [i915#541]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb8/igt@i915_selftest@live@gt_heartbeat.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb7/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [INCOMPLETE][85] ([i915#2782]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-hsw4/igt@i915_selftest@live@hangcheck.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@i915_selftest@live@hangcheck.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][87] ([i915#54]) -> [PASS][88] +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_flip@nonexisting-fb-interruptible@a-edp1:
    - shard-skl:          [DMESG-WARN][91] ([i915#1982]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl3/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl6/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][93] ([fdo#108145] / [i915#265]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [SKIP][95] ([fdo#109441]) -> [PASS][96] +1 similar issue
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html

  * {igt@sysfs_clients@recycle}:
    - shard-iclb:         [FAIL][97] ([i915#3028]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb7/igt@sysfs_clients@recycle.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@sysfs_clients@recycle.html

  * {igt@sysfs_clients@split-10@vcs0}:
    - shard-skl:          [SKIP][99] ([fdo#109271] / [i915#3026]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl7/igt@sysfs_clients@split-10@vcs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl1/igt@sysfs_clients@split-10@vcs0.html

  * {igt@sysfs_clients@split-25@vcs0}:
    - shard-skl:          [SKIP][101] ([fdo#109271]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-skl9/igt@sysfs_clients@split-25@vcs0.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl8/igt@sysfs_clients@split-25@vcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-glk:          [FAIL][103] ([i915#2851]) -> [FAIL][104] ([i915#2842])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][105] ([i915#1804] / [i915#2684]) -> [WARN][106] ([i915#2681] / [i915#2684])
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][107] ([i915#2920]) -> [SKIP][108] ([i915#658])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][109] ([i915#658]) -> [SKIP][110] ([i915#2920])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][111], [FAIL][112], [FAIL][113], [FAIL][114]) ([i915#1814] / [i915#2295] / [i915#3002]) -> ([FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2505] / [i915#3002])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl7/igt@runner@aborted.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl7/igt@runner@aborted.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl4/igt@runner@aborted.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl2/igt@runner@aborted.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@runner@aborted.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl4/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl6/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl6/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][128], [FAIL][129], [FAIL][130]) ([i915#2295] / [i915#2724] / [i915#3002]) -> ([FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb5/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb5/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb6/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb3/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb4/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb6/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb6/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb3/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb4/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb8/igt@runner@aborted.html
    - shard-apl:          ([FAIL][144], [FAIL][145], [FAIL][146]) ([i915#2295] / [i915#3002]) -> ([FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL][159], [FAIL][160]) ([i915#1610] / [i915#2295] / [i915#2426] / [i915#3002])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl3/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl4/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl7/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl2/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl4/igt@runner@aborted.html
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl2/igt@runner@aborted.html
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted.html
    - shard-tglb:         ([FAIL][161], [FAIL][162], [FAIL][163]) ([i915#2295] / [i915#2667] / [i915#3002]) -> ([FAIL][164], [FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170], [FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176]) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#2803] / [i915#3002])
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb6/igt@runner@aborted.html
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb1/igt@runner@aborted.html
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb3/igt@runner@aborted.html
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb3/igt@runner@aborted.html
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb1/igt@runner@aborted.html
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb7/igt@runner@aborted.html
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb1/igt@runner@aborted.html
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@runner@aborted.html
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb5/igt@runner@aborted.html
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@runner@aborted.html
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb3/igt@runner@aborted.html
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb5/igt@runner@aborted.html
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@runner@aborted.html
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb7/igt@runner@aborted.html
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb1/igt@runner@aborted.html
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb7/igt@runner@aborted.html
    - shard-skl:          ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180]) ([i915#1436] / [i915#2295] / [i915#2426] / [i915#3002]) -> ([FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/index.html

--===============4609903314920561412==
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
<tr><td><b>Series:</b></td><td>RFC: dma-buf: Require VM_SPECIAL vma for mma=
p</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86667/">https://patchwork.freedesktop.org/series/86667/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19579/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19579/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9727_full -&gt; Patchwork_19579_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19579_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19579_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19579_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@kms_mmap_write_crc@main:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-iclb5/igt@kms_mmap_write_crc@main.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-icl=
b8/igt@kms_mmap_write_crc@main.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-skl2/igt@kms_mmap_write_crc@main.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl1=
/igt@kms_mmap_write_crc@main.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-tglb1/igt@kms_mmap_write_crc@main.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tgl=
b3/igt@kms_mmap_write_crc@main.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_errors:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-glk2/igt@prime_mmap@test_errors.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-glk8=
/igt@prime_mmap@test_errors.html">DMESG-WARN</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_forked:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb2/igt@prime_mmap@test_forked.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-icl=
b3/igt@prime_mmap@test_forked.html">DMESG-WARN</a> +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_map_unmap:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-snb5/igt@prime_mmap@test_map_unmap.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-s=
nb5/igt@prime_mmap@test_map_unmap.html">DMESG-WARN</a> +9 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_refcounting:</p>
<ul>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-tglb1/igt@prime_mmap@test_refcounting.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard=
-tglb6/igt@prime_mmap@test_refcounting.html">DMESG-WARN</a> +8 similar issu=
es</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-skl10/igt@prime_mmap@test_refcounting.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard=
-skl4/igt@prime_mmap@test_refcounting.html">DMESG-WARN</a> +6 similar issue=
s</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-apl2/igt@prime_mmap@test_refcounting.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-=
apl3/igt@prime_mmap@test_refcounting.html">DMESG-WARN</a> +9 similar issues=
</p>
</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-kbl1/igt@prime_mmap_coherency@read.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kb=
l1/igt@prime_mmap_coherency@read.html">DMESG-WARN</a> +8 similar issues</p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-hsw4/igt@prime_mmap_coherency@read.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-hs=
w1/igt@prime_mmap_coherency@read.html">DMESG-WARN</a> +9 similar issues</p>
</li>
</ul>
</li>
</ul>
<h3>Piglit changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat3-dmat3=
-zero-sign (NEW):<ul>
<li>{pig-icl-1065g7}:   NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/pig-icl-1065g7/spec@glsl-4.20@execution@conve=
rsion@geom-conversion-implicit-mat3-dmat3-zero-sign.html">CRASH</a></li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9727_full and Patchwork_19=
579_full:</p>
<h3>New Piglit tests (1)</h3>
<ul>
<li>spec@glsl-4.20@execution@conversion@geom-conversion-implicit-mat3-dmat3=
-zero-sign:<ul>
<li>Statuses : 1 crash(s)</li>
<li>Exec time: [22.90] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19579_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-cleanup:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@gem_ctx_persistence@legacy-eng=
ines-cleanup.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@gem_eio@in-flight-suspend.html=
">DMESG-WARN</a> ([i915#1037] / [i915#180])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/sha=
rd-glk3/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([i915#2842]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1957=
9/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2=
842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/sh=
ard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/sha=
rd-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb5/igt@gem_exec_schedule@u-fairslice@bcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_195=
79/shard-iclb2/igt@gem_exec_schedule@u-fairslice@bcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-apl4/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579=
/shard-apl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([i=
915#1610])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9727/shard-tglb6/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1957=
9/shard-tglb3/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> (=
[i915#2803])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-semaphore-codependency:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl4/igt@gem_exec_schedule@u-semaphore-codependency.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19579/shard-skl2/igt@gem_exec_schedule@u-semaphore-codependency.html">D=
MESG-WARN</a> ([i915#1610])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19579/shard-skl4/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19579/shard-kbl2/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@i915_pm_rpm@modeset-lpsp-stres=
s-no-wait.html">SKIP</a> ([fdo#109271]) +27 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_async_flips@alternate-sync=
-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@kms_chamelium@hdmi-hpd-with-en=
abled-mode.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_chamelium@vga-hpd-after-su=
spend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl10/igt@kms_color@pipe-c-ctm-0-5.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-s=
kl2/igt@kms_color@pipe-c-ctm-0-5.html">DMESG-WARN</a> ([i915#1982]) +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_color@pipe-d-ctm-negative.=
html">SKIP</a> ([fdo#109271]) +17 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_color_chamelium@pipe-b-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-kbl2/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19579/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">FAIL</a> ([i915#54]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-legac=
y.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19579/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-l=
egacy.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19579/shard-tglb6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL<=
/a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/sh=
ard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN</a> ([i915#180=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/sh=
ard-kbl7/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> ([i915#180=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_frontbuffer_tracking@fbcps=
r-2p-primscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109271]) +21 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19579/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_cursor@pipe-d-overlay-size-64:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_plane_cursor@pipe-d-overla=
y-size-64.html">SKIP</a> ([fdo#109271] / [i915#533]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19579/shard-kbl2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19579/shard-skl4/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@primary_page_flip:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19579/shard-hsw8/igt@kms_psr@primary_page_flip.html=
">SKIP</a> ([fdo#109271] / [i915#1072])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb3=
/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +1 similar issue</l=
i>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19579/shard-kbl4/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-apl4/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19579/shard-apl3/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19579/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb4/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19579/shard-iclb3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl1/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19579/shard-skl4/igt@gen9_exec_parse@allowed-singl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb8/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> ([i915#2291] / [i915#541]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19579/shard-iclb7/igt@i915_selftest@live@gt_hear=
tbeat.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-hsw4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</=
a> ([i915#2782]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19579/shard-hsw8/igt@i915_selftest@live@hangcheck.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.ht=
ml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19579/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-o=
ffscreen.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMES=
G-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19579/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.=
html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@nonexisting-fb-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl3/igt@kms_flip@nonexisting-fb-interruptible@a-edp1.ht=
ml">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19579/shard-skl6/igt@kms_flip@nonexisting-fb-inte=
rruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min=
.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-skl2/igt@kms_plane_alpha_b=
lend@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html">SKIP</a> =
([fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19579/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle}:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb7/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#30=
28]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
579/shard-iclb2/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@split-10@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl7/igt@sysfs_clients@split-10@vcs0.html">SKIP</a> ([fd=
o#109271] / [i915#3026]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19579/shard-skl1/igt@sysfs_clients@split-10@vcs0.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@split-25@vcs0}:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-skl9/igt@sysfs_clients@split-25@vcs0.html">SKIP</a> ([fd=
o#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19579/shard-skl8/igt@sysfs_clients@split-25@vcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-glk1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> ([i915#2851]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19579/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAI=
L</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19579/shard-iclb1/igt@i915_pm_rc6_residency@rc6-fence=
.html">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-5.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19579/shard-iclb6/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-5.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb7/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKI=
P</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19579/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html=
">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9727/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>) ([i915#1814] / [i915#2295] / [i915#3002]) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19579/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19579/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-kb=
l7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html">FAIL</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard=
-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19579/shard-kbl1/igt@runner@aborted.html">FAIL<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/sh=
ard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19579/shard-kbl7/igt@runner@aborted.html">FA=
IL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579=
/shard-kbl1/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#1814] /=
 [i915#2295] / [i915#2505] / [i915#3002])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-iclb5/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9727/shard-iclb6/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i9=
15#2724] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19579/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb1=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19579/shard-iclb3/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-=
iclb4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19579/shard-iclb6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/s=
hard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb2/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
579/shard-iclb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb4/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19579/shard-iclb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19579/shard-iclb2/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-iclb8/igt@runne=
r@aborted.html">FAIL</a>) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#=
3002])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-apl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9727/shard-apl4/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915#=
3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19579/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19579/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl4/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19579/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19579/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl7/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19579/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl3/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19579/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19579/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-apl1/=
igt@runner@aborted.html">FAIL</a>) ([i915#1610] / [i915#2295] / [i915#2426]=
 / [i915#3002])</p>
</li>
<li>
<p>shard-tglb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9727/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9727/shard-tglb1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9727/shard-tglb3/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i9=
15#2667] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_19579/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb1=
/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19579/shard-tglb7/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-=
tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/s=
hard-tglb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb6/igt@runner@aborted.html"=
>FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
579/shard-tglb3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb5/igt@runner@aborted.=
html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19579/shard-tglb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19579/shard-tglb1/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19579/shard-tglb7/igt@runne=
r@aborted.html">FAIL</a>) ([i915#1764] / [i915#2295] / [i915#2426] / [i915#=
2803] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          ([FAIL][177], [FAIL][178], [FAIL][179], [FAIL][180])=
 ([i915#1436] / [i915#2295] / [i915#2426] / [i915#3002]) -&gt; ([FAIL][181]=
, [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4609903314920561412==--

--===============1618865066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1618865066==--
