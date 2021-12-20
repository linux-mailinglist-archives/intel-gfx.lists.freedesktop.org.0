Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D50D47B5ED
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 23:40:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80EB910E18A;
	Mon, 20 Dec 2021 22:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2CE5110E18A;
 Mon, 20 Dec 2021 22:40:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 240B1AAA91;
 Mon, 20 Dec 2021 22:40:33 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4063919799624618344=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Juston Li" <juston.li@intel.com>
Date: Mon, 20 Dec 2021 22:40:33 -0000
Message-ID: <164004003310.24546.7092825426959087706@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211220204023.8304-1-juston.li@intel.com>
In-Reply-To: <20211220204023.8304-1-juston.li@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Hold_RPM_wakelock_during_PXP_unbind?=
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

--===============4063919799624618344==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/pxp: Hold RPM wakelock during PXP unbind
URL   : https://patchwork.freedesktop.org/series/98245/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11016_full -> Patchwork_21881_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (18 -> 18)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21881_full:

### IGT changes ###

#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@feature_discovery@psr2:
    - {shard-dg1-15}:     NOTRUN -> [SKIP][1] +142 similar issues
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@feature_discovery@psr2.html

  * igt@gem_create@create-massive:
    - {shard-dg1-13}:     NOTRUN -> [DMESG-WARN][2] +1 similar issue
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@gem_create@create-massive.html

  * igt@gem_ctx_isolation@dirty-create@rcs0:
    - {shard-dg1-18}:     NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-18/igt@gem_ctx_isolation@dirty-create@rcs0.html

  * igt@gem_ctx_persistence@heartbeat-stop:
    - {shard-dg1-15}:     NOTRUN -> [FAIL][4] +9 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-stop.html

  * igt@gem_eio@kms:
    - {shard-dg1-15}:     NOTRUN -> [CRASH][5]
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@gem_eio@kms.html

  * igt@gem_exec_balancer@parallel-ordering:
    - {shard-dg1-19}:     NOTRUN -> [FAIL][6] +3 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-19/igt@gem_exec_balancer@parallel-ordering.html

  * igt@gem_readwrite@write-bad-handle:
    - {shard-dg1-17}:     NOTRUN -> [SKIP][7] +100 similar issues
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@gem_readwrite@write-bad-handle.html

  * igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@smem:
    - {shard-dg1-17}:     NOTRUN -> [FAIL][8] +7 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@smem.html

  * {igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled@lmem0}:
    - {shard-dg1-18}:     NOTRUN -> [FAIL][9] +5 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-18/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled@lmem0.html

  * {igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0}:
    - {shard-dg1-12}:     NOTRUN -> [FAIL][10] +14 similar issues
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-12/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0.html

  * igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem:
    - {shard-dg1-13}:     NOTRUN -> [FAIL][11] +15 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem.html

  * igt@gem_softpin@evict-snoop-interruptible:
    - {shard-dg1-18}:     NOTRUN -> [SKIP][12] +147 similar issues
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-18/igt@gem_softpin@evict-snoop-interruptible.html

  * igt@gem_userptr_blits@input-checking:
    - {shard-dg1-12}:     NOTRUN -> [DMESG-WARN][13]
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-12/igt@gem_userptr_blits@input-checking.html

  * igt@i915_module_load@reload-with-fault-injection:
    - {shard-dg1-17}:     NOTRUN -> [INCOMPLETE][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html

  * igt@kms_concurrent@pipe-b:
    - {shard-dg1-13}:     NOTRUN -> [CRASH][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@kms_concurrent@pipe-b.html

  * igt@kms_concurrent@pipe-c:
    - {shard-dg1-17}:     NOTRUN -> [CRASH][16]
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@kms_concurrent@pipe-c.html

  * igt@kms_concurrent@pipe-d:
    - {shard-dg1-16}:     NOTRUN -> [CRASH][17]
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-16/igt@kms_concurrent@pipe-d.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:
    - {shard-dg1-19}:     NOTRUN -> [SKIP][18] +57 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-19/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu:
    - {shard-dg1-12}:     NOTRUN -> [SKIP][19] +157 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html

  * igt@kms_pwrite_crc:
    - {shard-dg1-16}:     NOTRUN -> [FAIL][20] +3 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-16/igt@kms_pwrite_crc.html

  * igt@nouveau_crc@pipe-d-source-rg:
    - {shard-dg1-16}:     NOTRUN -> [SKIP][21] +88 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-16/igt@nouveau_crc@pipe-d-source-rg.html

  * igt@prime_mmap_coherency@read:
    - {shard-dg1-13}:     NOTRUN -> [INCOMPLETE][22]
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@prime_mmap_coherency@read.html

  * igt@prime_mmap_coherency@write:
    - {shard-dg1-15}:     NOTRUN -> [INCOMPLETE][23]
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@prime_mmap_coherency@write.html

  * igt@sysfs_clients@create:
    - {shard-dg1-13}:     NOTRUN -> [SKIP][24] +137 similar issues
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@sysfs_clients@create.html

  
Known issues
------------

  Here are the changes found in Patchwork_21881_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vcs0:
    - shard-kbl:          [PASS][25] -> [DMESG-WARN][26] ([i915#180]) +6 similar issues
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html

  * igt@gem_exec_balancer@fairslice:
    - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +40 similar issues
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@gem_exec_balancer@fairslice.html

  * igt@gem_exec_balancer@parallel-contexts:
    - shard-iclb:         NOTRUN -> [SKIP][28] ([i915#4525])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html

  * igt@gem_exec_fair@basic-none@vcs1:
    - shard-iclb:         NOTRUN -> [FAIL][29] ([i915#2842]) +4 similar issues
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         NOTRUN -> [FAIL][30] ([i915#2842]) +4 similar issues
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_suspend@basic-s3@smem:
    - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180]) +3 similar issues
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][33] -> [DMESG-WARN][34] ([i915#118]) +1 similar issue
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#4613]) +1 similar issue
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@parallel-random-verify:
    - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#4613])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#4613])
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][38] ([i915#2658]) +1 similar issue
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@gem_pread@exhaustion.html

  * igt@gem_pwrite@basic-exhaustion:
    - shard-kbl:          NOTRUN -> [WARN][39] ([i915#2658])
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html

  * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
    - shard-kbl:          NOTRUN -> [SKIP][40] ([fdo#109271]) +121 similar issues
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][41] ([i915#768]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          [PASS][42] -> [DMESG-WARN][43] ([i915#1436] / [i915#716])
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl2/igt@gen9_exec_parse@allowed-all.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl7/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-skl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1436] / [i915#716])
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl1/igt@gen9_exec_parse@allowed-single.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl9/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-kbl:          NOTRUN -> [FAIL][46] ([i915#454])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html
    - shard-skl:          NOTRUN -> [FAIL][47] ([i915#454])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_dc@dc6-psr:
    - shard-iclb:         [PASS][48] -> [FAIL][49] ([i915#454])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@i915_pm_dc@dc6-psr.html

  * igt@kms_async_flips@alternate-sync-async-flip:
    - shard-skl:          [PASS][50] -> [FAIL][51] ([i915#2521])
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][52] ([fdo#109271] / [i915#3886]) +6 similar issues
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271] / [i915#3886]) +6 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#3886])
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][55] ([fdo#109278]) +1 similar issue
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([i915#3689]) +1 similar issue
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@common-hpd-after-suspend:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_chamelium@common-hpd-after-suspend.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [fdo#111827]) +7 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_color@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109278] / [i915#1149])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_color@pipe-d-gamma.html

  * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
    - shard-apl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [fdo#111827]) +9 similar issues
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][61] ([i915#1319])
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][62] ([fdo#109279] / [i915#3359])
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-512x512-random:
    - shard-iclb:         NOTRUN -> [SKIP][63] ([fdo#109278] / [fdo#109279]) +1 similar issue
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
    - shard-skl:          [PASS][64] -> [INCOMPLETE][65] ([i915#300])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533]) +1 similar issue
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html
    - shard-apl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [i915#533])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_fbcon_fbt@fbc-suspend:
    - shard-apl:          [PASS][68] -> [INCOMPLETE][69] ([i915#180])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109274])
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2:
    - shard-glk:          [PASS][71] -> [FAIL][72] ([i915#2122])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html

  * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
    - shard-skl:          [PASS][73] -> [FAIL][74] ([i915#2122]) +2 similar issues
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-glk:          [PASS][75] -> [FAIL][76] ([i915#2546]) +1 similar issue
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk3/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-apl:          NOTRUN -> [DMESG-WARN][77] ([i915#180])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc:
    - shard-iclb:         NOTRUN -> [SKIP][78] ([fdo#109280]) +6 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][79] ([fdo#111825]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:
    - shard-skl:          [PASS][80] -> [DMESG-WARN][81] ([i915#1982])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][82] -> [FAIL][83] ([i915#1188])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl4/igt@kms_hdr@bpc-switch.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl3/igt@kms_hdr@bpc-switch.html

  * igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#109289])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#533])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][86] ([fdo#108145] / [i915#265]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
    - shard-kbl:          NOTRUN -> [FAIL][87] ([fdo#108145] / [i915#265])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][88] ([i915#265]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][89] ([i915#265])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#658]) +2 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr@psr2_basic:
    - shard-iclb:         NOTRUN -> [SKIP][91] ([fdo#109441])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_psr@psr2_basic.html

  * igt@kms_psr@psr2_sprite_plane_move:
    - shard-iclb:         [PASS][92] -> [SKIP][93] ([fdo#109441])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html

  * igt@kms_setmode@basic:
    - shard-glk:          [PASS][94] -> [FAIL][95] ([i915#31])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk3/igt@kms_setmode@basic.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk3/igt@kms_setmode@basic.html

  * igt@kms_sysfs_edid_timing:
    - shard-kbl:          NOTRUN -> [FAIL][96] ([IGT#2])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@kms_sysfs_edid_timing.html

  * igt@kms_vblank@pipe-d-ts-continuation-idle:
    - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271]) +141 similar issues
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#2437])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf_pmu@rc6-suspend:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][99] ([i915#180]) +1 similar issue
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl1/igt@perf_pmu@rc6-suspend.html

  * igt@sysfs_clients@create:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#2994])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@sysfs_clients@create.html

  
#### Possible fixes ####

  * igt@fbdev@unaligned-read:
    - {shard-rkl}:        [SKIP][101] ([i915#2582]) -> [PASS][102]
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-4/igt@fbdev@unaligned-read.html
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@fbdev@unaligned-read.html

  * igt@gem_eio@in-flight-contexts-10ms:
    - shard-iclb:         [TIMEOUT][103] ([i915#3070]) -> [PASS][104]
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html

  * igt@gem_eio@unwedge-stress:
    - shard-iclb:         [TIMEOUT][105] ([i915#2481] / [i915#3070]) -> [PASS][106]
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb3/igt@gem_eio@unwedge-stress.html
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb1/igt@gem_eio@unwedge-stress.html

  * igt@gem_exec_fair@basic-flow@rcs0:
    - shard-tglb:         [FAIL][107] ([i915#2842]) -> [PASS][108] +1 similar issue
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html

  * igt@gem_exec_fair@basic-pace@vecs0:
    - shard-kbl:          [FAIL][109] ([i915#2842]) -> [PASS][110]
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html

  * igt@gem_huc_copy@huc-copy:
    - shard-tglb:         [SKIP][111] ([i915#2190]) -> [PASS][112]
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-tglb7/igt@gem_huc_copy@huc-copy.html
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@gem_huc_copy@huc-copy.html

  * igt@i915_pm_dc@dc5-psr:
    - {shard-rkl}:        [SKIP][113] ([i915#658]) -> [PASS][114]
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@i915_pm_dc@dc5-psr.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html

  * igt@i915_pm_rpm@modeset-lpsp-stress:
    - shard-skl:          [DMESG-WARN][115] ([i915#1982]) -> [PASS][116]
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl1/igt@i915_pm_rpm@modeset-lpsp-stress.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl10/igt@i915_pm_rpm@modeset-lpsp-stress.html

  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
    - shard-glk:          [DMESG-WARN][117] ([i915#118]) -> [PASS][118] +1 similar issue
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html

  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs:
    - {shard-rkl}:        [SKIP][119] ([i915#1845] / [i915#4098]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs.html

  * igt@kms_color@pipe-b-ctm-0-75:
    - {shard-rkl}:        [SKIP][121] ([i915#1149] / [i915#1849] / [i915#4070]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-75.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-75.html

  * igt@kms_concurrent@pipe-b:
    - {shard-rkl}:        ([SKIP][123], [SKIP][124]) ([i915#1845] / [i915#4070] / [i915#4098]) -> [PASS][125]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-4/igt@kms_concurrent@pipe-b.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_concurrent@pipe-b.html
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_concurrent@pipe-b.html

  * igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement:
    - {shard-rkl}:        [SKIP][126] ([fdo#112022] / [i915#4070]) -> [PASS][127] +1 similar issue
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement.html
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement.html

  * igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:
    - {shard-rkl}:        [SKIP][128] ([i915#1849] / [i915#4070]) -> [PASS][129] +1 similar issue
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-iclb:         [FAIL][130] ([i915#2346]) -> [PASS][131]
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
    - {shard-rkl}:        [SKIP][132] ([fdo#111314]) -> [PASS][133]
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html

  * igt@kms_draw_crc@draw-method-rgb565-render-xtiled:
    - {shard-rkl}:        ([SKIP][134], [SKIP][135]) ([fdo#111314] / [i915#4098]) -> [PASS][136]
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:
    - shard-glk:          [FAIL][137] ([i915#2122]) -> [PASS][138]
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:
    - shard-glk:          [FAIL][139] ([i915#79]) -> [PASS][140]
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/index.html

--===============4063919799624618344==
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
<tr><td><b>Series:</b></td><td>drm/i915/pxp: Hold RPM wakelock during PXP unbind</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/98245/">https://patchwork.freedesktop.org/series/98245/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11016_full -&gt; Patchwork_21881_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (18 -&gt; 18)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_21881_full:</p>
<h3>IGT changes</h3>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@feature_discovery@psr2:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@feature_discovery@psr2.html">SKIP</a> +142 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_create@create-massive:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@gem_create@create-massive.html">DMESG-WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@dirty-create@rcs0:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-18/igt@gem_ctx_isolation@dirty-create@rcs0.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-stop:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@gem_ctx_persistence@heartbeat-stop.html">FAIL</a> +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@gem_eio@kms.html">CRASH</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-ordering:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-19/igt@gem_exec_balancer@parallel-ordering.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_readwrite@write-bad-handle:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@gem_readwrite@write-bad-handle.html">SKIP</a> +100 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@smem:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@gem_render_copy@y-tiled-ccs-to-y-tiled-mc-ccs@smem.html">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled@lmem0}:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-18/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled@lmem0.html">FAIL</a> +5 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0}:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-12/igt@gem_render_copy@y-tiled-mc-ccs-to-y-tiled-ccs@lmem0.html">FAIL</a> +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@gem_render_copy@yf-tiled-ccs-to-x-tiled@smem.html">FAIL</a> +15 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop-interruptible:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-18/igt@gem_softpin@evict-snoop-interruptible.html">SKIP</a> +147 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-12/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@i915_module_load@reload-with-fault-injection.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-b:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@kms_concurrent@pipe-b.html">CRASH</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-c:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-17/igt@kms_concurrent@pipe-c.html">CRASH</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-d:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-16/igt@kms_concurrent@pipe-d.html">CRASH</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-19/igt@kms_cursor_crc@pipe-a-cursor-32x32-rapid-movement.html">SKIP</a> +57 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-12/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-cpu.html">SKIP</a> +157 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pwrite_crc:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-16/igt@kms_pwrite_crc.html">FAIL</a> +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-d-source-rg:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-16/igt@nouveau_crc@pipe-d-source-rg.html">SKIP</a> +88 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@prime_mmap_coherency@read.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@write:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-15/igt@prime_mmap_coherency@write.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-dg1-13/igt@sysfs_clients@create.html">SKIP</a> +137 similar issues</li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21881_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html">DMESG-WARN</a> ([i915#180]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@fairslice:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@gem_exec_balancer@fairslice.html">SKIP</a> ([fdo#109271]) +40 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-contexts:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html">SKIP</a> ([i915#4525])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@vcs1:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@gem_exec_fair@basic-pace@bcs0.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s3@smem:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl7/igt@gem_exec_suspend@basic-s3@smem.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@gem_exec_suspend@basic-s3@smem.html">DMESG-WARN</a> ([i915#180]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk7/igt@gem_exec_whisper@basic-queues-forked-all.html">DMESG-WARN</a> ([i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@gem_lmem_swapping@basic.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-verify:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@gem_lmem_swapping@verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pwrite@basic-exhaustion:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@gem_pwrite@basic-exhaustion.html">WARN</a> ([i915#2658])</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html">SKIP</a> ([fdo#109271]) +121 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html">SKIP</a> ([i915#768]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl2/igt@gen9_exec_parse@allowed-all.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl7/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl1/igt@gen9_exec_parse@allowed-single.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl9/igt@gen9_exec_parse@allowed-single.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl1/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-psr:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb7/igt@i915_pm_dc@dc6-psr.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@i915_pm_dc@dc6-psr.html">FAIL</a> ([i915#454])</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@alternate-sync-async-flip:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl9/igt@kms_async_flips@alternate-sync-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip.html">FAIL</a> ([i915#2521])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl4/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@common-hpd-after-suspend:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_chamelium@common-hpd-after-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_color@pipe-d-gamma.html">SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-ctm-limited-range:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl7/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@kms_content_protection@srm.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-512x512-random:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-512x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-suspend:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl6/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl10/igt@kms_cursor_crc@pipe-b-cursor-suspend.html">INCOMPLETE</a> ([i915#300])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533]) +1 similar issue</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl8/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@fbc-suspend:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html">INCOMPLETE</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk1/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible@bc-hdmi-a1-hdmi-a2.html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl9/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html">FAIL</a> ([i915#2122]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk3/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html">FAIL</a> ([i915#2546]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109280]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl3/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl1/igt@kms_frontbuffer_tracking@psr-rgb101010-draw-pwrite.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl4/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl3/igt@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_pipe_b_c_ivb@enable-pipe-c-while-b-has-3-lanes.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl1/igt@kms_psr2_sf@cursor-plane-update-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_basic:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb6/igt@kms_psr@psr2_basic.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_sprite_plane_move:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb4/igt@kms_psr@psr2_sprite_plane_move.html">SKIP</a> ([fdo#109441])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk3/igt@kms_setmode@basic.html">FAIL</a> ([i915#31])</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl3/igt@kms_sysfs_edid_timing.html">FAIL</a> ([IGT#2])</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-ts-continuation-idle:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl7/igt@kms_vblank@pipe-d-ts-continuation-idle.html">SKIP</a> ([fdo#109271]) +141 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@kms_writeback@writeback-pixel-formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf_pmu@rc6-suspend:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl1/igt@perf_pmu@rc6-suspend.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@create:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-apl6/igt@sysfs_clients@create.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@fbdev@unaligned-read:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-4/igt@fbdev@unaligned-read.html">SKIP</a> ([i915#2582]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@fbdev@unaligned-read.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@in-flight-contexts-10ms:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html">TIMEOUT</a> ([i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb2/igt@gem_eio@in-flight-contexts-10ms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@unwedge-stress:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb3/igt@gem_eio@unwedge-stress.html">TIMEOUT</a> ([i915#2481] / [i915#3070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb1/igt@gem_eio@unwedge-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-flow@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-tglb2/igt@gem_exec_fair@basic-flow@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb3/igt@gem_exec_fair@basic-flow@rcs0.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vecs0:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl6/igt@gem_exec_fair@basic-pace@vecs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-tglb7/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([i915#2190]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-tglb5/igt@gem_huc_copy@huc-copy.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc5-psr:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@i915_pm_dc@dc5-psr.html">SKIP</a> ([i915#658]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@i915_pm_dc@dc5-psr.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl1/igt@i915_pm_rpm@modeset-lpsp-stress.html">DMESG-WARN</a> ([i915#1982]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-skl10/igt@i915_pm_rpm@modeset-lpsp-stress.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-32bpp-rotate-180:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk9/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">DMESG-WARN</a> ([i915#118]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs.html">SKIP</a> ([i915#1845] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-b-ctm-0-75:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_color@pipe-b-ctm-0-75.html">SKIP</a> ([i915#1149] / [i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_color@pipe-b-ctm-0-75.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-b:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-4/igt@kms_concurrent@pipe-b.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_concurrent@pipe-b.html">SKIP</a>) ([i915#1845] / [i915#4070] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_concurrent@pipe-b.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement.html">SKIP</a> ([fdo#112022] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-256x85-rapid-movement.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html">SKIP</a> ([i915#1849] / [i915#4070]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-a-256x256-top-edge.html">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">FAIL</a> ([i915#2346]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-iclb3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:</p>
<ul>
<li>{shard-rkl}:        <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html">SKIP</a> ([fdo#111314]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-rgb565-render-xtiled:</p>
<ul>
<li>{shard-rkl}:        (<a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-2/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html">SKIP</a>, <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-rkl-4/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html">SKIP</a>) ([fdo#111314] / [i915#4098]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-render-xtiled.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">FAIL</a> ([i915#2122]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21881/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-hdmi-a">FAIL</a> ([i915#79]) -&gt; [PASS][140]</li>
</ul>
</li>
</ul>

</body>
</html>

--===============4063919799624618344==--
