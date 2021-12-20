Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F61147B417
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 20:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EB811A36F;
	Mon, 20 Dec 2021 19:58:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id D5BBD11A2E8;
 Mon, 20 Dec 2021 19:58:19 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id BE66EA0169;
 Mon, 20 Dec 2021 19:58:19 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7349301109000171673=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Hans de Goede" <hdegoede@redhat.com>
Date: Mon, 20 Dec 2021 19:58:19 -0000
Message-ID: <164003029974.24544.16432150401185061757@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211220161343.21975-1-hdegoede@redhat.com>
In-Reply-To: <20211220161343.21975-1-hdegoede@redhat.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/vlv=5Fdsi=3A_Add_DMI_quirk_for_wrong_panel_modeline_in_BI?=
 =?utf-8?q?OS_on_Asus_TF103C?=
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

--===============7349301109000171673==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/vlv_dsi: Add DMI quirk for wrong panel modeline in BIOS on Asus TF103C
URL   : https://patchwork.freedesktop.org/series/98239/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_11016_full -> Patchwork_21879_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_21879_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_21879_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (18 -> 18)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_21879_full:

### IGT changes ###

#### Possible regressions ####

  * igt@i915_suspend@fence-restore-tiled2untiled:
    - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl1/igt@i915_suspend@fence-restore-tiled2untiled.html
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
    - shard-apl:          NOTRUN -> [INCOMPLETE][3]
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html

  
#### Suppressed ####

  The following results come from untrusted machines, tests, or statuses.
  They do not affect the overall result.

  * igt@gem_ctx_engines@independent@all:
    - {shard-dg1-16}:     NOTRUN -> [FAIL][4] +6 similar issues
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-16/igt@gem_ctx_engines@independent@all.html

  * igt@gem_ctx_persistence@heartbeat-close:
    - {shard-dg1-19}:     NOTRUN -> [FAIL][5] +12 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@gem_ctx_persistence@heartbeat-close.html

  * igt@gem_ctx_shared@exec-shared-gtt@vcs0:
    - {shard-dg1-15}:     NOTRUN -> [FAIL][6] +10 similar issues
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-15/igt@gem_ctx_shared@exec-shared-gtt@vcs0.html

  * igt@gem_eio@kms:
    - {shard-dg1-18}:     NOTRUN -> [CRASH][7]
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@gem_eio@kms.html

  * igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs@smem:
    - {shard-dg1-17}:     NOTRUN -> [FAIL][8] +4 similar issues
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs@smem.html

  * {igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0}:
    - {shard-dg1-12}:     NOTRUN -> [FAIL][9] +4 similar issues
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-12/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0.html

  * igt@gem_userptr_blits@input-checking:
    - {shard-dg1-18}:     NOTRUN -> [DMESG-WARN][10]
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@probe:
    - {shard-dg1-18}:     NOTRUN -> [FAIL][11] +7 similar issues
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@gem_userptr_blits@probe.html

  * igt@i915_module_load@reload-with-fault-injection:
    - {shard-dg1-19}:     NOTRUN -> [INCOMPLETE][12]
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_pm_rpm@i2c:
    - {shard-dg1-17}:     NOTRUN -> [DMESG-WARN][13] +1 similar issue
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@i915_pm_rpm@i2c.html

  * igt@kms_concurrent@pipe-b:
    - {shard-dg1-15}:     NOTRUN -> [CRASH][14]
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-15/igt@kms_concurrent@pipe-b.html

  * igt@kms_concurrent@pipe-c:
    - {shard-dg1-19}:     NOTRUN -> [CRASH][15]
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@kms_concurrent@pipe-c.html

  * igt@kms_content_protection@atomic-dpms:
    - {shard-dg1-12}:     NOTRUN -> [SKIP][16] +83 similar issues
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-12/igt@kms_content_protection@atomic-dpms.html

  * igt@kms_content_protection@srm:
    - {shard-dg1-15}:     NOTRUN -> [SKIP][17] +49 similar issues
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-15/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - {shard-dg1-19}:     NOTRUN -> [SKIP][18] +156 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:
    - {shard-dg1-16}:     NOTRUN -> [SKIP][19] +49 similar issues
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-16/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:
    - {shard-dg1-18}:     NOTRUN -> [SKIP][20] +110 similar issues
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt.html

  * igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:
    - {shard-dg1-13}:     NOTRUN -> [SKIP][21] +189 similar issues
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-13/igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c.html

  * igt@kms_psr@psr2_cursor_plane_move:
    - {shard-dg1-17}:     NOTRUN -> [SKIP][22] +87 similar issues
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@kms_psr@psr2_cursor_plane_move.html

  * igt@prime_mmap@test_errors:
    - {shard-dg1-13}:     NOTRUN -> [FAIL][23] +11 similar issues
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-13/igt@prime_mmap@test_errors.html

  * igt@prime_mmap_coherency@read:
    - {shard-dg1-17}:     NOTRUN -> [INCOMPLETE][24]
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@prime_mmap_coherency@read.html

  * igt@prime_mmap_coherency@write:
    - {shard-dg1-18}:     NOTRUN -> [INCOMPLETE][25]
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@prime_mmap_coherency@write.html

  
Known issues
------------

  Here are the changes found in Patchwork_21879_full that come from known issues:

