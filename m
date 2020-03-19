Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3320318C3D8
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 00:38:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1971A6EAA1;
	Thu, 19 Mar 2020 23:38:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 890DB6EAA8;
 Thu, 19 Mar 2020 23:38:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 808A2A0099;
 Thu, 19 Mar 2020 23:38:44 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juha-Pekka Heikkila" <juhapekka.heikkila@gmail.com>
Date: Thu, 19 Mar 2020 23:38:44 -0000
Message-ID: <158466112449.17932.3702431741550501443@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319202148.8879-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20200319202148.8879-1-juhapekka.heikkila@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgVGVz?=
 =?utf-8?q?t_over_32k_long_stride_length_on_icl+_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: Test over 32k long stride length on icl+ (rev2)
URL   : https://patchwork.freedesktop.org/series/74884/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8160_full -> Patchwork_17028_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17028_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17028_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17028_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_exec_schedule@pi-userfault-render:
    - shard-glk:          [PASS][1] -> [DMESG-FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk8/igt@gem_exec_schedule@pi-userfault-render.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-glk3/igt@gem_exec_schedule@pi-userfault-render.html

  * igt@gem_exec_whisper@basic-fds-priority:
    - shard-iclb:         [PASS][3] -> [TIMEOUT][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb7/igt@gem_exec_whisper@basic-fds-priority.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb5/igt@gem_exec_whisper@basic-fds-priority.html

  * igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt:
    - shard-hsw:          NOTRUN -> [DMESG-WARN][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-hsw2/igt@gem_userptr_blits@map-fixed-invalidate-busy-gup@gtt.html

  * {igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0} (NEW):
    - shard-iclb:         NOTRUN -> [SKIP][6] +1 similar issue
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_hdr@static-toggle-dpms:
    - shard-tglb:         NOTRUN -> [SKIP][7] +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb1/igt@kms_hdr@static-toggle-dpms.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8160_full and Patchwork_17028_full:

### New IGT tests (16) ###

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-0:
    - Statuses : 8 pass(s)
    - Exec time: [1.35, 3.90] s

  * igt@kms_big_fb@linear-max-hw-stride-32bpp-rotate-180:
    - Statuses : 8 pass(s)
    - Exec time: [1.31, 3.89] s

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-0:
    - Statuses : 6 pass(s)
    - Exec time: [1.40, 3.48] s

  * igt@kms_big_fb@linear-max-hw-stride-64bpp-rotate-180:
    - Statuses : 8 pass(s)
    - Exec time: [1.38, 3.35] s

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:
    - Statuses : 6 pass(s)
    - Exec time: [1.48, 3.89] s

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180:
    - Statuses : 7 pass(s)
    - Exec time: [1.34, 2.16] s

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:
    - Statuses : 6 pass(s)
    - Exec time: [1.39, 3.42] s

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180:
    - Statuses : 2 pass(s)
    - Exec time: [1.54, 1.92] s

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 4.15] s

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
    - Statuses : 6 pass(s) 2 skip(s)
    - Exec time: [0.0, 4.08] s

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
    - Statuses : 5 pass(s) 3 skip(s)
    - Exec time: [0.0, 2.00] s

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180:
    - Statuses : 5 pass(s) 2 skip(s)
    - Exec time: [0.0, 3.54] s

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0:
    - Statuses : 4 pass(s) 3 skip(s)
    - Exec time: [0.0, 4.08] s

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - Statuses : 5 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.99] s

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - Statuses : 6 skip(s)
    - Exec time: [0.0] s

  

Known issues
------------

  Here are the changes found in Patchwork_17028_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@rcs0-s3:
    - shard-apl:          [PASS][8] -> [DMESG-WARN][9] ([i915#180])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl2/igt@gem_ctx_isolation@rcs0-s3.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-apl4/igt@gem_ctx_isolation@rcs0-s3.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][10] -> [INCOMPLETE][11] ([i915#1402])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl7/igt@gem_ctx_persistence@close-replace-race.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-kbl4/igt@gem_ctx_persistence@close-replace-race.html
    - shard-skl:          [PASS][12] -> [INCOMPLETE][13] ([i915#1402])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl5/igt@gem_ctx_persistence@close-replace-race.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl10/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_shared@exec-single-timeline-bsd:
    - shard-iclb:         [PASS][14] -> [SKIP][15] ([fdo#110841])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@gem_ctx_shared@exec-single-timeline-bsd.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@gem_ctx_shared@exec-single-timeline-bsd.html

  * igt@gem_exec_balancer@smoke:
    - shard-iclb:         [PASS][16] -> [SKIP][17] ([fdo#110854])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@gem_exec_balancer@smoke.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb5/igt@gem_exec_balancer@smoke.html

  * igt@gem_exec_capture@capture-bsd2:
    - shard-iclb:         [PASS][18] -> [SKIP][19] ([fdo#109276]) +7 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_capture@capture-bsd2.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb5/igt@gem_exec_capture@capture-bsd2.html

  * igt@gem_exec_parallel@vcs1-fds:
    - shard-iclb:         [PASS][20] -> [SKIP][21] ([fdo#112080]) +11 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_parallel@vcs1-fds.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb8/igt@gem_exec_parallel@vcs1-fds.html

  * igt@gem_exec_schedule@implicit-read-write-bsd2:
    - shard-iclb:         [PASS][22] -> [SKIP][23] ([fdo#109276] / [i915#677]) +1 similar issue
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@gem_exec_schedule@implicit-read-write-bsd2.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb7/igt@gem_exec_schedule@implicit-read-write-bsd2.html

  * igt@gem_exec_schedule@pi-distinct-iova-bsd:
    - shard-iclb:         [PASS][24] -> [SKIP][25] ([i915#677]) +1 similar issue
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb5/igt@gem_exec_schedule@pi-distinct-iova-bsd.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb4/igt@gem_exec_schedule@pi-distinct-iova-bsd.html

  * igt@gem_exec_schedule@reorder-wide-bsd:
    - shard-iclb:         [PASS][26] -> [SKIP][27] ([fdo#112146]) +4 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb6/igt@gem_exec_schedule@reorder-wide-bsd.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb1/igt@gem_exec_schedule@reorder-wide-bsd.html

  * igt@gem_exec_whisper@basic-fds-all:
    - shard-tglb:         [PASS][28] -> [INCOMPLETE][29] ([i915#1401])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb7/igt@gem_exec_whisper@basic-fds-all.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb2/igt@gem_exec_whisper@basic-fds-all.html

  * igt@gem_userptr_blits@sync-unmap-after-close:
    - shard-snb:          [PASS][30] -> [DMESG-WARN][31] ([fdo#110789] / [fdo#111870] / [i915#478])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-snb2/igt@gem_userptr_blits@sync-unmap-after-close.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-snb6/igt@gem_userptr_blits@sync-unmap-after-close.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-kbl:          [PASS][32] -> [FAIL][33] ([i915#54])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
    - shard-apl:          [PASS][34] -> [FAIL][35] ([i915#54])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl4/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#54]) +2 similar issues
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
    - shard-skl:          [PASS][38] -> [FAIL][39] ([i915#177] / [i915#52] / [i915#54])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl3/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#1188])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl6/igt@kms_hdr@bpc-switch.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-kbl:          [PASS][42] -> [DMESG-WARN][43] ([i915#180]) +3 similar issues
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          [PASS][44] -> [FAIL][45] ([fdo#108145]) +1 similar issue
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][46] -> [FAIL][47] ([fdo#108145] / [i915#265])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][48] -> [FAIL][49] ([i915#173])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb7/igt@kms_psr@no_drrs.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_primary_page_flip:
    - shard-iclb:         [PASS][50] -> [SKIP][51] ([fdo#109441])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html

  * igt@kms_universal_plane@universal-plane-pipe-a-functional:
    - shard-skl:          [PASS][52] -> [FAIL][53] ([i915#331])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl3/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl6/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
    - shard-kbl:          [PASS][54] -> [FAIL][55] ([i915#331])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl1/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-kbl3/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
    - shard-apl:          [PASS][56] -> [FAIL][57] ([i915#331])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl7/igt@kms_universal_plane@universal-plane-pipe-a-functional.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-apl2/igt@kms_universal_plane@universal-plane-pipe-a-functional.html

  
#### Possible fixes ####

  * igt@gem_busy@busy-vcs1:
    - shard-iclb:         [SKIP][58] ([fdo#112080]) -> [PASS][59] +14 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb6/igt@gem_busy@busy-vcs1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@gem_busy@busy-vcs1.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-apl:          [INCOMPLETE][60] ([fdo#103927] / [i915#1402]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl4/igt@gem_ctx_persistence@close-replace-race.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-apl8/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@engines-mixed-process@bcs0:
    - shard-iclb:         [FAIL][62] ([i915#679]) -> [PASS][63]
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb6/igt@gem_ctx_persistence@engines-mixed-process@bcs0.html

  * igt@gem_ctx_persistence@engines-mixed-process@vcs0:
    - shard-iclb:         [INCOMPLETE][64] ([i915#1239]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb6/igt@gem_ctx_persistence@engines-mixed-process@vcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@blt:
    - shard-tglb:         [FAIL][66] ([i915#679]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@blt.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox:
    - shard-tglb:         [INCOMPLETE][68] ([i915#1239]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb2/igt@gem_ctx_persistence@legacy-engines-mixed-process@vebox.html

  * igt@gem_exec_schedule@implicit-both-bsd1:
    - shard-iclb:         [SKIP][70] ([fdo#109276] / [i915#677]) -> [PASS][71] +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb8/igt@gem_exec_schedule@implicit-both-bsd1.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@gem_exec_schedule@implicit-both-bsd1.html

  * igt@gem_exec_schedule@implicit-write-read-bsd:
    - shard-iclb:         [SKIP][72] ([i915#677]) -> [PASS][73]
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@gem_exec_schedule@implicit-write-read-bsd.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb3/igt@gem_exec_schedule@implicit-write-read-bsd.html

  * igt@gem_exec_schedule@preemptive-hang-bsd:
    - shard-iclb:         [SKIP][74] ([fdo#112146]) -> [PASS][75] +3 similar issues
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb2/igt@gem_exec_schedule@preemptive-hang-bsd.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb5/igt@gem_exec_schedule@preemptive-hang-bsd.html

  * igt@gem_exec_schedule@promotion-bsd1:
    - shard-iclb:         [SKIP][76] ([fdo#109276]) -> [PASS][77] +20 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb7/igt@gem_exec_schedule@promotion-bsd1.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb1/igt@gem_exec_schedule@promotion-bsd1.html

  * igt@gem_exec_whisper@basic-fds-forked:
    - shard-tglb:         [INCOMPLETE][78] ([i915#1318] / [i915#1401]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@gem_exec_whisper@basic-fds-forked.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb8/igt@gem_exec_whisper@basic-fds-forked.html

  * igt@gem_ppgtt@flink-and-close-vma-leak:
    - shard-glk:          [FAIL][80] ([i915#644]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk8/igt@gem_ppgtt@flink-and-close-vma-leak.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html

  * igt@i915_pm_dc@dc5-dpms:
    - shard-iclb:         [FAIL][82] ([i915#447]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb3/igt@i915_pm_dc@dc5-dpms.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@i915_pm_dc@dc5-dpms.html

  * igt@i915_pm_rpm@gem-execbuf:
    - shard-iclb:         [SKIP][84] ([i915#1316]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb1/igt@i915_pm_rpm@gem-execbuf.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb4/igt@i915_pm_rpm@gem-execbuf.html
    - shard-glk:          [SKIP][86] ([fdo#109271]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk3/igt@i915_pm_rpm@gem-execbuf.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-glk5/igt@i915_pm_rpm@gem-execbuf.html
    - shard-skl:          [SKIP][88] ([fdo#109271]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl9/igt@i915_pm_rpm@gem-execbuf.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl10/igt@i915_pm_rpm@gem-execbuf.html
    - shard-tglb:         [SKIP][90] ([i915#1316]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb2/igt@i915_pm_rpm@gem-execbuf.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb7/igt@i915_pm_rpm@gem-execbuf.html

  * igt@kms_dp_dsc@basic-dsc-enable-edp:
    - shard-iclb:         [SKIP][92] ([fdo#109349]) -> [PASS][93]
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb5/igt@kms_dp_dsc@basic-dsc-enable-edp.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@kms_dp_dsc@basic-dsc-enable-edp.html

  * igt@kms_flip@flip-vs-suspend-interruptible:
    - shard-apl:          [DMESG-WARN][94] ([i915#180]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-apl7/igt@kms_flip@flip-vs-suspend-interruptible.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible:
    - shard-glk:          [FAIL][96] ([i915#34]) -> [PASS][97] +1 similar issue
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-glk4/igt@kms_flip@plain-flip-fb-recreate-interruptible.html

  * igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack:
    - shard-glk:          [FAIL][98] ([i915#49]) -> [PASS][99]
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-glk8/igt@kms_frontbuffer_tracking@fbc-2p-indfb-fliptrack.html

  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt:
    - shard-skl:          [FAIL][100] ([i915#49]) -> [PASS][101]
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl9/igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][102] ([i915#1188]) -> [PASS][103] +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl8/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [DMESG-WARN][104] ([i915#180]) -> [PASS][105] +5 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_plane_lowres@pipe-a-tiling-x:
    - shard-glk:          [FAIL][106] ([i915#899]) -> [PASS][107]
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-glk3/igt@kms_plane_lowres@pipe-a-tiling-x.html
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-glk2/igt@kms_plane_lowres@pipe-a-tiling-x.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [SKIP][108] ([fdo#109642] / [fdo#111068]) -> [PASS][109]
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb5/igt@kms_psr2_su@frontbuffer.html
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][110] ([fdo#109441]) -> [PASS][111] +2 similar issues
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][112] ([i915#69]) -> [PASS][113]
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-skl9/igt@kms_vblank@pipe-c-ts-continuation-dpms-suspend.html

  
#### Warnings ####

  * igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt:
    - shard-hsw:          [DMESG-WARN][114] ([fdo#110789] / [i915#478]) -> [DMESG-WARN][115] ([i915#478])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-hsw1/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-hsw7/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
    - shard-snb:          [DMESG-WARN][116] ([fdo#110789] / [i915#478]) -> [DMESG-WARN][117] ([i915#478])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-snb2/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-snb5/igt@gem_userptr_blits@map-fixed-invalidate-overlap-busy-gup@gtt.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-tglb:         [FAIL][118] ([i915#454]) -> [SKIP][119] ([i915#468])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb2/igt@i915_pm_dc@dc6-psr.html

  * igt@runner@aborted:
    - shard-kbl:          [FAIL][120] ([i915#92]) -> [FAIL][121] ([i915#1389] / [i915#1402])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-kbl6/igt@runner@aborted.html
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-kbl4/igt@runner@aborted.html
    - shard-apl:          ([FAIL][122], [FAIL][123]) ([fdo#103927] / [i915#1402]) -> [FAIL][124] ([fdo#103927])
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl4/igt@runner@aborted.html
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-apl1/igt@runner@aborted.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-apl3/igt@runner@aborted.html
    - shard-tglb:         [FAIL][125] ([i915#1318]) -> [FAIL][126] ([i915#1401])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8160/shard-tglb1/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/shard-tglb2/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109349]: https://bugs.freedesktop.org/show_bug.cgi?id=109349
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110789]: https://bugs.freedesktop.org/show_bug.cgi?id=110789
  [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
  [fdo#110854]: https://bugs.freedesktop.org/show_bug.cgi?id=110854
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111870]: https://bugs.freedesktop.org/show_bug.cgi?id=111870
  [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
  [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1239]: https://gitlab.freedesktop.org/drm/intel/issues/1239
  [i915#1316]: https://gitlab.freedesktop.org/drm/intel/issues/1316
  [i915#1318]: https://gitlab.freedesktop.org/drm/intel/issues/1318
  [i915#1389]: https://gitlab.freedesktop.org/drm/intel/issues/1389
  [i915#1401]: https://gitlab.freedesktop.org/drm/intel/issues/1401
  [i915#1402]: https://gitlab.freedesktop.org/drm/intel/issues/1402
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#177]: https://gitlab.freedesktop.org/drm/intel/issues/177
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#331]: https://gitlab.freedesktop.org/drm/intel/issues/331
  [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
  [i915#447]: https://gitlab.freedesktop.org/drm/intel/issues/447
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
  [i915#478]: https://gitlab.freedesktop.org/drm/intel/issues/478
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
  [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
  [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#899]: https://gitlab.freedesktop.org/drm/intel/issues/899
  [i915#92]: https://gitlab.freedesktop.org/drm/intel/issues/92


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5523 -> IGTPW_4331
  * Linux: CI_DRM_8160 -> Patchwork_17028

  CI-20190529: 20190529
  CI_DRM_8160: 6ba1729e5025761ab74914f6b8aa3288f493e9c7 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4331: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4331/index.html
  IGT_5523: cf6d524007ac51a7d5a48503ea3dd5f01fd4ebab @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17028: 62029b8972b3d3b275d26d3c634edc115d739f9a @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17028/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
