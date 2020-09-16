Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55AFB26CE2C
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 23:27:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A316EB3A;
	Wed, 16 Sep 2020 21:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B5DC86EB34;
 Wed, 16 Sep 2020 21:27:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AD057A0009;
 Wed, 16 Sep 2020 21:27:38 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Karthik B S" <karthik.b.s@intel.com>
Date: Wed, 16 Sep 2020 21:27:38 -0000
Message-ID: <160029165867.19374.9329946124919042477@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200916150824.15749-1-karthik.b.s@intel.com>
In-Reply-To: <20200916150824.15749-1-karthik.b.s@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQXN5?=
 =?utf-8?q?nchronous_flip_implementation_for_i915_=28rev9=29?=
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
Content-Type: multipart/mixed; boundary="===============0488203504=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0488203504==
Content-Type: multipart/alternative;
 boundary="===============9068910001908870580=="

--===============9068910001908870580==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Asynchronous flip implementation for i915 (rev9)
URL   : https://patchwork.freedesktop.org/series/74386/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9019_full -> Patchwork_18513_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_18513_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_18513_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_18513_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_eio@reset-stress:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb7/igt@gem_eio@reset-stress.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb6/igt@gem_eio@reset-stress.html

  * igt@gem_exec_endless@dispatch@rcs0:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@gem_exec_endless@dispatch@rcs0.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl6/igt@gem_exec_endless@dispatch@rcs0.html

  * {igt@kms_async_flips@async-flip-with-page-flip-events} (NEW):
    - shard-kbl:          NOTRUN -> [FAIL][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-glk:          NOTRUN -> [FAIL][6]
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk8/igt@kms_async_flips@async-flip-with-page-flip-events.html
    - shard-skl:          NOTRUN -> [FAIL][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl6/igt@kms_async_flips@async-flip-with-page-flip-events.html

  
New tests
---------

  New tests have been introduced between CI_DRM_9019_full and Patchwork_18513_full:

### New IGT tests (5) ###

  * igt@kms_async_flips@alternate-sync-async-flip:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.02] s

  * igt@kms_async_flips@async-flip-with-page-flip-events:
    - Statuses : 3 fail(s) 3 pass(s) 1 skip(s)
    - Exec time: [0.0, 3.0] s

  * igt@kms_async_flips@invalid-async-flip:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.21] s

  * igt@kms_async_flips@test-cursor:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.03] s

  * igt@kms_async_flips@test-time-stamp:
    - Statuses : 6 pass(s) 1 skip(s)
    - Exec time: [0.0, 0.05] s

  

