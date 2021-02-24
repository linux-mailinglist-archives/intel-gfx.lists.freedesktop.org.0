Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B96DA323C08
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 13:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6350E6E02C;
	Wed, 24 Feb 2021 12:45:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 87ADD89FF9;
 Wed, 24 Feb 2021 12:45:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6E866A00CC;
 Wed, 24 Feb 2021 12:45:25 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Colin King" <colin.king@canonical.com>
Date: Wed, 24 Feb 2021 12:45:25 -0000
Message-ID: <161417072541.17230.10424292483500538450@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210223191909.16682-1-colin.king@canonical.com>
In-Reply-To: <20210223191909.16682-1-colin.king@canonical.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/hdcp=3A_Fix_null_pointer_dereference_of_connector-=3Eenco?=
 =?utf-8?q?der?=
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
Content-Type: multipart/mixed; boundary="===============0911034223=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0911034223==
Content-Type: multipart/alternative;
 boundary="===============1903951284836384666=="

--===============1903951284836384666==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/hdcp: Fix null pointer dereference of connector->encoder
URL   : https://patchwork.freedesktop.org/series/87328/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9798_full -> Patchwork_19724_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19724_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099]) +2 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_ctx_shared@q-in-order:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271]) +261 similar issues
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-snb7/igt@gem_ctx_shared@q-in-order.html

  * igt@gem_exec_capture@capture@rcs0:
    - shard-kbl:          [PASS][3] -> [FAIL][4] ([i915#3062])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl6/igt@gem_exec_capture@capture@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl7/igt@gem_exec_capture@capture@rcs0.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-skl:          NOTRUN -> [SKIP][5] ([fdo#109271]) +125 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_reloc@basic-wide-active@bcs0:
    - shard-apl:          NOTRUN -> [FAIL][8] ([i915#2389]) +3 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl7/igt@gem_exec_reloc@basic-wide-active@bcs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][9] -> [DMESG-WARN][10] ([i915#118] / [i915#95]) +1 similar issue
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-kbl:          NOTRUN -> [SKIP][11] ([fdo#109271] / [i915#2190])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@gem_huc_copy@huc-copy.html

  * igt@gem_userptr_blits@input-checking:
    - shard-snb:          NOTRUN -> [DMESG-WARN][12] ([i915#3002])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-snb5/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-skl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#1699]) +3 similar issues
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gem_userptr_blits@process-exit-mmap@wc:
    - shard-iclb:         NOTRUN -> [SKIP][14] ([i915#1699]) +3 similar issues
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@gem_userptr_blits@process-exit-mmap@wc.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([fdo#110725] / [fdo#111614])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html

  * igt@kms_big_joiner@basic:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#2705])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer:
    - shard-skl:          NOTRUN -> [SKIP][17] ([fdo#109271] / [fdo#111304])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl6/igt@kms_ccs@pipe-c-missing-ccs-buffer.html

  * igt@kms_chamelium@dp-hpd:
    - shard-iclb:         NOTRUN -> [SKIP][18] ([fdo#109284] / [fdo#111827]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_chamelium@dp-hpd.html

  * igt@kms_color@pipe-a-ctm-0-5:
    - shard-skl:          [PASS][19] -> [DMESG-WARN][20] ([i915#1982])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html

  * igt@kms_color@pipe-b-ctm-0-25:
    - shard-iclb:         NOTRUN -> [FAIL][21] ([i915#1149] / [i915#315]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_color@pipe-b-ctm-0-25.html

  * igt@kms_color_chamelium@pipe-a-ctm-0-75:
    - shard-kbl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +10 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-0-5:
    - shard-snb:          NOTRUN -> [SKIP][25] ([fdo#109271] / [fdo#111827]) +15 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-0-5.html
    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm-0-5.html

  * igt@kms_content_protection@lic:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109300] / [fdo#111066])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_content_protection@lic.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][28] ([i915#1319])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
    - shard-skl:          NOTRUN -> [FAIL][29] ([i915#54])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278] / [fdo#109279])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-random:
    - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#54]) +11 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#300])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-random:
    - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278]) +3 similar issues
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x21-random.html

  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +95 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-suspend.html

  * igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:
    - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109274] / [fdo#109278])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-tglb:         [PASS][38] -> [FAIL][39] ([i915#2346])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#2346] / [i915#533])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][42] ([fdo#109274])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
    - shard-skl:          NOTRUN -> [FAIL][43] ([i915#2628])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
    - shard-apl:          NOTRUN -> [FAIL][44] ([i915#2641])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html

  * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
    - shard-kbl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [i915#2672])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109280]) +9 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#1187])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_hdr@static-toggle-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-kbl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#533]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#533])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
    - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271] / [i915#533])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-kbl:          NOTRUN -> [FAIL][51] ([fdo#108145] / [i915#265]) +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-apl:          NOTRUN -> [FAIL][52] ([fdo#108145] / [i915#265])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-skl:          NOTRUN -> [FAIL][53] ([i915#265])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
    - shard-apl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#658]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][55] ([fdo#109271] / [i915#658]) +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#658]) +2 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#658]) +1 similar issue
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [PASS][58] -> [SKIP][59] ([fdo#109441])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_writeback@writeback-check-output:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#2437])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_writeback@writeback-check-output.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-skl:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#2437])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_writeback@writeback-pixel-formats.html
    - shard-iclb:         NOTRUN -> [SKIP][62] ([i915#2437])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:
    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +90 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame.html

  * igt@perf@gen12-mi-rpc:
    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109289]) +2 similar issues
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@perf@gen12-mi-rpc.html

  * igt@perf@polling:
    - shard-skl:          NOTRUN -> [FAIL][65] ([i915#1542])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl4/igt@perf@polling.html

  * igt@prime_nv_pcopy@test3_2:
    - shard-iclb:         NOTRUN -> [SKIP][66] ([fdo#109291])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@prime_nv_pcopy@test3_2.html

  * igt@sysfs_clients@recycle:
    - shard-tglb:         [PASS][67] -> [FAIL][68] ([i915#3028])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-tglb3/igt@sysfs_clients@recycle.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb1/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@recycle-many:
    - shard-snb:          NOTRUN -> [FAIL][69] ([i915#3028])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-snb7/igt@sysfs_clients@recycle-many.html

  * igt@sysfs_clients@sema-10@vcs0:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#3026]) +4 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@sysfs_clients@sema-10@vcs0.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@many-contexts:
    - shard-iclb:         [INCOMPLETE][71] ([i915#3057]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@gem_ctx_persistence@many-contexts.html

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][73] ([i915#3063]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-tglb5/igt@gem_eio@unwedge-stress.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb3/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-kbl:          [FAIL][75] ([i915#2842]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-none@rcs0:
    - shard-glk:          [FAIL][77] ([i915#2842]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         [FAIL][79] ([i915#2842]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [FAIL][81] ([i915#2389]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-glk3/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-glk5/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][83] ([i915#2190]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-tglb6/igt@gem_huc_copy@huc-copy.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_workarounds@suspend-resume-fd:
    - shard-apl:          [DMESG-WARN][85] ([i915#180]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl2/igt@gem_workarounds@suspend-resume-fd.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-skl:          [FAIL][87] ([i915#54]) -> [PASS][88] +4 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][89] ([i915#180] / [i915#1982]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:
    - shard-skl:          [FAIL][91] ([i915#2122]) -> [PASS][92] +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl8/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [FAIL][93] ([i915#79]) -> [PASS][94] +2 similar issues
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-tglb:         [FAIL][95] ([i915#2598]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
    - shard-skl:          [FAIL][97] ([i915#49]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100] +4 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][101] ([fdo#108145] / [i915#265]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_primary_blt:
    - shard-iclb:         [SKIP][103] ([fdo#109441]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb5/igt@kms_psr@psr2_primary_blt.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb2/igt@kms_psr@psr2_primary_blt.html

  * igt@kms_vblank@pipe-b-query-forked-busy:
    - shard-snb:          [SKIP][105] ([fdo#109271]) -> [PASS][106] +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-snb5/igt@kms_vblank@pipe-b-query-forked-busy.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-snb2/igt@kms_vblank@pipe-b-query-forked-busy.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][107] ([i915#1542]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl1/igt@perf@polling-parameterized.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl8/igt@perf@polling-parameterized.html

  * igt@sysfs_clients@recycle:
    - shard-hsw:          [FAIL][109] ([i915#3028]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-hsw2/igt@sysfs_clients@recycle.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-hsw7/igt@sysfs_clients@recycle.html

  * igt@sysfs_clients@split-10@vecs0:
    - shard-glk:          [SKIP][111] ([fdo#109271] / [i915#3026]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-glk7/igt@sysfs_clients@split-10@vecs0.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-glk5/igt@sysfs_clients@split-10@vecs0.html

  * igt@sysfs_clients@split-25@rcs0:
    - shard-skl:          [SKIP][113] ([fdo#109271]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl8/igt@sysfs_clients@split-25@rcs0.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl5/igt@sysfs_clients@split-25@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-iclb:         [FAIL][115] ([i915#2852]) -> [FAIL][116] ([i915#2842])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-tglb:         [FAIL][117] ([i915#2851]) -> [FAIL][118] ([i915#2842])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][119] ([i915#1804] / [i915#2684]) -> [WARN][120] ([i915#2684])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][121] ([i915#1804] / [i915#2684]) -> [WARN][122] ([i915#2681] / [i915#2684])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-iclb:         [SKIP][123] ([i915#658]) -> [SKIP][124] ([i915#2920]) +1 similar issue
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
    - shard-iclb:         [SKIP][125] ([i915#2920]) -> [SKIP][126] ([i915#658]) +1 similar issue
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2724] / [i915#3002] / [i915#716]) -> ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139]) ([fdo#109271] / [i915#1436] / [i915#2505] / [i915#2724] / [i915#3002] / [i915#716])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl7/igt@runner@aborted.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl1/igt@runner@aborted.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl7/igt@runner@aborted.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl4/igt@runner@aborted.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl4/igt@runner@aborted.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl4/igt@runner@aborted.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl2/igt@runner@aborted.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl2/igt@runner@aborted.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl2/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl2/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl2/igt@runner@aborted.html
    - shard-apl:          ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144]) ([fdo#109271] / [i915#180] / [i915#2724] / [i915#3002]) -> ([FAIL][145], [FAIL][146], [FAIL][147]) ([i915#2724] / [i915#3002])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl7/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl6/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl3/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl6/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl2/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl7/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl3/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-apl3/igt@runner@aborted.html
    - shard-skl:          ([FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#1436] / [i915#2029] / [i915#2724] / [i915#3002]) -> ([FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156]) ([i915#1436] / [i915#2724] / [i915#3002])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl6/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl4/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl7/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl1/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl3/igt@runner@aborted.html
   [153]: https://in

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/index.html

--===============1903951284836384666==
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
<tr><td><b>Series:</b></td><td>drm/i915/hdcp: Fix null pointer dereference =
of connector-&gt;encoder</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/87328/">https://patchwork.freedesktop.org/series/87328/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19724/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19724/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9798_full -&gt; Patchwork_19724_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19724_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-snb7/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +2 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@q-in-order:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-snb7/igt@gem_ctx_shared@q-in-order.html=
">SKIP</a> ([fdo#109271]) +261 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@capture@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-kbl6/igt@gem_exec_capture@capture@rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/sha=
rd-kbl7/igt@gem_exec_capture@capture@rcs0.html">FAIL</a> ([i915#3062])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl4/igt@gem_exec_fair@basic-flow@rcs0.=
html">SKIP</a> ([fdo#109271]) +125 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1972=
4/shard-kbl2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</a> ([i915#2=
842]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wide-active@bcs0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl7/igt@gem_exec_reloc@basic-wide-acti=
ve@bcs0.html">FAIL</a> ([i915#2389]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-glk2/igt@gem_exec_whisper@basic-contexts-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19724/shard-glk1/igt@gem_exec_whisper@basic-contexts-forked-all.html">D=
MESG-WARN</a> ([i915#118] / [i915#95]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-snb5/igt@gem_userptr_blits@input-checki=
ng.html">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl4/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@gem_userptr_blits@process-exi=
t-mmap@wc.html">SKIP</a> ([i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_big_fb@x-tiled-32bpp-rota=
te-90.html">SKIP</a> ([fdo#110725] / [fdo#111614])</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_big_joiner@basic.html">SKI=
P</a> ([fdo#109271] / [i915#2705])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl6/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer.html">SKIP</a> ([fdo#109271] / [fdo#111304])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_chamelium@dp-hpd.html">SK=
IP</a> ([fdo#109284] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-5:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-sk=
l9/igt@kms_color@pipe-a-ctm-0-5.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_color@pipe-b-ctm-0-25.htm=
l">FAIL</a> ([i915#1149] / [i915#315]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@kms_color_chamelium@pipe-a-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_color_chamelium@pipe-a-ctm=
-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +10 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-0-5:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19724/shard-snb7/igt@kms_color_chamelium@pipe-d-ctm-=
0-5.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +15 similar issues</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_color_chamelium@pipe-d-ctm=
-0-5.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@lic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_content_protection@lic.ht=
ml">SKIP</a> ([fdo#109300] / [fdo#111066])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl3/igt@kms_cursor_crc@pipe-a-cursor-1=
28x42-sliding.html">FAIL</a> ([i915#54])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-=
512x170-onscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19724/shard-skl3/igt@kms_cursor_crc@pipe-b-cursor-256x85-random.html">F=
AIL</a> ([i915#54]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
724/shard-skl9/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">INCOMPLETE</a=
> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-=
64x21-random.html">SKIP</a> ([fdo#109278]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl1/igt@kms_cursor_crc@pipe-d-cursor-s=
uspend.html">SKIP</a> ([fdo#109271]) +95 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursorb-vs-flipb-varying-size:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-=
flipb-varying-size.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-tglb8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19724/shard-tglb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL<=
/a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_cursor_legacy@flip-vs-cu=
rsor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#53=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-blocking-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_flip@2x-blocking-absolute=
-wf_vblank-interruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-16bpp-ytile.html">FAIL</a> ([i915#2628])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytile.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp=
-ytile-to-32bpp-ytilercccs.html">SKIP</a> ([fdo#109271] / [i915#2672])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109280]) +9 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@static-toggle-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_hdr@static-toggle-dpms.ht=
ml">SKIP</a> ([i915#1187])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19724/shard-apl1/igt@kms_pipe_crc_basic@read-crc-pip=
e-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19724/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pip=
e-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl1/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-4.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl6/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@kms_psr2_sf@plane-move-sf-dmg-=
area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-1.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/sha=
rd-iclb3/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-check-output:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl2/igt@kms_writeback@writeback-check-=
output.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19724/shard-skl4/igt@kms_writeback@writeback-pixel-f=
ormats.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19724/shard-iclb6/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-skip-current-frame:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl1/igt@nouveau_crc@pipe-b-ctx-flip-sk=
ip-current-frame.html">SKIP</a> ([fdo#109271]) +90 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@gen12-mi-rpc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@perf@gen12-mi-rpc.html">SKIP<=
/a> ([fdo#109289]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@polling:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-skl4/igt@perf@polling.html">FAIL</a> ([=
i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test3_2:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-iclb6/igt@prime_nv_pcopy@test3_2.html">=
SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-tglb3/igt@sysfs_clients@recycle.html">PASS</a> -&gt; <a =
href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-tglb=
1/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle-many:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-snb7/igt@sysfs_clients@recycle-many.htm=
l">FAIL</a> ([i915#3028])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@sema-10@vcs0:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-kbl6/igt@sysfs_clients@sema-10@vcs0.htm=
l">SKIP</a> ([fdo#109271] / [i915#3026]) +4 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@many-contexts:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb8/igt@gem_ctx_persistence@many-contexts.html">INCOMP=
LETE</a> ([i915#3057]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19724/shard-iclb6/igt@gem_ctx_persistence@many-contexts.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-tglb5/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19724/shard-tglb3/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-kbl7/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19724/shard-kbl1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PAS=
S</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-glk3/igt@gem_exec_fair@basic-none@rcs0.html">FAIL</a> ([=
i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19724/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-tglb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19724/shard-tglb6/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a> +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-glk3/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAI=
L</a> ([i915#2389]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19724/shard-glk5/igt@gem_exec_reloc@basic-many-active@rcs0.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-tglb6/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#21=
90]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
724/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume-fd:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-apl2/igt@gem_workarounds@suspend-resume-fd.html">DMESG-W=
ARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_19724/shard-apl1/igt@gem_workarounds@suspend-resume-fd.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.h=
tml">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19724/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x85=
-offscreen.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
([i915#180] / [i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19724/shard-apl7/igt@kms_fbcon_fbt@fbc-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl10/igt@kms_flip@flip-vs-blocking-wf-vblank@a-edp1.htm=
l">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19724/shard-skl8/igt@kms_flip@flip-vs-blocking-wf-vblank=
@a-edp1.html">PASS</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@a=
-edp1.html">FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19724/shard-skl5/igt@kms_flip@flip-vs-expired-vbl=
ank-interruptible@a-edp1.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-tglb8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">F=
AIL</a> ([i915#2598]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19724/shard-tglb5/igt@kms_flip@flip-vs-expired-vblank@a-edp1=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mma=
p-wc.html">FAIL</a> ([i915#49]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19724/shard-skl1/igt@kms_frontbuffer_tracking@psr-=
rgb101010-draw-mmap-wc.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a>=
 ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19724/shard-kbl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +4 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min=
.html">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-=
gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-skl1/igt@kms_plane_alpha_b=
lend@pipe-a-constant-alpha-min.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_primary_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb5/igt@kms_psr@psr2_primary_blt.html">SKIP</a> ([fdo#=
109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19724/shard-iclb2/igt@kms_psr@psr2_primary_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-forked-busy:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-snb5/igt@kms_vblank@pipe-b-query-forked-busy.html">SKIP<=
/a> ([fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19724/shard-snb2/igt@kms_vblank@pipe-b-query-forked-busy.html">=
PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl1/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19724/shard-skl8/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@recycle:</p>
<ul>
<li>shard-hsw:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-hsw2/igt@sysfs_clients@recycle.html">FAIL</a> ([i915#302=
8]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_197=
24/shard-hsw7/igt@sysfs_clients@recycle.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-10@vecs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-glk7/igt@sysfs_clients@split-10@vecs0.html">SKIP</a> ([f=
do#109271] / [i915#3026]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19724/shard-glk5/igt@sysfs_clients@split-10@vecs0.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-25@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl8/igt@sysfs_clients@split-25@rcs0.html">SKIP</a> ([fd=
o#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19724/shard-skl5/igt@sysfs_clients@split-25@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb2/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL<=
/a> ([i915#2852]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19724/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html">F=
AIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-tglb2/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL<=
/a> ([i915#2851]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19724/shard-tglb8/igt@gem_exec_fair@basic-pace-solo@rcs0.html">F=
AIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb4/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19724/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence=
.html">WARN</a> ([i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#1804] / [i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_19724/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.h=
tml">WARN</a> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb5/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP<=
/a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19724/shard-iclb2/igt@kms_psr2_sf@cursor-plane-update-sf.html">SK=
IP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-3:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html">SKI=
P</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_19724/shard-iclb5/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.htm=
l">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl1/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9798/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl4/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
98/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl4/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/sh=
ard-kbl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_9798/shard-kbl2/igt@runner@aborted.html">FAIL</=
a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-k=
bl2/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#1436] / [i915#=
180] / [i915#1814] / [i915#2724] / [i915#3002] / [i915#716]) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl2/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19724/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-kbl6/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19724/shard-kbl2/igt@runner@aborted.html">FAIL</a>) (=
[fdo#109271] / [i915#1436] / [i915#2505] / [i915#2724] / [i915#3002] / [i91=
5#716])</p>
</li>
<li>
<p>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-apl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl6/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9798/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-apl6/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
98/shard-apl2/igt@runner@aborted.html">FAIL</a>) ([fdo#109271] / [i915#180]=
 / [i915#2724] / [i915#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19724/shard-apl7/igt@runner@aborted.html">FAIL</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19724/shard-=
apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19724/shard-apl3/igt@runner@aborted.html">FAIL</=
a>) ([i915#2724] / [i915#3002])</p>
</li>
<li>
<p>shard-skl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9798/shard-skl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl4/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9798/shard-skl7/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9798/shard-skl1/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_97=
98/shard-skl3/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#2029]=
 / [i915#2724] / [i915#3002]) -&gt; (<a href=3D"https://in">FAIL</a>, [FAIL=
][154], [FAIL][155], [FAIL][156]) ([i915#1436] / [i915#2724] / [i915#3002])=
</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============1903951284836384666==--

--===============0911034223==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0911034223==--
