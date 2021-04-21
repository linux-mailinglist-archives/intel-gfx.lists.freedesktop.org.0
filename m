Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D5D23662EF
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 02:13:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DEDE6E923;
	Wed, 21 Apr 2021 00:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0FEBB6E923;
 Wed, 21 Apr 2021 00:13:48 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 068CCA47E8;
 Wed, 21 Apr 2021 00:13:48 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Date: Wed, 21 Apr 2021 00:13:47 -0000
Message-ID: <161896402798.19927.243661713743822877@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
In-Reply-To: <20210420191226.1930570-1-rodrigo.vivi@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dmc=3A_Let=27s_abstract_the_dmc_path=2E?=
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
Content-Type: multipart/mixed; boundary="===============1826174298=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1826174298==
Content-Type: multipart/alternative;
 boundary="===============7980932643797009735=="

--===============7980932643797009735==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dmc: Let's abstract the dmc path.
URL   : https://patchwork.freedesktop.org/series/89275/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_9988_full -> Patchwork_19957_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Known issues
------------

  Here are the changes found in Patchwork_19957_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@drm_import_export@prime:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2] ([i915#750])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-tglb1/igt@drm_import_export@prime.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-tglb2/igt@drm_import_export@prime.html

  * igt@gem_create@create-massive:
    - shard-skl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-kbl:          [PASS][4] -> [DMESG-WARN][5] ([i915#180]) +4 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_persistence@legacy-engines-mixed-process:
    - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-snb6/igt@gem_ctx_persistence@legacy-engines-mixed-process.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [PASS][7] -> [TIMEOUT][8] ([i915#2369] / [i915#2481] / [i915#3070])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb2/igt@gem_eio@unwedge-stress.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb7/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-apl:          NOTRUN -> [FAIL][9] ([i915#2846])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-glk:          [PASS][12] -> [FAIL][13] ([i915#2842])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-glk3/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-kbl:          [PASS][14] -> [FAIL][15] ([i915#2842])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][16] ([i915#2842])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-snb:          NOTRUN -> [SKIP][17] ([fdo#109271]) +398 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_whisper@basic-contexts-all:
    - shard-glk:          [PASS][18] -> [DMESG-WARN][19] ([i915#118] / [i915#95])
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#2190])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@gem_huc_copy@huc-copy.html

  * igt@gem_mmap_gtt@big-copy-odd:
    - shard-skl:          [PASS][21] -> [FAIL][22] ([i915#307])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl9/igt@gem_mmap_gtt@big-copy-odd.html

  * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
    - shard-iclb:         [PASS][23] -> [FAIL][24] ([i915#307])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][25] ([i915#2658])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl2/igt@gem_pread@exhaustion.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-kbl:          NOTRUN -> [SKIP][26] ([fdo#109271] / [i915#3323])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3323])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-snb:          NOTRUN -> [FAIL][28] ([i915#2724])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-snb2/igt@gem_userptr_blits@vma-merge.html
    - shard-kbl:          NOTRUN -> [FAIL][29] ([i915#3318])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl6/igt@gem_userptr_blits@vma-merge.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][30] -> [DMESG-WARN][31] ([i915#1436] / [i915#716])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl8/igt@gen9_exec_parse@allowed-single.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl4/igt@gen9_exec_parse@allowed-single.html

  * igt@gen9_exec_parse@bb-large:
    - shard-apl:          NOTRUN -> [FAIL][32] ([i915#3296])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@gen9_exec_parse@bb-large.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-snb:          [PASS][33] -> [INCOMPLETE][34] ([i915#2880])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-skl:          [PASS][35] -> [FAIL][36] ([i915#454])
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl8/igt@i915_pm_dc@dc6-psr.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl8/igt@i915_pm_dc@dc6-psr.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][37] -> [INCOMPLETE][38] ([i915#2782])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-snb7/igt@i915_selftest@live@hangcheck.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-snb6/igt@i915_selftest@live@hangcheck.html

  * igt@i915_suspend@fence-restore-untiled:
    - shard-skl:          [PASS][39] -> [INCOMPLETE][40] ([i915#198])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl7/igt@i915_suspend@fence-restore-untiled.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl8/igt@i915_suspend@fence-restore-untiled.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#2521])
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_ccs@pipe-c-bad-aux-stride:
    - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [fdo#111304]) +1 similar issue
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_ccs@pipe-c-bad-aux-stride.html

  * igt@kms_chamelium@hdmi-audio-edid:
    - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl4/igt@kms_chamelium@hdmi-audio-edid.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +25 similar issues
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl8/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color_chamelium@pipe-a-ctm-negative:
    - shard-snb:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +23 similar issues
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm-negative.html

  * igt@kms_content_protection@atomic:
    - shard-apl:          NOTRUN -> [TIMEOUT][48] ([i915#1319]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl2/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:
    - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +130 similar issues
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
    - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109278])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html

  * igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:
    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109274] / [fdo#109278])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
    - shard-skl:          [PASS][52] -> [INCOMPLETE][53] ([i915#3254])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2346] / [i915#533])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#533]) +3 similar issues
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@2x-flip-vs-suspend-interruptible:
    - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109274])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@kms_flip@2x-flip-vs-suspend-interruptible.html

  * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
    - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#79]) +2 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html

  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
    - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#2122]) +2 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
    - shard-apl:          NOTRUN -> [FAIL][62] ([i915#2641])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
    - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#2672])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
    - shard-apl:          NOTRUN -> [SKIP][64] ([fdo#109271] / [i915#2672])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:
    - shard-skl:          NOTRUN -> [SKIP][65] ([fdo#109271]) +50 similar issues
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][66] ([fdo#111825])
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][67] ([i915#1188]) +1 similar issue
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:
    - shard-skl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#533])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl6/igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#533]) +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:
    - shard-apl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][72] ([fdo#108145] / [i915#265]) +1 similar issue
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
    - shard-kbl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
    - shard-skl:          [PASS][74] -> [FAIL][75] ([fdo#108145] / [i915#265])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][76] ([i915#265])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-kbl:          NOTRUN -> [FAIL][77] ([i915#265]) +1 similar issue
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
    - shard-skl:          NOTRUN -> [FAIL][78] ([fdo#108145] / [i915#265])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html

  * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +4 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:
    - shard-kbl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +4 similar issues
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl4/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:
    - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +2 similar issues
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3.html

  * igt@kms_psr@psr2_cursor_render:
    - shard-iclb:         [PASS][82] -> [SKIP][83] ([fdo#109441]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb1/igt@kms_psr@psr2_cursor_render.html

  * igt@kms_sysfs_edid_timing:
    - shard-apl:          NOTRUN -> [FAIL][84] ([IGT#2])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_sysfs_edid_timing.html
    - shard-kbl:          NOTRUN -> [FAIL][85] ([IGT#2])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-b-query-idle-hang:
    - shard-snb:          [PASS][86] -> [SKIP][87] ([fdo#109271])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-snb2/igt@kms_vblank@pipe-b-query-idle-hang.html
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-snb2/igt@kms_vblank@pipe-b-query-idle-hang.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271]) +254 similar issues
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-fb-id:
    - shard-skl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [i915#2437])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_writeback@writeback-fb-id.html

  * igt@perf@unprivileged-single-ctx-counters:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109289])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@perf@unprivileged-single-ctx-counters.html

  * igt@sysfs_clients@fair-7:
    - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994]) +3 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl1/igt@sysfs_clients@fair-7.html

  * igt@sysfs_clients@split-50:
    - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994]) +3 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl6/igt@sysfs_clients@split-50.html

  
#### Possible fixes ####

  * igt@gem_eio@unwedge-stress:
    - shard-tglb:         [TIMEOUT][93] ([i915#2369] / [i915#3063]) -> [PASS][94]
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-tglb7/igt@gem_eio@unwedge-stress.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-tglb6/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [FAIL][95] ([i915#2846]) -> [PASS][96]
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-glk6/igt@gem_exec_fair@basic-deadline.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-glk1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-solo@rcs0:
    - shard-kbl:          [FAIL][97] ([i915#2842]) -> [PASS][98] +2 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-tglb:         [FAIL][99] ([i915#2842]) -> [PASS][100]
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
    - shard-iclb:         [FAIL][101] ([i915#2428]) -> [PASS][102] +1 similar issue
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

  * igt@gem_mmap_gtt@cpuset-medium-copy:
    - shard-glk:          [FAIL][103] ([i915#307]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-skl:          [DMESG-WARN][105] ([i915#1436] / [i915#716]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl9/igt@gen9_exec_parse@allowed-all.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl6/igt@i915_module_load@reload-with-fault-injection.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl9/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
    - shard-skl:          [FAIL][109] ([i915#54]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][111] ([i915#2346]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
    - shard-apl:          [FAIL][113] ([i915#79]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-kbl:          [DMESG-WARN][115] ([i915#180]) -> [PASS][116] +7 similar issues
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
    - shard-apl:          [DMESG-WARN][117] ([i915#180]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [FAIL][119] ([fdo#108145] / [i915#265]) -> [PASS][120] +1 similar issue
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         [SKIP][121] ([fdo#109441]) -> [PASS][122] +2 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@prime_vgem@coherency-blt:
    - shard-skl:          [INCOMPLETE][123] -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-skl6/igt@prime_vgem@coherency-blt.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@prime_vgem@coherency-blt.html

  * igt@prime_vgem@sync@rcs0:
    - shard-iclb:         [INCOMPLETE][125] ([i915#409]) -> [PASS][126]
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb5/igt@prime_vgem@sync@rcs0.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@prime_vgem@sync@rcs0.html

  
#### Warnings ####

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][127] ([i915#2842]) -> [SKIP][128] ([fdo#109271])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][129] ([i915#2684]) -> [WARN][130] ([i915#2681] / [i915#2684])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
    - shard-iclb:         [SKIP][131] ([i915#2920]) -> [SKIP][132] ([i915#658]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb7/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area-1:
    - shard-iclb:         [SKIP][133] ([i915#658]) -> [SKIP][134] ([i915#2920]) +1 similar issue
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html

  * igt@runner@aborted:
    - shard-kbl:          ([FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142]) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002]) -> ([FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2292] / [i915#3002])
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl1/igt@runner@aborted.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl7/igt@runner@aborted.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl1/igt@runner@aborted.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl7/igt@runner@aborted.html
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl3/igt@runner@aborted.html
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl1/igt@runner@aborted.html
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl1/igt@runner@aborted.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl6/igt@runner@aborted.html
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/igt@runner@aborted.html
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl7/igt@runner@aborted.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/igt@runner@aborted.html
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/igt@runner@aborted.html
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl3/igt@runner@aborted.html
    - shard-iclb:         ([FAIL][148], [FAIL][149], [FAIL][150]) ([i915#2426] / [i915#3002] / [i915#409]) -> ([FAIL][151], [FAIL][152]) ([i915#3002])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb5/igt@runner@aborted.html
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb7/igt@runner@aborted.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb1/igt@runner@aborted.html
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-i

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/index.html

--===============7980932643797009735==
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
<tr><td><b>Series:</b></td><td>drm/i915/dmc: Let&#39;s abstract the dmc pat=
h.</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/89275/">https://patchwork.freedesktop.org/series/89275/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19957/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_9988_full -&gt; Patchwork_19957_fu=
ll</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_19957_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@drm_import_export@prime:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-tglb1/igt@drm_import_export@prime.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-tg=
lb2/igt@drm_import_export@prime.html">INCOMPLETE</a> ([i915#750])</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@gem_create@create-massive.htm=
l">DMESG-WARN</a> ([i915#3002])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-kbl2/igt@gem_ctx_isolation@preservation-s3@bcs0.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19957/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@bcs0.html">DMESG-WAR=
N</a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed-process:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-snb6/igt@gem_ctx_persistence@legacy-eng=
ines-mixed-process.html">SKIP</a> ([fdo#109271] / [i915#1099]) +3 similar i=
ssues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb2/igt@gem_eio@unwedge-stress.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-icl=
b7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2369] / [i915#2481] =
/ [i915#3070])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl1/igt@gem_exec_fair@basic-deadline.h=
tml">FAIL</a> ([i915#2846])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/sh=
ard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) +1=
 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-glk7/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957=
/shard-glk3/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</a> ([i915#284=
2])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-kbl4/igt@gem_exec_fair@basic-pace@vcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/sha=
rd-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@gem_exec_fair@basic-pace@vcs1=
.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-snb6/igt@gem_exec_flush@basic-batch-ker=
nel-default-cmd.html">SKIP</a> ([fdo#109271]) +398 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-contexts-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_199=
57/shard-glk8/igt@gem_exec_whisper@basic-contexts-all.html">DMESG-WARN</a> =
([i915#118] / [i915#95])</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl1/igt@gem_huc_copy@huc-copy.html">SK=
IP</a> ([fdo#109271] / [i915#2190])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@big-copy-odd:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl6/igt@gem_mmap_gtt@big-copy-odd.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-s=
kl9/igt@gem_mmap_gtt@big-copy-odd.html">FAIL</a> ([i915#307])</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy-odd:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb1/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19=
957/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html">FAIL</a> ([i9=
15#307])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl2/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-kbl2/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-apl1/igt@gem_userptr_blits@dmabuf-sync.h=
tml">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>
<p>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-snb2/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#2724])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-kbl6/igt@gem_userptr_blits@vma-merge.htm=
l">FAIL</a> ([i915#3318])</p>
</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl8/igt@gen9_exec_parse@allowed-single.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/sh=
ard-skl4/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#143=
6] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-large:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl1/igt@gen9_exec_parse@bb-large.html"=
>FAIL</a> ([i915#3296])</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-snb7/igt@i915_module_load@reload-with-fault-injection.ht=
ml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19957/shard-snb7/igt@i915_module_load@reload-with-fault-injection.htm=
l">INCOMPLETE</a> ([i915#2880])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl8/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-skl8/igt=
@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-snb7/igt@i915_selftest@live@hangcheck.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shar=
d-snb6/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> ([i915#2782])<=
/li>
</ul>
</li>
<li>
<p>igt@i915_suspend@fence-restore-untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl7/igt@i915_suspend@fence-restore-untiled.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1995=
7/shard-skl8/igt@i915_suspend@fence-restore-untiled.html">INCOMPLETE</a> ([=
i915#198])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl2/igt@kms_async_flips@alternate-sync-async-flip.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_19957/shard-skl7/igt@kms_async_flips@alternate-sync-async-flip.html">FAI=
L</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_ccs@pipe-c-bad-aux-stride=
.html">SKIP</a> ([fdo#109271] / [fdo#111304]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-audio-edid:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-kbl4/igt@kms_chamelium@hdmi-audio-edid.=
html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl8/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +25 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_chamelium@vga-hpd-for-eac=
h-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-negative:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-snb6/igt@kms_color_chamelium@pipe-a-ctm=
-negative.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +23 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl2/igt@kms_content_protection@atomic.=
html">TIMEOUT</a> ([i915#1319]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-max-size-onscreen:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-m=
ax-size-onscreen.html">SKIP</a> ([fdo#109271]) +130 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@kms_cursor_crc@pipe-c-cursor-=
32x10-rapid-movement.html">SKIP</a> ([fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@kms_cursor_legacy@2x-nonblock=
ing-modeset-vs-cursor-atomic.html">SKIP</a> ([fdo#109274] / [fdo#109278])</=
li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursor-vs-flip-toggle:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_19957/shard-skl2/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html">INCOMPL=
ETE</a> ([i915#3254])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19957/shard-skl4/igt@kms_cursor_legacy@flip-vs-cu=
rsor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346] / [i915#53=
3])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl7/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-suspend-interruptible:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@kms_flip@2x-flip-vs-suspend-i=
nterruptible.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
19957/shard-skl2/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html">FAIL</a> =
([i915#79]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl9/igt@kms_flip@plain-flip-ts-check-interruptible@c-ed=
p1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19957/shard-skl10/igt@kms_flip@plain-flip-ts-check-interruptible=
@c-edp1.html">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp=
-ytile-to-32bpp-ytileccs.html">FAIL</a> ([i915#2641])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])<=
/p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-=
ytile-to-32bpp-ytilegen12rcccs.html">SKIP</a> ([fdo#109271] / [i915#2672])<=
/p>
</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-shrfb-draw-mmap-wc:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_frontbuffer_tracking@fbc-=
2p-primscrn-pri-shrfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +50 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-tglb6/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-primscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html"=
>FAIL</a> ([i915#1188]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@nonblocking-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl6/igt@kms_pipe_crc_basic@nonblocking=
-crc-pipe-d-frame-sequence.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-c-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-c-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19957/shard-apl8/igt@kms_plane@plane-panning-bottom-rig=
ht-suspend-pipe-c-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-opaque-fb.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl1/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19957/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html">F=
AIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-=
constant-alpha-min.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-2:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_psr2_sf@overlay-plane-upda=
te-sf-dmg-area-2.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar issu=
es</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-3:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-kbl4/igt@kms_psr2_sf@overlay-primary-up=
date-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +4 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-3:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_psr2_sf@primary-plane-upd=
ate-sf-dmg-area-3.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_render:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb2/igt@kms_psr@psr2_cursor_render.html">PASS</a> -&gt=
; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard=
-iclb1/igt@kms_psr@psr2_cursor_render.html">SKIP</a> ([fdo#109441]) +2 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_sysfs_edid_timing.html">FAI=
L</a> ([IGT#2])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-b-query-idle-hang:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-snb2/igt@kms_vblank@pipe-b-query-idle-hang.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957=
/shard-snb2/igt@kms_vblank@pipe-b-query-idle-hang.html">SKIP</a> ([fdo#1092=
71])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl1/igt@kms_vblank@pipe-d-ts-continuat=
ion-idle.html">SKIP</a> ([fdo#109271]) +254 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-fb-id:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_writeback@writeback-fb-id=
.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-iclb4/igt@perf@unprivileged-single-ctx-=
counters.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-7:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-apl1/igt@sysfs_clients@fair-7.html">SKI=
P</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@split-50:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_19957/shard-kbl6/igt@sysfs_clients@split-50.html">S=
KIP</a> ([fdo#109271] / [i915#2994]) +3 similar issues</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-tglb7/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i91=
5#2369] / [i915#3063]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19957/shard-tglb6/igt@gem_eio@unwedge-stress.html">PASS</a>=
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-glk6/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i=
915#2846]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_19957/shard-glk1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-solo@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-kbl3/igt@gem_exec_fair@basic-pace-solo@rcs0.html">FAIL</=
a> ([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_19957/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html">PAS=
S</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> =
([i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19957/shard-tglb8/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb6/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html">=
FAIL</a> ([i915#2428]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_19957/shard-iclb5/igt@gem_mmap_gtt@cpuset-basic-small-copy-=
xy.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_mmap_gtt@cpuset-medium-copy:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy.html">FAIL</a> =
([i915#307]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19957/shard-glk5/igt@gem_mmap_gtt@cpuset-medium-copy.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl9/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a=
> ([i915#1436] / [i915#716]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19957/shard-skl10/igt@gen9_exec_parse@allowed-all.htm=
l">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl6/igt@i915_module_load@reload-with-fault-injection.ht=
ml">DMESG-WARN</a> ([i915#1982]) -&gt; <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_19957/shard-skl9/igt@i915_module_load@reload-with=
-fault-injection.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.=
html">FAIL</a> ([i915#54]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_19957/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-256x2=
56-offscreen.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transit=
ions.html">FAIL</a> ([i915#2346]) -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_19957/shard-skl1/igt@kms_cursor_legacy@flip-vs-c=
ursor-atomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html">FAI=
L</a> ([i915#79]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_19957/shard-apl7/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html"=
>PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19957/shard-kbl2/igt@kms_flip@flip-vs-suspend-inte=
rruptible@a-dp1.html">PASS</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-apl8/igt@kms_plane@plane-panning-bottom-right-suspend-pi=
pe-b-planes.html">DMESG-WARN</a> ([i915#180]) -&gt; <a href=3D"https://inte=
l-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-apl7/igt@kms_plane@plane=
-panning-bottom-right-suspend-pipe-b-planes.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl2/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html=
">FAIL</a> ([fdo#108145] / [i915#265]) -&gt; <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_19957/shard-skl10/igt@kms_plane_alpha_blend=
@pipe-a-coverage-7efc.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb7/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([=
fdo#109441]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19957/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@coherency-blt:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-skl6/igt@prime_vgem@coherency-blt.html">INCOMPLETE</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/sh=
ard-skl10/igt@prime_vgem@coherency-blt.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@prime_vgem@sync@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb5/igt@prime_vgem@sync@rcs0.html">INCOMPLETE</a> ([i9=
15#409]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_19957/shard-iclb4/igt@prime_vgem@sync@rcs0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> (=
[i915#2842]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_19957/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html">SKIP</a> ([=
fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2684]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_19957/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> =
([i915#2681] / [i915#2684])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area=
-4.html">SKIP</a> ([i915#2920]) -&gt; <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/Patchwork_19957/shard-iclb7/igt@kms_psr2_sf@overlay-primary-=
update-sf-dmg-area-4.html">SKIP</a> ([i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area-1:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb8/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html">SKI=
P</a> ([i915#658]) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/Patchwork_19957/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area-1.html=
">SKIP</a> ([i915#2920]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>
<p>shard-kbl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl7/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_9988/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://in=
tel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl7/igt@runner@aborted.ht=
ml">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_99=
88/shard-kbl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl1/igt@runner@aborted.html">F=
AIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/sh=
ard-kbl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/CI_DRM_9988/shard-kbl6/igt@runner@aborted.html">FAIL</=
a>) ([i915#180] / [i915#1814] / [i915#2505] / [i915#3002]) -&gt; (<a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/igt=
@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_19957/shard-kbl7/igt@runner@aborted.html">FAIL</a>, <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kbl1/=
igt@runner@aborted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_19957/shard-kbl1/igt@runner@aborted.html">FAIL</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19957/shard-kb=
l3/igt@runner@aborted.html">FAIL</a>) ([i915#1436] / [i915#180] / [i915#181=
4] / [i915#2292] / [i915#3002])</p>
</li>
<li>
<p>shard-iclb:         (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_9988/shard-iclb5/igt@runner@aborted.html">FAIL</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9988/shard-iclb7/igt@runner@abo=
rted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI=
_DRM_9988/shard-iclb1/igt@runner@aborted.html">FAIL</a>) ([i915#2426] / [i9=
15#3002] / [i915#409]) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_19957/shard-i">FAIL</a>, [FAIL][152]) ([i915#3002])</p>
</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7980932643797009735==--

--===============1826174298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1826174298==--
