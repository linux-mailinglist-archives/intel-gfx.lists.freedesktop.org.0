Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ECA1847D7C1
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 20:31:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E431F10E27B;
	Wed, 22 Dec 2021 19:31:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id DDE6510E270;
 Wed, 22 Dec 2021 19:31:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D208EA9932;
 Wed, 22 Dec 2021 19:31:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============5598188533970138223=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Date: Wed, 22 Dec 2021 19:31:33 -0000
Message-ID: <164020149385.15680.13053957599287931724@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211222155622.2960379-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20211222155622.2960379-1-maarten.lankhorst@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Use_trylock_instead_of_blocking_lock_for_=5F=5Fi915=5F?=
 =?utf-8?q?gem=5Ffree=5Fobjects=2E?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============5598188533970138223==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Use trylock instead of blocking lock for __i915_gem_free_objects.
URL   : https://patchwork.freedesktop.org/series/98306/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11027_full -> Patchwork_21896_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_21896_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@engines-hang:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-snb7/igt@gem_ctx_persistence@engines-hang.html

  * igt@gem_exec_capture@pi@vecs0:
    - shard-skl:          NOTRUN -> [INCOMPLETE][2] ([i915#4547])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl3/igt@gem_exec_capture@pi@vecs0.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#2842])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][5] -> [FAIL][6] ([i915#2842]) +2 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
    - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#2842])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2851])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked:
    - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118]) +1 similar issue
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-iclb:         [PASS][13] -> [INCOMPLETE][14] ([i915#1895])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb1/igt@gem_exec_whisper@basic-queues-priority.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@gem_lmem_swapping@parallel-random:
    - shard-apl:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#4613])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@gem_lmem_swapping@parallel-random.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613]) +6 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl6/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-tglb:         NOTRUN -> [SKIP][17] ([i915#4613])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-tglb1/igt@gem_lmem_swapping@verify-random.html
    - shard-iclb:         NOTRUN -> [SKIP][18] ([i915#4613])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][19] ([fdo#109271]) +213 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_workarounds@suspend-resume-context:
    - shard-skl:          [PASS][20] -> [INCOMPLETE][21] ([i915#4798])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl7/igt@gem_workarounds@suspend-resume-context.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl8/igt@gem_workarounds@suspend-resume-context.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][22] -> [FAIL][23] ([i915#454])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
    - shard-kbl:          NOTRUN -> [FAIL][24] ([i915#454])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-kbl:          NOTRUN -> [SKIP][25] ([fdo#109271] / [i915#1937])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rpm@modeset-non-lpsp:
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110892])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp.html
    - shard-tglb:         NOTRUN -> [SKIP][27] ([fdo#111644] / [i915#1397] / [i915#2411])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-tglb1/igt@i915_pm_rpm@modeset-non-lpsp.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [PASS][28] -> [DMESG-WARN][29] ([i915#180]) +1 similar issue
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@i915_suspend@forcewake.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_async_flips@crc:
    - shard-skl:          NOTRUN -> [FAIL][30] ([i915#4272])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_async_flips@crc.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-kbl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3777])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [FAIL][32] ([i915#3743])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][35] ([fdo#111615] / [i915#3689])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
    - shard-skl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +10 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3886])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@hdmi-crc-single:
    - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl3/igt@kms_chamelium@hdmi-crc-single.html

  * igt@kms_chamelium@vga-hpd-without-ddc:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +22 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_chamelium@vga-hpd-without-ddc.html

  * igt@kms_color_chamelium@pipe-d-degamma:
    - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_color_chamelium@pipe-d-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][42] ([i915#1319]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@legacy:
    - shard-apl:          NOTRUN -> [TIMEOUT][43] ([i915#1319])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_content_protection@legacy.html

  * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([i915#2346]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html

  * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109274])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html

  * igt@kms_flip@modeset-vs-vblank-race-interruptible@a-edp1:
    - shard-skl:          [PASS][47] -> [FAIL][48] ([i915#407])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl10/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-edp1.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl6/igt@kms_flip@modeset-vs-vblank-race-interruptible@a-edp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#2122])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
    - shard-skl:          NOTRUN -> [SKIP][52] ([fdo#109271]) +48 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#2672])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][54] ([fdo#111825]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109280])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +11 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][57] -> [FAIL][58] ([i915#1188])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#533]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-kbl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +1 similar issue
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-skl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][62] ([i915#265])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-kbl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2733])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl7/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#1911])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-tglb7/igt@kms_psr2_su@page_flip-nv12.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#658]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl3/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][67] -> [SKIP][68] ([fdo#109441]) +2 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_setmode@basic:
    - shard-snb:          NOTRUN -> [FAIL][69] ([i915#31])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-snb7/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-b-ts-continuation-suspend:
    - shard-apl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html

  * igt@kms_vblank@pipe-d-query-forked-hang:
    - shard-snb:          NOTRUN -> [SKIP][72] ([fdo#109271]) +18 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-snb7/igt@kms_vblank@pipe-d-query-forked-hang.html

  * igt@kms_vblank@pipe-d-wait-forked-busy:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_vblank@pipe-d-wait-forked-busy.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2437])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@sysfs_clients@sema-25:
    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@sysfs_clients@sema-25.html

  
#### Possible fixes ####

  * igt@feature_discovery@psr2:
    - shard-iclb:         [SKIP][76] ([i915#658]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb6/igt@feature_discovery@psr2.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb2/igt@feature_discovery@psr2.html

  * igt@gem_exec_capture@pi@bcs0:
    - shard-skl:          [INCOMPLETE][78] ([i915#4547]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl3/igt@gem_exec_capture@pi@bcs0.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl3/igt@gem_exec_capture@pi@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [FAIL][80] ([i915#2842]) -> [PASS][81] +1 similar issue
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][82] ([i915#2842]) -> [PASS][83] +1 similar issue
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [INCOMPLETE][84] ([i915#3921]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-snb4/igt@i915_selftest@live@hangcheck.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-snb7/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +2 similar issues
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
    - shard-glk:          [DMESG-WARN][88] ([i915#118]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [FAIL][90] ([i915#2346] / [i915#533]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
    - shard-glk:          [FAIL][92] ([i915#79]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +14 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@a-edp1:
    - shard-skl:          [FAIL][96] ([i915#2122]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl6/igt@kms_flip@plain-flip-ts-check@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:
    - shard-glk:          [FAIL][98] ([i915#2122]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][100] ([i915#1188]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl1/igt@kms_hdr@bpc-switch.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl10/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [FAIL][102] ([fdo#108145] / [i915#265]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [SKIP][104] ([fdo#109441]) -> [PASS][105] +2 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][106] ([i915#2852]) -> [FAIL][107] ([i915#2842])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][108] ([i915#1804] / [i915#2684]) -> [WARN][109] ([i915#2684])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [FAIL][110] ([i915#2680]) -> [WARN][111] ([i915#1804] / [i915#2684])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-skl:          [SKIP][112] ([fdo#109271]) -> [SKIP][113] ([fdo#109271] / [i915#1888])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
    - shard-iclb:         [SKIP][114] ([i915#2920]) -> [SKIP][115] ([fdo#111068] / [i915#658]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html

  * igt@kms_psr2_su@page_flip-nv12:
    - shard-iclb:         [SKIP][116] ([fdo#111068] / [i915#658]) -> [FAIL][117] ([i915#4148])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][131], [FAIL][132], [FAIL][133]) ([i915#180] / [i915#3002] / [i915#4312])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@runner@aborted.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@runner@aborted.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl4/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl6/igt@runner@aborted.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@runner@aborted.html
    - shard-apl:          ([FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl1/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl3/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl8/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl2/igt@runner@aborted.html

  
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#110892]: https://bugs.freedesktop.org/show_bug.cgi?id=110892
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#1099]: https://gitlab.freedesktop.org/drm/intel/issues/1099
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
  [i915#1895]: https://gitlab.freedesktop.org/drm/intel/issues/1895
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
  [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
  [i915#265]: https://gitlab.freedesktop.o

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/index.html

--===============5598188533970138223==
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
<tr><td><b>Series:</b></td><td>drm/i915: Use trylock instead of blocking lo=
ck for __i915_gem_free_objects.</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98306/">https://patchwork.freedesktop.org/series/98306/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21896/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11027_full -&gt; Patchwork_21896_f=
ull</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21896_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@engines-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-snb7/igt@gem_ctx_persistence@engines-ha=
ng.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1099">i915#1099</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl3/igt@gem_exec_capture@pi@vecs0.html=
">INCOMPLETE</a> ([i915#4547])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1896/shard-iclb4/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11027/shard-kbl6/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/sha=
rd-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 s=
imilar issues</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11027/shard-apl8/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/sha=
rd-apl4/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/sh=
ard-kbl7/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2851])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-glk5/igt@gem_exec_whisper@basic-queues-forked.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1896/shard-glk6/igt@gem_exec_whisper@basic-queues-forked.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i915#11=
8</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb1/igt@gem_exec_whisper@basic-queues-priority.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21896/shard-iclb7/igt@gem_exec_whisper@basic-queues-priority.html">INCOMP=
LETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1895">=
i915#1895</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-apl4/igt@gem_lmem_swapping@parallel-ran=
dom.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl6/igt@gem_lmem_swapping@parallel-ran=
dom-verify.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D109271">fdo#109271</a> / [i915#4613]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-tglb1/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([i915#4613])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-iclb1/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([i915#4613])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@gem_render_copy@x-tiled-to-veb=
ox-yf-tiled.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109271">fdo#109271</a>) +213 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-context:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl7/igt@gem_workarounds@suspend-resume-context.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21896/shard-skl8/igt@gem_workarounds@suspend-resume-context.html">INCOMPLE=
TE</a> ([i915#4798])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11027/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-iclb3/=
igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html">FAIL<=
/a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp=
-dp.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1937">i915#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
0892">fdo#110892</a>)</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-tglb1/igt@i915_pm_rpm@modeset-non-lpsp.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D11=
1644">fdo#111644</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/1397">i915#1397</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/2411">i915#2411</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@forcewake:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-kbl1/igt@i915_suspend@forcewake.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl=
1/igt@i915_suspend@forcewake.html">DMESG-WARN</a> (<a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_async_flips@crc.html">FAIL=
</a> ([i915#4272])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl4/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_big_fb@x-tiled-max-hw-stri=
de-32bpp-rotate-180-async-flip.html">FAIL</a> ([i915#3743])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stri=
de-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-str=
ide-32bpp-rotate-0-hflip.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3777])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-tglb1/igt@kms_ccs@pipe-a-bad-aux-stride=
-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D111615">fdo#111615</a> / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.f=
reedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl6/igt@kms_ccs@pipe-a-crc-sprite-plan=
es-basic-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.fr=
eedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886]) +10 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_ccs@pipe-b-missing-ccs-buf=
fer-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-single:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-apl3/igt@kms_chamelium@hdmi-crc-single.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-without-ddc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_chamelium@vga-hpd-without-=
ddc.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D111827">fdo#111827</a>) +22 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-degamma:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_color_chamelium@pipe-d-deg=
amma.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl3/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@legacy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_content_protection@legacy.=
html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1319">i915#1319</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21896/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2=
346</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_flip@2x-plain-flip-fb-rec=
reate-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@modeset-vs-vblank-race-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl10/igt@kms_flip@modeset-vs-vblank-race-interruptible=
@a-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21896/shard-skl6/igt@kms_flip@modeset-vs-vblank-race-interr=
uptible@a-edp1.html">FAIL</a> ([i915#407])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
b-edp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21896/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interr=
uptible@b-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl3/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytileccs-to-64bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedeskto=
p.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +48 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-tglb1/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +2 similar iss=
ues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://bu=
gs.freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb565-draw-pwrite:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_frontbuffer_tracking@psr-r=
gb565-draw-pwrite.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D109271">fdo#109271</a>) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shar=
d-skl6/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D109271">fdo#109271</a> / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.=
cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.o">=
i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug=
.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.o"=
>i915#265</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-transparent-fb.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.o=
">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-apl4/igt@kms_plane_alpha_blend@pipe-c-c=
onstant-alpha-max.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedes=
ktop.o">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl7/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> (<a h=
ref=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a=
> / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-tglb7/igt@kms_psr2_su@page_flip-nv12.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/19=
11">i915#1911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl3/igt@kms_psr2_su@page_flip-xrgb8888=
.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D=
109271">fdo#109271</a> / [i915#658]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shar=
d-iclb1/igt@kms_psr@psr2_cursor_render.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-snb7/igt@kms_setmode@basic.html">FAIL</=
a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-apl3/igt@kms_vblank@pipe-b-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21896/shard-apl4/igt@kms_vblank@pipe-b-ts-continuation-suspend.html">DM=
ESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/18=
0">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-query-forked-hang:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-snb7/igt@kms_vblank@pipe-d-query-forked=
-hang.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109271">fdo#109271</a>) +18 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-busy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_vblank@pipe-d-wait-forked=
-busy.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109278">fdo#109278</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-skl1/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/d=
rm/intel/issues/2437">i915#2437</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-25:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@sysfs_clients@sema-25.html">SK=
IP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">f=
do#109271</a> / [i915#2994]) +2 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb6/igt@feature_discovery@psr2.html">SKIP</a> ([i915#=
658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1896/shard-iclb2/igt@feature_discovery@psr2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@bcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl3/igt@gem_exec_capture@pi@bcs0.html">INCOMPLETE</a> =
([i915#4547]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21896/shard-skl3/igt@gem_exec_capture@pi@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21896/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-tglb5/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a>=
 ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21896/shard-tglb6/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a>=
 +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-snb4/igt@i915_selftest@live@hangcheck.html">INCOMPLETE<=
/a> ([i915#3921]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21896/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21896/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.=
html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-32bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">i=
915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_21896/shard-glk8/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/2346">i915#2346</a> / [i915#533]) -&gt; <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-skl7/igt@kms_curs=
or_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html=
">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21896/shard-glk2/igt@kms_flip@flip-vs-expired-vblank@b-hdmi=
-a2.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/180">i915#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21896/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptibl=
e@a-dp1.html">PASS</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html">FAI=
L</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i91=
5#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21896/shard-skl6/igt@kms_flip@plain-flip-ts-check@a-edp1.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i=
915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_21896/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-s=
kl10/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl7/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-mi=
n.html">FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D108145">fdo#108145</a> / <a href=3D"https://gitlab.freedesktop.o">i915#2=
65</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_21896/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb6/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (=
<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#10944=
1</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
21896/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> +2 simila=
r issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL=
</a> ([i915#2852]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_21896/shard-iclb3/igt@gem_exec_fair@basic-none-rrul@rcs0.html">=
FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#18=
04</a> / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_21896/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">=
WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html">FAIL</a>=
 ([i915#2680]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21896/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp=
-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21896/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-=
ytile-to-32bpp-ytile.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.or=
g/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/1888">i915#1888</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-continuous-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-s=
f.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21896/shard-iclb1/igt@kms_psr2_sf@overlay-plane-upd=
ate-continuous-sf.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/s=
how_bug.cgi?id=3D111068">fdo#111068</a> / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-nv12:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html">SKIP</a> (<a=
 href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068<=
/a> / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21896/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html">FAIL</a> =
([i915#4148])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11027/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl6/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_11027/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.h=
tml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1027/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html=
">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1102=
7/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/s=
hard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html">FAIL=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shar=
d-kbl7/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/1436">i915#1436</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [i915#30=
02] / [i915#4312]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21896/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-kbl1/igt@ru=
nner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_21896/shard-kbl1/igt@runner@aborted.html">FAIL</a>) (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / [i=
915#3002] / [i915#4312])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11027/shard-apl8/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_11027/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl3/igt@runner@aborte=
d.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/180">i915#180</a> / [i915#3002] / [i915#4312]) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl8/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21896/shard-apl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21896/shard-apl4/igt@runner@=
aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_21896/shard-apl2/igt@runner@aborted.html">FAIL</a>) (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / [=
i915#3002] / [i915#4312])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5598188533970138223==--
