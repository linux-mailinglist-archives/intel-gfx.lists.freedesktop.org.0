Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3B214EA4C8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 03:52:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 591AE10E1AF;
	Tue, 29 Mar 2022 01:52:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id B57E310E1AF;
 Tue, 29 Mar 2022 01:52:20 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id A8035A00FD;
 Tue, 29 Mar 2022 01:52:20 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============4341548760946024094=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Vinod Govindapillai" <vinod.govindapillai@intel.com>
Date: Tue, 29 Mar 2022 01:52:20 -0000
Message-ID: <164851874064.5798.7919364310900224568@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220328161025.175993-1-vinod.govindapillai@intel.com>
In-Reply-To: <20220328161025.175993-1-vinod.govindapillai@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSGFu?=
 =?utf-8?q?dle_the_DG2_max_bw_properly_=28rev2=29?=
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

--===============4341548760946024094==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Handle the DG2 max bw properly (rev2)
URL   : https://patchwork.freedesktop.org/series/101635/
State : success

== Summary ==

CI Bug Log - changes from CI_DRM_11415_full -> Patchwork_22703_full
====================================================

Summary
-------

  **SUCCESS**

  No regressions found.

  

Participating hosts (10 -> 10)
------------------------------

  No changes in participating hosts

Known issues
------------

  Here are the changes found in Patchwork_22703_full that come from known issues:

### IGT changes ###

