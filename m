Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BE191127F5B
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 16:32:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19D5B6EC57;
	Fri, 20 Dec 2019 15:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C69B6EC57
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 15:32:20 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 07:32:19 -0800
X-IronPort-AV: E=Sophos;i="5.69,336,1571727600"; d="scan'208";a="210843375"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 07:32:18 -0800
Date: Fri, 20 Dec 2019 17:31:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191220153153.GA14289@ideak-desk.fi.intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <157684757101.9210.14557202373984870887@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157684757101.9210.14557202373984870887@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Render/media_decompression_support_=28rev3=29?=
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
Reply-To: imre.deak@intel.com
Cc: Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 20, 2019 at 01:12:51PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Render/media decompression support (rev3)
> URL   : https://patchwork.freedesktop.org/series/71125/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7601_full -> Patchwork_15836_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_15836_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_15836_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
>
>   Here are the unknown changes that may have been introduced in Patchwork_15836_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
>     - shard-tglb:         [PASS][1] -> [FAIL][2] +2 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb5/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb9/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html

This is expected as IGT can't handle yet YUV CCS surfaces. I've sent a
patch to skip this part of the test:
https://patchwork.freedesktop.org/series/71214/

>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - shard-apl:          [FAIL][3] ([i915#716]) -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl7/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-apl6/igt@runner@aborted.html

Can't see how this can be related, GEN9 should not be affected by the
patches.
It looks like
https://gitlab.freedesktop.org/drm/intel/issues/409

> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_7601_full and Patchwork_15836_full:
> 
> ### New Piglit tests (1) ###
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_vec3_array3-position-double_dmat2_array2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.16] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15836_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@vcs0-s3:
>     - shard-tglb:         [PASS][5] -> [INCOMPLETE][6] ([i915#456])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb3/igt@gem_ctx_isolation@vcs0-s3.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb3/igt@gem_ctx_isolation@vcs0-s3.html
> 
>   * igt@gem_ctx_persistence@rcs0-mixed-process:
>     - shard-apl:          [PASS][7] -> [FAIL][8] ([i915#679])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl8/igt@gem_ctx_persistence@rcs0-mixed-process.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-apl3/igt@gem_ctx_persistence@rcs0-mixed-process.html
> 
>   * igt@gem_ctx_shared@exec-shared-gtt-bsd:
>     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#616])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl4/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-kbl4/igt@gem_ctx_shared@exec-shared-gtt-bsd.html
> 
>   * igt@gem_exec_reloc@basic-cpu-gtt-active:
>     - shard-skl:          [PASS][11] -> [DMESG-WARN][12] ([i915#109]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl5/igt@gem_exec_reloc@basic-cpu-gtt-active.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-skl7/igt@gem_exec_reloc@basic-cpu-gtt-active.html
> 
>   * igt@gem_exec_schedule@smoketest-vebox:
>     - shard-tglb:         [PASS][13] -> [INCOMPLETE][14] ([i915#707])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb3/igt@gem_exec_schedule@smoketest-vebox.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-hsw:          [PASS][15] -> [FAIL][16] ([i915#520])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-hsw1/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-hsw2/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][17] -> [FAIL][18] ([i915#644])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-glk3/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-skl:          [PASS][19] -> [INCOMPLETE][20] ([i915#69])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl4/igt@gem_softpin@noreloc-s3.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-skl9/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_sync@basic-many-each:
>     - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#472] / [i915#707])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@gem_sync@basic-many-each.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb5/igt@gem_sync@basic-many-each.html
> 
>   * igt@gem_sync@basic-store-each:
>     - shard-tglb:         [PASS][23] -> [INCOMPLETE][24] ([i915#435] / [i915#472])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb2/igt@gem_sync@basic-store-each.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb7/igt@gem_sync@basic-store-each.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-tglb:         [PASS][25] -> [INCOMPLETE][26] ([i915#456] / [i915#460]) +2 similar issues
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb2/igt@i915_pm_rpm@system-suspend-modeset.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb3/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#54])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-skl1/igt@kms_cursor_crc@pipe-c-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-kbl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +1 similar issue
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl4/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-kbl6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [PASS][31] -> [FAIL][32] ([i915#79])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl1/igt@kms_flip@flip-vs-expired-vblank.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-skl5/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt:
>     - shard-tglb:         [PASS][33] -> [FAIL][34] ([i915#49])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-rte:
>     - shard-tglb:         [PASS][35] -> [DMESG-WARN][36] ([i915#766])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb7/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-rte.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          [PASS][37] -> [DMESG-WARN][38] ([i915#180]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>     - shard-tglb:         [PASS][39] -> [INCOMPLETE][40] ([i915#667])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [PASS][41] -> [FAIL][42] ([fdo#108145])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@prime_vgem@basic-sync-default:
>     - shard-apl:          [PASS][43] -> [INCOMPLETE][44] ([fdo#103927] / [i915#409])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl3/igt@prime_vgem@basic-sync-default.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-apl6/igt@prime_vgem@basic-sync-default.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_shared@q-smoketest-vebox:
>     - shard-tglb:         [INCOMPLETE][45] ([fdo#111735]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb9/igt@gem_ctx_shared@q-smoketest-vebox.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
> 
>   * igt@gem_eio@kms:
>     - shard-snb:          [INCOMPLETE][47] ([i915#82]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-snb6/igt@gem_eio@kms.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-snb7/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-hsw:          [INCOMPLETE][49] ([i915#61]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-hsw2/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-hsw1/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_suspend@basic-s0:
>     - shard-tglb:         [INCOMPLETE][51] ([i915#456] / [i915#472]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@gem_exec_suspend@basic-s0.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb7/igt@gem_exec_suspend@basic-s0.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-kbl:          [FAIL][53] ([i915#644]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-kbl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * {igt@gen9_exec_parse@allowed-single}:
>     - shard-apl:          [DMESG-WARN][55] ([i915#716]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-apl2/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_selftest@live_requests:
>     - shard-tglb:         [INCOMPLETE][57] ([fdo#112057]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb5/igt@i915_selftest@live_requests.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb2/igt@i915_selftest@live_requests.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [DMESG-WARN][59] ([i915#180]) -> [PASS][60] +2 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl4/igt@i915_suspend@sysfs-reader.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-apl4/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo:
>     - shard-tglb:         [SKIP][61] ([i915#400]) -> [PASS][62] +19 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@kms_ccs@pipe-b-ccs-on-another-bo.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb7/igt@kms_ccs@pipe-b-ccs-on-another-bo.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][63] ([i915#180]) -> [PASS][64] +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding:
>     - shard-skl:          [FAIL][65] ([i915#54]) -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-skl10/igt@kms_cursor_crc@pipe-c-cursor-64x21-sliding.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglb:         [INCOMPLETE][67] ([i915#435] / [i915#456] / [i915#460]) -> [PASS][68]
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb2/igt@kms_fbcon_fbt@fbc-suspend.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb9/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-apl:          [FAIL][69] ([i915#79]) -> [PASS][70]
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-apl8/igt@kms_flip@flip-vs-expired-vblank.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-apl2/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [INCOMPLETE][71] ([i915#221]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-skl9/igt@kms_flip@flip-vs-suspend.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-skl6/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu:
>     - shard-tglb:         [INCOMPLETE][73] ([i915#474] / [i915#667]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-mmap-cpu.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>     - shard-tglb:         [FAIL][75] ([i915#49]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt:
>     - shard-tglb:         [INCOMPLETE][77] ([i915#435] / [i915#667]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-blt.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-tglb:         [INCOMPLETE][79] ([i915#456] / [i915#460]) -> [PASS][80] +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb5/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb9/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@perf@oa-exponents:
>     - shard-kbl:          [INCOMPLETE][81] ([fdo#103665]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-kbl7/igt@perf@oa-exponents.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-kbl3/igt@perf@oa-exponents.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs2-nonpriv:
>     - shard-tglb:         [SKIP][83] ([fdo#111912] / [fdo#112080]) -> [SKIP][84] ([fdo#112080])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-tglb5/igt@gem_ctx_isolation@vcs2-nonpriv.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-tglb9/igt@gem_ctx_isolation@vcs2-nonpriv.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-snb:          [INCOMPLETE][85] ([i915#82]) -> [SKIP][86] ([fdo#109271])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7601/shard-snb6/igt@i915_pm_rpm@modeset-non-lpsp.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/shard-snb1/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#103927]: https://bugs.freedesktop.org/show_bug.cgi?id=103927
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>   [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
>   [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#400]: https://gitlab.freedesktop.org/drm/intel/issues/400
>   [i915#409]: https://gitlab.freedesktop.org/drm/intel/issues/409
>   [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#474]: https://gitlab.freedesktop.org/drm/intel/issues/474
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#61]: https://gitlab.freedesktop.org/drm/intel/issues/61
>   [i915#616]: https://gitlab.freedesktop.org/drm/intel/issues/616
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#766]: https://gitlab.freedesktop.org/drm/intel/issues/766
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
> 
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7601 -> Patchwork_15836
> 
>   CI-20190529: 20190529
>   CI_DRM_7601: ae3554cfc3c170d7eab0229497d7b1d10256038f @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_15836: d3ec1213283ba267c5f08ed430a9d1f234651d2c @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15836/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
