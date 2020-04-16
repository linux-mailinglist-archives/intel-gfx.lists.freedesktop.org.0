Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0B51AC8DE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 17:17:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 756AD6E2E0;
	Thu, 16 Apr 2020 15:17:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id C842B6E2CF;
 Thu, 16 Apr 2020 15:17:03 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BFC96A41FB;
 Thu, 16 Apr 2020 15:17:03 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Anshuman Gupta" <anshuman.gupta@intel.com>
Date: Thu, 16 Apr 2020 15:17:03 -0000
Message-ID: <158705022378.20885.12599086128477743717@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200415170555.15531-1-anshuman.gupta@intel.com>
In-Reply-To: <20200415170555.15531-1-anshuman.gupta@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5_lpsp_support_for_lpsp_igt_=28rev9=29?=
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

Series: i915 lpsp support for lpsp igt (rev9)
URL   : https://patchwork.freedesktop.org/series/74648/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_8302_full -> Patchwork_17315_full
====================================================

Summary
-------

  **WARNING**

  Minor unknown changes coming with Patchwork_17315_full need to be verified
  manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_17315_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_17315_full:

### IGT changes ###

#### Warnings ####

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-snb:          [SKIP][1] ([fdo#109271]) -> [FAIL][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb6/igt@i915_pm_lpsp@screens-disabled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-snb4/igt@i915_pm_lpsp@screens-disabled.html

  
New tests
---------

  New tests have been introduced between CI_DRM_8302_full and Patchwork_17315_full:

### New IGT tests (7) ###

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp-1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-edp-1:
    - Statuses : 3 pass(s)
    - Exec time: [0.10, 0.45] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a-1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a-2:
    - Statuses : 1 skip(s)
    - Exec time: [0.0] s

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-vga-1:
    - Statuses : 2 skip(s)
    - Exec time: [0.0] s

  * igt@kms_flip@dpms-off-confusion-interruptible@d-edp1:
    - Statuses : 1 pass(s)
    - Exec time: [8.70] s

  * igt@kms_flip@dpms-vs-vblank-race-interruptible@d-edp1:
    - Statuses : 1 pass(s)
    - Exec time: [3.65] s

  

Known issues
------------

  Here are the changes found in Patchwork_17315_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_eio@kms:
    - shard-glk:          [PASS][3] -> [TIMEOUT][4] ([i915#1383])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-glk8/igt@gem_eio@kms.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-glk8/igt@gem_eio@kms.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-hsw:          [PASS][5] -> [INCOMPLETE][6] ([i915#61])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-hsw1/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-hsw7/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][7] -> [DMESG-WARN][8] ([i915#716])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][9] -> [FAIL][10] ([i915#454])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl1/igt@i915_pm_dc@dc6-psr.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl3/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-snb:          [PASS][11] -> [FAIL][12] ([i915#1066])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-snb6/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-iclb:         [PASS][13] -> [SKIP][14] ([i915#579])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb1/igt@i915_pm_rpm@gem-idle.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb4/igt@i915_pm_rpm@gem-idle.html
    - shard-glk:          [PASS][15] -> [SKIP][16] ([fdo#109271])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-glk7/igt@i915_pm_rpm@gem-idle.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-glk5/igt@i915_pm_rpm@gem-idle.html
    - shard-tglb:         [PASS][17] -> [SKIP][18] ([i915#579])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb6/igt@i915_pm_rpm@gem-idle.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-tglb8/igt@i915_pm_rpm@gem-idle.html
    - shard-skl:          [PASS][19] -> [SKIP][20] ([fdo#109271])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl6/igt@i915_pm_rpm@gem-idle.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl7/igt@i915_pm_rpm@gem-idle.html
    - shard-hsw:          [PASS][21] -> [SKIP][22] ([fdo#109271])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-hsw1/igt@i915_pm_rpm@gem-idle.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-hsw1/igt@i915_pm_rpm@gem-idle.html

  * igt@i915_selftest@live@requests:
    - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#1531])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb8/igt@i915_selftest@live@requests.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-tglb2/igt@i915_selftest@live@requests.html

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#69])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl3/igt@i915_suspend@fence-restore-tiled2untiled.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen:
    - shard-kbl:          [PASS][27] -> [FAIL][28] ([i915#54] / [i915#93] / [i915#95]) +1 similar issue
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl2/igt@kms_cursor_crc@pipe-a-cursor-64x64-offscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
    - shard-apl:          [PASS][29] -> [FAIL][30] ([i915#54] / [i915#95]) +1 similar issue
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl3/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
    - shard-glk:          [PASS][31] -> [FAIL][32] ([i915#54])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-glk8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
    - shard-apl:          [PASS][33] -> [FAIL][34] ([i915#54])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
    - shard-kbl:          [PASS][35] -> [FAIL][36] ([i915#54])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#54])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html

  * igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled:
    - shard-glk:          [PASS][39] -> [FAIL][40] ([i915#52] / [i915#54]) +1 similar issue
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-glk4/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-glk7/igt@kms_draw_crc@draw-method-rgb565-mmap-wc-ytiled.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move:
    - shard-apl:          [PASS][41] -> [FAIL][42] ([i915#49] / [i915#95])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
    - shard-kbl:          [PASS][43] -> [FAIL][44] ([i915#49])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-spr-indfb-move.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-kbl:          [PASS][45] -> [FAIL][46] ([i915#53] / [i915#93] / [i915#95])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
    - shard-apl:          [PASS][47] -> [FAIL][48] ([i915#53] / [i915#95])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-apl:          [PASS][51] -> [FAIL][52] ([fdo#108145] / [i915#265] / [i915#95])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_prime@basic-crc:
    - shard-apl:          [PASS][53] -> [FAIL][54] ([i915#1031] / [i915#95])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl7/igt@kms_prime@basic-crc.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl2/igt@kms_prime@basic-crc.html
    - shard-kbl:          [PASS][55] -> [FAIL][56] ([i915#1031] / [i915#93] / [i915#95])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl1/igt@kms_prime@basic-crc.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl1/igt@kms_prime@basic-crc.html

  * igt@kms_psr2_su@frontbuffer:
    - shard-iclb:         [PASS][57] -> [SKIP][58] ([fdo#109642] / [fdo#111068])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb2/igt@kms_psr2_su@frontbuffer.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb7/igt@kms_psr2_su@frontbuffer.html

  * igt@kms_psr@psr2_suspend:
    - shard-iclb:         [PASS][59] -> [SKIP][60] ([fdo#109441]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb2/igt@kms_psr@psr2_suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb4/igt@kms_psr@psr2_suspend.html

  * igt@perf@gen12-mi-rpc:
    - shard-tglb:         [PASS][61] -> [FAIL][62] ([i915#1085])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb1/igt@perf@gen12-mi-rpc.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-tglb1/igt@perf@gen12-mi-rpc.html

  
#### Possible fixes ####

  * {igt@gem_ctx_isolation@preservation-s3@vcs0}:
    - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +3 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl4/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_params@invalid-bsd-ring:
    - shard-iclb:         [SKIP][65] ([fdo#109276]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb3/igt@gem_exec_params@invalid-bsd-ring.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb2/igt@gem_exec_params@invalid-bsd-ring.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [FAIL][67] ([i915#454]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-skl:          [SKIP][69] ([fdo#109271]) -> [PASS][70]
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl9/igt@i915_pm_lpsp@screens-disabled.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl7/igt@i915_pm_lpsp@screens-disabled.html
    - shard-tglb:         [SKIP][71] ([fdo#109301]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb1/igt@i915_pm_lpsp@screens-disabled.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-tglb8/igt@i915_pm_lpsp@screens-disabled.html
    - shard-glk:          [SKIP][73] ([fdo#109271]) -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-glk6/igt@i915_pm_lpsp@screens-disabled.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-glk5/igt@i915_pm_lpsp@screens-disabled.html
    - shard-iclb:         [SKIP][75] ([fdo#109301]) -> [PASS][76]
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb2/igt@i915_pm_lpsp@screens-disabled.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb4/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-apl:          [FAIL][77] ([i915#1119] / [i915#95]) -> [PASS][78] +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl3/igt@kms_big_fb@linear-32bpp-rotate-180.html
    - shard-kbl:          [FAIL][79] ([i915#1119] / [i915#93] / [i915#95]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl4/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl6/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_color@pipe-a-degamma:
    - shard-skl:          [FAIL][81] ([fdo#108145] / [i915#71]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl2/igt@kms_color@pipe-a-degamma.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl7/igt@kms_color@pipe-a-degamma.html

  * igt@kms_color@pipe-a-gamma:
    - shard-tglb:         [FAIL][83] ([i915#1149]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb5/igt@kms_color@pipe-a-gamma.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-tglb1/igt@kms_color@pipe-a-gamma.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [FAIL][85] ([i915#54]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl7/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen:
    - shard-kbl:          [FAIL][87] ([i915#54] / [i915#93] / [i915#95]) -> [PASS][88] +2 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-64x21-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [INCOMPLETE][89] ([i915#155]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl1/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_draw_crc@draw-method-rgb565-render-untiled:
    - shard-glk:          [FAIL][91] ([i915#52] / [i915#54]) -> [PASS][92] +7 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-glk8/igt@kms_draw_crc@draw-method-rgb565-render-untiled.html

  * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled:
    - shard-apl:          [FAIL][93] ([i915#52] / [i915#54] / [i915#95]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl7/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-untiled.html

  * igt@kms_fbcon_fbt@psr-suspend:
    - shard-tglb:         [INCOMPLETE][95] ([i915#456] / [i915#460]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-tglb8/igt@kms_fbcon_fbt@psr-suspend.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-tglb5/igt@kms_fbcon_fbt@psr-suspend.html

  * {igt@kms_flip@flip-vs-suspend-interruptible@a-dp1}:
    - shard-kbl:          [INCOMPLETE][97] -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * {igt@kms_flip@flip-vs-suspend@c-dp1}:
    - shard-apl:          [DMESG-WARN][99] ([i915#180]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl2/igt@kms_flip@flip-vs-suspend@c-dp1.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render:
    - shard-skl:          [FAIL][101] ([i915#49]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl5/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [FAIL][103] ([i915#1188]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@hang-read-crc-pipe-a:
    - shard-kbl:          [FAIL][105] ([i915#53] / [i915#93] / [i915#95]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl3/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl2/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
    - shard-apl:          [FAIL][107] ([i915#53] / [i915#95]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl1/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl8/igt@kms_pipe_crc_basic@hang-read-crc-pipe-a.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
    - shard-kbl:          [FAIL][109] ([fdo#108145] / [i915#265] / [i915#93] / [i915#95]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-kbl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-kbl3/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
    - shard-skl:          [FAIL][111] ([fdo#108145] / [i915#265]) -> [PASS][112] +1 similar issue
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
    - shard-apl:          [FAIL][113] ([fdo#108145] / [i915#265] / [i915#95]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl4/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][115] ([fdo#109441]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb8/igt@kms_psr@psr2_cursor_blt.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  
#### Warnings ####

  * igt@i915_pm_dc@dc6-dpms:
    - shard-skl:          [FAIL][117] ([i915#1665]) -> [FAIL][118] ([i915#454])
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-skl5/igt@i915_pm_dc@dc6-dpms.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-skl8/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][119] ([i915#1515]) -> [FAIL][120] ([i915#1515])
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@i915_pm_rpm@gem-idle:
    - shard-snb:          [INCOMPLETE][121] ([i915#82]) -> [SKIP][122] ([fdo#109271])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-snb4/igt@i915_pm_rpm@gem-idle.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-snb4/igt@i915_pm_rpm@gem-idle.html

  * igt@kms_fbcon_fbt@fbc:
    - shard-apl:          [FAIL][123] ([i915#95]) -> [FAIL][124] ([i915#1525] / [i915#95])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl3/igt@kms_fbcon_fbt@fbc.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl8/igt@kms_fbcon_fbt@fbc.html

  * igt@runner@aborted:
    - shard-apl:          [FAIL][125] ([i915#1423]) -> ([FAIL][126], [FAIL][127]) ([i915#1423] / [i915#716])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_8302/shard-apl6/igt@runner@aborted.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl3/igt@runner@aborted.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/shard-apl4/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
  [fdo#109301]: https://bugs.freedesktop.org/show_bug.cgi?id=109301
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [i915#1031]: https://gitlab.freedesktop.org/drm/intel/issues/1031
  [i915#1066]: https://gitlab.freedesktop.org/drm/intel/issues/1066
  [i915#1085]: https://gitlab.freedesktop.org/drm/intel/issues/1085
  [i915#1119]: https://gitlab.freedesktop.org/drm/intel/issues/1119
  [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1383]: https://gitlab.freedesktop.org/drm/intel/issues/1383
  [i915#1423]: https://gitlab.freedesktop.org/drm/intel/issues/1423
  [i915#1515]: https://gitlab.freedesktop.org/drm/intel/issues/1515
  [i915#1525]: https://gitlab.freedesktop.org/drm/intel/issues/1525
  [i915#1531]: https://gitlab.freedesktop.org/drm/intel/issues/1531
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#155]: https://gitlab.freedesktop.org/drm/intel/issues/155
  [i915#1665]: https://gitlab.freedesktop.org/drm/intel/issues/1665
  [i915#1676]: https://gitlab.freedesktop.org/drm/intel/issues/1676
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
  [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
  [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
  [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
  [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
  [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
  [i915#53]: https://gitlab.freedesktop.org/drm/intel/issues/53
  [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
  [i915#579]: https://gitlab.freedesktop.org/drm/intel/issues/579
  [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
  [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
  [i915#71]: https://gitlab.freedesktop.org/drm/intel/issues/71
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
  [i915#93]: https://gitlab.freedesktop.org/drm/intel/issues/93
  [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95


Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts


Build changes
-------------

  * CI: CI-20190529 -> None
  * IGT: IGT_5591 -> IGTPW_4467
  * Linux: CI_DRM_8302 -> Patchwork_17315

  CI-20190529: 20190529
  CI_DRM_8302: e022648f1633f24b4ec326805f1de22209826519 @ git://anongit.freedesktop.org/gfx-ci/linux
  IGTPW_4467: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_4467/index.html
  IGT_5591: f57b7fdbe8d04ce3edf0433a03c7d9d5c3d96680 @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
  Patchwork_17315: 533d9b6137fff01ee750d8b8cab83c0bd926951b @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17315/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