#### Issues hit ####

  * igt@core_hotunplug@unbind-rebind:
    - shard-apl:          NOTRUN -> [INCOMPLETE][1] ([i915#1373] / [i915#5441])
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@core_hotunplug@unbind-rebind.html

  * igt@gem_ctx_persistence@legacy-engines-mixed:
    - shard-snb:          NOTRUN -> [SKIP][2] ([fdo#109271] / [i915#1099])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html

  * igt@gem_exec_fair@basic-none-rrul@rcs0:
    - shard-glk:          NOTRUN -> [FAIL][3] ([i915#2842]) +2 similar issues
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@gem_exec_fair@basic-none-rrul@rcs0.html
    - shard-tglb:         NOTRUN -> [FAIL][4] ([i915#2842])
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html

  * igt@gem_exec_schedule@u-semaphore-user:
    - shard-snb:          NOTRUN -> [SKIP][5] ([fdo#109271]) +55 similar issues
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@gem_exec_schedule@u-semaphore-user.html

  * igt@gem_huc_copy@huc-copy:
    - shard-apl:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#2190])
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl4/igt@gem_huc_copy@huc-copy.html
    - shard-glk:          NOTRUN -> [SKIP][7] ([fdo#109271] / [i915#2190])
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@gem_huc_copy@huc-copy.html

  * igt@gem_lmem_swapping@heavy-verify-multi:
    - shard-skl:          NOTRUN -> [SKIP][8] ([fdo#109271] / [i915#4613])
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl8/igt@gem_lmem_swapping@heavy-verify-multi.html

  * igt@gem_lmem_swapping@heavy-verify-random:
    - shard-apl:          NOTRUN -> [SKIP][9] ([fdo#109271] / [i915#4613])
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@gem_lmem_swapping@heavy-verify-random.html

  * igt@gem_lmem_swapping@parallel-random-engines:
    - shard-glk:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613])
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk6/igt@gem_lmem_swapping@parallel-random-engines.html

  * igt@gem_pipe_control_store_loop@reused-buffer:
    - shard-snb:          NOTRUN -> [INCOMPLETE][11] ([i915#5441])
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@gem_pipe_control_store_loop@reused-buffer.html

  * igt@gem_ppgtt@blt-vs-render-ctx0:
    - shard-snb:          NOTRUN -> [DMESG-FAIL][12] ([i915#5441])
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb5/igt@gem_ppgtt@blt-vs-render-ctx0.html

  * igt@gem_pread@exhaustion:
    - shard-iclb:         NOTRUN -> [WARN][13] ([i915#2658])
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@gem_pread@exhaustion.html
    - shard-skl:          NOTRUN -> [WARN][14] ([i915#2658])
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl9/igt@gem_pread@exhaustion.html

  * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:
    - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#768])
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html

  * igt@gem_tiled_blits@basic:
    - shard-apl:          [PASS][16] -> [INCOMPLETE][17] ([i915#1982] / [i915#5441])
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl7/igt@gem_tiled_blits@basic.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@gem_tiled_blits@basic.html

  * igt@gem_tiled_partial_pwrite_pread@writes:
    - shard-tglb:         NOTRUN -> [INCOMPLETE][18] ([i915#5441]) +2 similar issues
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb1/igt@gem_tiled_partial_pwrite_pread@writes.html
    - shard-apl:          NOTRUN -> [INCOMPLETE][19] ([i915#5441]) +1 similar issue
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@gem_tiled_partial_pwrite_pread@writes.html

  * igt@gem_userptr_blits@dmabuf-sync:
    - shard-apl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#3323])
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html
    - shard-glk:          NOTRUN -> [SKIP][21] ([fdo#109271] / [i915#3323])
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@gem_userptr_blits@dmabuf-sync.html

  * igt@gem_userptr_blits@input-checking:
    - shard-apl:          NOTRUN -> [DMESG-WARN][22] ([i915#4991])
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl1/igt@gem_userptr_blits@input-checking.html

  * igt@gem_userptr_blits@invalid-mmap-offset-unsync:
    - shard-tglb:         NOTRUN -> [SKIP][23] ([i915#3297])
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html

  * igt@gem_userptr_blits@unsync-overlap:
    - shard-iclb:         NOTRUN -> [SKIP][24] ([i915#3297])
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@gem_userptr_blits@unsync-overlap.html

  * igt@gem_userptr_blits@vma-merge:
    - shard-kbl:          NOTRUN -> [FAIL][25] ([i915#3318])
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@gem_userptr_blits@vma-merge.html

  * igt@gem_workarounds@suspend-resume:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][26] ([i915#180])
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@gem_workarounds@suspend-resume.html

  * igt@gen7_exec_parse@cmd-crossing-page:
    - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#109289])
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@gen7_exec_parse@cmd-crossing-page.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-apl:          NOTRUN -> [DMESG-WARN][28] ([i915#1436] / [i915#716])
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@bb-start-far:
    - shard-iclb:         NOTRUN -> [SKIP][29] ([i915#2856])
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@gen9_exec_parse@bb-start-far.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-apl:          NOTRUN -> [SKIP][30] ([fdo#109271] / [i915#1937])
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@kms_big_fb@4-tiled-8bpp-rotate-90:
    - shard-iclb:         NOTRUN -> [SKIP][31] ([i915#5286])
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-tglb:         NOTRUN -> [SKIP][32] ([i915#5286])
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-0:
    - shard-iclb:         NOTRUN -> [INCOMPLETE][33] ([i915#5441]) +3 similar issues
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-16bpp-rotate-180:
    - shard-kbl:          [PASS][34] -> [INCOMPLETE][35] ([i915#1373] / [i915#5441])
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-180:
    - shard-tglb:         [PASS][36] -> [INCOMPLETE][37] ([i915#2828] / [i915#5441])
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-apl:          [PASS][38] -> [INCOMPLETE][39] ([i915#5441]) +2 similar issues
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:
    - shard-skl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [i915#3777]) +1 similar issue
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html

  * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
    - shard-glk:          [PASS][41] -> [INCOMPLETE][42] ([i915#5441]) +1 similar issue
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk8/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html

  * igt@kms_big_fb@y-tiled-64bpp-rotate-180:
    - shard-tglb:         [PASS][43] -> [INCOMPLETE][44] ([i915#5441]) +6 similar issues
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-8bpp-rotate-180:
    - shard-kbl:          NOTRUN -> [INCOMPLETE][45] ([i915#5441])
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl4/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
    - shard-apl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [i915#3777]) +4 similar issues
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
    - shard-glk:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#3777]) +1 similar issue
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-kbl:          [PASS][48] -> [INCOMPLETE][49] ([i915#5441]) +1 similar issue
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-iclb:         [PASS][50] -> [INCOMPLETE][51] ([i915#5441]) +2 similar issues
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:
    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#111615])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
    - shard-skl:          NOTRUN -> [INCOMPLETE][53] ([i915#5441]) +5 similar issues
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
    - shard-kbl:          NOTRUN -> [SKIP][54] ([fdo#109271] / [i915#3886]) +2 similar issues
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-apl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +110 similar issues
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][56] ([fdo#111615] / [i915#3689])
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
    - shard-skl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#3886]) +4 similar issues
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
    - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#3886]) +5 similar issues
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
    - shard-tglb:         NOTRUN -> [SKIP][59] ([i915#3689] / [i915#3886]) +1 similar issue
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html

  * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:
    - shard-iclb:         NOTRUN -> [SKIP][60] ([fdo#109278] / [i915#3886])
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
    - shard-glk:          NOTRUN -> [SKIP][61] ([fdo#109271] / [i915#3886]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_chamelium@dp-mode-timings:
    - shard-apl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@kms_chamelium@dp-mode-timings.html
    - shard-glk:          NOTRUN -> [SKIP][63] ([fdo#109271] / [fdo#111827]) +5 similar issues
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_chamelium@dp-mode-timings.html
    - shard-tglb:         NOTRUN -> [SKIP][64] ([fdo#109284] / [fdo#111827])
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_chamelium@dp-mode-timings.html

  * igt@kms_chamelium@hdmi-hpd-enable-disable-mode:
    - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109284] / [fdo#111827])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html

  * igt@kms_chamelium@hdmi-mode-timings:
    - shard-snb:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +3 similar issues
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html

  * igt@kms_chamelium@vga-hpd-for-each-pipe:
    - shard-skl:          NOTRUN -> [SKIP][67] ([fdo#109271] / [fdo#111827]) +6 similar issues
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl4/igt@kms_chamelium@vga-hpd-for-each-pipe.html

  * igt@kms_color@pipe-d-ctm-0-25:
    - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109278] / [i915#1149]) +1 similar issue
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_color@pipe-d-ctm-0-25.html

  * igt@kms_color@pipe-d-ctm-max:
    - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271]) +78 similar issues
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@kms_color@pipe-d-ctm-max.html

  * igt@kms_color_chamelium@pipe-a-degamma:
    - shard-kbl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [fdo#111827]) +2 similar issues
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_color_chamelium@pipe-a-degamma.html

  * igt@kms_content_protection@atomic:
    - shard-kbl:          NOTRUN -> [TIMEOUT][71] ([i915#1319])
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_content_protection@atomic.html

  * igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:
    - shard-tglb:         NOTRUN -> [SKIP][72] ([i915#3319])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html

  * igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109278] / [fdo#109279])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html

  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
    - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#109279] / [i915#3359])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html

  * igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:
    - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#109278]) +2 similar issues
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html

  * igt@kms_cursor_crc@pipe-d-cursor-32x10-random:
    - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#3359])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-32x10-random.html

  * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
    - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#109274] / [fdo#109278])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html

  * igt@kms_cursor_legacy@pipe-d-single-bo:
    - shard-glk:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#533])
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_cursor_legacy@pipe-d-single-bo.html
    - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#533])
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@kms_cursor_legacy@pipe-d-single-bo.html

  * igt@kms_cursor_legacy@pipe-d-torture-bo:
    - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#533])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@kms_cursor_legacy@pipe-d-torture-bo.html

  * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:
    - shard-tglb:         NOTRUN -> [SKIP][81] ([i915#5287])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
    - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109274] / [fdo#111825]) +2 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html

  * igt@kms_flip@2x-flip-vs-blocking-wf-vblank:
    - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109274])
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:
    - shard-iclb:         NOTRUN -> [SKIP][84] ([i915#2587])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html

  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
    - shard-glk:          [PASS][85] -> [FAIL][86] ([i915#4911])
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
    - shard-iclb:         NOTRUN -> [SKIP][87] ([fdo#109280]) +5 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbc-suspend:
    - shard-kbl:          [PASS][88] -> [DMESG-WARN][89] ([i915#180]) +1 similar issue
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:
    - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#109280] / [fdo#111825]) +3 similar issues
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html

  * igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
    - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271]) +50 similar issues
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html

  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:
    - shard-glk:          NOTRUN -> [SKIP][92] ([fdo#109271]) +58 similar issues
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html

  * igt@kms_pipe_crc_basic@read-crc-pipe-d:
    - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#533])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
    - shard-apl:          [PASS][94] -> [DMESG-WARN][95] ([i915#180])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html

  * igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:
    - shard-apl:          NOTRUN -> [FAIL][96] ([i915#265])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:
    - shard-apl:          NOTRUN -> [FAIL][97] ([fdo#108145] / [i915#265]) +1 similar issue
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html

  * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
    - shard-kbl:          NOTRUN -> [FAIL][98] ([i915#265])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html

  * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:
    - shard-skl:          NOTRUN -> [FAIL][99] ([fdo#108145] / [i915#265]) +3 similar issues
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html

  * igt@kms_psr2_sf@plane-move-sf-dmg-area:
    - shard-tglb:         NOTRUN -> [SKIP][100] ([i915#2920])
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
    - shard-skl:          NOTRUN -> [SKIP][101] ([fdo#109271] / [i915#658])
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html

  * igt@kms_psr2_su@page_flip-p010:
    - shard-iclb:         NOTRUN -> [FAIL][102] ([i915#4148])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html

  * igt@kms_psr2_su@page_flip-xrgb8888:
    - shard-apl:          NOTRUN -> [SKIP][103] ([fdo#109271] / [i915#658]) +2 similar issues
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl4/igt@kms_psr2_su@page_flip-xrgb8888.html
    - shard-glk:          NOTRUN -> [SKIP][104] ([fdo#109271] / [i915#658]) +1 similar issue
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@kms_psr2_su@page_flip-xrgb8888.html

  * igt@kms_psr@psr2_cursor_mmap_cpu:
    - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109441]) +1 similar issue
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html

  * igt@kms_psr@psr2_suspend:
    - shard-tglb:         NOTRUN -> [FAIL][106] ([i915#132] / [i915#3467])
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_psr@psr2_suspend.html

  * igt@kms_setmode@invalid-clone-exclusive-crtc:
    - shard-iclb:         NOTRUN -> [SKIP][107] ([i915#3555])
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_setmode@invalid-clone-exclusive-crtc.html

  * igt@kms_vrr@flip-dpms:
    - shard-iclb:         NOTRUN -> [SKIP][108] ([fdo#109502])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb5/igt@kms_vrr@flip-dpms.html

  * igt@kms_writeback@writeback-invalid-parameters:
    - shard-kbl:          NOTRUN -> [SKIP][109] ([fdo#109271] / [i915#2437]) +1 similar issue
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl4/igt@kms_writeback@writeback-invalid-parameters.html

  * igt@nouveau_crc@pipe-b-ctx-flip-detection:
    - shard-tglb:         NOTRUN -> [SKIP][110] ([i915#2530])
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html

  * igt@perf@polling-parameterized:
    - shard-skl:          NOTRUN -> [FAIL][111] ([i915#1542])
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl8/igt@perf@polling-parameterized.html

  * igt@prime_nv_api@i915_nv_double_import:
    - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109291])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@prime_nv_api@i915_nv_double_import.html

  * igt@prime_nv_pcopy@test2:
    - shard-tglb:         NOTRUN -> [SKIP][113] ([fdo#109291])
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb1/igt@prime_nv_pcopy@test2.html

  * igt@syncobj_timeline@invalid-transfer-non-existent-point:
    - shard-kbl:          NOTRUN -> [DMESG-WARN][114] ([i915#5098])
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@syncobj_timeline@invalid-transfer-non-existent-point.html

  * igt@syncobj_timeline@transfer-timeline-point:
    - shard-glk:          NOTRUN -> [DMESG-FAIL][115] ([i915#5098])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@syncobj_timeline@transfer-timeline-point.html

  * igt@sysfs_clients@busy:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#2994])
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl1/igt@sysfs_clients@busy.html

  
#### Possible fixes ####

  * igt@gem_eio@in-flight-contexts-immediate:
    - shard-tglb:         [TIMEOUT][117] ([i915#3063]) -> [PASS][118]
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-kbl:          [FAIL][119] ([i915#2846]) -> [PASS][120]
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl4/igt@gem_exec_fair@basic-deadline.html
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-tglb:         [FAIL][121] ([i915#2842]) -> [PASS][122]
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-glk:          [FAIL][123] ([i915#2842]) -> [PASS][124]
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_render_copy@yf-tiled@smem:
    - shard-skl:          [INCOMPLETE][125] ([i915#5441]) -> [PASS][126] +2 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-skl4/igt@gem_render_copy@yf-tiled@smem.html
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@gem_render_copy@yf-tiled@smem.html

  * igt@gem_softpin@allocator-evict-all-engines:
    - shard-glk:          [FAIL][127] ([i915#4171]) -> [PASS][128]
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk2/igt@gem_softpi

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/index.html

--===============4341548760946024094==
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
<tr><td><b>Series:</b></td><td>Handle the DG2 max bw properly (rev2)</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/101635/">https://patchwork.freedesktop.org/series/101635/</a></td></tr>
<tr><td><b>State:</b></td><td>success</td></tr>

    <tr><td><b>Details:</b></td><td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_11415_full -&gt; Patchwork_22703_full</h1>
<h2>Summary</h2>
<p><strong>SUCCESS</strong></p>
<p>No regressions found.</p>
<h2>Participating hosts (10 -&gt; 10)</h2>
<p>No changes in participating hosts</p>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_22703_full that come from known issues:</p>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@core_hotunplug@unbind-rebind:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@core_hotunplug@unbind-rebind.html">INCOMPLETE</a> ([i915#1373] / [i915#5441])</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_persistence@legacy-engines-mixed:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed.html">SKIP</a> ([fdo#109271] / [i915#1099])</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none-rrul@rcs0:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842]) +2 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@gem_exec_fair@basic-none-rrul@rcs0.html">FAIL</a> ([i915#2842])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@u-semaphore-user:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@gem_exec_schedule@u-semaphore-user.html">SKIP</a> ([fdo#109271]) +55 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_huc_copy@huc-copy:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl4/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@gem_huc_copy@huc-copy.html">SKIP</a> ([fdo#109271] / [i915#2190])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-multi:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl8/igt@gem_lmem_swapping@heavy-verify-multi.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@heavy-verify-random:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@gem_lmem_swapping@heavy-verify-random.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@parallel-random-engines:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk6/igt@gem_lmem_swapping@parallel-random-engines.html">SKIP</a> ([fdo#109271] / [i915#4613])</li>
</ul>
</li>
<li>
<p>igt@gem_pipe_control_store_loop@reused-buffer:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@gem_pipe_control_store_loop@reused-buffer.html">INCOMPLETE</a> ([i915#5441])</li>
</ul>
</li>
<li>
<p>igt@gem_ppgtt@blt-vs-render-ctx0:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb5/igt@gem_ppgtt@blt-vs-render-ctx0.html">DMESG-FAIL</a> ([i915#5441])</li>
</ul>
</li>
<li>
<p>igt@gem_pread@exhaustion:</p>
<ul>
<li>
<p>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl9/igt@gem_pread@exhaustion.html">WARN</a> ([i915#2658])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb5/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-yf-tiled.html">SKIP</a> ([i915#768])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_blits@basic:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl7/igt@gem_tiled_blits@basic.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@gem_tiled_blits@basic.html">INCOMPLETE</a> ([i915#1982] / [i915#5441])</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@writes:</p>
<ul>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb1/igt@gem_tiled_partial_pwrite_pread@writes.html">INCOMPLETE</a> ([i915#5441]) +2 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@gem_tiled_partial_pwrite_pread@writes.html">INCOMPLETE</a> ([i915#5441]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@dmabuf-sync:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@gem_userptr_blits@dmabuf-sync.html">SKIP</a> ([fdo#109271] / [i915#3323])</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@input-checking:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl1/igt@gem_userptr_blits@input-checking.html">DMESG-WARN</a> ([i915#4991])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@invalid-mmap-offset-unsync:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@gem_userptr_blits@invalid-mmap-offset-unsync.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@unsync-overlap:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@gem_userptr_blits@unsync-overlap.html">SKIP</a> ([i915#3297])</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@vma-merge:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@gem_userptr_blits@vma-merge.html">FAIL</a> ([i915#3318])</li>
</ul>
</li>
<li>
<p>igt@gem_workarounds@suspend-resume:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@gem_workarounds@suspend-resume.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@cmd-crossing-page:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@gen7_exec_parse@cmd-crossing-page.html">SKIP</a> ([fdo#109289])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@gen9_exec_parse@allowed-all.html">DMESG-WARN</a> ([i915#1436] / [i915#716])</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@bb-start-far:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@gen9_exec_parse@bb-start-far.html">SKIP</a> ([i915#2856])</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP</a> ([fdo#109271] / [i915#1937])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-8bpp-rotate-90:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_big_fb@4-tiled-8bpp-rotate-90.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([i915#5286])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-0.html">INCOMPLETE</a> ([i915#5441]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-16bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl7/igt@kms_big_fb@x-tiled-16bpp-rotate-180.html">INCOMPLETE</a> ([i915#1373] / [i915#5441])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb3/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb2/igt@kms_big_fb@x-tiled-64bpp-rotate-180.html">INCOMPLETE</a> ([i915#2828] / [i915#5441])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl1/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html">INCOMPLETE</a> ([i915#5441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-16bpp-rotate-0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk8/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk6/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html">INCOMPLETE</a> ([i915#5441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-64bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_big_fb@y-tiled-64bpp-rotate-180.html">INCOMPLETE</a> ([i915#5441]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-8bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl4/igt@kms_big_fb@y-tiled-8bpp-rotate-180.html">INCOMPLETE</a> ([i915#5441])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +4 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html">SKIP</a> ([fdo#109271] / [i915#3777]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl7/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180.html">INCOMPLETE</a> ([i915#5441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-iclb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-iclb7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb4/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0.html">INCOMPLETE</a> ([i915#5441]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180.html">SKIP</a> ([fdo#111615])</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html">INCOMPLETE</a> ([i915#5441]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl1/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> ([fdo#109271]) +110 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_ccs@pipe-a-missing-ccs-buffer-yf_tiled_ccs.html">SKIP</a> ([fdo#111615] / [i915#3689])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>
<p>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +4 similar issues</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl3/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html">SKIP</a> ([fdo#109271] / [i915#3886]) +5 similar issues</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html">SKIP</a> ([i915#3689] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109278] / [i915#3886])</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> ([fdo#109271] / [i915#3886]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@dp-mode-timings:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +5 similar issues</p>
</li>
<li>
<p>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_chamelium@dp-mode-timings.html">SKIP</a> ([fdo#109284] / [fdo#111827])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-hpd-enable-disable-mode:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_chamelium@hdmi-hpd-enable-disable-mode.html">SKIP</a> ([fdo#109284] / [fdo#111827])</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@hdmi-mode-timings:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-snb7/igt@kms_chamelium@hdmi-mode-timings.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium@vga-hpd-for-each-pipe:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl4/igt@kms_chamelium@vga-hpd-for-each-pipe.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +6 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-0-25:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_color@pipe-d-ctm-0-25.html">SKIP</a> ([fdo#109278] / [i915#1149]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_color@pipe-d-ctm-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@kms_color@pipe-d-ctm-max.html">SKIP</a> ([fdo#109271]) +78 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_color_chamelium@pipe-a-degamma:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_color_chamelium@pipe-a-degamma.html">SKIP</a> ([fdo#109271] / [fdo#111827]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_content_protection@atomic.html">TIMEOUT</a> ([i915#1319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_cursor_crc@pipe-a-cursor-32x32-onscreen.html">SKIP</a> ([i915#3319])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-offscreen.html">SKIP</a> ([fdo#109278] / [fdo#109279])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html">SKIP</a> ([fdo#109279] / [i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-128x128-offscreen.html">SKIP</a> ([fdo#109278]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@pipe-d-cursor-32x10-random:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_cursor_crc@pipe-d-cursor-32x10-random.html">SKIP</a> ([i915#3359])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html">SKIP</a> ([fdo#109274] / [fdo#109278])</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-single-bo:</p>
<ul>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk4/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl2/igt@kms_cursor_legacy@pipe-d-single-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@pipe-d-torture-bo:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@kms_cursor_legacy@pipe-d-torture-bo.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-cpu-4tiled.html">SKIP</a> ([i915#5287])</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html">SKIP</a> ([fdo#109274] / [fdo#111825]) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-blocking-wf-vblank:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_flip@2x-flip-vs-blocking-wf-vblank.html">SKIP</a> ([fdo#109274])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-downscaling.html">SKIP</a> ([i915#2587])</li>
</ul>
</li>
<li>
<p>igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html">FAIL</a> ([i915#4911])</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> ([fdo#109280]) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-suspend:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html">DMESG-WARN</a> ([i915#180]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-onoff.html">SKIP</a> ([fdo#109280] / [fdo#111825]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear.html">SKIP</a> ([fdo#109271]) +50 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-render.html">SKIP</a> ([fdo#109271]) +58 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_crc_basic@read-crc-pipe-d:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@kms_pipe_crc_basic@read-crc-pipe-d.html">SKIP</a> ([fdo#109271] / [i915#533])</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:</p>
<ul>
<li>shard-apl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-apl3/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html">DMESG-WARN</a> ([i915#180])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-7efc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl7/igt@kms_plane_alpha_blend@pipe-b-alpha-7efc.html">FAIL</a> ([fdo#108145] / [i915#265]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html">FAIL</a> ([i915#265])</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl8/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-max.html">FAIL</a> ([fdo#108145] / [i915#265]) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@plane-move-sf-dmg-area:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_psr2_sf@plane-move-sf-dmg-area.html">SKIP</a> ([i915#2920])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html">SKIP</a> ([fdo#109271] / [i915#658])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-p010:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb2/igt@kms_psr2_su@page_flip-p010.html">FAIL</a> ([i915#4148])</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_su@page_flip-xrgb8888:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl4/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658]) +2 similar issues</p>
</li>
<li>
<p>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@kms_psr2_su@page_flip-xrgb8888.html">SKIP</a> ([fdo#109271] / [i915#658]) +1 similar issue</p>
</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_cpu:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb5/igt@kms_psr@psr2_cursor_mmap_cpu.html">SKIP</a> ([fdo#109441]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_suspend:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@kms_psr@psr2_suspend.html">FAIL</a> ([i915#132] / [i915#3467])</li>
</ul>
</li>
<li>
<p>igt@kms_setmode@invalid-clone-exclusive-crtc:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@kms_setmode@invalid-clone-exclusive-crtc.html">SKIP</a> ([i915#3555])</li>
</ul>
</li>
<li>
<p>igt@kms_vrr@flip-dpms:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb5/igt@kms_vrr@flip-dpms.html">SKIP</a> ([fdo#109502])</li>
</ul>
</li>
<li>
<p>igt@kms_writeback@writeback-invalid-parameters:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl4/igt@kms_writeback@writeback-invalid-parameters.html">SKIP</a> ([fdo#109271] / [i915#2437]) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@nouveau_crc@pipe-b-ctx-flip-detection:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb6/igt@nouveau_crc@pipe-b-ctx-flip-detection.html">SKIP</a> ([i915#2530])</li>
</ul>
</li>
<li>
<p>igt@perf@polling-parameterized:</p>
<ul>
<li>shard-skl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl8/igt@perf@polling-parameterized.html">FAIL</a> ([i915#1542])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_api@i915_nv_double_import:</p>
<ul>
<li>shard-iclb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-iclb6/igt@prime_nv_api@i915_nv_double_import.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@prime_nv_pcopy@test2:</p>
<ul>
<li>shard-tglb:         NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb1/igt@prime_nv_pcopy@test2.html">SKIP</a> ([fdo#109291])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@invalid-transfer-non-existent-point:</p>
<ul>
<li>shard-kbl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl3/igt@syncobj_timeline@invalid-transfer-non-existent-point.html">DMESG-WARN</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@syncobj_timeline@transfer-timeline-point:</p>
<ul>
<li>shard-glk:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk5/igt@syncobj_timeline@transfer-timeline-point.html">DMESG-FAIL</a> ([i915#5098])</li>
</ul>
</li>
<li>
<p>igt@sysfs_clients@busy:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-apl1/igt@sysfs_clients@busy.html">SKIP</a> ([fdo#109271] / [i915#2994])</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_eio@in-flight-contexts-immediate:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html">TIMEOUT</a> ([i915#3063]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb2/igt@gem_eio@in-flight-contexts-immediate.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-kbl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-kbl4/igt@gem_exec_fair@basic-deadline.html">FAIL</a> ([i915#2846]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-kbl1/igt@gem_exec_fair@basic-deadline.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>shard-tglb:         <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk6/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> ([i915#2842]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk1/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@yf-tiled@smem:</p>
<ul>
<li>shard-skl:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-skl4/igt@gem_render_copy@yf-tiled@smem.html">INCOMPLETE</a> ([i915#5441]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-skl10/igt@gem_render_copy@yf-tiled@smem.html">PASS</a> +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@allocator-evict-all-engines:</p>
<ul>
<li>shard-glk:          <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11415/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html">FAIL</a> ([i915#4171]) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22703/shard-glk2/igt@gem_softpi">PASS</a></li>
</ul>
</li>
</ul>

</body>
</html>

--===============4341548760946024094==--
