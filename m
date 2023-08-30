Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BF878D11F
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 02:26:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1607C10E0CE;
	Wed, 30 Aug 2023 00:26:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 2F19710E0CE;
 Wed, 30 Aug 2023 00:26:10 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 1C378AADF1;
 Wed, 30 Aug 2023 00:26:10 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============3361012466948281869=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Swati Sharma" <swati2.sharma@intel.com>
Date: Wed, 30 Aug 2023 00:26:10 -0000
Message-ID: <169335517007.15232.12021223054946179571@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230829135945.1201574-1-swati2.sharma@intel.com>
In-Reply-To: <20230829135945.1201574-1-swati2.sharma@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_support_for_new_DG2-G12_revid_0x1?=
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

--===============3361012466948281869==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/dg2: Add support for new DG2-G12 revid 0x1
URL   : https://patchwork.freedesktop.org/series/123014/
State : failure

== Summary ==

CI Bug Log - changes from CI_DRM_13573_full -> Patchwork_123014v1_full
====================================================

Summary
-------

  **FAILURE**

  Serious unknown changes coming with Patchwork_123014v1_full absolutely need to be
  verified manually.
  
  If you think the reported changes have nothing to do with the changes
  introduced in Patchwork_123014v1_full, please notify your bug team to allow them
  to document this new failure mode, which will reduce false positives in CI.

  

Participating hosts (9 -> 9)
------------------------------

  No changes in participating hosts

Possible new issues
-------------------

  Here are the unknown changes that may have been introduced in Patchwork_123014v1_full:

### IGT changes ###

#### Possible regressions ####

  * igt@kms_vblank@pipe-a-ts-continuation-suspend:
    - shard-rkl:          NOTRUN -> [INCOMPLETE][1]
   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-continuation-suspend.html

  
Known issues
------------

  Here are the changes found in Patchwork_123014v1_full that come from known issues:

### CI changes ###

