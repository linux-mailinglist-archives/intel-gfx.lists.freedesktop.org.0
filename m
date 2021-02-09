Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6218D31556A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 18:53:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC5A6EB8C;
	Tue,  9 Feb 2021 17:53:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE9766EB86;
 Tue,  9 Feb 2021 17:53:05 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id C6CA1A47E1;
 Tue,  9 Feb 2021 17:53:05 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Auld" <matthew.auld@intel.com>
Date: Tue, 09 Feb 2021 17:53:05 -0000
Message-ID: <161289318580.28236.17748947382057784367@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210209120027.229700-1-matthew.auld@intel.com>
In-Reply-To: <20210209120027.229700-1-matthew.auld@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv2=2C1/4=5D_drm/i915=3A_Create_stolen_memo?=
 =?utf-8?q?ry_region_from_local_memory?=
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
Content-Type: multipart/mixed; boundary="===============1098528090=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1098528090==
Content-Type: multipart/alternative;
 boundary="===============2232787152954995135=="

--===============2232787152954995135==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [v2,1/4] drm/i915: Create stolen memory region from local memory
URL   : https://patchwork.freedesktop.org/series/86895/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9750_full -> Patchwork_19641_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19641_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@hang:
    - shard-hsw:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@gem_ctx_persistence@hang.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][2] -> [FAIL][3] ([i915#2842])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
    - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842]) +1 similar issue
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][10] ([i915#2842])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_reloc@basic-many-active@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][11] ([i915#2389])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb2/igt@gem_exec_reloc@basic-many-active@vcs1.html

  * igt@gem_exec_reloc@basic-parallel:
    - shard-kbl:          NOTRUN -> [TIMEOUT][12] ([i915#1729])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@gem_exec_reloc@basic-parallel.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-skl:          [PASS][13] -> [DMESG-WARN][14] ([i915#2803])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vcs1:
    - shard-kbl:          [PASS][15] -> [DMESG-WARN][16] ([i915#1610] / [i915#2803])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vcs1.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl2/igt@gem_exec_schedule@u-fairslice@vcs1.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [PASS][17] -> [INCOMPLETE][18] ([i915#1895])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb3/igt@gem_exec_whisper@basic-queues-priority.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][19] ([i915#3002])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl4/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][20] ([i915#2502] / [i915#2667])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-apl:          [PASS][21] -> [INCOMPLETE][22] ([i915#1630])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-apl8/igt@gem_workarounds@suspend-resume.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl7/igt@gem_workarounds@suspend-resume.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@gen9_exec_parse@allowed-single.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_hangman@engine-error@vecs0:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271]) +137 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl2/igt@i915_hangman@engine-error@vecs0.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][26] -> [FAIL][27] ([i915#454])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb3/igt@i915_pm_dc@dc6-psr.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb2/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][28] -> [FAIL][29] ([i915#2597])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-tglb3/igt@kms_async_flips@test-time-stamp.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
    - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-tglb6/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html

  * igt@kms_big_joiner@basic:
    - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#2705])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-b-ctm-green-to-red:
    - shard-hsw:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_color_chamelium@pipe-b-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +11 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827]) +1 similar issue
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          NOTRUN -> [TIMEOUT][37] ([i915#1319])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl4/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][38] ([i915#2105])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
    - shard-skl:          NOTRUN -> [FAIL][39] ([i915#54]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#54]) +3 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
    - shard-hsw:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#533]) +7 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw8/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][43] -> [FAIL][44] ([i915#2370])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#79])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][47] ([i915#180]) +3 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
    - shard-skl:          [PASS][48] -> [INCOMPLETE][49] ([i915#2295])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][50] ([i915#2055] / [i915#2295])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1.html

  * igt@kms_flip@flip-vs-suspend@b-dp1:
    - shard-apl:          [PASS][51] -> [DMESG-WARN][52] ([i915#180]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html

  * igt@kms_flip@flip-vs-suspend@c-hdmi-a1:
    - shard-hsw:          NOTRUN -> [INCOMPLETE][53] ([i915#2055])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdmi-a1.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-skl:          NOTRUN -> [FAIL][54] ([i915#2628])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#49])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
    - shard-apl:          [PASS][57] -> [FAIL][58] ([i915#49])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#111825]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109280]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271]) +128 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl7/igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#1188])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][64] -> [DMESG-WARN][65] ([i915#180]) +1 similar issue
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +3 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-kbl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_lowres@pipe-b-tiling-yf:
    - shard-hsw:          NOTRUN -> [SKIP][71] ([fdo#109271]) +73 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_plane_lowres@pipe-b-tiling-yf.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#2733])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +4 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl8/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109642] / [fdo#111068] / [i915#658])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb2/igt@kms_psr2_su@page_flip.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb7/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_no_drrs:
    - shard-iclb:         [PASS][77] -> [SKIP][78] ([fdo#109441]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb2/igt@kms_psr@psr2_no_drrs.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb8/igt@kms_psr@psr2_no_drrs.html

  * igt@kms_psr@psr2_sprite_plane_onoff:
    - shard-hsw:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#1072]) +2 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-hsw8/igt@kms_psr@psr2_sprite_plane_onoff.html

  * igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:
    - shard-skl:          [PASS][80] -> [DMESG-WARN][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][82] ([fdo#109271]) +13 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@nouveau_crc@pipe-d-source-outp-complete:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109278] / [i915#2530])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@nouveau_crc@pipe-d-source-outp-complete.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-kbl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3026]) +3 similar issues
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@sysfs_clients@sema-10@vcs0.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][85] ([i915#658]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb3/igt@feature_discovery@psr2.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][87] ([i915#1037] / [i915#180]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@gem_eio@in-flight-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][89] ([i915#1037] / [i915#3063]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-tglb6/igt@gem_eio@unwedge-stress.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][91] ([i915#1895] / [i915#2295] / [i915#3031]) -> [PASS][92]
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb1/igt@gem_exec_balancer@hang.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@gem_exec_balancer@hang.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][93] ([i915#2842]) -> [PASS][94] +1 similar issue
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-skl:          [DMESG-WARN][95] ([i915#1610] / [i915#2803]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl3/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_whisper@basic-fds:
    - shard-glk:          [DMESG-WARN][97] ([i915#118] / [i915#95]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-glk9/igt@gem_exec_whisper@basic-fds.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-glk5/igt@gem_exec_whisper@basic-fds.html

  * igt@i915_pm_dc@dc5-psr:
    - shard-skl:          [INCOMPLETE][99] ([i915#198]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl8/igt@i915_pm_dc@dc5-psr.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl9/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][101] ([i915#180]) -> [PASS][102] +2 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][103] ([i915#180]) -> [PASS][104] +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@i915_suspend@forcewake.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-snb:          [FAIL][105] ([i915#2521]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-snb6/igt@kms_async_flips@alternate-sync-async-flip.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-snb2/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_cursor_crc@pipe-a-cursor-dpms:
    - shard-snb:          [SKIP][107] ([fdo#109271]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x128-random:
    - shard-skl:          [FAIL][109] ([i915#54]) -> [PASS][110] +7 similar issues
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][111] ([i915#2346]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [INCOMPLETE][113] ([i915#155] / [i915#180] / [i915#636]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
    - shard-skl:          [FAIL][115] ([i915#2122]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl3/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html

  * igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:
    - shard-iclb:         [FAIL][117] ([i915#2472]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb6/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb7/igt@kms_plane@plane-position-hole-dpms-pipe-a-planes.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [SKIP][119] ([fdo#109441]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb3/igt@kms_psr@psr2_cursor_render.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb2/igt@kms_psr@psr2_cursor_render.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-iclb:         [FAIL][121] ([i915#3028]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb3/igt@sysfs_clients@recycle-many.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb3/igt@sysfs_clients@recycle-many.html
    - shard-glk:          [FAIL][123] ([i915#3028]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-glk9/igt@sysfs_clients@recycle-many.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-glk5/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-25@rcs0:
    - shard-skl:          [SKIP][125] ([fdo#109271]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-skl3/igt@sysfs_clients@sema-25@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@sysfs_clients@sema-25@rcs0.html

  * igt@sysfs_heartbeat_interval@mixed@rcs0:
    - shard-kbl:          [INCOMPLETE][127] ([i915#1731]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@rcs0.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc3co-vpb-simulation:
    - shard-iclb:         [SKIP][129] ([i915#658]) -> [SKIP][130] ([i915#588])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][131] ([i915#2684]) -> [WARN][132] ([i915#1804] / [i915#2684]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [DMESG-WARN][133] ([i915#1226]) -> [SKIP][134] ([fdo#109349])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][135] ([i915#2920]) -> [SKIP][136] ([i915#658]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#3002] / [i915#92]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([fdo#109271] / [i915#1436] / [i915#1814] / [i915#2295] / [i915#2426] / [i915#2505] / [i915#3002] / [i915#716])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl3/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl4/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl4/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl7/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl2/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl6/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl7/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158], [FAIL

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/index.html

--===============2232787152954995135==
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
<tr><td><b>Series:</b></td><td>series starting with [v2,1/4] drm/i915: Crea=
te stolen memory region from local memory</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86895/">https://patchwork.freedesktop.org/series/86895/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19641/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19641/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9750_full -&gt; Patchwork_19641_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19641_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@hang:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@gem_ctx_persistence@hang.html"=
>SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9750/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
41/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i91=
5#2842])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9750/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
41/shard-tglb2/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i91=
5#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
41/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915=
#2842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/sha=
rd-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) +1 s=
imilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-iclb2/igt@gem_exec_reloc@basic-many-act=
ive@vcs1.html">FAIL</a> ([i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-parallel:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@gem_exec_reloc@basic-parallel.=
html">TIMEOUT</a> ([i915#1729])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1964=
1/shard-skl2/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> ([=
i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl4/igt@gem_exec_schedule@u-fairslice@vcs1.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1964=
1/shard-kbl2/igt@gem_exec_schedule@u-fairslice@vcs1.html">DMESG-WARN</a> ([=
i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb3/igt@gem_exec_whisper@basic-queues-priority.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19641/shard-iclb2/igt@gem_exec_whisper@basic-queues-priority.html">INCOMPL=
ETE</a> ([i915#1895])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-apl4/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@gem_userptr_blits@vma-merge.h=
tml">INCOMPLETE</a> ([i915#2502] / [i915#2667])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-apl8/igt@gem_workarounds@suspend-resume.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/sh=
ard-apl7/igt@gem_workarounds@suspend-resume.html">INCOMPLETE</a> ([i915#163=
0])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl7/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/sh=
ard-kbl7/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#143=
6] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_hangman@engine-error@vecs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl2/igt@i915_hangman@engine-error@vecs=
0.html">SKIP</a> ([fdo#109271]) +137 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb3/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb2/i=
gt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-tglb3/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/=
shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-tglb6/igt@kms_big_fb@yf-tiled-64bpp-rot=
ate-270.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl2/igt@kms_big_joiner@basic.html">SKI=
P</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@kms_ccs@pipe-d-crc-sprite-pla=
nes-basic.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@kms_chamelium@vga-hpd-for-each=
-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-green-to-red:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_color_chamelium@pipe-b-ctm=
-green-to-red.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl6/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@kms_color_chamelium@pipe-b-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109284] / [fdo#111827]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-apl4/igt@kms_content_protection@atomic-=
dpms.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@kms_content_protection@uevent.=
html">FAIL</a> ([i915#2105])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-1=
28x128-sliding.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19641/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html">FAI=
L</a> ([i915#54]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-512x170-random:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-hsw8/igt@kms_cursor_crc@pipe-d-cursor-5=
12x170-random.html">SKIP</a> ([fdo#109271] / [i915#533]) +7 similar issues<=
/li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transit=
ions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-=
flip-atomic-transitions-varying-size.html">FAIL</a> ([i915#2370])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b=
-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19641/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-edp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_flip@flip-vs-suspend-inter=
ruptible@a-dp1.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl2/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19641/shard-skl9/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.h=
tml">INCOMPLETE</a> ([i915#2295])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_flip@flip-vs-suspend-inter=
ruptible@c-hdmi-a1.html">INCOMPLETE</a> ([i915#2055] / [i915#2295])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/sh=
ard-apl1/igt@kms_flip@flip-vs-suspend@b-dp1.html">DMESG-WARN</a> ([i915#180=
]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@c-hdmi-a1:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-hsw8/igt@kms_flip@flip-vs-suspend@c-hdm=
i-a1.html">INCOMPLETE</a> ([i915#2055])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl2/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2628])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9750/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-ind=
fb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@kms_frontbuffer_tracking@fbc-1=
p-primscrn-cur-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9750/shard-apl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-ind=
fb-draw-mmap-wc.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1=
p-primscrn-cur-indfb-draw-mmap-wc.html">FAIL</a> ([i915#49])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-pwrite:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-shrfb-draw-pwrite.html">SKIP</a> ([fdo#111825]) +2 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-shrfb-msflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-shrfb-msflip-blt.html">SKIP</a> ([fdo#109280]) +1 similar issue=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-indfb-fliptrack:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl7/igt@kms_frontbuffer_tracking@fbcps=
r-2p-indfb-fliptrack.html">SKIP</a> ([fdo#109271]) +128 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl7/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-=
skl7/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19641/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html">D=
MESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl6/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19641/shard-apl6/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-a-planes.html">DMESG-WARN</a> ([i915#180] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-b-tiling-yf:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-hsw6/igt@kms_plane_lowres@pipe-b-tiling=
-yf.html">SKIP</a> ([fdo#109271]) +73 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-skl8/igt@kms_psr2_su@frontbuffer.html">=
SKIP</a> ([fdo#109271] / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb2/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb=
7/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109642] / [fdo#111068] / [=
i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_no_drrs:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb2/igt@kms_psr@psr2_no_drrs.html">PASS</a> -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb8=
/igt@kms_psr@psr2_no_drrs.html">SKIP</a> ([fdo#109441]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_onoff:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-hsw8/igt@kms_psr@psr2_sprite_plane_onof=
f.html">SKIP</a> ([fdo#109271] / [i915#1072]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl9/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19641/shard-skl5/igt@kms_vblank@pipe-b-ts-continuation-modeset-rpm.h=
tml">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-apl7/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-outp-complete:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@nouveau_crc@pipe-d-source-out=
p-complete.html">SKIP</a> ([fdo#109278] / [i915#2530])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@sysfs_clients@sema-10@vcs0.htm=
l">SKIP</a> ([fdo#109271] / [i915#3026]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb3/igt@feature_discovery@psr2.html">SKIP</a> ([i915#6=
58]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
641/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl7/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> =
([i915#1037] / [i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19641/shard-kbl3/igt@gem_eio@in-flight-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-tglb6/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#1037] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19641/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb1/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([=
i915#1895] / [i915#2295] / [i915#3031]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19641/shard-iclb6/igt@gem_exec_balancer@ha=
ng.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL=
</a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19641/shard-tglb8/igt@gem_exec_fair@basic-pace-share@rcs0.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl3/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG=
-WARN</a> ([i915#1610] / [i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19641/shard-skl2/igt@gem_exec_schedule@u-fai=
rslice@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-glk9/igt@gem_exec_whisper@basic-fds.html">DMESG-WARN</a>=
 ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19641/shard-glk5/igt@gem_exec_whisper@basic-fds.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl8/igt@i915_pm_dc@dc5-psr.html">INCOMPLETE</a> ([i915#=
198]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9641/shard-skl9/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html">=
DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19641/shard-apl8/igt@i915_suspend@fence-restore-tiled2=
untiled.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl7/igt@i915_suspend@forcewake.html">DMESG-WARN</a> ([i=
915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19641/shard-kbl3/igt@i915_suspend@forcewake.html">PASS</a> +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-snb6/igt@kms_async_flips@alternate-sync-async-flip.html"=
>FAIL</a> ([i915#2521]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19641/shard-snb2/igt@kms_async_flips@alternate-sync-async-=
flip.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-dpms:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-snb2/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">SKIP</a=
> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19641/shard-snb4/igt@kms_cursor_crc@pipe-a-cursor-dpms.html">PASS=
</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x128-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x128-random.htm=
l">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19641/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-128x128-=
random.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl9/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19641/shard-skl4/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl1/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
([i915#155] / [i915#180] / [i915#636]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@kms_fbcon_fbt@fbc-susp=
end.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@c=
-edp1.html">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19641/shard-skl3/igt@kms_flip@plain-flip-fb-rec=
reate-interruptible@c-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-dpms-pipe-a-planes:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb6/igt@kms_plane@plane-position-hole-dpms-pipe-a-plan=
es.html">FAIL</a> ([i915#2472]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19641/shard-iclb7/igt@kms_plane@plane-position-hol=
e-dpms-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb3/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fd=
o#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19641/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> +1 simi=
lar issue</li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9750/shard-iclb3/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19641/shard-iclb3/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9750/shard-glk9/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19641/shard-glk5/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-skl3/igt@sysfs_clients@sema-25@rcs0.html">SKIP</a> ([fdo=
#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19641/shard-skl2/igt@sysfs_clients@sema-25@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@mixed@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl6/igt@sysfs_heartbeat_interval@mixed@rcs0.html">INCOM=
PLETE</a> ([i915#1731]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19641/shard-kbl3/igt@sysfs_heartbeat_interval@mixed@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_dc@dc3co-vpb-simulation:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb7/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19641/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html">SKIP</a>=
 ([i915#588])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb2/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19641/shard-iclb7/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#1804] / [i915#2684]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_dp_dsc@basic-dsc-enable-edp:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html">DMESG-WA=
RN</a> ([i915#1226]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19641/shard-iclb8/igt@kms_dp_dsc@basic-dsc-enable-edp.html">S=
KIP</a> ([fdo#109349])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19641/shard-iclb7/igt@kms_psr2_sf@cursor-plane-update-sf.html">S=
KIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9750/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
50/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/sh=
ard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_9750/shard-kbl7/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9750/shard-k=
bl1/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#1814] / [i915#2=
295] / [i915#3002] / [i915#92]) -&gt; (<a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19641/shard-kbl4/igt@runner@aborted.html">FAIL</a=
>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_19641/shard-kbl2/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/s=
hard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19641/shard-kbl3/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1964=
1/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl6/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9641/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_19641/shard-kbl1/igt@runner@aborted.h=
tml">FAIL</a>) ([fdo#109271] / [i915#1436] / [i915#1814] / [i915#2295] / [i=
915#2426] / [i915#2505] / [i915#3002] / [i915#716])</p>
</li>
<li>
<p>shard-apl:          ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158],=
 [FAIL</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============2232787152954995135==--

--===============1098528090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1098528090==--