### CI changes ###

#### Issues hit ####

  * boot:
    - shard-glk:          ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50]) -> ([PASS][51], [PASS][52], [PASS][53], [PASS][54], [FAIL][55], [PASS][56], [PASS][57], [PASS][58], [PASS][59], [PASS][60], [PASS][61], [PASS][62], [PASS][63], [PASS][64], [PASS][65], [PASS][66], [PASS][67], [PASS][68], [PASS][69], [PASS][70], [PASS][71], [PASS][72], [PASS][73], [PASS][74], [PASS][75]) ([i915#4392])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk3/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk2/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk4/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk4/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk4/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk3/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk9/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk9/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk9/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk7/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk7/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk7/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk1/boot.html
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk6/boot.html
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk1/boot.html
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk1/boot.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk6/boot.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk6/boot.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk1/boot.html
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk1/boot.html
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk2/boot.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk2/boot.html
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk2/boot.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk2/boot.html
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk3/boot.html
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk3/boot.html
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk3/boot.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk4/boot.html
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk4/boot.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk5/boot.html
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk5/boot.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk5/boot.html
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk6/boot.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk6/boot.html
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk6/boot.html
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk7/boot.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk7/boot.html
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk8/boot.html
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk8/boot.html
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk8/boot.html
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk9/boot.html
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk9/boot.html
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk9/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@gem_ctx_isolation@preservation-s3@vecs0:
    - shard-kbl:          [PASS][76] -> [DMESG-WARN][77] ([i915#180]) +5 similar issues
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html

  * igt@gem_exec_fair@basic-pace@bcs0:
    - shard-tglb:         NOTRUN -> [FAIL][78] ([i915#2842]) +4 similar issues
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html

  * igt@gem_exec_fair@basic-pace@vcs0:
    - shard-iclb:         NOTRUN -> [FAIL][79] ([i915#2842]) +3 similar issues
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0.html

  * igt@gem_exec_fair@basic-pace@vcs1:
    - shard-kbl:          [PASS][80] -> [FAIL][81] ([i915#2842])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html

  * igt@gem_exec_fair@basic-throttle@rcs0:
    - shard-iclb:         [PASS][82] -> [FAIL][83] ([i915#2849])
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html

  * igt@gem_exec_whisper@basic-queues-forked-all:
    - shard-glk:          [PASS][84] -> [DMESG-WARN][85] ([i915#118]) +1 similar issue
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html

  * igt@gem_lmem_swapping@basic:
    - shard-apl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#4613]) +1 similar issue
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl3/igt@gem_lmem_swapping@basic.html

  * igt@gem_lmem_swapping@smem-oom:
    - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#4613])
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@gem_lmem_swapping@smem-oom.html

  * igt@gem_lmem_swapping@verify-random:
    - shard-skl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#4613]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl4/igt@gem_lmem_swapping@verify-random.html

  * igt@gem_pread@exhaustion:
    - shard-apl:          NOTRUN -> [WARN][89] ([i915#2658]) +1 similar issue
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][90] ([i915#768])
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html

  * igt@i915_pm_dc@dc6-dpms:
    - shard-iclb:         [PASS][91] -> [FAIL][92] ([i915#454]) +1 similar issue
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
    - shard-skl:          NOTRUN -> [FAIL][93] ([i915#454])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl4/igt@i915_pm_dc@dc6-dpms.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-kbl:          [PASS][94] -> [DMESG-WARN][95] ([i915#1982])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl4/igt@i915_pm_rpm@dpms-non-lpsp.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl6/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-kbl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +73 similar issues
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl4/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [i915#3777])
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
    - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#3777])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-kbl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#3886]) +4 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][100] ([fdo#109271] / [i915#3886]) +8 similar issues
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl4/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#3886]) +3 similar issues
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
    - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109278]) +1 similar issue
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][103] ([i915#3689]) +1 similar issue
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-tglb1/igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html

  * igt@kms_chamelium@dp-hpd-for-each-pipe:
    - shard-kbl:          NOTRUN -> [SKIP][104] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_chamelium@dp-hpd-for-each-pipe.html

  * igt@kms_chamelium@hdmi-edid-change-during-suspend:
    - shard-apl:          NOTRUN -> [SKIP][105] ([fdo#109271] / [fdo#111827]) +13 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_chamelium@hdmi-edid-change-during-suspend.html

  * igt@kms_chamelium@hdmi-hpd-storm-disable:
    - shard-skl:          NOTRUN -> [SKIP][106] ([fdo#109271] / [fdo#111827]) +8 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html

  * igt@kms_color@pipe-a-ctm-0-75:
    - shard-skl:          [PASS][107] -> [DMESG-WARN][108] ([i915#1982])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl9/igt@kms_color@pipe-a-ctm-0-75.html

  * igt@kms_color@pipe-d-gamma:
    - shard-iclb:         NOTRUN -> [SKIP][109] ([fdo#109278] / [i915#1149])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_color@pipe-d-gamma.html

  * igt@kms_content_protection@srm:
    - shard-apl:          NOTRUN -> [TIMEOUT][110] ([i915#1319])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_content_protection@srm.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-random:
    - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109279] / [i915#3359])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109278] / [fdo#109279])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-512x512-random.html

  * igt@kms_cursor_crc@pipe-c-cursor-suspend:
    - shard-apl:          [PASS][113] -> [DMESG-WARN][114] ([i915#180]) +4 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
    - shard-skl:          [PASS][115] -> [FAIL][116] ([i915#2346])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html

  * igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:
    - shard-apl:          NOTRUN -> [DMESG-WARN][117] ([i915#62]) +22 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic.html

  * igt@kms_cursor_legacy@pipe-a-forked-bo:
    - shard-apl:          [PASS][118] -> [DMESG-WARN][119] ([i915#62]) +11 similar issues
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl7/igt@kms_cursor_legacy@pipe-a-forked-bo.html
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_cursor_legacy@pipe-a-forked-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-apl:          NOTRUN -> [SKIP][120] ([fdo#109271] / [i915#533])
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:
    - shard-glk:          [PASS][121] -> [FAIL][122] ([i915#2122])
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
    - shard-glk:          [PASS][123] -> [FAIL][124] ([i915#79])
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html

  * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:
    - shard-kbl:          [PASS][125] -> [FAIL][126] ([i915#79])
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1.html

  * igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:
    - shard-snb:          [PASS][127] -> [SKIP][128] ([fdo#109271])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:
    - shard-apl:          NOTRUN -> [SKIP][129] ([fdo#109271]) +169 similar issues
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-badstride:
    - shard-apl:          NOTRUN -> [DMESG-WARN][130] ([i915#1982] / [i915#62])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_frontbuffer_tracking@fbc-badstride.html

  * igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:
    - shard-glk:          [PASS][131] -> [FAIL][132] ([i915#2546]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk5/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:
    - shard-skl:          NOTRUN -> [SKIP][133] ([fdo#109271]) +98 similar issues
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
    - shard-tglb:         NOTRUN -> [SKIP][134] ([fdo#111825]) +3 similar issues
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:
    - shard-iclb:         NOTRUN -> [SKIP][135] ([fdo#109280]) +3 similar issues
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render.html

  * igt@kms_hdr@bpc-switch:
    - shard-skl:          [PASS][136] -> [FAIL][137] ([i915#1188])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl4/igt@kms_hdr@bpc-switch.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_hdr@bpc-switch.html

  * igt@kms_hdr@bpc-switch-dpms:
    - shard-skl:          NOTRUN -> [FAIL][138] ([i915#1188])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html

  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
    - shard-skl:          NOTRUN -> [SKIP][139] ([fdo#109271] / [i915#533])
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][140] ([i915#265])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
    - shard-skl:          [PASS][141] -> [FAIL][142] ([fdo#108145] / [i915#265])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
    - shard-apl:          NOTRUN -> [FAIL][143] ([fdo#108145] / [i915#265])
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html

  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][144] ([i915#265])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
    - shard-skl:          NOTRUN -> [FAIL][145] ([i915#265])
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html

  * igt@kms_psr2_sf@cursor-plane-update-sf:
    - shard-apl:          NOTRUN -> [SKIP][146] ([fdo#109271] / [i915#658]) +1 similar issue
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl3/igt@kms_psr2_sf@cursor-plane-update-sf.html

  * igt@kms_psr2_su@frontbuffer-xrgb8888:
    - shard-skl:          NOTRUN -> [SKIP][147] ([fdo#109271] / [i915#658])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
    - shard-kbl:          NOTRUN -> [SKIP][148] ([fdo#109271] / [i915#658])
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_psr2_su@frontbuffer-xrgb8888.html

  * igt@kms_psr@psr2_cursor_plane_onoff:
    - shard-iclb:         [PASS][149] -> [SKIP][150] ([fdo#109441]) +1 similar issue
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html

  * igt@kms_setmode@basic:
    - shard-apl:          [PASS][151] -> [FAIL][152] ([i915#31])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl4/igt@kms_setmode@basic.html
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_setmode@basic.html
    - shard-glk:          [PASS][153] -> [FAIL][154] ([i915#31])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk3/igt@kms_setmode@basic.html
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk2/igt@kms_setmode@basic.html

  * igt@kms_vblank@pipe-c-ts-continuation-suspend:
    - shard-apl:          [PASS][155] -> [DMESG-WARN][156] ([i915#180] / [i915#62])
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-skl:          NOTRUN -> [SKIP][157] ([fdo#109271] / [i915#2437])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_writeback@writeback-invalid-parameters.html
    - shard-kbl:          NOTRUN -> [SKIP][158] ([fdo#109271] / [i915#2437])
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@kms_writeback@writeback-pixel-formats:
    - shard-apl:          NOTRUN -> [SKIP][159] ([fdo#109271] / [i915#2437])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_writeback@writeback-pixel-formats.html

  * igt@perf@polling-parameterized:
    - shard-skl:          [PASS

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/index.html

--===============7349301109000171673==
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
<tr><td><b>Series:</b></td><td>drm/i915/vlv_dsi: Add DMI quirk for wrong pa=
nel modeline in BIOS on Asus TF103C</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/98239/">https://patchwork.freedesktop.org/series/98239/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/index.html">https://intel-gfx-ci.01.org/tree/d=
rm-tip/Patchwork_21879/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11016_full -&gt; Patchwork_21879_f=
ull</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_21879_full absolutely need=
 to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_21879_full, please notify your bug team to allow =
them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (18 -&gt; 18)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
21879_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>
<p>igt@i915_suspend@fence-restore-tiled2untiled:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-skl1/igt@i915_suspend@fence-restore-tiled2untiled.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21879/shard-skl6/igt@i915_suspend@fence-restore-tiled2untiled.html">INCO=
MPLETE</a></li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl3/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-a.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h4>Suppressed</h4>
<p>The following results come from untrusted machines, tests, or statuses.<=
br />
  They do not affect the overall result.</p>
<ul>
<li>
<p>igt@gem_ctx_engines@independent@all:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-16/igt@gem_ctx_engines@independent@=
all.html">FAIL</a> +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@heartbeat-close:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@gem_ctx_persistence@heartbea=
t-close.html">FAIL</a> +12 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_shared@exec-shared-gtt@vcs0:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-15/igt@gem_ctx_shared@exec-shared-g=
tt@vcs0.html">FAIL</a> +10 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@gem_eio@kms.html">CRASH</a><=
/li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@mixed-tiled-to-y-tiled-ccs@smem:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@gem_render_copy@mixed-tiled-=
to-y-tiled-ccs@smem.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>{igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs@lmem0}:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-12/igt@gem_render_copy@mixed-tiled-=
to-yf-tiled-ccs@lmem0.html">FAIL</a> +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@gem_userptr_blits@input-chec=
king.html">DMESG-WARN</a></li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@probe:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@gem_userptr_blits@probe.html=
">FAIL</a> +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@i915_module_load@reload-with=
-fault-injection.html">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@i2c:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@i915_pm_rpm@i2c.html">DMESG-=
WARN</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-b:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-15/igt@kms_concurrent@pipe-b.html">=
CRASH</a></li>
</ul>
</li>
<li>
<p>igt@kms_concurrent@pipe-c:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@kms_concurrent@pipe-c.html">=
CRASH</a></li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic-dpms:</p>
<ul>
<li>{shard-dg1-12}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-12/igt@kms_content_protection@atomi=
c-dpms.html">SKIP</a> +83 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>{shard-dg1-15}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-15/igt@kms_content_protection@srm.h=
tml">SKIP</a> +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>{shard-dg1-19}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-19/igt@kms_cursor_crc@pipe-a-cursor=
-32x32-onscreen.html">SKIP</a> +156 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-onoff:</p>
<ul>
<li>{shard-dg1-16}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc=
psr-2p-scndscrn-spr-indfb-onoff.html">SKIP</a> +49 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-blt:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@kms_frontbuffer_tracking@psr=
-1p-primscrn-pri-indfb-draw-blt.html">SKIP</a> +110 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@pipe-b-dpms-off-modeset-pipe-c:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-13/igt@kms_pipe_b_c_ivb@pipe-b-dpms=
-off-modeset-pipe-c.html">SKIP</a> +189 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_move:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@kms_psr@psr2_cursor_plane_mo=
ve.html">SKIP</a> +87 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap@test_errors:</p>
<ul>
<li>{shard-dg1-13}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-13/igt@prime_mmap@test_errors.html"=
>FAIL</a> +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@read:</p>
<ul>
<li>{shard-dg1-17}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-17/igt@prime_mmap_coherency@read.ht=
ml">INCOMPLETE</a></li>
</ul>
</li>
<li>
<p>igt@prime_mmap_coherency@write:</p>
<ul>
<li>{shard-dg1-18}:     NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-dg1-18/igt@prime_mmap_coherency@write.h=
tml">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_21879_full that come from known =
issues:</p>
<h3>CI changes</h3>
<h4>Issues hit</h4>
<ul>
<li>boot:<ul>
<li>shard-glk:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_11016/shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx=
-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/boot.html">PASS</a>, <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk5/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
11016/shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.or=
g/tree/drm-tip/CI_DRM_11016/shard-glk2/boot.html">PASS</a>, <a href=3D"http=
s://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/sha=
rd-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_11016/shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk3/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk2/b=
oot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_=
DRM_11016/shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/CI_DRM_11016/shard-glk9/boot.html">PASS</a>, <a href=3D"=
https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk9/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016=
/shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tre=
e/drm-tip/CI_DRM_11016/shard-glk8/boot.html">PASS</a>, <a href=3D"https://i=
ntel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk8/boot.html">PASS</a>=
, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-gl=
k7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-glk7/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk7/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1=
1016/shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/CI_DRM_11016/shard-glk1/boot.html">PASS</a>, <a href=3D"https=
://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shard-glk1/boot.html">PASS=
</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11016/shar=
d-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_11016/shard-glk6/boot.html">PASS</a>) -&gt; (<a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk1/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk2/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk2/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk3/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk3/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk4/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk4/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk5/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk5/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk6/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk6/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk7/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk7/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk8/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk8/boot.html">PAS=
S</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/=
shard-glk9/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_21879/shard-glk9/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk9/boot.html">PAS=
S</a>) ([i915#4392])</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vecs0:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vecs0.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_21879/shard-kbl1/igt@gem_ctx_isolation@preservation-s3@vecs0.html">DMESG-=
WARN</a> ([i915#180]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@bcs0:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0=
.html">FAIL</a> ([i915#2842]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@gem_exec_fair@basic-pace@vcs0=
.html">FAIL</a> ([i915#2842]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@vcs1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html">PASS</a> -=
&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/sh=
ard-kbl3/igt@gem_exec_fair@basic-pace@vcs1.html">FAIL</a> ([i915#2842])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-throttle@rcs0:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-iclb4/igt@gem_exec_fair@basic-throttle@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
79/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html">FAIL</a> ([i915#=
2849])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-queues-forked-all:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-glk4/igt@gem_exec_whisper@basic-queues-forked-all.html"=
>PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_21879/shard-glk1/igt@gem_exec_whisper@basic-queues-forked-all.html">DMES=
G-WARN</a> ([i915#118]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl3/igt@gem_lmem_swapping@basic.html">=
SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@gem_lmem_swapping@smem-oom.htm=
l">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@verify-random:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-skl4/igt@gem_lmem_swapping@verify-rando=
m.html">SKIP</a> ([fdo#109271] / [i915#4613]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl1/igt@gem_pread@exhaustion.html">WAR=
N</a> ([i915#2658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@gem_render_copy@y-tiled-to-ve=
box-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_dc@dc6-dpms:</p>
<ul>
<li>
<p>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11016/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html">PASS</a> -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-iclb3/=
igt@i915_pm_dc@dc6-dpms.html">FAIL</a> ([i915#454]) +1 similar issue</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-skl4/igt@i915_pm_dc@dc6-dpms.html">FAIL<=
/a> ([i915#454])</p>
</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-kbl4/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-=
kbl6/igt@i915_pm_rpm@dpms-non-lpsp.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-kbl4/igt@i915_pm_rpm@modeset-lpsp-stres=
s-no-wait.html">SKIP</a> ([fdo#109271]) +73 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_big_fb@x-tiled-max-hw-strid=
e-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_ccs@pipe-a-bad-rotation-90=
-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl4/igt@kms_ccs@pipe-b-ccs-on-another-=
bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +8 simi=
lar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_ccs@pipe-c-missing-ccs-buf=
fer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_ccs@pipe-d-bad-rotation-9=
0-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109278]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-missing-ccs-buffer-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-tglb1/igt@kms_ccs@pipe-d-missing-ccs-bu=
ffer-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-hpd-for-each-pipe:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_chamelium@dp-hpd-for-each-=
pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-edid-change-during-suspend:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_chamelium@hdmi-edid-change=
-during-suspend.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +13 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-storm-disable:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_chamelium@hdmi-hpd-storm-d=
isable.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +8 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-a-ctm-0-75:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-skl8/igt@kms_color@pipe-a-ctm-0-75.html">PASS</a> -&gt;=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-=
skl9/igt@kms_color@pipe-a-ctm-0-75.html">DMESG-WARN</a> ([i915#1982])</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-gamma:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_color@pipe-d-gamma.html">=
SKIP</a> ([fdo#109278] / [i915#1149])</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_content_protection@srm.htm=
l">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-random:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-tglb1/igt@kms_cursor_crc@pipe-a-cursor-5=
12x512-random.html">SKIP</a> ([fdo#109279] / [i915#3359])</p>
</li>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_cursor_crc@pipe-a-cursor-5=
12x512-random.html">SKIP</a> ([fdo#109278] / [fdo#109279])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-apl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_2=
1879/shard-apl3/igt@kms_cursor_crc@pipe-c-cursor-suspend.html">DMESG-WARN</=
a> ([i915#180]) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21879/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-=
transitions.html">FAIL</a> ([i915#2346])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@long-nonblocking-modeset-vs-cursor-atomic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_cursor_legacy@long-nonbloc=
king-modeset-vs-cursor-atomic.html">DMESG-WARN</a> ([i915#62]) +22 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-a-forked-bo:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-apl7/igt@kms_cursor_legacy@pipe-a-forked-bo.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_218=
79/shard-apl1/igt@kms_cursor_legacy@pipe-a-forked-bo.html">DMESG-WARN</a> (=
[i915#62]) +11 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_cursor_legacy@pipe-d-tortu=
re-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21879/shard-glk6/igt@kms_flip@flip-vs-absolute-wf_vblank@b-hdmi-a1.=
html">FAIL</a> ([i915#2122])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-glk8/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
a-hdmi-a2.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_21879/shard-glk6/igt@kms_flip@flip-vs-expired-vblank-inte=
rruptible@a-hdmi-a2.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-expired-vblank-interruptible@b-dp1:</p>
<ul>
<li>shard-kbl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@=
b-dp1.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_21879/shard-kbl4/igt@kms_flip@flip-vs-expired-vblank-interrup=
tible@b-dp1.html">FAIL</a> ([i915#79])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend-interruptible@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-snb7/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.=
html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_21879/shard-snb5/igt@kms_flip@flip-vs-suspend-interruptible@a-vga1.=
html">SKIP</a> ([fdo#109271])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl4/igt@kms_frontbuffer_tracking@fbc-2=
p-scndscrn-spr-indfb-draw-mmap-wc.html">SKIP</a> ([fdo#109271]) +169 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-badstride:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_frontbuffer_tracking@fbc-b=
adstride.html">DMESG-WARN</a> ([i915#1982] / [i915#62])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap-gtt:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-glk5/igt@kms_frontbuffer_tracking@fbc-farfromfence-mmap=
-gtt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_21879/shard-glk5/igt@kms_frontbuffer_tracking@fbc-farfromfence=
-mmap-gtt.html">FAIL</a> ([i915#2546]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-pwrite:</=
p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_frontbuffer_tracking@fbcps=
r-1p-primscrn-spr-indfb-draw-pwrite.html">SKIP</a> ([fdo#109271]) +98 simil=
ar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-tglb1/igt@kms_frontbuffer_tracking@fbcp=
sr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html">SKIP</a> ([fdo#111825]) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-render:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-iclb3/igt@kms_frontbuffer_tracking@psr-=
2p-primscrn-cur-indfb-draw-render.html">SKIP</a> ([fdo#109280]) +3 similar =
issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-skl4/igt@kms_hdr@bpc-switch.html">PASS</a> -&gt; <a hre=
f=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-skl6/ig=
t@kms_hdr@bpc-switch.html">FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@bpc-switch-dpms:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_hdr@bpc-switch-dpms.html">=
FAIL</a> ([i915#1188])</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_pipe_crc_basic@suspend-rea=
d-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-kbl4/igt@kms_plane_alpha_blend@pipe-a-a=
lpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:</p>
<ul>
<li>shard-skl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.htm=
l">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_21879/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html">=
FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-basic:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl4/igt@kms_plane_alpha_blend@pipe-b-a=
lpha-basic.html">FAIL</a> ([fdo#108145] / [i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-apl7/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-skl4/igt@kms_plane_alpha_blend@pipe-c-al=
pha-transparent-fb.html">FAIL</a> ([i915#265])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-update-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl3/igt@kms_psr2_sf@cursor-plane-updat=
e-sf.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@frontbuffer-xrgb8888:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_psr2_su@frontbuffer-xrgb888=
8.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_psr2_su@frontbuffer-xrgb888=
8.html">SKIP</a> ([fdo#109271] / [i915#658])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_plane_onoff:</p>
<ul>
<li>shard-iclb:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-iclb2/igt@kms_psr@psr2_cursor_plane_onoff.html">PASS</a=
> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879=
/shard-iclb1/igt@kms_psr@psr2_cursor_plane_onoff.html">SKIP</a> ([fdo#10944=
1]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@basic:</p>
<ul>
<li>
<p>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11016/shard-apl4/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-apl1/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_11016/shard-glk3/igt@kms_setmode@basic.html">PASS</a> -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21879/shard-glk2/igt=
@kms_setmode@basic.html">FAIL</a> ([i915#31])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-ts-continuation-suspend:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_11016/shard-apl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html=
">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_21879/shard-apl1/igt@kms_vblank@pipe-c-ts-continuation-suspend.html">DM=
ESG-WARN</a> ([i915#180] / [i915#62])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-skl6/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
<li>
<p>shard-kbl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_21879/shard-kbl3/igt@kms_writeback@writeback-invalid=
-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-pixel-formats:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_21879/shard-apl1/igt@kms_writeback@writeback-pixel-=
formats.html">SKIP</a> ([fdo#109271] / [i915#2437])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          [PASS</li>
</ul>
</li>
</ul>

</body>
</html>

--===============7349301109000171673==--
