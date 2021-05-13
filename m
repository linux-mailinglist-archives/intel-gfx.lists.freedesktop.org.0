Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CC037F02E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 02:02:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2111D6E59F;
	Thu, 13 May 2021 00:02:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D43936E59F
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 May 2021 00:02:32 +0000 (UTC)
IronPort-SDR: edztFmPAYf0uaLXbkR0d28Db1E+Q0yVZv4ugjt0J2/71R9U/osXBH3Ap7xOATo4zyo8GJxeWRg
 gT4V/VH/EKDQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="199889339"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="199889339"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 17:02:27 -0700
IronPort-SDR: pljyD2TRai+5LxYs9ktNjGbJlqYQgDW8pl2X4Lrr1uo8VvCiyYfs1jR4OQ9PdAgaW7rJXbEPAO
 adBy/pQHyIkw==
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="437426519"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 17:02:26 -0700
Date: Wed, 12 May 2021 17:02:25 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210513000225.GA3653682@mdroper-desk1.amr.corp.intel.com>
References: <20210512042144.2089071-1-matthew.d.roper@intel.com>
 <162085604677.28503.9284804540892790183@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <162085604677.28503.9284804540892790183@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgQ0kg?=
 =?utf-8?q?pass_for_reviewed_XeLPD_/_ADL-P_patches_=28rev2=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, May 12, 2021 at 09:47:26PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: CI pass for reviewed XeLPD / ADL-P patches (rev2)
> URL   : https://patchwork.freedesktop.org/series/90048/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10071_full -> Patchwork_20107_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_20107_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_20107_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_20107_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@api_intel_bb@render@render-y-reloc-1024:
>     - shard-glk:          [PASS][1] -> [FAIL][2] +1 similar issue
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-glk5/igt@api_intel_bb@render@render-y-reloc-1024.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk7/igt@api_intel_bb@render@render-y-reloc-1024.html

The render-y-reloc-512 subtest has been failing since CI_DRM_10071; this
seems to be the same failure, even though the -1024 test technically
passed on that build.

> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html

Incomplete since CI_DRM_10065.

>   * igt@gem_ppgtt@blt-vs-render-ctxn:
>     - shard-apl:          NOTRUN -> [FAIL][4]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl8/igt@gem_ppgtt@blt-vs-render-ctxn.html

Failing since CI_DRM_10066.

>   * igt@i915_pm_rpm@gem-mmap-type@uc:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl2/igt@i915_pm_rpm@gem-mmap-type@uc.html

Dmesg warning not coming from i915; doesn't seem to be caused by
driver/test:

<4> [163.684947] x86/PAT: i915_pm_rpm:2003 map pfn RAM range req uncached-minus for [mem 0x116cc5000-0x116cc6fff], got write-back

https://gitlab.freedesktop.org/drm/intel/-/issues/3457

> 
>   * igt@kms_plane_cursor@pipe-b-viewport-size-64:
>     - shard-snb:          NOTRUN -> [FAIL][6]
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb6/igt@kms_plane_cursor@pipe-b-viewport-size-64.html
> 

Failing since CI_DRM_10065.
https://gitlab.freedesktop.org/drm/intel/-/issues/3461

