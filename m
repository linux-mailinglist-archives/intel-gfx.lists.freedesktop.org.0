Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F7DB311C21
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Feb 2021 09:28:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CB26E40D;
	Sat,  6 Feb 2021 08:28:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B8F66E40A;
 Sat,  6 Feb 2021 08:28:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0251BAADD1;
 Sat,  6 Feb 2021 08:28:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Date: Sat, 06 Feb 2021 08:28:27 -0000
Message-ID: <161260010797.3573.9795257848065803216@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210205155931.198122-1-jose.souza@intel.com>
In-Reply-To: <20210205155931.198122-1-jose.souza@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Allow_PSR2_selective_fetch_to_be_enabled_at_ru?=
 =?utf-8?q?n-time?=
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
Content-Type: multipart/mixed; boundary="===============1499535156=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1499535156==
Content-Type: multipart/alternative;
 boundary="===============0084549336685616779=="

--===============0084549336685616779==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/display: Allow PSR2 selective fetch to be enabled at run-time
URL   : https://patchwork.freedesktop.org/series/86773/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9740_full -> Patchwork_19609_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19609_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][1] ([i915#3002])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl1/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@clone:
    - shard-hsw:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@gem_ctx_persistence@clone.html

  * igt@gem_exec_create@forked:
    - shard-glk:          [PASS][3] -> [DMESG-WARN][4] ([i915#118] / [i915#95])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-glk2/igt@gem_exec_create@forked.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-glk1/igt@gem_exec_create@forked.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-glk:          [PASS][5] -> [FAIL][6] ([i915#2842])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-glk1/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-none@vcs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +2 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [PASS][9] -> [FAIL][10] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         [PASS][11] -> [FAIL][12] ([i915#2842]) +2 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-tglb:         [PASS][13] -> [DMESG-WARN][14] ([i915#2803])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-skl:          NOTRUN -> [DMESG-WARN][15] ([i915#1610] / [i915#2803])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl5/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_render_copy@linear-to-vebox-y-tiled:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +50 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl4/igt@gem_render_copy@linear-to-vebox-y-tiled.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#768])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-apl:          NOTRUN -> [INCOMPLETE][18] ([i915#2502] / [i915#2667])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl8/igt@gem_userptr_blits@vma-merge.html

  * igt@gen3_render_tiledy_blits:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#109289])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@gen3_render_tiledy_blits.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#1436] / [i915#716])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-glk1/igt@gen9_exec_parse@allowed-all.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-glk7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@valid-registers:
    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#112306])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@gen9_exec_parse@valid-registers.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@i915_suspend@sysfs-reader:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#198])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl4/igt@i915_suspend@sysfs-reader.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl6/igt@i915_suspend@sysfs-reader.html

  * igt@kms_async_flips@test-time-stamp:
    - shard-tglb:         [PASS][27] -> [FAIL][28] ([i915#2597])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-tglb1/igt@kms_async_flips@test-time-stamp.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-tglb6/igt@kms_async_flips@test-time-stamp.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-270:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([fdo#110725] / [fdo#111614])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-rotate-270.html

  * igt@kms_big_joiner@invalid-modeset:
    - shard-skl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#2705])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl5/igt@kms_big_joiner@invalid-modeset.html

  * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
    - shard-hsw:          NOTRUN -> [SKIP][31] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +4 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_chamelium@vga-edid-read:
    - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_chamelium@vga-edid-read.html

  * igt@kms_color@pipe-d-ctm-0-5:
    - shard-skl:          NOTRUN -> [SKIP][34] ([fdo#109271]) +73 similar issues
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl9/igt@kms_color@pipe-d-ctm-0-5.html

  * igt@kms_color@pipe-d-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278] / [i915#1149])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_color@pipe-d-ctm-red-to-blue.html

  * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109284] / [fdo#111827])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-25:
    - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl8/igt@kms_color_chamelium@pipe-d-ctm-0-25.html

  * igt@kms_content_protection@uevent:
    - shard-kbl:          NOTRUN -> [FAIL][38] ([i915#2105])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_content_protection@uevent.html
    - shard-apl:          NOTRUN -> [FAIL][39] ([i915#2105])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl1/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-kbl:          [PASS][40] -> [DMESG-WARN][41] ([i915#180]) +6 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:
    - shard-skl:          NOTRUN -> [FAIL][42] ([i915#54]) +1 similar issue
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-128x42-random:
    - shard-skl:          [PASS][43] -> [FAIL][44] ([i915#54]) +4 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
    - shard-hsw:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#533]) +4 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html

  * igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge:
    - shard-skl:          [PASS][46] -> [DMESG-WARN][47] ([i915#1982])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:
    - shard-hsw:          [PASS][48] -> [FAIL][49] ([i915#2370])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#2346])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-kbl:          [PASS][52] -> [INCOMPLETE][53] ([i915#155] / [i915#180] / [i915#636])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2122]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-skl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2672])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280]) +3 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271]) +18 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#1188])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#533]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl9/igt@kms_pipe_crc_basic@hang-read-crc-pipe-d.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#533])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#533])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl1/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109278]) +4 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane@plane-position-hole-pipe-c-planes:
    - shard-skl:          [PASS][65] -> [FAIL][66] ([i915#2472])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl4/igt@kms_plane@plane-position-hole-pipe-c-planes.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl6/igt@kms_plane@plane-position-hole-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][67] ([fdo#108145] / [i915#265]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][69] -> [FAIL][70] ([fdo#108145] / [i915#265])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#658])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl9/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@kms_psr@psr2_primary_render:
    - shard-iclb:         [PASS][72] -> [SKIP][73] ([fdo#109441])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb2/igt@kms_psr@psr2_primary_render.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb8/igt@kms_psr@psr2_primary_render.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][74] ([IGT#2])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl4/igt@kms_sysfs_edid_timing.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2437])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl8/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@polling-small-buf:
    - shard-skl:          NOTRUN -> [FAIL][76] ([i915#1722])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl1/igt@perf@polling-small-buf.html

  * igt@sysfs_clients@busy@vecs0:
    - shard-skl:          [PASS][77] -> [FAIL][78] ([i915#3019])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl3/igt@sysfs_clients@busy@vecs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl4/igt@sysfs_clients@busy@vecs0.html

  * igt@sysfs_clients@recycle:
    - shard-snb:          [PASS][79] -> [FAIL][80] ([i915#3028])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-snb5/igt@sysfs_clients@recycle.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-snb6/igt@sysfs_clients@recycle.html
    - shard-hsw:          [PASS][81] -> [FAIL][82] ([i915#3028])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-hsw6/igt@sysfs_clients@recycle.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw4/igt@sysfs_clients@recycle.html

  * igt@sysfs_heartbeat_interval@precise@vcs0:
    - shard-hsw:          NOTRUN -> [SKIP][83] ([fdo#109271]) +39 similar issues
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@sysfs_heartbeat_interval@precise@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@smoketest:
    - shard-tglb:         [FAIL][84] ([i915#2896]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-tglb2/igt@gem_ctx_persistence@smoketest.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-tglb8/igt@gem_ctx_persistence@smoketest.html

  * igt@gem_eio@in-flight-suspend:
    - shard-kbl:          [DMESG-WARN][86] ([i915#1037] / [i915#180]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl2/igt@gem_eio@in-flight-suspend.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl1/igt@gem_eio@in-flight-suspend.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][88] ([i915#2842]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91] +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         [FAIL][92] ([i915#2842]) -> [PASS][93] +2 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][94] ([i915#2849]) -> [PASS][95]
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [DMESG-WARN][96] ([i915#2803]) -> [PASS][97]
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb1/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_exec_whisper@basic-queues-priority:
    - shard-glk:          [DMESG-WARN][98] ([i915#118] / [i915#95]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-glk1/igt@gem_exec_whisper@basic-queues-priority.html

  * igt@i915_selftest@live@client:
    - shard-glk:          [DMESG-FAIL][100] ([i915#3047]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-glk9/igt@i915_selftest@live@client.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-glk8/igt@i915_selftest@live@client.html

  * igt@i915_selftest@live@hangcheck:
    - shard-hsw:          [INCOMPLETE][102] ([i915#2782]) -> [PASS][103]
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-hsw2/igt@i915_selftest@live@hangcheck.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@i915_selftest@live@hangcheck.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [DMESG-WARN][104] ([i915#1982]) -> [PASS][105]
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
    - shard-skl:          [FAIL][106] ([i915#54]) -> [PASS][107] +9 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [FAIL][108] ([i915#96]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-hsw:          [FAIL][110] ([i915#2370]) -> [PASS][111]
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
    - shard-skl:          [FAIL][112] ([i915#2346]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][114] ([i915#180]) -> [PASS][115] +4 similar issues
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [FAIL][116] ([i915#2122]) -> [PASS][117]
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl8/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][118] ([i915#1188]) -> [PASS][119]
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl1/igt@kms_hdr@bpc-switch.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl8/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-skl:          [INCOMPLETE][120] ([i915#198] / [i915#1982]) -> [PASS][121]
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123]
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@perf_pmu@module-unload:
    - shard-skl:          [DMESG-WARN][124] ([i915#1982] / [i915#262]) -> [PASS][125]
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl1/igt@perf_pmu@module-unload.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl8/igt@perf_pmu@module-unload.html

  * igt@sysfs_clients@busy@vcs0:
    - shard-skl:          [FAIL][126] ([i915#3019]) -> [PASS][127]
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-skl3/igt@sysfs_clients@busy@vcs0.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl4/igt@sysfs_clients@busy@vcs0.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-kbl:          [FAIL][128] ([i915#3028]) -> [PASS][129]
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl1/igt@sysfs_clients@recycle-many.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl1/igt@sysfs_clients@recycle-many.html
    - shard-tglb:         [FAIL][130] ([i915#3028]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-tglb7/igt@sysfs_clients@recycle-many.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-tglb2/igt@sysfs_clients@recycle-many.html

  
#### Warnings ####

  * igt@gem_exec_balancer@hang:
    - shard-iclb:         [INCOMPLETE][132] ([i915#1895] / [i915#2295] / [i915#3031]) -> [INCOMPLETE][133] ([i915#1895] / [i915#2295])
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb2/igt@gem_exec_balancer@hang.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb2/igt@gem_exec_balancer@hang.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][134] ([i915#2684]) -> [WARN][135] ([i915#2681] / [i915#2684])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][136] ([i915#658]) -> [SKIP][137] ([i915#2920])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:
    - shard-iclb:         [SKIP][138] ([i915#2920]) -> [SKIP][139] ([i915#658])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#3002] / [i915#602]) -> ([FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153], [FAIL][154]) ([i915#1436] / [i915#1814] / [i915#2295] / [i915#2505] / [i915#3002] / [i915#602] / [i915#92])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl2/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl7/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl2/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@runner@aborted.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl1/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl6/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl6/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl6/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl2/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl6/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][159], [FAIL][160], [FAIL][161]) ([i915#2295] / [i915#2724] / [i915#3002])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb6/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb1/igt@runner@aborted.html
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_D

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/index.html

--===============0084549336685616779==
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
<tr><td><b>Series:</b></td><td>drm/i915/display: Allow PSR2 selective fetch=
 to be enabled at run-time</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86773/">https://patchwork.freedesktop.org/series/86773/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19609/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19609/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9740_full -&gt; Patchwork_19609_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19609_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-kbl1/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@clone:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@gem_ctx_persistence@clone.html=
">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_create@forked:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-glk2/igt@gem_exec_create@forked.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-glk1=
/igt@gem_exec_create@forked.html">DMESG-WARN</a> ([i915#118] / [i915#95])</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-glk6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1960=
9/shard-glk1/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> ([i915#2=
842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-kbl3/igt@gem_exec_fair@basic-none@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/sha=
rd-kbl7/igt@gem_exec_fair@basic-none@vcs0.html">FAIL</a> ([i915#2842]) +2 s=
imilar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/sh=
ard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> ([i915#2842])</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-tglb7/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
09/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915=
#2842]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
09/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG-WARN</a> =
([i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl5/igt@gem_exec_schedule@u-fairslice@=
vecs0.html">DMESG-WARN</a> ([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@linear-to-vebox-y-tiled:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-apl4/igt@gem_render_copy@linear-to-vebo=
x-y-tiled.html">SKIP</a> ([fdo#109271]) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@gem_render_copy@y-tiled-mc-cc=
s-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-apl8/igt@gem_userptr_blits@vma-merge.ht=
ml">INCOMPLETE</a> ([i915#2502] / [i915#2667])</li>
</ul>
</li>
<li>
<p>igt@gen3_render_tiledy_blits:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@gen3_render_tiledy_blits.html=
">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-glk1/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard=
-glk7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [=
i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@valid-registers:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@gen9_exec_parse@valid-registe=
rs.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-apl3/igt@i915_suspend@fence-restore-tiled2untiled.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19609/shard-apl2/igt@i915_suspend@fence-restore-tiled2untiled.html">DMESG=
-WARN</a> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@sysfs-reader:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl4/igt@i915_suspend@sysfs-reader.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-s=
kl6/igt@i915_suspend@sysfs-reader.html">INCOMPLETE</a> ([i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-tglb1/igt@kms_async_flips@test-time-stamp.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/=
shard-tglb6/igt@kms_async_flips@test-time-stamp.html">FAIL</a> ([i915#2597]=
)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-270:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_big_fb@x-tiled-64bpp-rota=
te-270.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@invalid-modeset:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl5/igt@kms_big_joiner@invalid-modeset=
.html">SKIP</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-crc-nonplanar-formats:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@kms_chamelium@hdmi-crc-nonplan=
ar-formats.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-edid-read:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_chamelium@vga-edid-read.ht=
ml">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl9/igt@kms_color@pipe-d-ctm-0-5.html"=
>SKIP</a> ([fdo#109271]) +73 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_color@pipe-d-ctm-red-to-b=
lue.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-green-to-red:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_color_chamelium@pipe-c-ct=
m-green-to-red.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-apl8/igt@kms_color_chamelium@pipe-d-ctm=
-0-25.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_content_protection@uevent.h=
tml">FAIL</a> ([i915#2105])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19609/shard-apl1/igt@kms_content_protection@uevent.h=
tml">FAIL</a> ([i915#2105])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
609/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-offscreen:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-1=
28x42-offscreen.html">FAIL</a> ([i915#54]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-128x42-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl4/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19609/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-128x42-random.html">F=
AIL</a> ([i915#54]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@kms_cursor_crc@pipe-d-cursor-6=
4x64-sliding.html">SKIP</a> ([fdo#109271] / [i915#533]) +4 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl5/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19609/shard-skl10/igt@kms_cursor_edge_walk@pipe-b-128x128-top-edge.ht=
ml">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-atomic-transitions-varying-size:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-hsw2/igt@kms_cursor_legacy@cursor-vs-flip-atomic-transit=
ions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-=
flip-atomic-transitions-varying-size.html">FAIL</a> ([i915#2370])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19609/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-k=
bl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#155] / [i915#=
180] / [i915#636])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl6/igt@kms_flip@plain-flip-ts-check-interruptible@c-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19609/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@=
c-edp1.html">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-pwrite:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-=
2p-scndscrn-pri-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_frontbuffer_tracking@fbcps=
r-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +18 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-sk=
l8/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@hang-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl9/igt@kms_pipe_crc_basic@hang-read-c=
rc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_pipe_crc_basic@nonblocking-=
crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19609/shard-apl1/igt@kms_pipe_crc_basic@nonblocking-=
crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-iclb5/igt@kms_pipe_crc_basic@read-crc-p=
ipe-d-frame-sequence.html">SKIP</a> ([fdo#109278]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-position-hole-pipe-c-planes:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl4/igt@kms_plane@plane-position-hole-pipe-c-planes.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19609/shard-skl6/igt@kms_plane@plane-position-hole-pipe-c-planes.html"=
>FAIL</a> ([i915#2472])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-apl8/igt@kms_plane_alpha_blend@pipe-c-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_19609/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-m=
in.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl9/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-5.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb2/igt@kms_psr@psr2_primary_render.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shar=
d-iclb8/igt@kms_psr@psr2_primary_render.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-apl4/igt@kms_sysfs_edid_timing.html">FA=
IL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-apl8/igt@kms_writeback@writeback-fb-id.=
html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl1/igt@perf@polling-small-buf.html">F=
AIL</a> ([i915#1722])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl3/igt@sysfs_clients@busy@vecs0.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-sk=
l4/igt@sysfs_clients@busy@vecs0.html">FAIL</a> ([i915#3019])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9740/shard-snb5/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-snb6/i=
gt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
<li>
<p>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9740/shard-hsw6/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-hsw4/i=
gt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</p>
</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@vcs0:</p>
<ul>
<li>shard-hsw:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-hsw1/igt@sysfs_heartbeat_interval@preci=
se@vcs0.html">SKIP</a> ([fdo#109271]) +39 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@smoketest:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-tglb2/igt@gem_ctx_persistence@smoketest.html">FAIL</a> (=
[i915#2896]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19609/shard-tglb8/igt@gem_ctx_persistence@smoketest.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-kbl2/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> =
([i915#1037] / [i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19609/shard-kbl1/igt@gem_eio@in-flight-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19609/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-glk9/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL<=
/a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19609/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html">P=
ASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19609/shard-iclb8/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> +2=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2849]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19609/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb1/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG=
-WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19609/shard-iclb5/igt@gem_exec_schedule@u-fairslice@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-glk3/igt@gem_exec_whisper@basic-queues-priority.html">DM=
ESG-WARN</a> ([i915#118] / [i915#95]) -&gt; <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_19609/shard-glk1/igt@gem_exec_whisper@basic-=
queues-priority.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@client:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-glk9/igt@i915_selftest@live@client.html">DMESG-FAIL</a> =
([i915#3047]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19609/shard-glk8/igt@i915_selftest@live@client.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-hsw2/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</=
a> ([i915#2782]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19609/shard-hsw1/igt@i915_selftest@live@hangcheck.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl1/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> =
([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19609/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.h=
tml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19609/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-=
offscreen.html">PASS</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy=
.html">FAIL</a> ([i915#96]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19609/shard-hsw6/igt@kms_cursor_legacy@2x-long-cursor-=
vs-flip-legacy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">F=
AIL</a> ([i915#2370]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19609/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomi=
c.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19609/shard-skl4/igt@kms_cursor_legacy@flip-vs-curs=
or-busy-crc-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WARN=
</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19609/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</=
a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl1/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL<=
/a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19609/shard-skl8/igt@kms_flip@plain-flip-ts-check@b-edp1.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl1/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/=
shard-skl8/igt@kms_hdr@bpc-switch.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html=
">INCOMPLETE</a> ([i915#198] / [i915#1982]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-skl2/igt@kms_pipe_crc_basi=
c@suspend-read-crc-pipe-a.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-kbl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html=
">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19609/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read=
-crc-pipe-c.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf_pmu@module-unload:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl1/igt@perf_pmu@module-unload.html">DMESG-WARN</a> ([i=
915#1982] / [i915#262]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19609/shard-skl8/igt@perf_pmu@module-unload.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy@vcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-skl3/igt@sysfs_clients@busy@vcs0.html">FAIL</a> ([i915#3=
019]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9609/shard-skl4/igt@sysfs_clients@busy@vcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9740/shard-kbl1/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19609/shard-kbl1/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9740/shard-tglb7/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i91=
5#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19609/shard-tglb2/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@hang:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb2/igt@gem_exec_balancer@hang.html">INCOMPLETE</a> ([=
i915#1895] / [i915#2295] / [i915#3031]) -&gt; <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_19609/shard-iclb2/igt@gem_exec_balancer@ha=
ng.html">INCOMPLETE</a> ([i915#1895] / [i915#2295])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19609/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19609/shard-iclb2/igt@kms_psr2_sf@overlay-plane-updat=
e-sf-dmg-area-2.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-5:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-5.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19609/shard-iclb8/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-5.html">SKIP</a> ([i915#658])</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9740/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-kbl2/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
40/shard-kbl7/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#1814]=
 / [i915#2295] / [i915#3002] / [i915#602]) -&gt; (<a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19609/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@runner@aborted=
.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19609/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19609/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl7/igt@runner@a=
borted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19609/shard-kbl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19609/shard-kbl2/igt@runne=
r@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19609/shard-kbl6/igt@runner@aborted.html">FAIL</a>) ([i915#143=
6] / [i915#1814] / [i915#2295] / [i915#2505] / [i915#3002] / [i915#602] / [=
i915#92])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9740/shard-iclb6/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9740/shard-iclb1/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_D">FAIL</a>, [FAIL][158]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915=
#3002]) -&gt; ([FAIL][159], [FAIL][160], [FAIL][161]) ([i915#2295] / [i915#=
2724] / [i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============0084549336685616779==--

--===============1499535156==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1499535156==--
