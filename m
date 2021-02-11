Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B1F318B8A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 14:09:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3304F6E424;
	Thu, 11 Feb 2021 13:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0DBB76E3DA;
 Thu, 11 Feb 2021 13:09:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0A695A882E;
 Thu, 11 Feb 2021 13:09:26 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Thu, 11 Feb 2021 13:09:26 -0000
Message-ID: <161304896603.27070.1317182120763093342@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210210221955.10025-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210210221955.10025-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/6=5D_drm/i915/gt=3A_Sanitize_GPU_during_?=
 =?utf-8?q?prepare-to-suspend?=
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
Content-Type: multipart/mixed; boundary="===============1178844861=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1178844861==
Content-Type: multipart/alternative;
 boundary="===============5409752898197306176=="

--===============5409752898197306176==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: series starting with [1/6] drm/i915/gt: Sanitize GPU during prepare-to-suspend
URL   : https://patchwork.freedesktop.org/series/86962/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_9761_full -> Patchwork_19655_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_19655_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_19655_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_19655_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-glk:          [PASS][1] -> [INCOMPLETE][2] +1 similar issue
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk4/igt@i915_module_load@reload-with-fault-injection.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-glk9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_selftest@mock@timelines:
    - shard-kbl:          [PASS][3] -> [INCOMPLETE][4]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl7/igt@i915_selftest@mock@timelines.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl3/igt@i915_selftest@mock@timelines.html
    - shard-iclb:         [PASS][5] -> [INCOMPLETE][6]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb5/igt@i915_selftest@mock@timelines.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb8/igt@i915_selftest@mock@timelines.html
    - shard-skl:          [PASS][7] -> [INCOMPLETE][8]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl10/igt@i915_selftest@mock@timelines.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl2/igt@i915_selftest@mock@timelines.html
    - shard-tglb:         [PASS][9] -> [INCOMPLETE][10]
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb5/igt@i915_selftest@mock@timelines.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-tglb6/igt@i915_selftest@mock@timelines.html
    - shard-snb:          [PASS][11] -> [INCOMPLETE][12]
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-snb6/igt@i915_selftest@mock@timelines.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-snb6/igt@i915_selftest@mock@timelines.html

  
Known issues
------------

  Here are the changes found in Patchwork_19655_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][13] ([i915#3002])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl7/igt@gem_create@create-massive.html

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-kbl:          [PASS][14] -> [TIMEOUT][15] ([i915#2918])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_ctx_persistence@legacy-engines-hang@blt:
    - shard-skl:          NOTRUN -> [SKIP][16] ([fdo#109271]) +34 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl7/igt@gem_ctx_persistence@legacy-engines-hang@blt.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [PASS][17] -> [FAIL][18] ([i915#2846])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl6/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-share@rcs0:
    - shard-kbl:          [PASS][19] -> [FAIL][20] ([i915#2842])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl3/igt@gem_exec_fair@basic-none-share@rcs0.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl1/igt@gem_exec_fair@basic-none-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [PASS][21] -> [FAIL][22] ([i915#2842]) +1 similar issue
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_exec_reloc@basic-many-active@rcs0:
    - shard-glk:          [PASS][23] -> [FAIL][24] ([i915#2389])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html

  * igt@gem_exec_schedule@u-fairslice@vecs0:
    - shard-skl:          [PASS][25] -> [DMESG-WARN][26] ([i915#1610] / [i915#2803])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@gem_exec_schedule@u-fairslice@vecs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@gem_exec_schedule@u-fairslice@vecs0.html

  * igt@gem_exec_whisper@basic-contexts-forked-all:
    - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118] / [i915#95])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked-all.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][29] ([i915#2658])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl1/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [WARN][30] ([i915#2658])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@process-exit-mmap@wb:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#1699]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl7/igt@gem_userptr_blits@process-exit-mmap@wb.html

  * igt@gen9_exec_parse@batch-without-end:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#112306])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@gen9_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@bb-oversize:
    - shard-iclb:         NOTRUN -> [SKIP][33] ([i915#2527])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@gen9_exec_parse@bb-oversize.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#198] / [i915#1982])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html
    - shard-kbl:          [PASS][36] -> [INCOMPLETE][37] ([i915#1373])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@i915_module_load@reload-with-fault-injection.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html
    - shard-tglb:         [PASS][38] -> [INCOMPLETE][39] ([i915#1982])
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.html
    - shard-apl:          [PASS][40] -> [INCOMPLETE][41] ([i915#1373])
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl7/igt@i915_module_load@reload-with-fault-injection.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl3/igt@i915_module_load@reload-with-fault-injection.html
    - shard-snb:          [PASS][42] -> [INCOMPLETE][43] ([i915#2880])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html
    - shard-iclb:         [PASS][44] -> [INCOMPLETE][45] ([i915#926])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb1/igt@i915_module_load@reload-with-fault-injection.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb1/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_lpsp@screens-disabled:
    - shard-iclb:         NOTRUN -> [SKIP][46] ([i915#1902])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@i915_pm_lpsp@screens-disabled.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-snb:          [PASS][47] -> [SKIP][48] ([fdo#109271])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-snb6/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-snb4/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_chamelium@dp-hpd-fast:
    - shard-tglb:         NOTRUN -> [SKIP][49] ([fdo#109284] / [fdo#111827])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-tglb5/igt@kms_chamelium@dp-hpd-fast.html

  * igt@kms_color@pipe-c-ctm-0-75:
    - shard-skl:          [PASS][50] -> [DMESG-WARN][51] ([i915#1982])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl10/igt@kms_color@pipe-c-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-b-ctm-0-75:
    - shard-apl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [fdo#111827]) +12 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm-0-75.html

  * igt@kms_color_chamelium@pipe-c-ctm-negative:
    - shard-skl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [fdo#111827]) +1 similar issue
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-negative.html

  * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
    - shard-iclb:         NOTRUN -> [SKIP][54] ([fdo#109278] / [fdo#109284] / [fdo#111827])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html

  * igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:
    - shard-skl:          [PASS][55] -> [FAIL][56] ([i915#54]) +4 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-skl:          NOTRUN -> [INCOMPLETE][57] ([i915#2295] / [i915#300])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109278] / [fdo#109279])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-kbl:          [PASS][59] -> [DMESG-WARN][60] ([i915#180]) +2 similar issues
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-legacy:
    - shard-skl:          [PASS][61] -> [FAIL][62] ([i915#2346])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html

  * igt@kms_flip@flip-vs-expired-vblank@c-edp1:
    - shard-skl:          [PASS][63] -> [FAIL][64] ([i915#79])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][65] -> [DMESG-WARN][66] ([i915#180]) +3 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:
    - shard-skl:          [PASS][67] -> [FAIL][68] ([i915#2122]) +4 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-apl:          NOTRUN -> [FAIL][69] ([i915#2641])
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2672])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
    - shard-iclb:         NOTRUN -> [SKIP][71] ([fdo#109280]) +2 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html

  * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl8/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
    - shard-skl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
    - shard-apl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html

  * igt@kms_plane_lowres@pipe-d-tiling-x:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109278]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_plane_lowres@pipe-d-tiling-x.html

  * igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping:
    - shard-apl:          NOTRUN -> [SKIP][76] ([fdo#109271] / [i915#2733])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl8/igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-clipping-clamping.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl8/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#658])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_sprite_mmap_gtt:
    - shard-iclb:         [PASS][79] -> [SKIP][80] ([fdo#109441]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html

  * igt@kms_vblank@pipe-d-wait-forked-hang:
    - shard-apl:          NOTRUN -> [SKIP][81] ([fdo#109271]) +77 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl4/igt@kms_vblank@pipe-d-wait-forked-hang.html

  * igt@perf@blocking:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#1542])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@perf@blocking.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@perf@blocking.html

  * igt@prime_nv_api@i915_self_import_to_different_fd:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109291])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@prime_nv_api@i915_self_import_to_different_fd.html

  
#### Possible fixes ####

  * igt@gem_ctx_persistence@close-replace-race:
    - shard-glk:          [TIMEOUT][85] ([i915#2918]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-glk4/igt@gem_ctx_persistence@close-replace-race.html

  * igt@gem_eio@in-flight-suspend:
    - shard-apl:          [DMESG-WARN][87] ([i915#1037] / [i915#180]) -> [PASS][88]
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl6/igt@gem_eio@in-flight-suspend.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl7/igt@gem_eio@in-flight-suspend.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][89] ([i915#1037] / [i915#2481]) -> [PASS][90]
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb8/igt@gem_eio@unwedge-stress.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          [FAIL][91] ([i915#2842]) -> [PASS][92] +2 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][93] ([i915#2842]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_schedule@u-fairslice@rcs0:
    - shard-iclb:         [DMESG-WARN][95] ([i915#2803]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@gem_exec_schedule@u-fairslice@rcs0.html

  * igt@gem_sync@basic-each:
    - shard-apl:          [INCOMPLETE][97] ([i915#2944]) -> [PASS][98]
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl3/igt@gem_sync@basic-each.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl4/igt@gem_sync@basic-each.html

  * igt@gem_vm_create@destroy-race:
    - shard-tglb:         [TIMEOUT][99] ([i915#2795]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb8/igt@gem_vm_create@destroy-race.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-tglb5/igt@gem_vm_create@destroy-race.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [DMESG-WARN][101] ([i915#1436] / [i915#716]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl4/igt@gen9_exec_parse@allowed-single.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl7/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_rpm@system-suspend-modeset:
    - shard-skl:          [INCOMPLETE][103] ([i915#146] / [i915#151]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html

  * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
    - shard-skl:          [FAIL][105] ([i915#54]) -> [PASS][106] +5 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
    - shard-skl:          [FAIL][107] ([i915#2346]) -> [PASS][108]
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - shard-skl:          [DMESG-WARN][109] ([i915#1982]) -> [PASS][110] +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [INCOMPLETE][111] ([i915#180]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
    - shard-skl:          [FAIL][113] ([i915#2122]) -> [PASS][114] +1 similar issue
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html

  * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
    - shard-glk:          [FAIL][115] ([i915#79]) -> [PASS][116] +1 similar issue
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
    - shard-apl:          [DMESG-WARN][117] ([i915#180] / [i915#533]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html

  * igt@kms_psr2_su@page_flip:
    - shard-iclb:         [SKIP][119] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb1/igt@kms_psr2_su@page_flip.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb2/igt@kms_psr2_su@page_flip.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][121] ([fdo#109441]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-skl:          [INCOMPLETE][123] ([i915#146] / [i915#198]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [FAIL][125] ([i915#1542]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl7/igt@perf@polling-parameterized.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl6/igt@perf@polling-parameterized.html

  * {igt@sysfs_clients@recycle-many}:
    - shard-glk:          [FAIL][127] ([i915#3028]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk5/igt@sysfs_clients@recycle-many.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-glk2/igt@sysfs_clients@recycle-many.html
    - shard-skl:          [FAIL][129] ([i915#3028]) -> [PASS][130]
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@sysfs_clients@recycle-many.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@sysfs_clients@recycle-many.html
    - shard-kbl:          [FAIL][131] ([i915#3028]) -> [PASS][132]
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl6/igt@sysfs_clients@recycle-many.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl7/igt@sysfs_clients@recycle-many.html

  * igt@testdisplay:
    - shard-kbl:          [DMESG-WARN][133] ([i915#165] / [i915#180] / [i915#78]) -> [PASS][134] +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@testdisplay.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl6/igt@testdisplay.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-kbl:          [SKIP][135] ([fdo#109271]) -> [FAIL][136] ([i915#2842])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-tglb:         [FAIL][137] ([i915#2876]) -> [FAIL][138] ([i915#2842])
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [FAIL][139] ([i915#2842]) -> [FAIL][140] ([i915#2849])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][141] ([i915#2684]) -> [WARN][142] ([i915#2681] / [i915#2684])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][143] ([i915#2684]) -> [WARN][144] ([i915#1804] / [i915#2684])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
    - shard-iclb:         [SKIP][145] ([i915#2920]) -> [SKIP][146] ([i915#658]) +2 similar issues
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb8/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][147] ([i915#658]) -> [SKIP][148] ([i915#2920]) +2 similar issues
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][149], [FAIL][150], [FAIL][151]) ([i915#2295] / [i915#3002]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([i915#1436] / [i915#1814] / [i915#2292] / [i915#2295] / [i915#2426] / [i915#3002] / [i915#92])
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@runner@aborted.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl4/igt@runner@aborted.html
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl3/igt@runner@aborted.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl3/igt@runner@aborted.html
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl4/igt@runner@aborted.html
   [156]: https://intel-gfx-ci.01.o

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/index.html

--===============5409752898197306176==
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
<tr><td><b>Series:</b></td><td>series starting with [1/6] drm/i915/gt: Sani=
tize GPU during prepare-to-suspend</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/86962/">https://patchwork.freedesktop.org/series/86962/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19655/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19655/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9761_full -&gt; Patchwork_19655_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_19655_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_19655_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
19655_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk4/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-glk9/igt@i915_module_load@reload-with-fault-injection.htm=
l">INCOMPLETE</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@mock@timelines:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-kbl7/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard=
-kbl3/igt@i915_selftest@mock@timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-iclb5/igt@i915_selftest@mock@timelines.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shar=
d-iclb8/igt@i915_selftest@mock@timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-skl10/igt@i915_selftest@mock@timelines.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shar=
d-skl2/igt@i915_selftest@mock@timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-tglb5/igt@i915_selftest@mock@timelines.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shar=
d-tglb6/igt@i915_selftest@mock@timelines.html">INCOMPLETE</a></p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-snb6/igt@i915_selftest@mock@timelines.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard=
-snb6/igt@i915_selftest@mock@timelines.html">INCOMPLETE</a></p>
</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19655_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-skl7/igt@gem_create@create-massive.html=
">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl2/igt@gem_ctx_persistence@close-replace-race.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19655/shard-kbl6/igt@gem_ctx_persistence@close-replace-race.html">TIMEOUT</=
a> ([i915#2918])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-hang@blt:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-skl7/igt@gem_ctx_persistence@legacy-eng=
ines-hang@blt.html">SKIP</a> ([fdo#109271]) +34 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shar=
d-kbl6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-share@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl3/igt@gem_exec_fair@basic-none-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
55/shard-kbl1/igt@gem_exec_fair@basic-none-share@rcs0.html">FAIL</a> ([i915=
#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/s=
hard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) =
+1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-many-active@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk4/igt@gem_exec_reloc@basic-many-active@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
9655/shard-glk6/igt@gem_exec_reloc@basic-many-active@rcs0.html">FAIL</a> ([=
i915#2389])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@vecs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@gem_exec_schedule@u-fairslice@vecs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_196=
55/shard-skl8/igt@gem_exec_schedule@u-fairslice@vecs0.html">DMESG-WARN</a> =
([i915#1610] / [i915#2803])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk3/igt@gem_exec_whisper@basic-contexts-forked-all.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19655/shard-glk5/igt@gem_exec_whisper@basic-contexts-forked-all.html">D=
MESG-WARN</a> ([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19655/shard-apl1/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19655/shard-skl8/igt@gem_pread@exhaustion.html">WARN=
</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@process-exit-mmap@wb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl7/igt@gem_userptr_blits@process-exit=
-mmap@wb.html">SKIP</a> ([fdo#109271] / [i915#1699]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@batch-without-end:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@gen9_exec_parse@batch-without=
-end.html">SKIP</a> ([fdo#112306])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-oversize:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@gen9_exec_parse@bb-oversize.h=
tml">SKIP</a> ([i915#2527])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-skl5/igt@i915_module_load@reload-with-fault-injection.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19655/shard-skl5/igt@i915_module_load@reload-with-fault-injection.html=
">INCOMPLETE</a> ([i915#198] / [i915#1982])</p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-kbl4/igt@i915_module_load@reload-with-fault-injection.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19655/shard-kbl7/igt@i915_module_load@reload-with-fault-injection.html=
">INCOMPLETE</a> ([i915#1373])</p>
</li>
<li>
<p>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-tglb7/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-tglb6/igt@i915_module_load@reload-with-fault-injection.ht=
ml">INCOMPLETE</a> ([i915#1982])</p>
</li>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-apl7/igt@i915_module_load@reload-with-fault-injection.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19655/shard-apl3/igt@i915_module_load@reload-with-fault-injection.html=
">INCOMPLETE</a> ([i915#1373])</p>
</li>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-snb2/igt@i915_module_load@reload-with-fault-injection.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19655/shard-snb2/igt@i915_module_load@reload-with-fault-injection.html=
">INCOMPLETE</a> ([i915#2880])</p>
</li>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-iclb1/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-iclb1/igt@i915_module_load@reload-with-fault-injection.ht=
ml">INCOMPLETE</a> ([i915#926])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@screens-disabled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@i915_pm_lpsp@screens-disabled=
.html">SKIP</a> ([i915#1902])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-snb6/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1965=
5/shard-snb4/igt@kms_big_fb@linear-32bpp-rotate-180.html">SKIP</a> ([fdo#10=
9271])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-fast:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-tglb5/igt@kms_chamelium@dp-hpd-fast.htm=
l">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-c-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl6/igt@kms_color@pipe-c-ctm-0-75.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-s=
kl10/igt@kms_color@pipe-c-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-0-75:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl4/igt@kms_color_chamelium@pipe-b-ctm=
-0-75.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-c-ctm-negative:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_color_chamelium@pipe-d-ct=
m-red-to-blue.html">SKIP</a> ([fdo#109278] / [fdo#109284] / [fdo#111827])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl6/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x42-onscreen.ht=
ml">FAIL</a> ([i915#54]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-s=
uspend.html">INCOMPLETE</a> ([i915#2295] / [i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-=
512x512-sliding.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl2/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
655/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</a=
> ([i915#180]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-legacy:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19655/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-legacy.html">FAIL</a=
> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19655/shard-skl6/igt@kms_flip@flip-vs-expired-vblank@c-edp1.html">FAIL</a> =
([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.htm=
l">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl7/igt@kms_flip@wf_vblank-ts-check-interruptible@b-edp=
1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19655/shard-skl3/igt@kms_flip@wf_vblank-ts-check-interruptible@b-=
edp1.html">FAIL</a> ([i915#2122]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl4/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl1/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])=
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-shrfb-plflip-blt.html">SKIP</a> ([fdo#109280]) +2 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl8/igt@kms_pipe_crc_basic@compare-crc=
-sanitycheck-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-c=
onstant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_lowres@pipe-d-tiling-x:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@kms_plane_lowres@pipe-d-tilin=
g-x.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@scaler-with-clipping-clamping@pipe-c-scaler-with-c=
lipping-clamping:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl8/igt@kms_plane_scaling@scaler-with-=
clipping-clamping@pipe-c-scaler-with-clipping-clamping.html">SKIP</a> ([fdo=
#109271] / [i915#2733])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl8/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar is=
sue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-skl7/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_mmap_gtt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/sha=
rd-iclb8/igt@kms_psr@psr2_sprite_mmap_gtt.html">SKIP</a> ([fdo#109441]) +1 =
similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-forked-hang:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-apl4/igt@kms_vblank@pipe-d-wait-forked-=
hang.html">SKIP</a> ([fdo#109271]) +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@perf@blocking:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@perf@blocking.html">PASS</a> -&gt; <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@perf=
@blocking.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_self_import_to_different_fd:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-iclb3/igt@prime_nv_api@i915_self_import=
_to_different_fd.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_persistence@close-replace-race:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html">TI=
MEOUT</a> ([i915#2918]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19655/shard-glk4/igt@gem_ctx_persistence@close-replace-rac=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl6/igt@gem_eio@in-flight-suspend.html">DMESG-WARN</a> =
([i915#1037] / [i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19655/shard-apl7/igt@gem_eio@in-flight-suspend.html">PA=
SS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb8/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#1037] / [i915#2481]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19655/shard-iclb6/igt@gem_eio@unwedge-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19655/shard-glk5/igt@gem_exec_fair@basic-none-rrul@rcs0.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-fairslice@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html">DMESG=
-WARN</a> ([i915#2803]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19655/shard-iclb3/igt@gem_exec_schedule@u-fairslice@rcs0.h=
tml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_sync@basic-each:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl3/igt@gem_sync@basic-each.html">INCOMPLETE</a> ([i915=
#2944]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19655/shard-apl4/igt@gem_sync@basic-each.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_vm_create@destroy-race:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb8/igt@gem_vm_create@destroy-race.html">TIMEOUT</a> (=
[i915#2795]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-tglb5/igt@gem_vm_create@destroy-race.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN=
</a> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19655/shard-skl7/igt@gen9_exec_parse@allowed-singl=
e.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@system-suspend-modeset:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html">INCOMP=
LETE</a> ([i915#146] / [i915#151]) -&gt; <a href=3D"https://intel-gfx-ci.01=
.org/tree/drm-tip/Patchwork_19655/shard-skl4/igt@i915_pm_rpm@system-suspend=
-modeset.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-64x21-random:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html"=
>FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19655/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-ran=
dom.html">PASS</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html">F=
AIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19655/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic=
.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html=
">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19655/shard-skl8/igt@kms_draw_crc@draw-method-rgb56=
5-blt-ytiled.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl2/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> =
([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.htm=
l">FAIL</a> ([i915#2122]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19655/shard-skl9/igt@kms_flip@flip-vs-absolute-wf_vblank=
@a-edp1.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html"=
>FAIL</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_19655/shard-glk1/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-=
a2.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-a-planes.html">DMESG-WARN</a> ([i915#180] / [i915#533]) -&gt; <a href=3D=
"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-apl1/igt@km=
s_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb1/igt@kms_psr2_su@page_flip.html">SKIP</a> ([fdo#109=
642] / [fdo#111068] / [i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19655/shard-iclb2/igt@kms_psr2_su@page_flip.html=
">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb3/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> ([fdo#1=
09441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19655/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.=
html">INCOMPLETE</a> ([i915#146] / [i915#198]) -&gt; <a href=3D"https://int=
el-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-skl8/igt@kms_vblank@pip=
e-a-ts-continuation-dpms-suspend.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-skl7/igt@perf@polling-parameterized.html">FAIL</a> ([i91=
5#1542]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19655/shard-skl6/igt@perf@polling-parameterized.html">PASS</a></li>
</ul>
</li>
<li>
<p>{igt@sysfs_clients@recycle-many}:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-glk5/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19655/shard-glk2/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-skl3/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19655/shard-skl8/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_9761/shard-kbl6/igt@sysfs_clients@recycle-many.html">FAIL</a> ([i915=
#3028]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19655/shard-kbl7/igt@sysfs_clients@recycle-many.html">PASS</a></p>
</li>
</ul>
</li>
<li>
<p>igt@testdisplay:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl2/igt@testdisplay.html">DMESG-WARN</a> ([i915#165] / =
[i915#180] / [i915#78]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19655/shard-kbl6/igt@testdisplay.html">PASS</a> +1 similar=
 issue</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html">SKIP</a> ([=
fdo#109271]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-kbl3/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i=
915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> (=
[i915#2876]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19655/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([=
i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19655/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAI=
L</a> ([i915#2849])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a>=
 ([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_19655/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> ([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19655/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#1804] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2=
.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19655/shard-iclb8/igt@kms_psr2_sf@primary-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9761/shard-iclb6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4=
.html">SKIP</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19655/shard-iclb2/igt@kms_psr2_sf@primary-plane-updat=
e-sf-dmg-area-4.html">SKIP</a> ([i915#2920]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_9761/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_9761/shard-kbl2/igt@runner@aborted.html">FAIL</a>) ([i915#2295] / [i915=
#3002]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19655/shard-kbl4/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl3/igt@runner@aborte=
d.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_19655/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19655/shard-kbl4/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.o">FAIL</a>, [FAIL]=
[157], [FAIL][158]) ([i915#1436] / [i915#1814] / [i915#2292] / [i915#2295] =
/ [i915#2426] / [i915#3002] / [i915#92])</li>
</ul>
</li>
</ul>

</body>
</html>

--===============5409752898197306176==--

--===============1178844861==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1178844861==--