>   
> #### Warnings ####
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-128:
>     - shard-tglb:         [FAIL][7] ([i915#3457]) -> [FAIL][8] +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-tglb8/igt@kms_plane_cursor@pipe-b-overlay-size-128.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb7/igt@kms_plane_cursor@pipe-b-overlay-size-128.html

Failing since CI_DRM_10065.
https://gitlab.freedesktop.org/drm/intel/-/issues/2657


None of these failures/warnings are caused by this series, so applying
to di-n.


Matt

> 
>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@arb_shader_image_load_store@max-size (NEW):
>     - pig-glk-j5005:      NOTRUN -> [INCOMPLETE][9] +3 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/pig-glk-j5005/spec@arb_shader_image_load_store@max-size.html
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat3-position-double_dmat4x3 (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][10] +7 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat3-position-double_dmat4x3.html
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ushort_uvec3-double_dmat3x2 (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [CRASH][11]
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/pig-icl-1065g7/spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ushort_uvec3-double_dmat3x2.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_10071_full and Patchwork_20107_full:
> 
> ### New Piglit tests (13) ###
> 
>   * spec@arb_shader_image_load_store@max-size:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 1:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 2:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader 512 42 8 8 3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat2_array5-uint_uvec2-position:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x3-position-double_dmat3x4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat4x3-uint_uvec3-position:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec3_array3-double_dmat3_array2-position:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec4-position-double_dmat2x4_array2:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_mat3-position-double_dmat4x3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-double_dmat2-float_mat2_array3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-position-ushort_uvec3-double_dmat3x2:
>     - Statuses : 1 crash(s)
>     - Exec time: [1.07] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-uint_uvec3-double_dmat4x2-position:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_20107_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@api_intel_bb@blit-reloc-purge-cache:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][12] ([i915#3457]) +2 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl7/igt@api_intel_bb@blit-reloc-purge-cache.html
> 
>   * igt@gem_create@create-massive:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][13] ([i915#3002])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb7/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@engines-persistence@bcs0:
>     - shard-apl:          NOTRUN -> [FAIL][14] ([i915#3457]) +12 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl2/igt@gem_ctx_persistence@engines-persistence@bcs0.html
> 
>   * igt@gem_ctx_persistence@legacy-engines-mixed-process:
>     - shard-snb:          NOTRUN -> [SKIP][15] ([fdo#109271] / [i915#1099]) +4 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb7/igt@gem_ctx_persistence@legacy-engines-mixed-process.html
> 
>   * igt@gem_ctx_ringsize@active@bcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][16] ([i915#3316] / [i915#3457])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@gem_ctx_ringsize@active@bcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][17] -> [TIMEOUT][18] ([i915#2369] / [i915#3063] / [i915#3457])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-tglb8/igt@gem_eio@unwedge-stress.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb5/igt@gem_eio@unwedge-stress.html
>     - shard-skl:          [PASS][19] -> [TIMEOUT][20] ([i915#2369] / [i915#3063] / [i915#3457])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-skl4/igt@gem_eio@unwedge-stress.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][21] ([i915#2846] / [i915#3457])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-kbl:          [PASS][22] -> [FAIL][23] ([i915#2842] / [i915#3457])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-kbl6/igt@gem_exec_fair@basic-none@vcs1.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl3/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fence@keep-in-fence@vcs0:
>     - shard-glk:          [PASS][24] -> [INCOMPLETE][25] ([i915#3457])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-glk2/igt@gem_exec_fence@keep-in-fence@vcs0.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk3/igt@gem_exec_fence@keep-in-fence@vcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-cmd:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#109313])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@gem_exec_flush@basic-batch-kernel-default-cmd.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271]) +81 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@bcs0:
>     - shard-skl:          NOTRUN -> [FAIL][28] ([i915#2389] / [i915#3457]) +3 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@gem_exec_reloc@basic-wide-active@bcs0.html
>     - shard-tglb:         NOTRUN -> [FAIL][29] ([i915#2389] / [i915#3457]) +4 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb8/igt@gem_exec_reloc@basic-wide-active@bcs0.html
> 
>   * igt@gem_exec_schedule@pi-userfault@vcs0:
>     - shard-glk:          [PASS][30] -> [FAIL][31] ([i915#3457]) +30 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-glk7/igt@gem_exec_schedule@pi-userfault@vcs0.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk7/igt@gem_exec_schedule@pi-userfault@vcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][32] ([i915#3468])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl6/igt@gem_mmap_gtt@cpuset-basic-small-copy.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][33] ([i915#3468])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-xy:
>     - shard-glk:          [PASS][34] -> [INCOMPLETE][35] ([i915#3468])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-glk2/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk8/igt@gem_mmap_gtt@cpuset-medium-copy-xy.html
> 
>   * igt@gem_mmap_gtt@fault-concurrent-y:
>     - shard-glk:          NOTRUN -> [INCOMPLETE][36] ([i915#3468])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk7/igt@gem_mmap_gtt@fault-concurrent-y.html
> 
>   * igt@gem_pwrite@basic-exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][37] ([i915#2658])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@gem_pwrite@basic-exhaustion.html
>     - shard-snb:          NOTRUN -> [WARN][38] ([i915#2658])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb7/igt@gem_pwrite@basic-exhaustion.html
> 
>   * igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs:
>     - shard-apl:          NOTRUN -> [INCOMPLETE][39] ([i915#3468])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl2/igt@gem_render_copy@mixed-tiled-to-yf-tiled-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][40] ([i915#3468])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl4/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-ccs.html
> 
>   * igt@gem_spin_batch@engines@vcs0:
>     - shard-apl:          NOTRUN -> [FAIL][41] ([i915#2898] / [i915#3457]) +3 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl2/igt@gem_spin_batch@engines@vcs0.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3323])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][43] ([i915#3002]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@set-cache-level:
>     - shard-snb:          NOTRUN -> [FAIL][44] ([i915#3324])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb7/igt@gem_userptr_blits@set-cache-level.html
>     - shard-skl:          NOTRUN -> [FAIL][45] ([i915#3324])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@gem_userptr_blits@set-cache-level.html
> 
>   * igt@gem_wait@await@rcs0:
>     - shard-apl:          [PASS][46] -> [FAIL][47] ([i915#3457]) +5 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-apl1/igt@gem_wait@await@rcs0.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl7/igt@gem_wait@await@rcs0.html
> 
>   * igt@gem_workarounds@suspend-resume-fd:
>     - shard-kbl:          [PASS][48] -> [DMESG-WARN][49] ([i915#180] / [i915#3457])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-kbl1/igt@gem_workarounds@suspend-resume-fd.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl4/igt@gem_workarounds@suspend-resume-fd.html
> 
>   * igt@gen3_render_tiledx_blits:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109289]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@gen3_render_tiledx_blits.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-apl:          NOTRUN -> [FAIL][51] ([i915#3296])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_rpm@cursor-dpms:
>     - shard-kbl:          [PASS][52] -> [DMESG-WARN][53] ([i915#3457])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-kbl6/igt@i915_pm_rpm@cursor-dpms.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl4/igt@i915_pm_rpm@cursor-dpms.html
> 
>   * igt@i915_pm_rpm@gem-mmap-type@wc:
>     - shard-skl:          [PASS][54] -> [DMESG-WARN][55] ([i915#3457])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-skl7/igt@i915_pm_rpm@gem-mmap-type@wc.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl9/igt@i915_pm_rpm@gem-mmap-type@wc.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress-no-wait:
>     - shard-kbl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +19 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl6/igt@i915_pm_rpm@modeset-lpsp-stress-no-wait.html
> 
>   * igt@i915_pm_rps@min-max-config-loaded:
>     - shard-snb:          NOTRUN -> [DMESG-WARN][57] ([i915#3457]) +1 similar issue
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb2/igt@i915_pm_rps@min-max-config-loaded.html
>     - shard-skl:          NOTRUN -> [DMESG-WARN][58] ([i915#3457]) +2 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@i915_pm_rps@min-max-config-loaded.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-tglb:         NOTRUN -> [SKIP][59] ([fdo#109303])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb8/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          NOTRUN -> [INCOMPLETE][60] ([i915#2782])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb7/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-skl:          [PASS][61] -> [INCOMPLETE][62] ([i915#198])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-skl4/igt@i915_selftest@mock@requests.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl7/igt@i915_selftest@mock@requests.html
> 
>   * igt@i915_suspend@debugfs-reader:
>     - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-kbl6/igt@i915_suspend@debugfs-reader.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl4/igt@i915_suspend@debugfs-reader.html
> 
>   * igt@kms_atomic@plane-primary-overlay-mutable-zpos:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([i915#404])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb8/igt@kms_atomic@plane-primary-overlay-mutable-zpos.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl6/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-d-legacy-gamma-reset:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([fdo#109278]) +2 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_color@pipe-d-legacy-gamma-reset.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][68] ([fdo#109271] / [fdo#111827]) +17 similar issues
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb7/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-limited-range:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl8/igt@kms_color_chamelium@pipe-a-ctm-limited-range.html
> 
>   * igt@kms_color_chamelium@pipe-a-gamma:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_color_chamelium@pipe-a-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_content_protection@atomic-dpms:
>     - shard-apl:          NOTRUN -> [TIMEOUT][72] ([i915#1319])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@kms_content_protection@atomic-dpms.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x128-random:
>     - shard-kbl:          NOTRUN -> [FAIL][73] ([i915#3444] / [i915#3457]) +3 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-128x128-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding:
>     - shard-apl:          [PASS][74] -> [FAIL][75] ([i915#3444] / [i915#3457]) +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-apl2/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl8/igt@kms_cursor_crc@pipe-a-cursor-128x42-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x32-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#3319] / [i915#3457])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-32x32-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-random:
>     - shard-iclb:         NOTRUN -> [FAIL][77] ([i915#3457])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_cursor_crc@pipe-a-cursor-64x64-random.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen:
>     - shard-skl:          NOTRUN -> [SKIP][78] ([fdo#109271] / [i915#3457]) +17 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding:
>     - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#3457]) +3 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl6/igt@kms_cursor_crc@pipe-b-cursor-512x170-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([fdo#109278] / [fdo#109279] / [i915#3457]) +1 similar issue
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
>     - shard-apl:          NOTRUN -> [FAIL][81] ([i915#3444] / [i915#3457]) +4 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen:
>     - shard-snb:          NOTRUN -> [FAIL][82] ([i915#3457]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb6/igt@kms_cursor_crc@pipe-b-cursor-64x64-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
>     - shard-tglb:         [PASS][83] -> [FAIL][84] ([i915#2124] / [i915#3457]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb8/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen:
>     - shard-skl:          [PASS][85] -> [FAIL][86] ([i915#3444] / [i915#3457])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x256-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
>     - shard-snb:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3457]) +40 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb6/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3457]) +25 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl8/igt@kms_cursor_crc@pipe-c-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
>     - shard-skl:          NOTRUN -> [FAIL][89] ([i915#3444] / [i915#3457]) +3 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen:
>     - shard-glk:          [PASS][90] -> [FAIL][91] ([i915#3444] / [i915#3457]) +2 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-glk4/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk2/igt@kms_cursor_crc@pipe-c-cursor-64x64-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109278] / [i915#3457]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_cursor_crc@pipe-d-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][93] ([fdo#109279] / [i915#3359] / [i915#3457])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb8/igt@kms_cursor_crc@pipe-d-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:
>     - shard-glk:          [PASS][94] -> [FAIL][95] ([i915#70])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-glk5/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk2/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html
> 
>   * igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge:
>     - shard-apl:          [PASS][96] -> [FAIL][97] ([i915#70])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-apl2/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@kms_cursor_edge_walk@pipe-c-64x64-bottom-edge.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][98] ([fdo#109274] / [fdo#109278])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][99] -> [FAIL][100] ([i915#2346] / [i915#3457])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          NOTRUN -> [FAIL][101] ([i915#2346] / [i915#3457] / [i915#533])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-flip-vs-rmfb-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109274])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_flip@2x-flip-vs-rmfb-interruptible.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-tglb:         NOTRUN -> [SKIP][103] ([fdo#111825])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-tglb8/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-dp1:
>     - shard-apl:          [PASS][104] -> [FAIL][105] ([i915#79])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-apl2/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl8/igt@kms_flip@flip-vs-expired-vblank@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-edp1:
>     - shard-skl:          [PASS][106] -> [FAIL][107] ([i915#79])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@kms_flip@flip-vs-expired-vblank@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-snb:          NOTRUN -> [SKIP][108] ([fdo#109271]) +272 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt:
>     - shard-apl:          NOTRUN -> [SKIP][109] ([fdo#109271]) +167 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109280]) +3 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-iclb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][111] ([fdo#109271] / [i915#533])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane@pixel-format-pipe-a-planes-source-clamping:
>     - shard-apl:          NOTRUN -> [FAIL][112] ([i915#1623] / [i915#3457])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@kms_plane@pixel-format-pipe-a-planes-source-clamping.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl8/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][114] ([fdo#108145] / [i915#265]) +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant:
>     - shard-glk:          [PASS][115] -> [FAIL][116] ([fdo#108145] / [i915#265])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10071/shard-glk6/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-glk9/igt@kms_plane_alpha_blend@pipe-b-coverage-vs-premult-vs-constant.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][117] ([i915#265])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_cursor@pipe-a-primary-size-128:
>     - shard-kbl:          NOTRUN -> [FAIL][118] ([i915#2657])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-kbl6/igt@kms_plane_cursor@pipe-a-primary-size-128.html
> 
>   * igt@kms_plane_cursor@pipe-a-primary-size-256:
>     - shard-apl:          NOTRUN -> [FAIL][119] ([i915#2657])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-apl7/igt@kms_plane_cursor@pipe-a-primary-size-256.html
> 
>   * igt@kms_plane_cursor@pipe-b-overlay-size-256:
>     - shard-snb:          NOTRUN -> [FAIL][120] ([i915#3461]) +2 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/shard-snb2/igt@
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_20107/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
