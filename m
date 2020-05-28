Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C81F31E5D42
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 12:38:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E0B6E1AA;
	Thu, 28 May 2020 10:38:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 769226E1A4;
 Thu, 28 May 2020 10:38:17 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6FEDDA47EA;
 Thu, 28 May 2020 10:38:17 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 28 May 2020 10:38:17 -0000
Message-ID: <159066229743.685.14267022320698033481@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200528074109.28235-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200528074109.28235-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/11=5D_drm/i915/gt=3A_Prevent_timeslicin?=
 =?utf-8?q?g_into_unpreemptable_requests?=
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

Series: series starting with [01/11] drm/i915/gt: Prevent timeslicing into unpreemptable requests
URL   : https://patchwork.freedesktop.org/series/77729/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_8545_full -> Patchwork_17800_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_17800_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17800_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17800_full:

### IGT changes ###

#### Possible regressions ####

  * igt@gem_ctx_engines@execute-oneforall:
    - shard-apl:          [PASS][1] -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl7/igt@gem_ctx_engines@execute-oneforall.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl7/igt@gem_ctx_engines@execute-oneforall.html
    - shard-hsw:          [PASS][3] -> [FAIL][4] +1 similar issue
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw1/igt@gem_ctx_engines@execute-oneforall.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw8/igt@gem_ctx_engines@execute-oneforall.html

  * igt@gem_linear_blits@interruptible:
    - shard-apl:          [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl4/igt@gem_linear_blits@interruptible.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl7/igt@gem_linear_blits@interruptible.html

  * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
    - shard-hsw:          [PASS][7] -> [DMESG-FAIL][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw1/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw8/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8545_full and Patchwork_17800_full:

### New IGT tests (1) ###

  * igt@dmabuf@all@dma_fence_proxy:
    - Statuses : 8 pass(s)
    - Exec time: [0.03, 0.12] s

  

Known issues
------------

  Here are the changes found in Patchwork_17800_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_linear_blits@interruptible:
    - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#1263])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-kbl3/igt@gem_linear_blits@interruptible.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-kbl6/igt@gem_linear_blits@interruptible.html
    - shard-hsw:          [PASS][11] -> [FAIL][12] ([i915#1263])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw1/igt@gem_linear_blits@interruptible.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw8/igt@gem_linear_blits@interruptible.html
    - shard-glk:          [PASS][13] -> [INCOMPLETE][14] ([i915#58] / [k.org#198133])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-glk5/igt@gem_linear_blits@interruptible.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-glk7/igt@gem_linear_blits@interruptible.html

  * igt@i915_pm_rps@reset:
    - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#39])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw2/igt@i915_pm_rps@reset.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw7/igt@i915_pm_rps@reset.html

  * igt@i915_suspend@debugfs-reader:
    - shard-skl:          [PASS][17] -> [INCOMPLETE][18] ([i915#69])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl8/igt@i915_suspend@debugfs-reader.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl1/igt@i915_suspend@debugfs-reader.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-0:
    - shard-glk:          [PASS][19] -> [FAIL][20] ([i915#1119] / [i915#118] / [i915#95])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-glk7/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-glk8/igt@kms_big_fb@y-tiled-64bpp-rotate-0.html

  * igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen:
    - shard-kbl:          [PASS][21] -> [FAIL][22] ([i915#54] / [i915#93] / [i915#95])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-kbl3/igt@kms_cursor_crc@pipe-a-cursor-256x85-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +2 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-kbl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
    - shard-hsw:          [PASS][25] -> [INCOMPLETE][26] ([i915#61])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw1/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#1188]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl2/igt@kms_hdr@bpc-switch-dpms.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
    - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#53])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl9/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl2/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([fdo#108145] / [i915#265]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html

  * igt@kms_psr@no_drrs:
    - shard-iclb:         [PASS][35] -> [FAIL][36] ([i915#173])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-iclb5/igt@kms_psr@no_drrs.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-iclb1/igt@kms_psr@no_drrs.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][37] -> [SKIP][38] ([fdo#109441]) +2 similar issues
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-iclb5/igt@kms_psr@psr2_cursor_render.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@legacy-engines-mixed-process@render:
    - shard-skl:          [FAIL][39] ([i915#1528]) -> [PASS][40]
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl6/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl1/igt@gem_ctx_persistence@legacy-engines-mixed-process@render.html

  * igt@gem_eio@reset-stress:
    - shard-hsw:          [INCOMPLETE][41] ([i915#61]) -> [PASS][42]
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw8/igt@gem_eio@reset-stress.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw7/igt@gem_eio@reset-stress.html

  * {igt@gem_exec_reloc@basic-concurrent0}:
    - shard-tglb:         [FAIL][43] ([i915#1930]) -> [PASS][44] +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-tglb1/igt@gem_exec_reloc@basic-concurrent0.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-tglb7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-apl:          [FAIL][45] ([i915#1930]) -> [PASS][46]
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl1/igt@gem_exec_reloc@basic-concurrent0.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl2/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-kbl:          [FAIL][47] ([i915#1930]) -> [PASS][48] +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-kbl1/igt@gem_exec_reloc@basic-concurrent0.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-kbl7/igt@gem_exec_reloc@basic-concurrent0.html
    - shard-hsw:          [FAIL][49] ([i915#1930]) -> [PASS][50] +1 similar issue
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw4/igt@gem_exec_reloc@basic-concurrent0.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw1/igt@gem_exec_reloc@basic-concurrent0.html

  * {igt@gem_exec_reloc@basic-concurrent16}:
    - shard-snb:          [FAIL][51] ([i915#1930]) -> [PASS][52] +1 similar issue
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-snb2/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-iclb:         [FAIL][53] ([i915#1930]) -> [PASS][54] +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-iclb2/igt@gem_exec_reloc@basic-concurrent16.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-iclb8/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-skl:          [FAIL][55] ([i915#1930]) -> [PASS][56] +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl8/igt@gem_exec_reloc@basic-concurrent16.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl3/igt@gem_exec_reloc@basic-concurrent16.html
    - shard-glk:          [TIMEOUT][57] ([i915#1930]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-glk9/igt@gem_exec_reloc@basic-concurrent16.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-glk4/igt@gem_exec_reloc@basic-concurrent16.html

  * igt@i915_suspend@forcewake:
    - shard-kbl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-kbl3/igt@i915_suspend@forcewake.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-kbl1/igt@i915_suspend@forcewake.html

  * igt@kms_big_fb@y-tiled-addfb-size-overflow:
    - shard-glk:          [TIMEOUT][61] -> [PASS][62] +4 similar issues
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-glk9/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-glk4/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
    - shard-apl:          [TIMEOUT][63] ([i915#1635]) -> [PASS][64] +4 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl6/igt@kms_big_fb@y-tiled-addfb-size-overflow.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl2/igt@kms_big_fb@y-tiled-addfb-size-overflow.html

  * igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size:
    - shard-hsw:          [SKIP][65] ([fdo#109271]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-hsw8/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-hsw7/igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-size.html

  * {igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1}:
    - shard-skl:          [FAIL][67] ([i915#79]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][69] ([i915#180]) -> [PASS][70] +2 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl7/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [FAIL][71] ([i915#1188]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl2/igt@kms_hdr@bpc-switch.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl2/igt@kms_hdr@bpc-switch.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-skl:          [FAIL][73] ([fdo#108145] / [i915#265]) -> [PASS][74] +1 similar issue
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [SKIP][75] ([fdo#109441]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html

  * {igt@perf@blocking-parameterized}:
    - shard-tglb:         [FAIL][77] ([i915#1542]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-tglb2/igt@perf@blocking-parameterized.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-tglb7/igt@perf@blocking-parameterized.html

  
#### Warnings ####

  * igt@gem_ctx_sseu@invalid-sseu:
    - shard-glk:          [TIMEOUT][79] -> [SKIP][80] ([fdo#109271]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-glk9/igt@gem_ctx_sseu@invalid-sseu.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-glk4/igt@gem_ctx_sseu@invalid-sseu.html
    - shard-apl:          [TIMEOUT][81] ([i915#1635]) -> [SKIP][82] ([fdo#109271])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl6/igt@gem_ctx_sseu@invalid-sseu.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl2/igt@gem_ctx_sseu@invalid-sseu.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          [FAIL][83] ([fdo#110321] / [fdo#110336]) -> [TIMEOUT][84] ([i915#1319] / [i915#1635])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl1/igt@kms_content_protection@atomic.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@atomic-dpms:
    - shard-apl:          [TIMEOUT][85] ([i915#1319] / [i915#1635]) -> [FAIL][86] ([fdo#110321] / [fdo#110336]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl2/igt@kms_content_protection@atomic-dpms.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl8/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-apl:          [TIMEOUT][87] ([i915#1635]) -> [FAIL][88] ([i915#54])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-apl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][89] ([fdo#109642] / [fdo#111068]) -> [FAIL][90] ([i915#608])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8545/shard-iclb8/igt@kms_psr2_su@page_flip.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/shard-iclb2/igt@kms_psr2_su@page_flip.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110321]: https://bugs.freedesktop.org/show_bug.cgi?id=110321
  [fdo#110336]: https://bugs.freedesktop.org/show_bug.cgi?id=110336
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1263]: https://gitlab.freedesktop.org/drm/intel/issues/1263
  [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
  [i915#1528]: https://gitlab.freedesktop.org/drm/intel/issues/1528
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
  [i915#173]: https://gitlab.freedesktop.org/drm/intel/issues/173
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1930]: https://gitlab.freedesktop.org/drm/intel/issues/1930
  [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#39]: https://gitlab.freedesktop.org/drm/intel/issues/39
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#58]: https://gitlab.freedesktop.org/drm/intel/issues/58
  [i915#608]: https://gitlab.freedesktop.org/drm/intel/issues/608
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
  [k.org#198133]: https://bugzilla.kernel.org/show_bug.cgi?id=198133


Participating hosts (11 -> 11)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * Linux: CI_DRM_8545 -> Patchwork_17800

  CI-20190529: 20190529
  CI_DRM_8545: 76540f7be4ff04851e47d0865c2bb07a15106bcb @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_5681: 2991a5d60b1bbf2b2b6004669cd0f9471bd687a2 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17800: 6571dd270ea5be73c0e958eebdaaa16b8b022899 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17800/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