Known issues
------------

  Here are the changes found in Patchwork_18513_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-apl:          [PASS][8] -> [FAIL][9] ([i915#1635] / [i915#2389])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-glk:          [PASS][10] -> [DMESG-WARN][11] ([i915#118] / [i915#95])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk2/igt@gem_exec_whisper@basic-fds-forked-all.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk6/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_mmap_gtt@basic-small-copy:
    - shard-iclb:         [PASS][12] -> [DMESG-WARN][13] ([i915#1982])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb5/igt@gem_mmap_gtt@basic-small-copy.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb2/igt@gem_mmap_gtt@basic-small-copy.html

  * igt@i915_selftest@live@blt:
    - shard-snb:          [PASS][14] -> [DMESG-FAIL][15] ([i915#1409])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-snb5/igt@i915_selftest@live@blt.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-snb7/igt@i915_selftest@live@blt.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1635] / [i915#1982])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
    - shard-skl:          [PASS][18] -> [FAIL][19] ([i915#54]) +1 similar issue
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-kbl:          [PASS][20] -> [FAIL][21] ([i915#54])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
    - shard-apl:          [PASS][22] -> [FAIL][23] ([i915#1635] / [i915#54])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html

  * igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:
    - shard-skl:          [PASS][24] -> [DMESG-WARN][25] ([i915#1982]) +40 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html

  * igt@kms_cursor_legacy@cursor-vs-flip-varying-size:
    - shard-skl:          [PASS][26] -> [SKIP][27] ([fdo#109271]) +1 similar issue
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:
    - shard-skl:          [PASS][28] -> [DMESG-FAIL][29] ([i915#1982] / [i915#79])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [PASS][30] -> [DMESG-WARN][31] ([i915#180]) +1 similar issue
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][32] -> [FAIL][33] ([i915#2122])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:
    - shard-glk:          [PASS][34] -> [FAIL][35] ([i915#49])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-skl:          [PASS][36] -> [FAIL][37] ([i915#49])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
    - shard-tglb:         [PASS][38] -> [DMESG-WARN][39] ([i915#1982]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#1188])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
    - shard-skl:          [PASS][42] -> [FAIL][43] ([fdo#108145] / [i915#265])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html

  * igt@kms_psr2_su@page_flip:
    - shard-tglb:         [PASS][44] -> [SKIP][45] ([i915#1911])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb6/igt@kms_psr2_su@page_flip.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb5/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][46] -> [SKIP][47] ([fdo#109441])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@perf@oa-exponents:
    - shard-tglb:         [PASS][48] -> [SKIP][49] ([i915#405])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb5/igt@perf@oa-exponents.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb5/igt@perf@oa-exponents.html
    - shard-glk:          [PASS][50] -> [SKIP][51] ([fdo#109271])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk2/igt@perf@oa-exponents.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk4/igt@perf@oa-exponents.html
    - shard-apl:          [PASS][52] -> [SKIP][53] ([fdo#109271] / [i915#1635])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl6/igt@perf@oa-exponents.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl3/igt@perf@oa-exponents.html
    - shard-kbl:          [PASS][54] -> [SKIP][55] ([fdo#109271])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl1/igt@perf@oa-exponents.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl6/igt@perf@oa-exponents.html
    - shard-iclb:         [PASS][56] -> [SKIP][57] ([i915#405])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb2/igt@perf@oa-exponents.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb8/igt@perf@oa-exponents.html

  * igt@perf@polling-parameterized:
    - shard-apl:          [PASS][58] -> [FAIL][59] ([i915#1542] / [i915#1635])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl4/igt@perf@polling-parameterized.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl4/igt@perf@polling-parameterized.html

  
#### Possible fixes ####

  * {igt@core_hotunplug@unbind-rebind}:
    - shard-apl:          [INCOMPLETE][60] ([i915#1635]) -> [PASS][61]
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl2/igt@core_hotunplug@unbind-rebind.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl2/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_exec_reloc@basic-many-active@vecs0:
    - shard-glk:          [FAIL][62] ([i915#2389]) -> [PASS][63] +1 similar issue
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html

  * igt@gem_exec_whisper@basic-fds-priority-all:
    - shard-glk:          [DMESG-WARN][64] ([i915#118] / [i915#95]) -> [PASS][65]
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk2/igt@gem_exec_whisper@basic-fds-priority-all.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [FAIL][66] ([i915#454]) -> [PASS][67]
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb4/igt@i915_pm_dc@dc6-psr.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb7/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-kbl:          [TIMEOUT][68] ([i915#1288] / [i915#1958]) -> [PASS][69]
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
    - shard-apl:          [TIMEOUT][70] ([i915#1288] / [i915#1635] / [i915#1958]) -> [PASS][71]
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:
    - shard-skl:          [SKIP][72] ([fdo#109271]) -> [PASS][73] +2 similar issues
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
    - shard-apl:          [FAIL][74] ([i915#1635] / [i915#54]) -> [PASS][75]
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
    - shard-kbl:          [FAIL][76] ([i915#54]) -> [PASS][77]
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
    - shard-skl:          [FAIL][78] ([i915#54]) -> [PASS][79]
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][80] ([i915#2346]) -> [PASS][81]
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_flip@flip-vs-suspend@a-vga1:
    - shard-snb:          [DMESG-WARN][82] ([i915#42]) -> [PASS][83]
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-snb7/igt@kms_flip@flip-vs-suspend@a-vga1.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-snb1/igt@kms_flip@flip-vs-suspend@a-vga1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][84] ([i915#1982]) -> [PASS][85]
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:
    - shard-glk:          [FAIL][86] ([i915#49]) -> [PASS][87]
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-stridechange:
    - shard-glk:          [DMESG-WARN][88] ([i915#1982]) -> [PASS][89]
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk9/igt@kms_frontbuffer_tracking@fbc-stridechange.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk1/igt@kms_frontbuffer_tracking@fbc-stridechange.html

  * igt@kms_frontbuffer_tracking@psr-suspend:
    - shard-skl:          [INCOMPLETE][90] ([i915#123]) -> [PASS][91]
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html

  * igt@kms_hdr@bpc-switch-suspend:
    - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +4 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [SKIP][94] ([fdo#109441]) -> [PASS][95] +2 similar issues
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@sysfs_heartbeat_interval@precise@rcs0:
    - shard-skl:          [DMESG-WARN][96] ([i915#1982]) -> [PASS][97] +44 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl3/igt@sysfs_heartbeat_interval@precise@rcs0.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl9/igt@sysfs_heartbeat_interval@precise@rcs0.html

  
#### Warnings ####

  * igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:
    - shard-skl:          [SKIP][98] ([fdo#109271]) -> [DMESG-WARN][99] ([i915#1982])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          [FAIL][100] ([fdo#108145] / [i915#265]) -> [DMESG-FAIL][101] ([fdo#108145] / [i915#1982]) +2 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [DMESG-WARN][102] ([i915#1982]) -> [DMESG-FAIL][103] ([fdo#108145] / [i915#1982])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
    - shard-skl:          [DMESG-FAIL][104] ([fdo#108145] / [i915#1982]) -> [FAIL][105] ([fdo#108145] / [i915#265]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
  [i915#1288]: https://gitlab.freedesktop.org/drm/intel/issues/1288
  [i915#1409]: https://gitlab.freedesktop.org/drm/intel/issues/1409
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1911]: https://gitlab.freedesktop.org/drm/intel/issues/1911
  [i915#1958]: https://gitlab.freedesktop.org/drm/intel/issues/1958
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2389]: https://gitlab.freedesktop.org/drm/intel/issues/2389
  [i915#2469]: https://gitlab.freedesktop.org/drm/intel/issues/2469
  [i915#2476]: https://gitlab.freedesktop.org/drm/intel/issues/2476
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#405]: https://gitlab.freedesktop.org/drm/intel/issues/405
  [i915#42]: https://gitlab.freedesktop.org/drm/intel/issues/42
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * IGT: IGT_5786 -> IGTPW_4988
  * Linux: CI_DRM_9019 -> Patchwork_18513

  CI-20190529: 20190529
  CI_DRM_9019: 038c228475ce10a6f9cc4052250a1315f3c7c627 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4988: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4988/index.html
  IGT_5786: 222051026b978ebbc0dc58db62d7a1f29728f95f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_18513: de58069a8dde498dade4d109813328883731381f @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/index.html

--===============9068910001908870580==
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
<tr><td><b>Series:</b></td><td>Asynchronous flip implementation for i915 (rev9)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/74386/">https://patchwork.freedesktop.org/series/74386/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9019_full -&gt; Patchwork_18513_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_18513_full absolutely need to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br />
  introduced in Patchwork_18513_full, please notify your bug team to allow them<br />
  to document this new failure mode, which will reduce false positives in CI.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_18513_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@gem_eio@reset-stress:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb7/igt@gem_eio@reset-stress.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb6/igt@gem_eio@reset-stress.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_endless@dispatch@rcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@gem_exec_endless@dispatch@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl6/igt@gem_exec_endless@dispatch@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>{igt@kms_async_flips@async-flip-with-page-flip-events} (NEW):</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl7/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a></p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk8/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a></p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl6/igt@kms_async_flips@async-flip-with-page-flip-events.html">FAIL</a></p>
</li>
</ul>
</li>
</ul>
<h2>New tests</h2>
<p>New tests have been introduced between CI_DRM_9019_full and Patchwork_18513_full:</p>
<h3>New IGT tests (5)</h3>
<ul>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 3.02] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events:</p>
<ul>
<li>Statuses : 3 fail(s) 3 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 3.0] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@invalid-async-flip:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.21] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-cursor:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.03] s</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@test-time-stamp:</p>
<ul>
<li>Statuses : 6 pass(s) 1 skip(s)</li>
<li>Exec time: [0.0, 0.05] s</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_18513_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl4/igt@gem_exec_reloc@basic-many-active@rcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk2/igt@gem_exec_whisper@basic-fds-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk6/igt@gem_exec_whisper@basic-fds-forked-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@basic-small-copy:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb5/igt@gem_mmap_gtt@basic-small-copy.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb2/igt@gem_mmap_gtt@basic-small-copy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@blt:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-snb5/igt@i915_selftest@live@blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-snb7/igt@i915_selftest@live@blt.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1409">i915#1409</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-0:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl4/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl3/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x128-random:</p>
<ul>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl6/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl4/igt@kms_cursor_edge_walk@pipe-b-256x256-left-edge.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-varying-size:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl9/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_cursor_legacy@cursor-vs-flip-varying-size.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-edp1.html">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk9/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-render.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-gtt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl6/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl9/igt@kms_hdr@bpc-switch-suspend.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1188">i915#1188</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl6/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb6/igt@kms_psr2_su@page_flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb5/igt@kms_psr2_su@page_flip.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1911">i915#1911</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb3/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@oa-exponents:</p>
<ul>
<li>
<p>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-tglb5/igt@perf@oa-exponents.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-tglb5/igt@perf@oa-exponents.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/405">i915#405</a>)</p>
</li>
<li>
<p>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk2/igt@perf@oa-exponents.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk4/igt@perf@oa-exponents.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl6/igt@perf@oa-exponents.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl3/igt@perf@oa-exponents.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl1/igt@perf@oa-exponents.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl6/igt@perf@oa-exponents.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>)</p>
</li>
<li>
<p>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb2/igt@perf@oa-exponents.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb8/igt@perf@oa-exponents.html">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/405">i915#405</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl4/igt@perf@polling-parameterized.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl4/igt@perf@polling-parameterized.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>{igt@core_hotunplug@unbind-rebind}:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl2/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl2/igt@core_hotunplug@unbind-rebind.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@vecs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2389">i915#2389</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk6/igt@gem_exec_reloc@basic-many-active@vecs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-priority-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk2/igt@gem_exec_whisper@basic-fds-priority-all.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/118">i915#118</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/95">i915#95</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk6/igt@gem_exec_whisper@basic-fds-priority-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb4/igt@i915_pm_dc@dc6-psr.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/454">i915#454</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1288">i915#1288</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl4/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a></p>
</li>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl2/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">TIMEOUT</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1288">i915#1288</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1958">i915#1958</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl7/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-256x256-onscreen.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:</p>
<ul>
<li>
<p>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-apl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1635">i915#1635</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-apl4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/54">i915#54</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-vga1:</p>
<ul>
<li>shard-snb:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-snb7/igt@kms_flip@flip-vs-suspend@a-vga1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/42">i915#42</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-snb1/igt@kms_flip@flip-vs-suspend@a-vga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl1/igt@kms_flip@plain-flip-ts-check-interruptible@a-dp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/49">i915#49</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk8/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-indfb-draw-mmap-gtt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-stridechange:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-glk9/igt@kms_frontbuffer_tracking@fbc-stridechange.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-glk1/igt@kms_frontbuffer_tracking@fbc-stridechange.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl5/igt@kms_frontbuffer_tracking@psr-suspend.html">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/123">i915#123</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl10/igt@kms_frontbuffer_tracking@psr-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-kbl4/igt@kms_hdr@bpc-switch-suspend.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-kbl2/igt@kms_hdr@bpc-switch-suspend.html">PASS</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-iclb4/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109441">fdo#109441</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_heartbeat_interval@precise@rcs0:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl3/igt@sysfs_heartbeat_interval@precise@rcs0.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl9/igt@sysfs_heartbeat_interval@precise@rcs0.html">PASS</a> +44 similar issues</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@kms_cursor_legacy@basic-flip-after-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl1/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">SKIP</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=109271">fdo#109271</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl5/igt@kms_cursor_legacy@basic-flip-after-cursor-legacy.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-WARN</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9019/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">DMESG-FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18513/shard-skl2/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html">FAIL</a> (<a href="https://bugs.freedesktop.org/show_bug.cgi?id=108145">fdo#108145</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/265">i915#265</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when computing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Participating hosts (11 -&gt; 11)</h2>
<p>No changes in participating hosts</p>
<h2>Build changes</h2>
<ul>
<li>IGT: IGT_5786 -&gt; IGTPW_4988</li>
<li>Linux: CI_DRM_9019 -&gt; Patchwork_18513</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_9019: 038c228475ce10a6f9cc4052250a1315f3c7c627 @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  IGTPW_4988: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4988/index.html<br />
  IGT_5786: 222051026b978ebbc0dc58db62d7a1f29728f95f @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools<br />
  Patchwork_18513: de58069a8dde498dade4d109813328883731381f @ git://anongit.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit</p>

</body>
</html>

--===============9068910001908870580==--

--===============0488203504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0488203504==--
