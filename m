Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B51B49E995
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jan 2022 19:02:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B364210E221;
	Thu, 27 Jan 2022 18:02:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EA60310E221;
 Thu, 27 Jan 2022 18:02:04 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DFC75A7E03;
 Thu, 27 Jan 2022 18:02:04 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4235828386724128384=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Date: Thu, 27 Jan 2022 18:02:04 -0000
Message-ID: <164330652489.23658.10539260224928466156@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220127115622.302970-1-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20220127115622.302970-1-thomas.hellstrom@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_a_race_between_vma_/_object_destruction_and_unbind?=
 =?utf-8?q?ing?=
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

--===============4235828386724128384==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915: Fix a race between vma / object destruction and unbinding
URL   : https://patchwork.freedesktop.org/series/99418/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11150_full -> Patchwork_22125_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_22125_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_22125_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_22125_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_frontbuffer_tracking@psr-slowdraw:
    - shard-tglb:         [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-tglb8/igt@kms_frontbuffer_tracking@psr-slowdraw.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-tglb6/igt@kms_frontbuffer_tracking@psr-slowdraw.html

  
Known issues
------------

  Here are the changes found in Patchwork_22125_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_exec_balancer@parallel-keep-in-fence:
    - shard-iclb:         [PASS][3] -> [SKIP][4] ([i915#4525])
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html

  * igt@gem_exec_capture@pi@rcs0:
    - shard-skl:          [PASS][5] -> [INCOMPLETE][6] ([i915#4547])
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl4/igt@gem_exec_capture@pi@rcs0.html

  * igt@gem_exec_fair@basic-none-solo@rcs0:
    - shard-kbl:          [PASS][7] -> [FAIL][8] ([i915#2842]) +4 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
    - shard-glk:          NOTRUN -> [FAIL][9] ([i915#2842])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk3/igt@gem_exec_fair@basic-none-solo@rcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][10] -> [FAIL][11] ([i915#2849])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_schedule@u-semaphore-user:
    - shard-snb:          NOTRUN -> [SKIP][12] ([fdo#109271]) +77 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-snb4/igt@gem_exec_schedule@u-semaphore-user.html

  * igt@gem_exec_whisper@basic-queues-priority-all:
    - shard-glk:          [PASS][13] -> [DMESG-WARN][14] ([i915#118])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-glk5/igt@gem_exec_whisper@basic-queues-priority-all.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk9/igt@gem_exec_whisper@basic-queues-priority-all.html

  * igt@gem_huc_copy@huc-copy:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#2190])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-multi:
    - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl3/igt@gem_lmem_swapping@heavy-multi.html

  * igt@i915_selftest@live@hangcheck:
    - shard-snb:          [PASS][17] -> [INCOMPLETE][18] ([i915#3921])
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-snb2/igt@i915_selftest@live@hangcheck.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-snb5/igt@i915_selftest@live@hangcheck.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-iclb:         NOTRUN -> [SKIP][19] ([fdo#110723])
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_joiner@basic:
    - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#2705])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_big_joiner@basic.html

  * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271]) +16 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-glk:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3886])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
    - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#3886]) +1 similar issue
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd-with-enabled-mode:
    - shard-iclb:         NOTRUN -> [SKIP][25] ([fdo#109284] / [fdo#111827])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_chamelium@hdmi-hpd-with-enabled-mode.html

  * igt@kms_color_chamelium@pipe-b-ctm-max:
    - shard-snb:          NOTRUN -> [SKIP][26] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm-max.html

  * igt@kms_cursor_crc@pipe-a-cursor-suspend:
    - shard-snb:          [PASS][27] -> [SKIP][28] ([fdo#109271])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
    - shard-skl:          [PASS][29] -> [INCOMPLETE][30] ([i915#2828] / [i915#300])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:
    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271]) +61 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen:
    - shard-iclb:         NOTRUN -> [SKIP][32] ([fdo#109278]) +3 similar issues
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen.html

  * igt@kms_flip@flip-vs-expired-vblank@b-edp1:
    - shard-skl:          [PASS][33] -> [FAIL][34] ([i915#79])
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
    - shard-apl:          [PASS][35] -> [DMESG-WARN][36] ([i915#180]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html

  * igt@kms_flip@plain-flip-ts-check@b-edp1:
    - shard-skl:          [PASS][37] -> [FAIL][38] ([i915#2122])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][39] ([fdo#109280]) +5 similar issues
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          [PASS][40] -> [FAIL][41] ([i915#1188]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl4/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
    - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#533])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         [PASS][43] -> [SKIP][44] ([fdo#109441])
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb2/igt@kms_psr@psr2_basic.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb3/igt@kms_psr@psr2_basic.html

  * igt@perf@polling-small-buf:
    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#1722])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl4/igt@perf@polling-small-buf.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl10/igt@perf@polling-small-buf.html

  * igt@prime_nv_api@i915_nv_import_twice_check_flink_name:
    - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109291])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@prime_nv_api@i915_nv_import_twice_check_flink_name.html

  * igt@sysfs_clients@fair-0:
    - shard-apl:          NOTRUN -> [SKIP][48] ([fdo#109271] / [i915#2994])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl8/igt@sysfs_clients@fair-0.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-1us:
    - shard-tglb:         [TIMEOUT][49] ([i915#3063]) -> [PASS][50]
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html

  * igt@gem_exec_balancer@parallel-keep-submit-fence:
    - shard-iclb:         [SKIP][51] ([i915#4525]) -> [PASS][52] +2 similar issues
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-fence.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][53] ([i915#2846]) -> [PASS][54]
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none-vip@rcs0:
    - shard-kbl:          [FAIL][55] ([i915#2842]) -> [PASS][56] +2 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html

  * igt@gem_exec_fair@basic-none@vecs0:
    - shard-apl:          [FAIL][57] ([i915#2842]) -> [PASS][58]
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-iclb:         [FAIL][59] ([i915#2842]) -> [PASS][60]
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-glk:          [FAIL][61] ([i915#2842]) -> [PASS][62]
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-glk:          [DMESG-WARN][63] ([i915#1436] / [i915#716]) -> [PASS][64]
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-glk6/igt@gen9_exec_parse@allowed-all.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk3/igt@gen9_exec_parse@allowed-all.html

  * igt@i915_pm_dc@dc9-dpms:
    - shard-iclb:         [SKIP][65] ([i915#4281]) -> [PASS][66]
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb8/igt@i915_pm_dc@dc9-dpms.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [FAIL][67] ([i915#2521]) -> [PASS][68]
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_big_fb@linear-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][69] ([i915#118]) -> [PASS][70] +1 similar issue
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [FAIL][71] ([i915#2346]) -> [PASS][72]
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_flip@flip-vs-fences-interruptible@a-vga1:
    - shard-snb:          [INCOMPLETE][73] -> [PASS][74]
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.html

  * igt@kms_flip@flip-vs-suspend@a-dp1:
    - shard-apl:          [DMESG-WARN][75] ([i915#180]) -> [PASS][76] +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
    - shard-skl:          [FAIL][77] ([i915#2122]) -> [PASS][78]
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html

  * igt@kms_psr@psr2_cursor_blt:
    - shard-iclb:         [SKIP][79] ([fdo#109441]) -> [PASS][80] +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html

  * igt@kms_setmode@basic:
    - shard-glk:          [FAIL][81] ([i915#31]) -> [PASS][82]
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-glk4/igt@kms_setmode@basic.html
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk8/igt@kms_setmode@basic.html

  * igt@perf@polling-parameterized:
    - shard-iclb:         [FAIL][83] ([i915#1542]) -> [PASS][84]
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb4/igt@perf@polling-parameterized.html
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@perf@polling-parameterized.html
    - shard-skl:          [FAIL][85] ([i915#1542]) -> [PASS][86]
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-skl8/igt@perf@polling-parameterized.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl6/igt@perf@polling-parameterized.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-fence:
    - shard-iclb:         [WARN][87] ([i915#2684]) -> [WARN][88] ([i915#1804] / [i915#2684])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html

  * igt@i915_pm_rc6_residency@rc6-idle:
    - shard-iclb:         [WARN][89] ([i915#1804] / [i915#2684]) -> [WARN][90] ([i915#2684])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html

  * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
    - shard-iclb:         [SKIP][91] ([fdo#111068] / [i915#658]) -> [SKIP][92] ([i915#2920])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb2/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         [FAIL][93] ([i915#4148]) -> [SKIP][94] ([fdo#109642] / [fdo#111068] / [i915#658])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html

  * igt@runner@aborted:
    - shard-apl:          ([FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl3/igt@runner@aborted.html
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl1/igt@runner@aborted.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl6/igt@runner@aborted.html
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl2/igt@runner@aborted.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl1/igt@runner@aborted.html
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl2/igt@runner@aborted.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl6/igt@runner@aborted.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl1/igt@runner@aborted.html
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl8/igt@runner@aborted.html

  
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
  [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
  [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
  [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
  [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
  [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
  [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
  [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
  [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
  [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
  [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
  [i915#1436]: https://gitlab.freedesktop.org/drm/intel/issues/1436
  [i915#1542]: https://gitlab.freedesktop.org/drm/intel/issues/1542
  [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
  [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
  [i915#1804]: https://gitlab.freedesktop.org/drm/intel/issues/1804
  [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
  [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
  [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
  [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
  [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
  [i915#2828]: https://gitlab.freedesktop.org/drm/intel/issues/2828
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
  [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
  [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
  [i915#300]: https://gitlab.freedesktop.org/drm/intel/issues/300
  [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
  [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
  [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3921]: https://gitlab.freedesktop.org/drm/intel/issues/3921
  [i915#4148]: https://gitlab.freedesktop.org/drm/intel/issues/4148
  [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
  [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4547]: https://gitlab.freedesktop.org/drm/intel/issues/4547
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
  [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79


Build changes
-------------

  * Linux: CI_DRM_11150 -> Patchwork_22125

  CI-20190529: 20190529
  CI_DRM_11150: f8638aec69be385b36c5608ed2522de97ecc58cc @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
  Patchwork_22125: 069e37d836ed88d3b4748aced8e8c17caa93f987 @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/index.html

--===============4235828386724128384==
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
<tr><td><b>Series:</b></td><td>drm/i915: Fix a race between vma / object de=
struction and unbinding</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/99418/">https://patchwork.freedesktop.org/series/99418/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22125/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_22125/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11150_full -&gt; Patchwork_22125_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_22125_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_22125_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
22125_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_frontbuffer_tracking@psr-slowdraw:<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-tglb8/igt@kms_frontbuffer_tracking@psr-slowdraw.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22125/shard-tglb6/igt@kms_frontbuffer_tracking@psr-slowdraw.html">INCOMPLE=
TE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22125_full that come from known =
issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_exec_balancer@parallel-keep-in-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22125/shard-iclb5/igt@gem_exec_balancer@parallel-keep-in-fence.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4525">i9=
15#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@rcs0:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl10/igt@gem_exec_capture@pi@rcs0.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-=
skl4/igt@gem_exec_capture@pi@rcs0.html">INCOMPLETE</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/4547">i915#4547</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-solo@rcs0:</p>
<ul>
<li>
<p>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11150/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">PASS</=
a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2212=
5/shard-kbl6/igt@gem_exec_fair@basic-none-solo@rcs0.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +4=
 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22125/shard-glk3/igt@gem_exec_fair@basic-none-solo@r=
cs0.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/2842">i915#2842</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_221=
25/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> (<a hre=
f=3D"https://gitlab.freedesktop.org/drm/intel/issues/2849">i915#2849</a>)</=
li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-semaphore-user:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-snb4/igt@gem_exec_schedule@u-semaphore-=
user.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a>) +77 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-priority-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-glk5/igt@gem_exec_whisper@basic-queues-priority-all.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_22125/shard-glk9/igt@gem_exec_whisper@basic-queues-priority-all.html">=
DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
118">i915#118</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@gem_huc_copy@huc-copy.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2190">i=
915#2190</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-multi:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-apl3/igt@gem_lmem_swapping@heavy-multi.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/4613">i915#4613</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@hangcheck:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-snb2/igt@i915_selftest@live@hangcheck.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/sha=
rd-snb5/igt@i915_selftest@live@hangcheck.html">INCOMPLETE</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/3921">i915#3921</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:=
</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_big_fb@yf-tiled-max-hw-st=
ride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https://b=
ugs.freedesktop.org/show_bug.cgi?id=3D110723">fdo#110723</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_joiner@basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_big_joiner@basic.html">SK=
IP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2705">i9=
15#2705</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-glk3/igt@kms_ccs@pipe-a-crc-primary-rot=
ation-180-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://bugs.free=
desktop.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +16 similar issues</l=
i>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22125/shard-glk3/igt@kms_ccs@pipe-b-missing-ccs-buff=
er-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>)</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_ccs@pipe-b-missing-ccs-buff=
er-y_tiled_gen12_mc_ccs.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_chamelium@dp-mode-timings.=
html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D1=
09271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D111827">fdo#111827</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-with-enabled-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_chamelium@hdmi-hpd-with-e=
nabled-mode.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bu=
g.cgi?id=3D109284">fdo#109284</a> / <a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D111827">fdo#111827</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-b-ctm-max:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-snb4/igt@kms_color_chamelium@pipe-b-ctm=
-max.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?i=
d=3D109271">fdo#109271</a> / <a href=3D"https://bugs.freedesktop.org/show_b=
ug.cgi?id=3D111827">fdo#111827</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-suspend:</p>
<ul>
<li>
<p>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11150/shard-snb5/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
125/shard-snb6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">SKIP</a> (<a =
href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</=
a>)</p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11150/shard-skl8/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22=
125/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html">INCOMPLETE</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2828">i915#28=
28</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/300">i9=
15#300</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-onscreen:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_cursor_crc@pipe-d-cursor-1=
28x128-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/sho=
w_bug.cgi?id=3D109271">fdo#109271</a>) +61 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-64x21-onscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-=
64x21-onscreen.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show=
_bug.cgi?id=3D109278">fdo#109278</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl4/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">P=
ASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22125/shard-skl7/igt@kms_flip@flip-vs-expired-vblank@b-edp1.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/79">i915#79</a=
>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.h=
tml">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22125/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.ht=
ml">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/180">i915#180</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@b-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl10/igt@kms_flip@plain-flip-ts-check@b-edp1.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2125/shard-skl4/igt@kms_flip@plain-flip-ts-check@b-edp1.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2122">i915#2122</a>=
)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@kms_frontbuffer_tracking@psr-=
2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://bugs.=
freedesktop.org/show_bug.cgi?id=3D109280">fdo#109280</a>) +5 similar issues=
</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl10/igt@kms_hdr@bpc-switch-dpms.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-s=
kl4/igt@kms_hdr@bpc-switch-dpms.html">FAIL</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/1188">i915#1188</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-apl3/igt@kms_pipe_crc_basic@read-crc-pi=
pe-d-frame-sequence.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/533">i915#533</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb2/igt@kms_psr@psr2_basic.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-iclb3/=
igt@kms_psr@psr2_basic.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.=
org/show_bug.cgi?id=3D109441">fdo#109441</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@polling-small-buf:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl4/igt@perf@polling-small-buf.html">PASS</a> -&gt; <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-skl=
10/igt@perf@polling-small-buf.html">FAIL</a> (<a href=3D"https://gitlab.fre=
edesktop.org/drm/intel/issues/1722">i915#1722</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_import_twice_check_flink_name:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb7/igt@prime_nv_api@i915_nv_import_t=
wice_check_flink_name.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.o=
rg/show_bug.cgi?id=3D109291">fdo#109291</a>)</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@fair-0:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-apl8/igt@sysfs_clients@fair-0.html">SKI=
P</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271">fd=
o#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2=
994">i915#2994</a>)</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-1us:</p>
<ul>
<li>shard-tglb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-tglb8/igt@gem_eio@in-flight-contexts-1us.html">TIMEOUT<=
/a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3063">i915#=
3063</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22125/shard-tglb5/igt@gem_eio@in-flight-contexts-1us.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-keep-submit-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb3/igt@gem_exec_balancer@parallel-keep-submit-fence.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
4525">i915#4525</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_22125/shard-iclb2/igt@gem_exec_balancer@parallel-keep-submit-=
fence.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</=
a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_221=
25/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-vip@rcs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-kbl4/igt@gem_exec_fair@basic-none-vip@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22125/shard-kbl1/igt@gem_exec_fair@basic-none-vip@rcs0.html">PASS</a> +2 =
similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vecs0:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2125/shard-apl6/igt@gem_exec_fair@basic-none@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb2/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
2125/shard-iclb7/igt@gem_exec_fair@basic-pace@bcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-glk6/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2=
842</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_22125/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-glk6/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1436">i915#1=
436</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/716">i=
915#716</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22125/shard-glk3/igt@gen9_exec_parse@allowed-all.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc9-dpms:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/4281">i915#4281</a>) -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/sha=
rd-iclb8/igt@i915_pm_dc@dc9-dpms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2521=
">i915#2521</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_22125/shard-skl8/igt@kms_async_flips@alternate-sync-async-flip.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@linear-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html">DMESG=
-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/118">=
i915#118</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22125/shard-glk7/igt@kms_big_fb@linear-32bpp-rotate-180.html">PASS</=
a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2346">i915#2346</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_22125/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-a=
tomic-transitions.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-fences-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@a-vga1.h=
tml">INCOMPLETE</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_22125/shard-snb4/igt@kms_flip@flip-vs-fences-interruptible@a-v=
ga1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@a-dp1:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-apl3/igt@kms_flip@flip-vs-suspend@a-dp1.html">DMESG-WAR=
N</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/180">i915=
#180</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_22125/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html">PASS</a> +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@=
a-edp1.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/2122">i915#2122</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_22125/shard-skl8/igt@kms_flip@plain-flip-fb-recreate-i=
nterruptible@a-edp1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_blt:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb1/igt@kms_psr@psr2_cursor_blt.html">SKIP</a> (<a hr=
ef=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109441">fdo#109441</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125=
/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html">PASS</a> +1 similar issue</l=
i>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-glk4/igt@kms_setmode@basic.html">FAIL</a> (<a href=3D"h=
ttps://gitlab.freedesktop.org/drm/intel/issues/31">i915#31</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-glk8/i=
gt@kms_setmode@basic.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11150/shard-iclb4/igt@perf@polling-parameterized.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125=
/shard-iclb7/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
<li>
<p>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11150/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1542">i915#1542</a>)=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/=
shard-skl6/igt@perf@polling-parameterized.html">PASS</a></p>
</li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-fence:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#26=
84</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork=
_22125/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html">WARN</a> (<a h=
ref=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#1804</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#268=
4</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1804">i915#180=
4</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i9=
15#2684</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_22125/shard-iclb8/igt@i915_pm_rc6_residency@rc6-idle.html">WARN</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2684">i915#2684<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb3/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-are=
a.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D111068">fdo#111068</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/658">i915#658</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_22125/shard-iclb2/igt@kms_psr2_sf@overlay-primary-u=
pdate-sf-dmg-area.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/2920">i915#2920</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11150/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4148">i915#4148</a=
>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2212=
5/shard-iclb7/igt@kms_psr2_su@page_flip-p010.html">SKIP</a> (<a href=3D"htt=
ps://bugs.freedesktop.org/show_bug.cgi?id=3D109642">fdo#109642</a> / <a hre=
f=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D111068">fdo#111068</a> =
/ <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/658">i915#658<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-apl:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11150/shard-apl3/igt@runner@aborted.html">FAIL</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl1/igt@runner@ab=
orted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_11150/shard-apl6/igt@runner@aborted.html">FAIL</a>, <a href=3D"https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11150/shard-apl2/igt@runner@abort=
ed.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_11150/shard-apl1/igt@runner@aborted.html">FAIL</a>) (<a href=3D"https://=
bugs.freedesktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/180">i915#180</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1814">i915#1814</a> / <=
a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3002">i915#3002</=
a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4312">i915#=
4312</a>) -&gt; (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_22125/shard-apl2/igt@runner@aborted.html">FAIL</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl6/igt@runner@abor=
ted.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_22125/shard-apl1/igt@runner@aborted.html">FAIL</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22125/shard-apl8/igt@runner@a=
borted.html">FAIL</a>) (<a href=3D"https://gitlab.freedesktop.org/drm/intel=
/issues/180">i915#180</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/1814">i915#1814</a> / <a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/3002">i915#3002</a> / <a href=3D"https://gitlab.freedeskt=
op.org/drm/intel/issues/4312">i915#4312</a>)</li>
</ul>
</li>
</ul>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_11150 -&gt; Patchwork_22125</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_11150: f8638aec69be385b36c5608ed2522de97ecc58cc @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_6336: ae2eb9e18bc58a4c45f28cfd80962938198dec3c @ https://gitlab.freed=
esktop.org/drm/igt-gpu-tools.git<br />
  Patchwork_22125: 069e37d836ed88d3b4748aced8e8c17caa93f987 @ git://anongit=
.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============4235828386724128384==--
