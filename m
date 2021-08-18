Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DE83F0A77
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Aug 2021 19:48:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 927536E88A;
	Wed, 18 Aug 2021 17:48:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DE3B46E5D4;
 Wed, 18 Aug 2021 17:48:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D5109A8836;
 Wed, 18 Aug 2021 17:48:06 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7311151358961891503=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tim Gardner" <tim.gardner@canonical.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 18 Aug 2021 17:48:06 -0000
Message-ID: <162930888683.16674.14074478633240310611@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210818145159.12402-1-tim.gardner@canonical.com>
In-Reply-To: <20210818145159.12402-1-tim.gardner@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Avoid_NULL_dereference_in_=5F=5Fi915=5Fgem=5Fobjec?=
 =?utf-8?b?dF9sb2NrKCk=?=
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

--===============7311151358961891503==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Avoid NULL dereference in __i915_gem_object_lock()
URL   : https://patchwork.freedesktop.org/series/93787/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_10495_full -> Patchwork_20845_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_20845_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@feature_discovery@display-4x:
    - shard-iclb:         NOTRUN -> [SKIP][1] ([i915#1839])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@feature_discovery@display-4x.html

  * igt@feature_discovery@psr2:
    - shard-iclb:         [PASS][2] -> [SKIP][3] ([i915#658])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb2/igt@feature_discovery@psr2.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - shard-snb:          NOTRUN -> [DMESG-WARN][4] ([i915#3002])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-snb6/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@legacy-engines-queued:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271] / [i915#1099]) +7 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-snb6/igt@gem_ctx_persistence@legacy-engines-queued.html

  * igt@gem_ctx_persistence@many-contexts:
    - shard-tglb:         NOTRUN -> [FAIL][6] ([i915#2410])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [PASS][7] -> [TIMEOUT][8] ([i915#2369] / [i915#3063] / [i915#3648])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-tglb1/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-tglb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2842])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-iclb:         NOTRUN -> [SKIP][16] ([fdo#109313])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-iclb:         [PASS][17] -> [FAIL][18] ([i915#307])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#3323])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-skl:          NOTRUN -> [DMESG-WARN][20] ([i915#3002])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl9/igt@gem_userptr_blits@input-checking.html
    - shard-apl:          NOTRUN -> [DMESG-WARN][21] ([i915#3002]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl7/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][22] ([i915#2724])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-snb5/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          NOTRUN -> [DMESG-WARN][23] ([i915#180]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl8/igt@gem_workarounds@suspend-resume.html

  * igt@gen3_mixed_blits:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#109289]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@gen3_mixed_blits.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#2856])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_pm_rpm@modeset-pc8-residency-stress:
    - shard-apl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +223 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl8/igt@i915_pm_rpm@modeset-pc8-residency-stress.html

  * igt@kms_big_fb@linear-32bpp-rotate-0:
    - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118] / [i915#95]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:
    - shard-apl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-snb:          NOTRUN -> [SKIP][30] ([fdo#109271]) +477 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-snb5/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-8bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110723])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rotate-270.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +2 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3886]) +9 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl8/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [i915#3886]) +1 similar issue
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +19 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +21 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-snb5/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109278] / [i915#1149])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_color_chamelium@pipe-a-gamma:
    - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl4/igt@kms_color_chamelium@pipe-a-gamma.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][40] ([i915#1319])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@uevent:
    - shard-apl:          NOTRUN -> [FAIL][41] ([i915#2105])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl7/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109278] / [fdo#109279]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
    - shard-glk:          [PASS][43] -> [FAIL][44] ([i915#1888] / [i915#3444])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html

  * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#3444]) +1 similar issue
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109278]) +7 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109274] / [fdo#109278])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic.html

  * igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:
    - shard-skl:          [PASS][49] -> [DMESG-WARN][50] ([i915#1982])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl9/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions.html

  * igt@kms_dsc@basic-dsc-enable@edp-1-pipe-c:
    - shard-iclb:         NOTRUN -> [DMESG-WARN][51] ([i915#1226]) +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb2/igt@kms_dsc@basic-dsc-enable@edp-1-pipe-c.html

  * igt@kms_flip@2x-flip-vs-fences-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109274])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_flip@2x-flip-vs-fences-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:
    - shard-kbl:          [PASS][53] -> [FAIL][54] ([i915#79])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][55] -> [DMESG-WARN][56] ([i915#180]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@b-edp1:
    - shard-skl:          [PASS][57] -> [INCOMPLETE][58] ([i915#198])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html

  * igt@kms_flip@flip-vs-suspend@c-dp1:
    - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +4 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-apl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2672])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:
    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271]) +17 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109280]) +6 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#111825])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][65] ([fdo#108145] / [i915#265]) +2 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][66] ([fdo#108145] / [i915#265])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][67] ([i915#265])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#2733])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#658]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#658])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109441])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_cpu:
    - shard-iclb:         [PASS][72] -> [SKIP][73] ([fdo#109441])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html

  * igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111615])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180.html

  * igt@kms_vblank@pipe-d-wait-idle:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#533]) +3 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.html

  * igt@kms_vrr@flip-basic:
    - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109502])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_vrr@flip-basic.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#2437]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl3/igt@kms_writeback@writeback-fb-id.html

  * igt@prime_nv_pcopy@test_semaphore:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109291])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@prime_nv_pcopy@test_semaphore.html

  * igt@sysfs_clients@pidname:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2994]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl6/igt@sysfs_clients@pidname.html

  * igt@sysfs_clients@sema-25:
    - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2994])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][81] ([i915#2846]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl3/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-kbl:          [FAIL][83] ([i915#2842]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl4/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl6/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-tglb:         [FAIL][85] ([i915#2842]) -> [PASS][86] +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][87] ([i915#2842]) -> [PASS][88] +1 similar issue
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
    - shard-iclb:         [FAIL][89] ([i915#2849]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [INCOMPLETE][91] ([i915#198]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl8/igt@i915_suspend@sysfs-reader.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl9/igt@i915_suspend@sysfs-reader.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:
    - shard-skl:          [DMESG-WARN][93] ([i915#1982]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge.html

  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [FAIL][95] ([i915#79]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][97] ([i915#180]) -> [PASS][98] +3 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +2 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-skl:          [FAIL][101] ([i915#2122]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl4/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][103] ([i915#1188]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl4/igt@kms_hdr@bpc-switch.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [FAIL][105] ([fdo#108145] / [i915#265]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_mmap_gtt:
    - shard-iclb:         [SKIP][107] ([fdo#109441]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][109] ([i915#1982] / [i915#262]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-skl4/igt@perf_pmu@module-unload.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl8/igt@perf_pmu@module-unload.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][111] ([i915#2842]) -> [FAIL][112] ([i915#2852])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][113] ([i915#1804] / [i915#2684]) -> [WARN][114] ([i915#2684])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
    - shard-iclb:         [SKIP][115] ([i915#658]) -> [SKIP][116] ([i915#2920])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][117] ([i915#2920]) -> [SKIP][118] ([i915#658])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-iclb3/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122]) ([i915#1436] / [i915#180] / [i915#3002] / [i915#3363]) -> ([FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129]) ([i915#1436] / [i915#180] / [i915#2505] / [i915#3002] / [i915#3363])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl4/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl7/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl2/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl6/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl1/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl4/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl6/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl4/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl4/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][130], [FAIL][131], [FAIL][132]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3363]) -> ([FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-apl2/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-apl6/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-apl6/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl8/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl3/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl1/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl1/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109502]: https://bugs.freedesktop.org/show_bug.cgi?id=109502
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1226]: https://gitlab.freedesktop.org/drm/intel/issues/1226
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
  [i915#1888]: https:/

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/index.html

--===============7311151358961891503==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Avoid NULL dereference in __i9=
15_gem_object_lock()</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/93787/">https://patchwork.freedesktop.org/series/93787/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20845/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20845/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_10495_full -&gt; Patchwork_20845_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_20845_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@feature_discovery@display-4x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@feature_discovery@display-4x.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1839">i915#1839</a>)</li>
</ul>
</li>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-ic=
lb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-snb6/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-queued:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-snb6/igt@gem_ctx_persistence@legacy-eng=
ines-queued.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.o=
rg/drm/intel/issues/1099">i915#1099</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@gem_ctx_persistence@many-cont=
exts.html">FAIL</a> ([i915#2410])</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-tglb1/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-tg=
lb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#3063]=
 / [i915#3648])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
0845/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/s=
hard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/s=
hard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) +=
3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@gem_exec_flush@basic-batch-ke=
rnel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb8/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845=
/shard-iclb3/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> ([i915#307]=
)</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl8/igt@gem_userptr_blits@dmabuf-sync.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#3323])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20845/shard-skl9/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_20845/shard-apl7/igt@gem_userptr_blits@input-checkin=
g.html">DMESG-WARN</a> ([i915#3002]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-snb5/igt@gem_userptr_blits@vma-merge.ht=
ml">FAIL</a> ([i915#2724])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl8/igt@gem_workarounds@suspend-resume=
.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen3_mixed_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@gen3_mixed_blits.html">SKIP</=
a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109289">fdo#1=
09289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@gen9_exec_parse@valid-registe=
rs.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-pc8-residency-stress:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl8/igt@i915_pm_rpm@modeset-pc8-reside=
ncy-stress.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a>) +223 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-glk5/igt@kms_big_fb@linear-32bpp-rotate-0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845=
/shard-glk3/igt@kms_big_fb@linear-32bpp-rotate-0.html">DMESG-WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / =
[i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_big_fb@x-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-snb5/igt@kms_big_fb@y-tiled-max-hw-stri=
de-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https://bug=
s.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +477 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-8bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_big_fb@yf-tiled-8bpp-rota=
te-270.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-skl4/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl8/igt@kms_ccs@pipe-c-bad-rotation-90=
-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +9 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_ccs@pipe-c-missing-ccs-bu=
ffer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freede=
sktop.org/show_bug.cgi?id=3D109278">fdo#109278</a> / [i915#3886]) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D111827">fdo#111827</a>) +19 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-snb5/igt@kms_chamelium@hdmi-mode-timing=
s.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +21 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_color@pipe-d-ctm-max.html=
">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10927=
8">fdo#109278</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/1149">i915#1149</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_color_chamelium@pipe-a-de=
gamma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111827">fdo#111827</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-gamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-skl4/igt@kms_color_chamelium@pipe-a-gam=
ma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl7/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-=
512x512-offscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109278">fdo#109278</a> / <a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D109279">fdo#109279</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20845/shard-glk9/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html">=
FAIL</a> (<a href=3D"https:/">i915#1888</a> / [i915#3444])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_20845/shard-skl5/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html=
">FAIL</a> ([i915#3444]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-=
64x64-sliding.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109278">fdo#109278</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-cursor-vs-flip-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_cursor_legacy@2x-cursor-v=
s-flip-atomic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipa-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl9/igt@kms_cursor_legacy@cursora-vs-flipa-atomic-tran=
sitions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20845/shard-skl6/igt@kms_cursor_legacy@cursora-vs-flipa-ato=
mic-transitions.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_dsc@basic-dsc-enable@edp-1-pipe-c:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb2/igt@kms_dsc@basic-dsc-enable@edp-=
1-pipe-c.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/1226">i915#1226</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-fences-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_flip@2x-flip-vs-fences-in=
terruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
c-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20845/shard-kbl6/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@c-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-apl2/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/s=
hard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl5/igt@kms_flip@flip-vs-suspend@b-edp1.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/=
shard-skl7/igt@kms_flip@flip-vs-suspend@b-edp1.html">INCOMPLETE</a> ([i915#=
198])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-kbl1/igt@kms_flip@flip-vs-suspend@c-dp1.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/s=
hard-kbl6/igt@kms_flip@flip-vs-suspend@c-dp1.html">DMESG-WARN</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +4 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-msflip-blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-skl6/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-indfb-msflip-blt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +17 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-shrfb-fliptrack-mmap-gtt.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-cur-indfb-onoff.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-opaque-fb.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl7/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sh=
ow_bug.cgi?id=3D109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area-5.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_page_flip:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@kms_psr@psr2_primary_page_fli=
p.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/sh=
ard-iclb3/igt@kms_psr@psr2_sprite_mmap_cpu.html">SKIP</a> (<a href=3D"https=
://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@primary-yf-tiled-reflect-x-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-tglb8/igt@kms_rotation_crc@primary-yf-t=
iled-reflect-x-180.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/=
show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl8/igt@kms_vblank@pipe-d-wait-idle.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
271">fdo#109271</a> / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb7/igt@kms_vrr@flip-basic.html">SKIP=
</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109502">fdo=
#109502</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl3/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test_semaphore:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@prime_nv_pcopy@test_semaphore=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@pidname:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-apl6/igt@sysfs_clients@pidname.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb6/igt@sysfs_clients@sema-25.html">S=
KIP</a> ([i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([=
i915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_20845/shard-kbl3/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-kbl4/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20845/shard-kbl6/igt@gem_exec_fair@basic-pace-share@rcs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-tglb3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20845/shard-tglb8/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +=
1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10495/shard-glk3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a=
> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_20845/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> +1 similar issue</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_10495/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20845/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">PAS=
S</a></p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl8/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a>=
 ([i915#198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_20845/shard-skl9/igt@i915_suspend@sysfs-reader.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl1/igt@kms_cursor_edge_walk@pipe-b-256x256-right-edge=
.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_20845/shard-skl5/igt@kms_cursor_edge_walk@pipe=
-b-256x256-right-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:=
</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptib=
le@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-glk6/igt@kms_flip@2x-=
flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20845/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptibl=
e@a-dp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_20845/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptibl=
e@c-dp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-ed=
p1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_20845/shard-skl4/igt@kms_flip@wf_vblank-ts-check-i=
nterruptible@b-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl4/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-s=
kl8/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / [i915#265]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_20845/shard-skl3/igt@kms_plane_alpha_blend=
@pipe-b-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb3/igt@kms_psr@psr2_primary_mmap_gtt.html">SKIP</a> =
(<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#1094=
41</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_20845/shard-iclb2/igt@kms_psr@psr2_primary_mmap_gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-skl4/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([=
i915#1982] / [i915#262]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_20845/shard-skl8/igt@perf_pmu@module-unload.html">PASS</a=
></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_20845/shard-iclb8/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2852])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20845/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WA=
RN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html">SK=
IP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20845/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.htm=
l">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-=
5.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_20845/shard-iclb3/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-5.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10495/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-kbl2/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1436">i915#1436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/180">i915#180</a> / [i915#3002] / [i915#3363]) -&gt; (<a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl6/igt@runn=
er@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_20845/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl4/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20845/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kbl4/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_20845/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-kb=
l4/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/180">i915#180</a> / [i915#2505] / [i915#3002] =
/ [i915#3363])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_10495/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10495/shard-apl6/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_10495/shard-apl6/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a>=
 / [i915#3363]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_20845/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl2/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_20845/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl1/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_20845/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20845/shard-apl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_20845/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#1=
80</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i=
915#1814</a> / [i915#3002] / [i915#3363])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7311151358961891503==--