#### Possible fixes ####

  * boot:
    - shard-dg2:          ([PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [FAIL][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24]) -> ([PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45])
   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-10/boot.html
   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-10/boot.html
   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11/boot.html
   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11/boot.html
   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11/boot.html
   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11/boot.html
   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/boot.html
   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/boot.html
   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/boot.html
   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-1/boot.html
   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-1/boot.html
   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-2/boot.html
   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-2/boot.html
   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-2/boot.html
   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-3/boot.html
   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-3/boot.html
   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-5/boot.html
   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-5/boot.html
   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-6/boot.html
   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-6/boot.html
   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-6/boot.html
   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-8/boot.html
   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-8/boot.html
   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-10/boot.html
   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-10/boot.html
   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-11/boot.html
   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-11/boot.html
   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-11/boot.html
   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/boot.html
   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/boot.html
   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/boot.html
   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-1/boot.html
   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-1/boot.html
   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/boot.html
   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/boot.html
   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/boot.html
   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-5/boot.html
   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-5/boot.html
   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-5/boot.html
   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/boot.html
   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/boot.html
   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/boot.html
   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/boot.html
   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/boot.html

  

### IGT changes ###

#### Issues hit ####

  * igt@device_reset@cold-reset-bound:
    - shard-rkl:          NOTRUN -> [SKIP][46] ([i915#7701])
   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@device_reset@cold-reset-bound.html

  * igt@device_reset@unbind-reset-rebind:
    - shard-dg1:          NOTRUN -> [ABORT][47] ([i915#4983] / [i915#7461])
   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-16/igt@device_reset@unbind-reset-rebind.html

  * igt@drm_fdinfo@virtual-busy-all:
    - shard-dg2:          NOTRUN -> [SKIP][48] ([i915#8414])
   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-all.html

  * igt@dumb_buffer@create-clear:
    - shard-snb:          [PASS][49] -> [ABORT][50] ([i915#8878])
   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-snb5/igt@dumb_buffer@create-clear.html
   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-snb2/igt@dumb_buffer@create-clear.html

  * igt@gem_bad_reloc@negative-reloc-lut:
    - shard-rkl:          NOTRUN -> [SKIP][51] ([i915#3281])
   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_bad_reloc@negative-reloc-lut.html

  * igt@gem_busy@semaphore:
    - shard-dg2:          NOTRUN -> [SKIP][52] ([i915#3936])
   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_busy@semaphore.html

  * igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:
    - shard-dg2:          [PASS][53] -> [INCOMPLETE][54] ([i915#6311] / [i915#7297])
   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-8/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html
   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-10/igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0.html

  * igt@gem_ctx_exec@basic-nohangcheck:
    - shard-rkl:          [PASS][55] -> [FAIL][56] ([i915#6268])
   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html
   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html

  * igt@gem_exec_balancer@parallel-balancer:
    - shard-rkl:          NOTRUN -> [SKIP][57] ([i915#4525])
   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_exec_balancer@parallel-balancer.html

  * igt@gem_exec_balancer@sliced:
    - shard-dg2:          NOTRUN -> [SKIP][58] ([i915#4812])
   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_exec_balancer@sliced.html

  * igt@gem_exec_fair@basic-deadline:
    - shard-glk:          [PASS][59] -> [FAIL][60] ([i915#2846])
   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-glk2/igt@gem_exec_fair@basic-deadline.html
   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-glk7/igt@gem_exec_fair@basic-deadline.html

  * igt@gem_exec_fair@basic-none@bcs0:
    - shard-rkl:          [PASS][61] -> [FAIL][62] ([i915#2842]) +1 similar issue
   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html
   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html

  * igt@gem_exec_fair@basic-pace-share@rcs0:
    - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2842])
   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html
    - shard-tglu:         [PASS][65] -> [FAIL][66] ([i915#2842])
   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html
   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html

  * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
    - shard-rkl:          NOTRUN -> [SKIP][67] ([fdo#109313])
   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html

  * igt@gem_exec_flush@basic-batch-kernel-default-uc:
    - shard-mtlp:         [PASS][68] -> [DMESG-FAIL][69] ([i915#8962] / [i915#9121])
   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-8/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-default-uc.html

  * igt@gem_exec_flush@basic-wb-rw-default:
    - shard-dg2:          NOTRUN -> [SKIP][70] ([i915#3539] / [i915#4852]) +1 similar issue
   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw-default.html

  * igt@gem_exec_reloc@basic-wc-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][71] ([i915#3281]) +3 similar issues
   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_exec_reloc@basic-wc-cpu.html

  * igt@gem_exec_schedule@reorder-wide:
    - shard-dg2:          NOTRUN -> [SKIP][72] ([i915#4537] / [i915#4812])
   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_exec_schedule@reorder-wide.html

  * igt@gem_exec_suspend@basic-s4-devices@lmem0:
    - shard-dg2:          NOTRUN -> [ABORT][73] ([i915#7975] / [i915#8213])
   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-devices@lmem0.html

  * igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:
    - shard-dg2:          NOTRUN -> [SKIP][74] ([i915#4860])
   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_fenced_exec_thrash@no-spare-fences-interruptible.html

  * igt@gem_lmem_evict@dontneed-evict-race:
    - shard-apl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#4613])
   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@gem_lmem_evict@dontneed-evict-race.html
    - shard-mtlp:         NOTRUN -> [SKIP][76] ([i915#4613])
   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@gem_lmem_evict@dontneed-evict-race.html

  * igt@gem_partial_pwrite_pread@write-uncached:
    - shard-dg2:          NOTRUN -> [SKIP][77] ([i915#3282])
   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_partial_pwrite_pread@write-uncached.html

  * igt@gem_pxp@display-protected-crc:
    - shard-dg2:          NOTRUN -> [SKIP][78] ([i915#4270]) +1 similar issue
   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_pxp@display-protected-crc.html

  * igt@gem_render_copy@y-tiled-ccs-to-x-tiled:
    - shard-mtlp:         NOTRUN -> [SKIP][79] ([i915#8428]) +1 similar issue
   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-3/igt@gem_render_copy@y-tiled-ccs-to-x-tiled.html

  * igt@gem_softpin@evict-snoop:
    - shard-rkl:          NOTRUN -> [SKIP][80] ([fdo#109312])
   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_softpin@evict-snoop.html

  * igt@gem_tiled_partial_pwrite_pread@reads:
    - shard-rkl:          NOTRUN -> [SKIP][81] ([i915#3282])
   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_pread@reads.html

  * igt@gem_tiled_swapping@non-threaded:
    - shard-dg2:          NOTRUN -> [SKIP][82] ([i915#4077]) +7 similar issues
   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_tiled_swapping@non-threaded.html

  * igt@gem_userptr_blits@readonly-pwrite-unsync:
    - shard-dg2:          NOTRUN -> [SKIP][83] ([i915#3297]) +1 similar issue
   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_userptr_blits@readonly-pwrite-unsync.html

  * igt@gen7_exec_parse@batch-without-end:
    - shard-rkl:          NOTRUN -> [SKIP][84] ([fdo#109289])
   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gen7_exec_parse@batch-without-end.html

  * igt@gen9_exec_parse@allowed-all:
    - shard-dg2:          NOTRUN -> [SKIP][85] ([i915#2856]) +1 similar issue
   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gen9_exec_parse@allowed-all.html

  * igt@gen9_exec_parse@basic-rejected:
    - shard-mtlp:         NOTRUN -> [SKIP][86] ([i915#2856])
   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-3/igt@gen9_exec_parse@basic-rejected.html

  * igt@gen9_exec_parse@basic-rejected-ctx-param:
    - shard-snb:          NOTRUN -> [SKIP][87] ([fdo#109271]) +121 similar issues
   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-snb4/igt@gen9_exec_parse@basic-rejected-ctx-param.html

  * igt@i915_module_load@load:
    - shard-snb:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#6227])
   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-snb4/igt@i915_module_load@load.html

  * igt@i915_module_load@reload-with-fault-injection:
    - shard-mtlp:         [PASS][89] -> [ABORT][90] ([i915#8489] / [i915#8668])
   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection.html
   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html

  * igt@i915_module_load@resize-bar:
    - shard-mtlp:         NOTRUN -> [SKIP][91] ([i915#6412])
   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@i915_module_load@resize-bar.html

  * igt@i915_pm_backlight@bad-brightness:
    - shard-dg2:          NOTRUN -> [SKIP][92] ([i915#5354] / [i915#7561])
   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@i915_pm_backlight@bad-brightness.html

  * igt@i915_pm_backlight@fade-with-dpms:
    - shard-rkl:          NOTRUN -> [SKIP][93] ([i915#7561])
   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@i915_pm_backlight@fade-with-dpms.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
    - shard-dg1:          [PASS][94] -> [SKIP][95] ([i915#1937])
   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html
   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-13/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html

  * igt@i915_pm_rpm@dpms-lpsp:
    - shard-dg2:          [PASS][96] -> [SKIP][97] ([i915#1397])
   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/igt@i915_pm_rpm@dpms-lpsp.html
   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@i915_pm_rpm@dpms-lpsp.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-rkl:          [PASS][98] -> [SKIP][99] ([i915#1397])
   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@dpms-non-lpsp:
    - shard-dg1:          [PASS][100] -> [SKIP][101] ([i915#1397]) +1 similar issue
   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg1-16/igt@i915_pm_rpm@dpms-non-lpsp.html
   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html

  * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
    - shard-rkl:          NOTRUN -> [SKIP][102] ([i915#1397])
   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html

  * igt@i915_pm_rps@min-max-config-idle:
    - shard-mtlp:         NOTRUN -> [SKIP][103] ([i915#6621])
   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@i915_pm_rps@min-max-config-idle.html

  * igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs:
    - shard-dg1:          NOTRUN -> [SKIP][104] ([i915#8502]) +7 similar issues
   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-19/igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs.html

  * igt@kms_async_flips@crc@pipe-a-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [FAIL][105] ([i915#8247]) +3 similar issues
   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-a-hdmi-a-2.html

  * igt@kms_async_flips@crc@pipe-b-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [FAIL][106] ([i915#8247]) +3 similar issues
   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-b-hdmi-a-3.html

  * igt@kms_big_fb@4-tiled-16bpp-rotate-90:
    - shard-dg2:          NOTRUN -> [SKIP][107] ([fdo#111614]) +2 similar issues
   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-rotate-90.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
    - shard-rkl:          NOTRUN -> [SKIP][108] ([i915#5286])
   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html

  * igt@kms_big_fb@x-tiled-64bpp-rotate-90:
    - shard-rkl:          NOTRUN -> [SKIP][109] ([fdo#111614] / [i915#3638])
   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-rotate-90.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         [PASS][110] -> [FAIL][111] ([i915#3743]) +1 similar issue
   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
    - shard-mtlp:         NOTRUN -> [FAIL][112] ([i915#3743])
   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][113] ([i915#5190]) +5 similar issues
   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
    - shard-dg2:          NOTRUN -> [SKIP][114] ([i915#4538] / [i915#5190]) +1 similar issue
   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html

  * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:
    - shard-mtlp:         NOTRUN -> [SKIP][115] ([fdo#111615])
   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180.html

  * igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-apl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#3886]) +1 similar issue
   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc:
    - shard-rkl:          NOTRUN -> [SKIP][117] ([i915#5354] / [i915#6095]) +3 similar issues
   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc.html

  * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][118] ([i915#3734] / [i915#5354] / [i915#6095])
   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html

  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
    - shard-dg2:          NOTRUN -> [SKIP][119] ([i915#3689] / [i915#3886] / [i915#5354]) +5 similar issues
   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html

  * igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][120] ([i915#3689] / [i915#5354]) +5 similar issues
   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs.html

  * igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:
    - shard-rkl:          NOTRUN -> [SKIP][121] ([i915#5354]) +3 similar issues
   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs.html

  * igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs:
    - shard-dg2:          NOTRUN -> [SKIP][122] ([i915#5354]) +14 similar issues
   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs.html

  * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs:
    - shard-mtlp:         NOTRUN -> [SKIP][123] ([i915#6095]) +2 similar issues
   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs.html

  * igt@kms_cdclk@mode-transition@pipe-d-dp-4:
    - shard-dg2:          NOTRUN -> [SKIP][124] ([i915#4087] / [i915#7213]) +3 similar issues
   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-11/igt@kms_cdclk@mode-transition@pipe-d-dp-4.html

  * igt@kms_chamelium_edid@dp-mode-timings:
    - shard-dg2:          NOTRUN -> [SKIP][125] ([i915#7828]) +5 similar issues
   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_chamelium_edid@dp-mode-timings.html

  * igt@kms_chamelium_hpd@common-hpd-after-suspend:
    - shard-rkl:          NOTRUN -> [SKIP][126] ([i915#7828])
   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_chamelium_hpd@common-hpd-after-suspend.html

  * igt@kms_color@deep-color:
    - shard-rkl:          NOTRUN -> [SKIP][127] ([i915#3555])
   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_color@deep-color.html

  * igt@kms_content_protection@atomic:
    - shard-rkl:          NOTRUN -> [SKIP][128] ([i915#7118])
   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_content_protection@atomic.html

  * igt@kms_content_protection@dp-mst-type-1:
    - shard-dg2:          NOTRUN -> [SKIP][129] ([i915#3299])
   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_content_protection@dp-mst-type-1.html

  * igt@kms_content_protection@mei_interface:
    - shard-mtlp:         NOTRUN -> [SKIP][130] ([i915#8063])
   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_content_protection@mei_interface.html

  * igt@kms_content_protection@srm@pipe-a-dp-2:
    - shard-dg2:          NOTRUN -> [TIMEOUT][131] ([i915#7173]) +1 similar issue
   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/igt@kms_content_protection@srm@pipe-a-dp-2.html

  * igt@kms_content_protection@uevent:
    - shard-dg2:          NOTRUN -> [SKIP][132] ([i915#7118]) +1 similar issue
   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@kms_content_protection@uevent.html

  * igt@kms_cursor_crc@cursor-offscreen-512x512:
    - shard-dg2:          NOTRUN -> [SKIP][133] ([i915#3359])
   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_cursor_crc@cursor-offscreen-512x512.html

  * igt@kms_cursor_crc@cursor-sliding-512x512:
    - shard-rkl:          NOTRUN -> [SKIP][134] ([i915#3359])
   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_cursor_crc@cursor-sliding-512x512.html

  * igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:
    - shard-dg2:          NOTRUN -> [SKIP][135] ([fdo#109274] / [i915#5354]) +1 similar issue
   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-apl:          [PASS][136] -> [FAIL][137] ([i915#2346])
   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
    - shard-dg2:          NOTRUN -> [SKIP][138] ([i915#4103] / [i915#4213])
   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle.html

  * igt@kms_dither@fb-8bpc-vs-panel-8bpc:
    - shard-dg2:          NOTRUN -> [SKIP][139] ([i915#3555]) +2 similar issues
   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-panel-8bpc.html

  * igt@kms_fence_pin_leak:
    - shard-dg2:          NOTRUN -> [SKIP][140] ([i915#4881])
   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_fence_pin_leak.html

  * igt@kms_flip@2x-dpms-vs-vblank-race:
    - shard-dg2:          NOTRUN -> [SKIP][141] ([fdo#109274])
   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_flip@2x-dpms-vs-vblank-race.html

  * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
    - shard-rkl:          NOTRUN -> [SKIP][142] ([fdo#111825]) +1 similar issue
   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html

  * igt@kms_flip@flip-vs-suspend@b-hdmi-a1:
    - shard-snb:          NOTRUN -> [DMESG-WARN][143] ([i915#8841]) +5 similar issues
   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-snb1/igt@kms_flip@flip-vs-suspend@b-hdmi-a1.html

  * igt@kms_flip@plain-flip-ts-check@a-vga1:
    - shard-snb:          [PASS][144] -> [ABORT][145] ([i915#8865])
   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-snb5/igt@kms_flip@plain-flip-ts-check@a-vga1.html
   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-snb7/igt@kms_flip@plain-flip-ts-check@a-vga1.html

  * igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:
    - shard-dg2:          NOTRUN -> [FAIL][146] ([i915#6880])
   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt.html

  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:
    - shard-mtlp:         [PASS][147] -> [DMESG-WARN][148] ([i915#1982])
   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html
   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:
    - shard-dg2:          NOTRUN -> [SKIP][149] ([i915#8708]) +6 similar issues
   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc.html

  * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:
    - shard-dg1:          NOTRUN -> [SKIP][150] ([i915#8708])
   [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-16/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
    - shard-mtlp:         NOTRUN -> [SKIP][151] ([i915#8708])
   [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:
    - shard-rkl:          NOTRUN -> [SKIP][152] ([fdo#111825] / [i915#1825]) +6 similar issues
   [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:
    - shard-mtlp:         NOTRUN -> [SKIP][153] ([i915#1825])
   [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html

  * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:
    - shard-dg2:          NOTRUN -> [SKIP][154] ([i915#3458]) +3 similar issues
   [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu.html

  * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
    - shard-rkl:          NOTRUN -> [SKIP][155] ([i915#3023]) +4 similar issues
   [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html

  * igt@kms_hdr@invalid-metadata-sizes:
    - shard-rkl:          NOTRUN -> [SKIP][156] ([i915#3555] / [i915#8228]) +1 similar issue
   [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-sizes.html

  * igt@kms_panel_fitting@legacy:
    - shard-dg2:          NOTRUN -> [SKIP][157] ([i915#6301])
   [157]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_panel_fitting@legacy.html

  * igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:
    - shard-dg2:          NOTRUN -> [SKIP][158] ([fdo#109289]) +1 similar issue
   [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c.html

  * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
    - shard-dg2:          [PASS][159] -> [FAIL][160] ([fdo#103375])
   [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
   [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-11/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html

  * igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:
    - shard-apl:          NOTRUN -> [FAIL][161] ([i915#4573]) +1 similar issue
   [161]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1.html

  * igt@kms_plane_scaling@intel-max-src-size:
    - shard-dg2:          NOTRUN -> [SKIP][162] ([i915#6953])
   [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@kms_plane_scaling@intel-max-src-size.html

  * igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [FAIL][163] ([i915#8292])
   [163]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-7/igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][164] ([i915#5176]) +11 similar issues
   [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2.html

  * igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1:
    - shard-dg1:          NOTRUN -> [SKIP][165] ([i915#5176]) +19 similar issues
   [165]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-19/igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][166] ([i915#5176]) +3 similar issues
   [166]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-7/igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1:
    - shard-rkl:          NOTRUN -> [SKIP][167] ([i915#5235]) +3 similar issues
   [167]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:
    - shard-dg2:          NOTRUN -> [SKIP][168] ([i915#5235]) +23 similar issues
   [168]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2.html

  * igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:
    - shard-dg1:          NOTRUN -> [SKIP][169] ([i915#5235]) +3 similar issues
   [169]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-13/igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3.html

  * igt@kms_prime@basic-modeset-hybrid:
    - shard-mtlp:         NOTRUN -> [SKIP][170] ([i915#6524])
   [170]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_prime@basic-modeset-hybrid.html

  * igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
    - shard-apl:          NOTRUN -> [SKIP][171] ([fdo#109271] / [i915#658])
   [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html

  * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:
    - shard-rkl:          NOTRUN -> [SKIP][172] ([i915#658])
   [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb.html

  * igt@kms_psr@cursor_mmap_cpu:
    - shard-rkl:          NOTRUN -> [SKIP][173] ([i915#1072]) +1 similar issue
   [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.html

  * igt@kms_psr@psr2_cursor_mmap_gtt:
    - shard-dg2:          NOTRUN -> [SKIP][174] ([i915#1072]) +3 similar issues
   [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_psr@psr2_cursor_mmap_gtt.html

  * igt@kms_rotation_crc@sprite-rotation-270:
    - shard-dg2:          NOTRUN -> [SKIP][175] ([i915#4235])
   [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_rotation_crc@sprite-rotation-270.html

  * igt@kms_selftest@drm_plane:
    - shard-rkl:          NOTRUN -> [SKIP][176] ([i915#8661])
   [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_selftest@drm_plane.html

  * igt@kms_sysfs_edid_timing:
    - shard-dg2:          [PASS][177] -> [FAIL][178] ([IGT#2])
   [177]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/igt@kms_sysfs_edid_timing.html
   [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@kms_sysfs_edid_timing.html

  * igt@kms_tiled_display@basic-test-pattern-with-chamelium:
    - shard-mtlp:         NOTRUN -> [SKIP][179] ([i915#8623])
   [179]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_tiled_display@basic-test-pattern-with-chamelium.html

  * igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:
    - shard-apl:          NOTRUN -> [SKIP][180] ([fdo#109271]) +28 similar issues
   [180]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_universal_plane@disable-primary-vs-flip-pipe-d.html

  * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
    - shard-dg2:          [PASS][181] -> [INCOMPLETE][182] ([i915#7838])
   [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
   [182]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html

  * igt@kms_vblank@pipe-c-wait-forked-busy:
    - shard-rkl:          NOTRUN -> [SKIP][183] ([i915#4070] / [i915#6768]) +1 similar issue
   [183]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_vblank@pipe-c-wait-forked-busy.html

  * igt@kms_vblank@pipe-d-wait-idle-hang:
    - shard-rkl:          NOTRUN -> [SKIP][184] ([i915#4070] / [i915#533] / [i915#6768])
   [184]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_vblank@pipe-d-wait-idle-hang.html

  * igt@perf@gen8-unprivileged-single-ctx-counters:
    - shard-dg2:          NOTRUN -> [SKIP][185] ([i915#2436])
   [185]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@perf@gen8-unprivileged-single-ctx-counters.html

  * igt@perf@global-sseu-config-invalid:
    - shard-dg2:          NOTRUN -> [SKIP][186] ([i915#7387])
   [186]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@perf@global-sseu-config-invalid.html

  * igt@perf@non-zero-reason@0-rcs0:
    - shard-dg2:          [PASS][187] -> [FAIL][188] ([i915#7484])
   [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html
   [188]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/igt@perf@non-zero-reason@0-rcs0.html

  * igt@prime_vgem@basic-fence-flip:
    - shard-dg2:          NOTRUN -> [SKIP][189] ([i915#3708])
   [189]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@prime_vgem@basic-fence-flip.html

  * igt@v3d/v3d_get_param@base-params:
    - shard-mtlp:         NOTRUN -> [SKIP][190] ([i915#2575])
   [190]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@v3d/v3d_get_param@base-params.html

  * igt@v3d/v3d_perfmon@create-perfmon-exceed:
    - shard-dg2:          NOTRUN -> [SKIP][191] ([i915#2575]) +3 similar issues
   [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@v3d/v3d_perfmon@create-perfmon-exceed.html

  * igt@v3d/v3d_submit_cl@bad-in-sync:
    - shard-rkl:          NOTRUN -> [SKIP][192] ([fdo#109315]) +1 similar issue
   [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@v3d/v3d_submit_cl@bad-in-sync.html

  * igt@vc4/vc4_perfmon@create-perfmon-0:
    - shard-rkl:          NOTRUN -> [SKIP][193] ([i915#7711]) +1 similar issue
   [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@vc4/vc4_perfmon@create-perfmon-0.html

  * igt@vc4/vc4_purgeable_bo@mark-willneed:
    - shard-dg2:          NOTRUN -> [SKIP][194] ([i915#7711]) +1 similar issue
   [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@vc4/vc4_purgeable_bo@mark-willneed.html

  
#### Possible fixes ####

  * igt@gem_ctx_isolation@preservation-s3@bcs0:
    - shard-dg2:          [FAIL][195] ([fdo#103375]) -> [PASS][196] +1 similar issue
   [195]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html
   [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3@bcs0.html

  * igt@gem_ctx_isolation@preservation-s3@vcs1:
    - shard-dg2:          [INCOMPLETE][197] ([i915#9162]) -> [PASS][198]
   [197]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@vcs1.html
   [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3@vcs1.html

  * igt@gem_eio@kms:
    - shard-dg1:          [FAIL][199] ([i915#5784]) -> [PASS][200]
   [199]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg1-12/igt@gem_eio@kms.html
   [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-12/igt@gem_eio@kms.html

  * igt@gem_exec_capture@pi@ccs0:
    - shard-mtlp:         [FAIL][201] ([i915#7765]) -> [PASS][202]
   [201]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-5/igt@gem_exec_capture@pi@ccs0.html
   [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-5/igt@gem_exec_capture@pi@ccs0.html

  * igt@gem_exec_fair@basic-pace@rcs0:
    - shard-rkl:          [FAIL][203] ([i915#2842]) -> [PASS][204] +1 similar issue
   [203]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html
   [204]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html

  * igt@gem_exec_whisper@basic-fds-forked-all:
    - shard-snb:          [ABORT][205] ([i915#8865]) -> [PASS][206]
   [205]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-snb7/igt@gem_exec_whisper@basic-fds-forked-all.html
   [206]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-snb1/igt@gem_exec_whisper@basic-fds-forked-all.html

  * igt@gem_lmem_swapping@smem-oom@lmem0:
    - shard-dg2:          [DMESG-WARN][207] ([i915#4936] / [i915#5493]) -> [PASS][208]
   [207]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html
   [208]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/igt@gem_lmem_swapping@smem-oom@lmem0.html

  * igt@gen9_exec_parse@allowed-single:
    - shard-apl:          [ABORT][209] ([i915#5566]) -> [PASS][210]
   [209]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-apl4/igt@gen9_exec_parse@allowed-single.html
   [210]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@gen9_exec_parse@allowed-single.html

  * igt@i915_pipe_stress@stress-xrgb8888-untiled:
    - shard-mtlp:         [FAIL][211] ([i915#8691]) -> [PASS][212]
   [211]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-2/igt@i915_pipe_stress@stress-xrgb8888-untiled.html
   [212]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@i915_pipe_stress@stress-xrgb8888-untiled.html

  * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
    - shard-dg2:          [SKIP][213] ([i915#1937]) -> [PASS][214]
   [213]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
   [214]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html

  * igt@i915_pm_rc6_residency@rc6-idle@bcs0:
    - shard-dg1:          [FAIL][215] ([i915#3591]) -> [PASS][216]
   [215]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html
   [216]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html

  * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
    - shard-dg1:          [SKIP][217] ([i915#1397]) -> [PASS][218] +1 similar issue
   [217]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
   [218]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-13/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html

  * igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:
    - shard-dg2:          [SKIP][219] ([i915#1397]) -> [PASS][220]
   [219]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html
   [220]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.html

  * igt@i915_selftest@live@gt_heartbeat:
    - shard-apl:          [DMESG-FAIL][221] ([i915#5334]) -> [PASS][222]
   [221]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html
   [222]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html

  * igt@i915_selftest@live@workarounds:
    - shard-dg1:          [ABORT][223] ([i915#4983]) -> [PASS][224]
   [223]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg1-18/igt@i915_selftest@live@workarounds.html
   [224]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1-16/igt@i915_selftest@live@workarounds.html

  * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
    - shard-mtlp:         [FAIL][225] ([i915#3743]) -> [PASS][226] +2 similar issues
   [225]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
   [226]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html

  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:
    - shard-mtlp:         [DMESG-WARN][227] ([i915#1982]) -> [PASS][228]
   [227]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html
   [228]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0.html

  
#### Warnings ####

  * igt@i915_pm_rc6_residency@rc6-idle@vecs0:
    - shard-tglu:         [FAIL][229] ([i915#2681] / [i915#3591]) -> [WARN][230] ([i915#2681])
   [229]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html
   [230]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html

  * igt@i915_suspend@basic-s3-without-i915:
    - shard-rkl:          [INCOMPLETE][231] ([i915#4817]) -> [FAIL][232] ([fdo#103375])
   [231]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html
   [232]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html

  * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
    - shard-mtlp:         [DMESG-FAIL][233] ([i915#1982] / [i915#2017] / [i915#5954]) -> [FAIL][234] ([i915#2346])
   [233]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
   [234]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html

  * igt@kms_fbcon_fbt@psr:
    - shard-rkl:          [SKIP][235] ([i915#3955]) -> [SKIP][236] ([fdo#110189] / [i915#3955])
   [235]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-rkl-4/igt@kms_fbcon_fbt@psr.html
   [236]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-1/igt@kms_fbcon_fbt@psr.html

  * igt@kms_force_connector_basic@force-load-detect:
    - shard-rkl:          [SKIP][237] ([fdo#109285]) -> [SKIP][238] ([fdo#109285] / [i915#4098])
   [237]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.html
   [238]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-rkl-1/igt@kms_force_connector_basic@force-load-detect.html

  * igt@runner@aborted:
    - shard-snb:          [FAIL][239] ([i915#7812]) -> [FAIL][240] ([i915#7812] / [i915#8848])
   [239]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-snb1/igt@runner@aborted.html
   [240]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-snb7/igt@runner@aborted.html

  
  {name}: This element is suppressed. This means it is ignored when computing
          the status of the difference (SUCCESS, WARNING, or FAILURE).

  [IGT#2]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/2
  [fdo#103375]: https://bugs.freedesktop.org/show_bug.cgi?id=103375
  [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
  [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
  [fdo#109285]: https://bugs.freedesktop.org/show_bug.cgi?id=109285
  [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
  [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
  [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
  [fdo#109315]: https://bugs.freedesktop.org/show_bug.cgi?id=109315
  [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
  [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
  [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
  [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
  [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
  [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
  [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
  [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
  [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
  [i915#2017]: https://gitlab.freedesktop.org/drm/intel/issues/2017
  [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
  [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
  [i915#2575]: https://gitlab.freedesktop.org/drm/intel/issues/2575
  [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
  [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
  [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
  [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
  [i915#3023]: https://gitlab.freedesktop.org/drm/intel/issues/3023
  [i915#3281]: https://gitlab.freedesktop.org/drm/intel/issues/3281
  [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
  [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
  [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
  [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
  [i915#3458]: https://gitlab.freedesktop.org/drm/intel/issues/3458
  [i915#3539]: https://gitlab.freedesktop.org/drm/intel/issues/3539
  [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
  [i915#3591]: https://gitlab.freedesktop.org/drm/intel/issues/3591
  [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
  [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
  [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
  [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
  [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
  [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
  [i915#3936]: https://gitlab.freedesktop.org/drm/intel/issues/3936
  [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
  [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
  [i915#4077]: https://gitlab.freedesktop.org/drm/intel/issues/4077
  [i915#4087]: https://gitlab.freedesktop.org/drm/intel/issues/4087
  [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
  [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
  [i915#4213]: https://gitlab.freedesktop.org/drm/intel/issues/4213
  [i915#4235]: https://gitlab.freedesktop.org/drm/intel/issues/4235
  [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
  [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
  [i915#4537]: https://gitlab.freedesktop.org/drm/intel/issues/4537
  [i915#4538]: https://gitlab.freedesktop.org/drm/intel/issues/4538
  [i915#4573]: https://gitlab.freedesktop.org/drm/intel/issues/4573
  [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
  [i915#4812]: https://gitlab.freedesktop.org/drm/intel/issues/4812
  [i915#4817]: https://gitlab.freedesktop.org/drm/intel/issues/4817
  [i915#4852]: https://gitlab.freedesktop.org/drm/intel/issues/4852
  [i915#4860]: https://gitlab.freedesktop.org/drm/intel/issues/4860
  [i915#4881]: https://gitlab.freedesktop.org/drm/intel/issues/4881
  [i915#4936]: https://gitlab.freedesktop.org/drm/intel/issues/4936
  [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
  [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
  [i915#5190]: https://gitlab.freedesktop.org/drm/intel/issues/5190
  [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
  [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
  [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
  [i915#5334]: https://gitlab.freedesktop.org/drm/intel/issues/5334
  [i915#5354]: https://gitlab.freedesktop.org/drm/intel/issues/5354
  [i915#5493]: https://gitlab.freedesktop.org/drm/intel/issues/5493
  [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
  [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
  [i915#5954]: https://gitlab.freedesktop.org/drm/intel/issues/5954
  [i915#6095]: https://gitlab.freedesktop.org/drm/intel/issues/6095
  [i915#6227]: https://gitlab.freedesktop.org/drm/intel/issues/6227
  [i915#6268]: https://gitlab.freedesktop.org/drm/intel/issues/6268
  [i915#6301]: https://gitlab.freedesktop.org/drm/intel/issues/6301
  [i915#6311]: https://gitlab.freedesktop.org/drm/intel/issues/6311
  [i915#6412]: https://gitlab.freedesktop.org/drm/intel/issues/6412
  [i915#6524]: https://gitlab.freedesktop.org/drm/intel/issues/6524
  [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
  [i915#6621]: https://gitlab.freedesktop.org/drm/intel/issues/6621
  [i915#6768]: https://gitlab.freedesktop.org/drm/intel/issues/6768
  [i915#6880]: https://gitlab.freedesktop.org/drm/intel/issues/6880
  [i915#6953]: https://gitlab.freedesktop.org/drm/intel/issues/6953
  [i915#7118]: https://gitlab.freedesktop.org/drm/intel/issues/7118
  [i915#7173]: https://gitlab.freedesktop.org/drm/intel/issues/7173
  [i915#7213]: https://gitlab.freedesktop.org/drm/intel/issues/7213
  [i915#7297]: https://gitlab.freedesktop.org/drm/intel/issues/7297
  [i915#7387]: https://gitlab.freedesktop.org/drm/intel/issues/7387
  [i915#7461]: https://gitlab.freedesktop.org/drm/intel/issues/7461
  [i915#7484]: https://gitlab.freedesktop.org/drm/intel/issues/7484
  [i915#7561]: https://gitlab.freedesktop.org/drm/intel/issues/7561
  [i915#7701]: https://gitlab.freedesktop.org/drm/intel/issues/7701
  [i915#7711]: https://gitlab.freedesktop.org/drm/intel/issues/7711
  [i915#7765]: https://gitlab.freedesktop.org/drm/intel/issues/7765
  [i915#7812]: https://gitlab.freedesktop.org/drm/intel/issues/7812
  [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
  [i915#7838]: https://gitlab.freedesktop.org/drm/intel/issues/7838
  [i915#7975]: https://gitlab.freedesktop.org/drm/intel/issues/7975
  [i915#8063]: https://gitlab.freedesktop.org/drm/intel/issues/8063
  [i915#8213]: https://gitlab.freedesktop.org/drm/intel/issues/8213
  [i915#8228]: https://gitlab.freedesktop.org/drm/intel/issues/8228
  [i915#8247]: https://gitlab.freedesktop.org/drm/intel/issues/8247
  [i915#8292]: https://gitlab.freedesktop.org/drm/intel/issues/8292
  [i915#8414]: https://gitlab.freedesktop.org/drm/intel/issues/8414
  [i915#8428]: https://gitlab.freedesktop.org/drm/intel/issues/8428
  [i915#8489]: https://gitlab.freedesktop.org/drm/intel/issues/8489
  [i915#8502]: https://gitlab.freedesktop.org/drm/intel/issues/8502
  [i915#8623]: https://gitlab.freedesktop.org/drm/intel/issues/8623
  [i915#8661]: https://gitlab.freedesktop.org/drm/intel/issues/8661
  [i915#8668]: https://gitlab.freedesktop.org/drm/intel/issues/8668
  [i915#8691]: https://gitlab.freedesktop.org/drm/intel/issues/8691
  [i915#8708]: https://gitlab.freedesktop.org/drm/intel/issues/8708
  [i915#8841]: https://gitlab.freedesktop.org/drm/intel/issues/8841
  [i915#8848]: https://gitlab.freedesktop.org/drm/intel/issues/8848
  [i915#8865]: https://gitlab.freedesktop.org/drm/intel/issues/8865
  [i915#8878]: https://gitlab.freedesktop.org/drm/intel/issues/8878
  [i915#8962]: https://gitlab.freedesktop.org/drm/intel/issues/8962
  [i915#9067]: https://gitlab.freedesktop.org/drm/intel/issues/9067
  [i915#9121]: https://gitlab.freedesktop.org/drm/intel/issues/9121
  [i915#9162]: https://gitlab.freedesktop.org/drm/intel/issues/9162


Build changes
-------------

  * Linux: CI_DRM_13573 -> Patchwork_123014v1

  CI-20190529: 20190529
  CI_DRM_13573: cb94b8169f58bc821f95f5fd8f333074576f71ac @ git://anongit.freedesktop.org/gfx-ci/linux
  IGT_7456: 7456
  Patchwork_123014v1: cb94b8169f58bc821f95f5fd8f333074576f71ac @ git://anongit.freedesktop.org/gfx-ci/linux
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit

== Logs ==

For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/index.html

--===============3361012466948281869==
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
<tr><td><b>Series:</b></td><td>drm/i915/dg2: Add support for new DG2-G12 re=
vid 0x1</td></tr>
<tr><td><b>URL:</b></td><td><a href=3D"https://patchwork.freedesktop.org/se=
ries/123014/">https://patchwork.freedesktop.org/series/123014/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

    <tr><td><b>Details:</b></td><td><a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123014v1/index.html">https://intel-gfx-ci.01.org/tre=
e/drm-tip/Patchwork_123014v1/index.html</a></td></tr>

</table>


    <h1>CI Bug Log - changes from CI_DRM_13573_full -&gt; Patchwork_123014v=
1_full</h1>
<h2>Summary</h2>
<p><strong>FAILURE</strong></p>
<p>Serious unknown changes coming with Patchwork_123014v1_full absolutely n=
eed to be<br />
  verified manually.</p>
<p>If you think the reported changes have nothing to do with the changes<br=
 />
  introduced in Patchwork_123014v1_full, please notify your bug team to all=
ow them<br />
  to document this new failure mode, which will reduce false positives in C=
I.</p>
<h2>Participating hosts (9 -&gt; 9)</h2>
<p>No changes in participating hosts</p>
<h2>Possible new issues</h2>
<p>Here are the unknown changes that may have been introduced in Patchwork_=
123014v1_full:</p>
<h3>IGT changes</h3>
<h4>Possible regressions</h4>
<ul>
<li>igt@kms_vblank@pipe-a-ts-continuation-suspend:<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_vblank@pipe-a-ts-conti=
nuation-suspend.html">INCOMPLETE</a></li>
</ul>
</li>
</ul>
<h2>Known issues</h2>
<p>Here are the changes found in Patchwork_123014v1_full that come from kno=
wn issues:</p>
<h3>CI changes</h3>
<h4>Possible fixes</h4>
<ul>
<li>boot:<ul>
<li>shard-dg2:          (<a href=3D"https://intel-gfx-ci.01.org/tree/drm-ti=
p/CI_DRM_13573/shard-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-g=
fx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-10/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_13573/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11/boot.html">PASS</a>, <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-11/bo=
ot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_D=
RM_13573/shard-dg2-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-12/boot=
.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_13573/shard-dg2-1/boot.html">FAIL</a>, <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/CI_DRM_13573/shard-dg2-1/boot.html">PASS</a>, <a href=3D"h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-2/boot.html"=
>PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573=
/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/CI_DRM_13573/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-3/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard=
-dg2-3/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/CI_DRM_13573/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-5/boot.html">PASS</a>, <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_13573/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel-gfx-c=
i.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-6/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13573/shard-dg2-8/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
13573/shard-dg2-8/boot.html">PASS</a>) -&gt; (<a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-10/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/sha=
rd-dg2-10/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_123014v1/shard-dg2-11/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-11/boot.=
html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwo=
rk_123014v1/shard-dg2-11/boot.html">PASS</a>, <a href=3D"https://intel-gfx-=
ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/boot.html">PASS</a>,=
 <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/sha=
rd-dg2-12/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_123014v1/shard-dg2-12/boot.html">PASS</a>, <a href=3D"htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-1/boot.h=
tml">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_123014v1/shard-dg2-1/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci=
.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/boot.html">PASS</a>, <a=
 href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-=
dg2-2/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_123014v1/shard-dg2-2/boot.html">PASS</a>, <a href=3D"https://=
intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-5/boot.html">=
PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123=
014v1/shard-dg2-5/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.o=
rg/tree/drm-tip/Patchwork_123014v1/shard-dg2-5/boot.html">PASS</a>, <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-6=
/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_123014v1/shard-dg2-6/boot.html">PASS</a>, <a href=3D"https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/boot.html">PASS<=
/a>, <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1=
/shard-dg2-8/boot.html">PASS</a>, <a href=3D"https://intel-gfx-ci.01.org/tr=
ee/drm-tip/Patchwork_123014v1/shard-dg2-8/boot.html">PASS</a>)</li>
</ul>
</li>
</ul>
<h3>IGT changes</h3>
<h4>Issues hit</h4>
<ul>
<li>
<p>igt@device_reset@cold-reset-bound:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@device_reset@cold-reset-bo=
und.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7701">i915#7701</a>)</li>
</ul>
</li>
<li>
<p>igt@device_reset@unbind-reset-rebind:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg1-16/igt@device_reset@unbind-reset=
-rebind.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4983">i915#4983</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7461">i915#7461</a>)</li>
</ul>
</li>
<li>
<p>igt@drm_fdinfo@virtual-busy-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@drm_fdinfo@virtual-busy-al=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/8414">i915#8414</a>)</li>
</ul>
</li>
<li>
<p>igt@dumb_buffer@create-clear:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-snb5/igt@dumb_buffer@create-clear.html">PASS</a> -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shar=
d-snb2/igt@dumb_buffer@create-clear.html">ABORT</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/8878">i915#8878</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_bad_reloc@negative-reloc-lut:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_bad_reloc@negative-rel=
oc-lut.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3281">i915#3281</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_busy@semaphore:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_busy@semaphore.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3936">i=
915#3936</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ccs@suspend-resume@xmajor-compressed-compfmt0-smem-lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-8/igt@gem_ccs@suspend-resume@xmajor-compressed-comp=
fmt0-smem-lmem0.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-10/igt@gem_ccs@suspend-resume@xm=
ajor-compressed-compfmt0-smem-lmem0.html">INCOMPLETE</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/6311">i915#6311</a> / <a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/7297">i915#7297</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_exec@basic-nohangcheck:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-rkl-6/igt@gem_ctx_exec@basic-nohangcheck.html">PASS</a>=
 -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014=
v1/shard-rkl-1/igt@gem_ctx_exec@basic-nohangcheck.html">FAIL</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/6268">i915#6268</a>)</l=
i>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@parallel-balancer:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_exec_balancer@parallel=
-balancer.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/4525">i915#4525</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_balancer@sliced:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_exec_balancer@sliced.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4=
812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-deadline:</p>
<ul>
<li>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-glk2/igt@gem_exec_fair@basic-deadline.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/=
shard-glk7/igt@gem_exec_fair@basic-deadline.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/2846">i915#2846</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-none@bcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-rkl-6/igt@gem_exec_fair@basic-none@bcs0.html">PASS</a> =
-&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v=
1/shard-rkl-2/igt@gem_exec_fair@basic-none@bcs0.html">FAIL</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a>) +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace-share@rcs0:</p>
<ul>
<li>
<p>shard-glk:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13573/shard-glk2/igt@gem_exec_fair@basic-pace-share@rcs0.html">PASS<=
/a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123=
014v1/shard-glk7/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a> (<a=
 href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842</a=
>)</p>
</li>
<li>
<p>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_13573/shard-tglu-9/igt@gem_exec_fair@basic-pace-share@rcs0.html">PAS=
S</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
23014v1/shard-tglu-2/igt@gem_exec_fair@basic-pace-share@rcs0.html">FAIL</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#284=
2</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-cmd:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_exec_flush@basic-batch=
-kernel-default-cmd.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109313">fdo#109313</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-batch-kernel-default-uc:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-8/igt@gem_exec_flush@basic-batch-kernel-default-uc=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_123014v1/shard-mtlp-4/igt@gem_exec_flush@basic-batch-kernel-defaul=
t-uc.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8962">i915#8962</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/9121">i915#9121</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_flush@basic-wb-rw-default:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_exec_flush@basic-wb-rw=
-default.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/3539">i915#3539</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4852">i915#4852</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_reloc@basic-wc-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_exec_reloc@basic-wc-cp=
u.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3281">i915#3281</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_exec_schedule@reorder-wide:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_exec_schedule@reorder-=
wide.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/4537">i915#4537</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4812">i915#4812</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_exec_suspend@basic-s4-devices@lmem0:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_exec_suspend@basic-s4-=
devices@lmem0.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/7975">i915#7975</a> / <a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/8213">i915#8213</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_fenced_exec_thrash@no-spare-fences-interruptible:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_fenced_exec_thrash@no-=
spare-fences-interruptible.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/4860">i915#4860</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_lmem_evict@dontneed-evict-race:</p>
<ul>
<li>
<p>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@gem_lmem_evict@dontneed-evic=
t-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi=
?id=3D109271">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/4613">i915#4613</a>)</p>
</li>
<li>
<p>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@gem_lmem_evict@dontneed-ev=
ict-race.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4613">i915#4613</a>)</p>
</li>
</ul>
</li>
<li>
<p>igt@gem_partial_pwrite_pread@write-uncached:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_partial_pwrite_pread@w=
rite-uncached.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_pxp@display-protected-crc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@gem_pxp@display-protected-=
crc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/4270">i915#4270</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_render_copy@y-tiled-ccs-to-x-tiled:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-3/igt@gem_render_copy@y-tiled-c=
cs-to-x-tiled.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8428">i915#8428</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_softpin@evict-snoop:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_softpin@evict-snoop.ht=
ml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109=
312">fdo#109312</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_partial_pwrite_pread@reads:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gem_tiled_partial_pwrite_p=
read@reads.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3282">i915#3282</a>)</li>
</ul>
</li>
<li>
<p>igt@gem_tiled_swapping@non-threaded:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_tiled_swapping@non-thr=
eaded.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/4077">i915#4077</a>) +7 similar issues</li>
</ul>
</li>
<li>
<p>igt@gem_userptr_blits@readonly-pwrite-unsync:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gem_userptr_blits@readonly=
-pwrite-unsync.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/3297">i915#3297</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen7_exec_parse@batch-without-end:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@gen7_exec_parse@batch-with=
out-end.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cg=
i?id=3D109289">fdo#109289</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-all:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@gen9_exec_parse@allowed-al=
l.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/2856">i915#2856</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-3/igt@gen9_exec_parse@basic-rej=
ected.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/2856">i915#2856</a>)</li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@basic-rejected-ctx-param:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-snb4/igt@gen9_exec_parse@basic-rejec=
ted-ctx-param.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_=
bug.cgi?id=3D109271">fdo#109271</a>) +121 similar issues</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@load:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-snb4/igt@i915_module_load@load.html"=
>SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D109271=
">fdo#109271</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6227">i915#6227</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@reload-with-fault-injection:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-3/igt@i915_module_load@reload-with-fault-injection=
.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_123014v1/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injec=
tion.html">ABORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/8489">i915#8489</a> / <a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8668">i915#8668</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_module_load@resize-bar:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@i915_module_load@resize-b=
ar.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/6412">i915#6412</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@bad-brightness:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@i915_pm_backlight@bad-brig=
htness.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/5354">i915#5354</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_backlight@fade-with-dpms:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@i915_pm_backlight@fade-wit=
h-dpms.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7561">i915#7561</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg1-19/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">=
PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_123014v1/shard-dg1-13/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html">SKI=
P</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937">i91=
5#1937</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-lpsp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-12/igt@i915_pm_rpm@dpms-lpsp.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard=
-dg2-8/igt@i915_pm_rpm@dpms-lpsp.html">SKIP</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-rkl-2/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">PA=
SS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
123014v1/shard-rkl-7/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">SKIP</a=
> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i915#13=
97</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg1-16/igt@i915_pm_rpm@dpms-non-lpsp.html">PASS</a> -&g=
t; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/s=
hard-dg1-19/igt@i915_pm_rpm@dpms-non-lpsp.html">SKIP</a> (<a href=3D"https:=
//gitlab.freedesktop.org/drm/intel/issues/1397">i915#1397</a>) +1 similar i=
ssue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-s=
tress-no-wait.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/1397">i915#1397</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rps@min-max-config-idle:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@i915_pm_rps@min-max-confi=
g-idle.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/6621">i915#6621</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@async-flip-with-page-flip-events@pipe-d-hdmi-a-1-y-r=
c_ccs:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg1-19/igt@kms_async_flips@async-fli=
p-with-page-flip-events@pipe-d-hdmi-a-1-y-rc_ccs.html">SKIP</a> (<a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/8502">i915#8502</a>) +7 si=
milar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-a-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_async_flips@crc@pipe-a=
-hdmi-a-2.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_async_flips@crc@pipe-b-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg1-13/igt@kms_async_flips@crc@pipe-=
b-hdmi-a-3.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8247">i915#8247</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-16bpp-rotate-90:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_big_fb@4-tiled-16bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_big_fb@4-tiled-max-hw-=
stride-64bpp-rotate-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/5286">i915#5286</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-64bpp-rotate-90:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_big_fb@x-tiled-64bpp-r=
otate-90.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D111614">fdo#111614</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3638">i915#3638</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0-hflip-async-flip.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-8/igt@kms_big_fb@x-tiled-m=
ax-hw-stride-32bpp-rotate-0-hflip-async-flip.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/3743">i915#3743</a>) +1 simila=
r issue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@kms_big_fb@x-tiled-max-hw=
-stride-64bpp-rotate-0-async-flip.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3743">i915#3743</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_big_fb@y-tiled-max-hw-=
stride-64bpp-rotate-180-hflip-async-flip.html">SKIP</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-async-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_big_fb@yf-tiled-max-hw=
-stride-32bpp-rotate-0-async-flip.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/4538">i915#4538</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5190">i915#5190</a>) +1 similar iss=
ue</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_big_fb@yf-tiled-max-h=
w-stride-64bpp-rotate-180.html">SKIP</a> (<a href=3D"https://bugs.freedeskt=
op.org/show_bug.cgi?id=3D111615">fdo#111615</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_ccs@pipe-a-bad-rotation=
-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://bugs.freedes=
ktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/3886">i915#3886</a>) +1 similar issue</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-ccs-on-another-bo-4_tiled_mtl_rc_ccs_cc:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_ccs@pipe-a-ccs-on-anot=
her-bo-4_tiled_mtl_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/6095">i915#6095</a>) +3 similar issues</=
li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_ccs@pipe-a-random-ccs-=
data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/3734">i915#3734</a> / <a href=3D"https://gitlab.freedeskto=
p.org/drm/intel/issues/5354">i915#5354</a> / <a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/6095">i915#6095</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_ccs@pipe-c-bad-rotatio=
n-90-y_tiled_gen12_rc_ccs_cc.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/3886">i915#3886</a> / <a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 similar is=
sues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_ccs@pipe-c-crc-sprite-=
planes-basic-y_tiled_gen12_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/3689">i915#3689</a> / <a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +5 similar iss=
ues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-c-random-ccs-data-yf_tiled_ccs:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_ccs@pipe-c-random-ccs-=
data-yf_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/5354">i915#5354</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-crc-sprite-planes-basic-4_tiled_mtl_rc_ccs:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_ccs@pipe-d-crc-sprite-=
planes-basic-4_tiled_mtl_rc_ccs.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/5354">i915#5354</a>) +14 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_ccs@pipe-d-random-ccs=
-data-y_tiled_ccs.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org=
/drm/intel/issues/6095">i915#6095</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_cdclk@mode-transition@pipe-d-dp-4:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-11/igt@kms_cdclk@mode-transition=
@pipe-d-dp-4.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/4087">i915#4087</a> / <a href=3D"https://gitlab.freedesktop.or=
g/drm/intel/issues/7213">i915#7213</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_edid@dp-mode-timings:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_chamelium_edid@dp-mode=
-timings.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7828">i915#7828</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_chamelium_hpd@common-hpd-after-suspend:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_chamelium_hpd@common-h=
pd-after-suspend.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7828">i915#7828</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_color@deep-color:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_color@deep-color.html"=
>SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3555"=
>i915#3555</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@atomic:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_content_protection@ato=
mic.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@dp-mst-type-1:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_content_protection@dp-=
mst-type-1.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/3299">i915#3299</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@mei_interface:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_content_protection@me=
i_interface.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/8063">i915#8063</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@srm@pipe-a-dp-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-12/igt@kms_content_protection@sr=
m@pipe-a-dp-2.html">TIMEOUT</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/7173">i915#7173</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_content_protection@uevent:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@kms_content_protection@uev=
ent.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/iss=
ues/7118">i915#7118</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-offscreen-512x512:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_cursor_crc@cursor-offs=
creen-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_crc@cursor-sliding-512x512:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_cursor_crc@cursor-slid=
ing-512x512.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/3359">i915#3359</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@cursora-vs-flipb-atomic-transitions-varying-size:<=
/p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_cursor_legacy@cursora-=
vs-flipb-atomic-transitions-varying-size.html">SKIP</a> (<a href=3D"https:/=
/bugs.freedesktop.org/show_bug.cgi?id=3D109274">fdo#109274</a> / <a href=3D=
"https://gitlab.freedesktop.org/drm/intel/issues/5354">i915#5354</a>) +1 si=
milar issue</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-apl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transi=
tions-varying-size.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_123014v1/shard-apl3/igt@kms_cursor_legacy@flip-v=
s-cursor-atomic-transitions-varying-size.html">FAIL</a> (<a href=3D"https:/=
/gitlab.freedesktop.org/drm/intel/issues/2346">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_cursor_legacy@short-bu=
sy-flip-before-cursor-toggle.html">SKIP</a> (<a href=3D"https://gitlab.free=
desktop.org/drm/intel/issues/4103">i915#4103</a> / <a href=3D"https://gitla=
b.freedesktop.org/drm/intel/issues/4213">i915#4213</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_dither@fb-8bpc-vs-panel-8bpc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@kms_dither@fb-8bpc-vs-pane=
l-8bpc.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/3555">i915#3555</a>) +2 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_fence_pin_leak:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_fence_pin_leak.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4881">i=
915#4881</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-dpms-vs-vblank-race:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_flip@2x-dpms-vs-vblank=
-race.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?=
id=3D109274">fdo#109274</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_flip@2x-flip-vs-absolu=
te-wf_vblank-interruptible.html">SKIP</a> (<a href=3D"https://bugs.freedesk=
top.org/show_bug.cgi?id=3D111825">fdo#111825</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_flip@flip-vs-suspend@b-hdmi-a1:</p>
<ul>
<li>shard-snb:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-snb1/igt@kms_flip@flip-vs-suspend@b-=
hdmi-a1.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm=
/intel/issues/8841">i915#8841</a>) +5 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_flip@plain-flip-ts-check@a-vga1:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-snb5/igt@kms_flip@plain-flip-ts-check@a-vga1.html">PASS=
</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12=
3014v1/shard-snb7/igt@kms_flip@plain-flip-ts-check@a-vga1.html">ABORT</a> (=
<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8865">i915#8865<=
/a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-offscren-pri-shrfb-draw-blt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bc-1p-offscren-pri-shrfb-draw-blt.html">FAIL</a> (<a href=3D"https://gitlab=
.freedesktop.org/drm/intel/issues/6880">i915#6880</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-1p-primscrn-indfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-ind=
fb-pgflip-blt.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_123014v1/shard-mtlp-5/igt@kms_frontbuffer_tracking@fb=
c-1p-primscrn-indfb-pgflip-blt.html">DMESG-WARN</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/1982">i915#1982</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-mmap-wc:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_frontbuffer_tracking@f=
bc-2p-primscrn-cur-indfb-draw-mmap-wc.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>) +6 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg1-16/igt@kms_frontbuffer_tracking@=
fbc-2p-scndscrn-cur-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https://=
gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:=
</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html">SKIP</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/8708">i915#8708</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu:=
</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_frontbuffer_tracking@f=
bcpsr-2p-primscrn-pri-shrfb-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https:=
//bugs.freedesktop.org/show_bug.cgi?id=3D111825">fdo#111825</a> / <a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>) +6=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-shrfb-pgflip-blt:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-7/igt@kms_frontbuffer_tracking@=
fbcpsr-2p-scndscrn-shrfb-pgflip-blt.html">SKIP</a> (<a href=3D"https://gitl=
ab.freedesktop.org/drm/intel/issues/1825">i915#1825</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-mmap-cpu:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_frontbuffer_tracking@f=
bcpsr-rgb565-draw-mmap-cpu.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/3458">i915#3458</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_frontbuffer_tracking@p=
sr-1p-primscrn-shrfb-plflip-blt.html">SKIP</a> (<a href=3D"https://gitlab.f=
reedesktop.org/drm/intel/issues/3023">i915#3023</a>) +4 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_hdr@invalid-metadata-sizes:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_hdr@invalid-metadata-s=
izes.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/3555">i915#3555</a> / <a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/8228">i915#8228</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_panel_fitting@legacy:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_panel_fitting@legacy.h=
tml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/6=
301">i915#6301</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_pipe_b_c_ivb@disable-pipe-b-enable-pipe-c:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_pipe_b_c_ivb@disable-p=
ipe-b-enable-pipe-c.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org=
/show_bug.cgi?id=3D109289">fdo#109289</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-2/igt@kms_plane@plane-panning-bottom-right-suspend@=
pipe-b-planes.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_123014v1/shard-dg2-11/igt@kms_plane@plane-panning-bot=
tom-right-suspend@pipe-b-planes.html">FAIL</a> (<a href=3D"https://bugs.fre=
edesktop.org/show_bug.cgi?id=3D103375">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-c-dp-1:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_plane_alpha_blend@alpha=
-transparent-fb@pipe-c-dp-1.html">FAIL</a> (<a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/4573">i915#4573</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-8/igt@kms_plane_scaling@intel-ma=
x-src-size.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/6953">i915#6953</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@intel-max-src-size@pipe-a-hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-7/igt@kms_plane_scaling@intel-ma=
x-src-size@pipe-a-hdmi-a-1.html">FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8292">i915#8292</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-modifiers-factor-0-25@pipe-c-=
hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_plane_scaling@plane-do=
wnscale-with-modifiers-factor-0-25@pipe-c-hdmi-a-2.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1=
1 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-downscale-with-rotation-factor-0-5@pipe-b-hd=
mi-a-1:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg1-19/igt@kms_plane_scaling@plane-d=
ownscale-with-rotation-factor-0-5@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +1=
9 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@plane-upscale-with-rotation-factor-0-25@pipe-b-hdm=
i-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-7/igt@kms_plane_scaling@plane-up=
scale-with-rotation-factor-0-25@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/5176">i915#5176</a>) +3 sim=
ilar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25-unity-scaling@pipe-b-=
hdmi-a-1:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-7/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25-unity-scaling@pipe-b-hdmi-a-1.html">SKIP</a> (<a href=
=3D"https://gitlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3=
 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-2:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@kms_plane_scaling@planes-d=
ownscale-factor-0-25@pipe-d-hdmi-a-2.html">SKIP</a> (<a href=3D"https://git=
lab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +23 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_plane_scaling@planes-downscale-factor-0-25@pipe-d-hdmi-a-3:</p>
<ul>
<li>shard-dg1:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg1-13/igt@kms_plane_scaling@planes-=
downscale-factor-0-25@pipe-d-hdmi-a-3.html">SKIP</a> (<a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/5235">i915#5235</a>) +3 similar issue=
s</li>
</ul>
</li>
<li>
<p>igt@kms_prime@basic-modeset-hybrid:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_prime@basic-modeset-h=
ybrid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/6524">i915#6524</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_psr2_sf@cursor-plane-mo=
ve-continuous-exceed-fully-sf.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D109271">fdo#109271</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-big-fb:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_psr2_sf@primary-plane-=
update-sf-dmg-area-big-fb.html">SKIP</a> (<a href=3D"https://gitlab.freedes=
ktop.org/drm/intel/issues/658">i915#658</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_psr@cursor_mmap_cpu:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_psr@cursor_mmap_cpu.ht=
ml">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/10=
72">i915#1072</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_psr@psr2_cursor_mmap_gtt:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_psr@psr2_cursor_mmap_g=
tt.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issu=
es/1072">i915#1072</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_rotation_crc@sprite-rotation-270:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@kms_rotation_crc@sprite-ro=
tation-270.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/in=
tel/issues/4235">i915#4235</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_selftest@drm_plane:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_selftest@drm_plane.htm=
l">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/866=
1">i915#8661</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_sysfs_edid_timing:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-12/igt@kms_sysfs_edid_timing.html">PASS</a> -&gt; <=
a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard=
-dg2-8/igt@kms_sysfs_edid_timing.html">FAIL</a> (<a href=3D"https://gitlab.=
freedesktop.org/drm/igt-gpu-tools/issues/2">IGT#2</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_tiled_display@basic-test-pattern-with-chamelium:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@kms_tiled_display@basic-t=
est-pattern-with-chamelium.html">SKIP</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/8623">i915#8623</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_universal_plane@disable-primary-vs-flip-pipe-d:</p>
<ul>
<li>shard-apl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-apl2/igt@kms_universal_plane@disable=
-primary-vs-flip-pipe-d.html">SKIP</a> (<a href=3D"https://bugs.freedesktop=
.org/show_bug.cgi?id=3D109271">fdo#109271</a>) +28 similar issues</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-6/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspen=
d.html">PASS</a> -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_123014v1/shard-dg2-5/igt@kms_vblank@pipe-a-ts-continuation-dpms-s=
uspend.html">INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/7838">i915#7838</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-c-wait-forked-busy:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_vblank@pipe-c-wait-for=
ked-busy.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/dr=
m/intel/issues/6768">i915#6768</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@kms_vblank@pipe-d-wait-idle-hang:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@kms_vblank@pipe-d-wait-idl=
e-hang.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/4070">i915#4070</a> / <a href=3D"https://gitlab.freedesktop.org/drm/=
intel/issues/533">i915#533</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/6768">i915#6768</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@gen8-unprivileged-single-ctx-counters:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@perf@gen8-unprivileged-sin=
gle-ctx-counters.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/2436">i915#2436</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@global-sseu-config-invalid:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@perf@global-sseu-config-in=
valid.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/i=
ssues/7387">i915#7387</a>)</li>
</ul>
</li>
<li>
<p>igt@perf@non-zero-reason@0-rcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-3/igt@perf@non-zero-reason@0-rcs0.html">PASS</a> -&=
gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/=
shard-dg2-12/igt@perf@non-zero-reason@0-rcs0.html">FAIL</a> (<a href=3D"htt=
ps://gitlab.freedesktop.org/drm/intel/issues/7484">i915#7484</a>)</li>
</ul>
</li>
<li>
<p>igt@prime_vgem@basic-fence-flip:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@prime_vgem@basic-fence-fli=
p.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issue=
s/3708">i915#3708</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_get_param@base-params:</p>
<ul>
<li>shard-mtlp:         NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-6/igt@v3d/v3d_get_param@base-pa=
rams.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/is=
sues/2575">i915#2575</a>)</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_perfmon@create-perfmon-exceed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-2/igt@v3d/v3d_perfmon@create-per=
fmon-exceed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/i=
ntel/issues/2575">i915#2575</a>) +3 similar issues</li>
</ul>
</li>
<li>
<p>igt@v3d/v3d_submit_cl@bad-in-sync:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@v3d/v3d_submit_cl@bad-in-s=
ync.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=
=3D109315">fdo#109315</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_perfmon@create-perfmon-0:</p>
<ul>
<li>shard-rkl:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-rkl-6/igt@vc4/vc4_perfmon@create-per=
fmon-0.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/=
issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@vc4/vc4_purgeable_bo@mark-willneed:</p>
<ul>
<li>shard-dg2:          NOTRUN -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-dg2-6/igt@vc4/vc4_purgeable_bo@mark-=
willneed.html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/inte=
l/issues/7711">i915#7711</a>) +1 similar issue</li>
</ul>
</li>
</ul>
<h4>Possible fixes</h4>
<ul>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@bcs0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@bcs0.html">=
FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375"=
>fdo#103375</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_123014v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3@bcs0.h=
tml">PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@gem_ctx_isolation@preservation-s3@vcs1:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-5/igt@gem_ctx_isolation@preservation-s3@vcs1.html">=
INCOMPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
9162">i915#9162</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_123014v1/shard-dg2-2/igt@gem_ctx_isolation@preservation-s3@vc=
s1.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_eio@kms:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg1-12/igt@gem_eio@kms.html">FAIL</a> (<a href=3D"https=
://gitlab.freedesktop.org/drm/intel/issues/5784">i915#5784</a>) -&gt; <a hr=
ef=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-dg1=
-12/igt@gem_eio@kms.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_capture@pi@ccs0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-5/igt@gem_exec_capture@pi@ccs0.html">FAIL</a> (<a =
href=3D"https://gitlab.freedesktop.org/drm/intel/issues/7765">i915#7765</a>=
) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_12301=
4v1/shard-mtlp-5/igt@gem_exec_capture@pi@ccs0.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_exec_fair@basic-pace@rcs0:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-rkl-1/igt@gem_exec_fair@basic-pace@rcs0.html">FAIL</a> =
(<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2842">i915#2842=
</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
23014v1/shard-rkl-6/igt@gem_exec_fair@basic-pace@rcs0.html">PASS</a> +1 sim=
ilar issue</li>
</ul>
</li>
<li>
<p>igt@gem_exec_whisper@basic-fds-forked-all:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-snb7/igt@gem_exec_whisper@basic-fds-forked-all.html">AB=
ORT</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/8865">i=
915#8865</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_123014v1/shard-snb1/igt@gem_exec_whisper@basic-fds-forked-all.html">=
PASS</a></li>
</ul>
</li>
<li>
<p>igt@gem_lmem_swapping@smem-oom@lmem0:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-3/igt@gem_lmem_swapping@smem-oom@lmem0.html">DMESG-=
WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4936">=
i915#4936</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
5493">i915#5493</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_123014v1/shard-dg2-12/igt@gem_lmem_swapping@smem-oom@lmem0.ht=
ml">PASS</a></li>
</ul>
</li>
<li>
<p>igt@gen9_exec_parse@allowed-single:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-apl4/igt@gen9_exec_parse@allowed-single.html">ABORT</a>=
 (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5566">i915#556=
6</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_=
123014v1/shard-apl2/igt@gen9_exec_parse@allowed-single.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pipe_stress@stress-xrgb8888-untiled:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-2/igt@i915_pipe_stress@stress-xrgb8888-untiled.htm=
l">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/869=
1">i915#8691</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_123014v1/shard-mtlp-7/igt@i915_pipe_stress@stress-xrgb8888-until=
ed.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-11/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">SKIP=
</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1937">i915=
#1937</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchw=
ork_123014v1/shard-dg2-12/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html">PASS<=
/a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@bcs0:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3591">i9=
15#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_123014v1/shard-dg1-12/igt@i915_pm_rc6_residency@rc6-idle@bcs0.html">P=
ASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg1-19/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html">S=
KIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/1397">i=
915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_123014v1/shard-dg1-13/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html"=
>PASS</a> +1 similar issue</li>
</ul>
</li>
<li>
<p>igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait:</p>
<ul>
<li>shard-dg2:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg2-12/igt@i915_pm_rpm@modeset-non-lpsp-stress-no-wait.=
html">SKIP</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/=
1397">i915#1397</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_123014v1/shard-dg2-8/igt@i915_pm_rpm@modeset-non-lpsp-stress-=
no-wait.html">PASS</a></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@gt_heartbeat:</p>
<ul>
<li>shard-apl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">DMESG-FA=
IL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/5334">i9=
15#5334</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patc=
hwork_123014v1/shard-apl3/igt@i915_selftest@live@gt_heartbeat.html">PASS</a=
></li>
</ul>
</li>
<li>
<p>igt@i915_selftest@live@workarounds:</p>
<ul>
<li>shard-dg1:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-dg1-18/igt@i915_selftest@live@workarounds.html">ABORT</=
a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4983">i915#4=
983</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_123014v1/shard-dg1-16/igt@i915_selftest@live@workarounds.html">PASS</a></=
li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-3/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotat=
e-0-hflip-async-flip.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop.=
org/drm/intel/issues/3743">i915#3743</a>) -&gt; <a href=3D"https://intel-gf=
x-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-2/igt@kms_big_fb@4-t=
iled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html">PASS</a> +2 simila=
r issues</li>
</ul>
</li>
<li>
<p>igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-5/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotat=
e-0.html">DMESG-WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/int=
el/issues/1982">i915#1982</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org=
/tree/drm-tip/Patchwork_123014v1/shard-mtlp-5/igt@kms_big_fb@x-tiled-max-hw=
-stride-32bpp-rotate-0.html">PASS</a></li>
</ul>
</li>
</ul>
<h4>Warnings</h4>
<ul>
<li>
<p>igt@i915_pm_rc6_residency@rc6-idle@vecs0:</p>
<ul>
<li>shard-tglu:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0.html">F=
AIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2681">i=
915#2681</a> / <a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/3=
591">i915#3591</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_123014v1/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle@vecs0=
.html">WARN</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues=
/2681">i915#2681</a>)</li>
</ul>
</li>
<li>
<p>igt@i915_suspend@basic-s3-without-i915:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html">INCO=
MPLETE</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/4817=
">i915#4817</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_123014v1/shard-rkl-6/igt@i915_suspend@basic-s3-without-i915.html"=
>FAIL</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D103375=
">fdo#103375</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:</p>
<ul>
<li>shard-mtlp:         <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-mtlp-7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-tran=
sitions-varying-size.html">DMESG-FAIL</a> (<a href=3D"https://gitlab.freede=
sktop.org/drm/intel/issues/1982">i915#1982</a> / <a href=3D"https://gitlab.=
freedesktop.org/drm/intel/issues/2017">i915#2017</a> / <a href=3D"https://g=
itlab.freedesktop.org/drm/intel/issues/5954">i915#5954</a>) -&gt; <a href=
=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-mtlp-=
5/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html=
">FAIL</a> (<a href=3D"https://gitlab.freedesktop.org/drm/intel/issues/2346=
">i915#2346</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_fbcon_fbt@psr:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-rkl-4/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"=
https://gitlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>) -&gt; =
<a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shar=
d-rkl-1/igt@kms_fbcon_fbt@psr.html">SKIP</a> (<a href=3D"https://bugs.freed=
esktop.org/show_bug.cgi?id=3D110189">fdo#110189</a> / <a href=3D"https://gi=
tlab.freedesktop.org/drm/intel/issues/3955">i915#3955</a>)</li>
</ul>
</li>
<li>
<p>igt@kms_force_connector_basic@force-load-detect:</p>
<ul>
<li>shard-rkl:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-rkl-6/igt@kms_force_connector_basic@force-load-detect.h=
tml">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.cgi?id=3D10=
9285">fdo#109285</a>) -&gt; <a href=3D"https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_123014v1/shard-rkl-1/igt@kms_force_connector_basic@force-loa=
d-detect.html">SKIP</a> (<a href=3D"https://bugs.freedesktop.org/show_bug.c=
gi?id=3D109285">fdo#109285</a> / <a href=3D"https://gitlab.freedesktop.org/=
drm/intel/issues/4098">i915#4098</a>)</li>
</ul>
</li>
<li>
<p>igt@runner@aborted:</p>
<ul>
<li>shard-snb:          <a href=3D"https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_13573/shard-snb1/igt@runner@aborted.html">FAIL</a> (<a href=3D"http=
s://gitlab.freedesktop.org/drm/intel/issues/7812">i915#7812</a>) -&gt; <a h=
ref=3D"https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_123014v1/shard-sn=
b7/igt@runner@aborted.html">FAIL</a> (<a href=3D"https://gitlab.freedesktop=
.org/drm/intel/issues/7812">i915#7812</a> / <a href=3D"https://gitlab.freed=
esktop.org/drm/intel/issues/8848">i915#8848</a>)</li>
</ul>
</li>
</ul>
<p>{name}: This element is suppressed. This means it is ignored when comput=
ing<br />
          the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
<h2>Build changes</h2>
<ul>
<li>Linux: CI_DRM_13573 -&gt; Patchwork_123014v1</li>
</ul>
<p>CI-20190529: 20190529<br />
  CI_DRM_13573: cb94b8169f58bc821f95f5fd8f333074576f71ac @ git://anongit.fr=
eedesktop.org/gfx-ci/linux<br />
  IGT_7456: 7456<br />
  Patchwork_123014v1: cb94b8169f58bc821f95f5fd8f333074576f71ac @ git://anon=
git.freedesktop.org/gfx-ci/linux<br />
  piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.fre=
edesktop.org/piglit</p>

</body>
</html>

--===============3361012466948281869==--
