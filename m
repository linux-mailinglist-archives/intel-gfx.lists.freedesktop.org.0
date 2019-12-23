Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F6F129608
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 13:32:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14E976E290;
	Mon, 23 Dec 2019 12:32:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3ED26E290
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 12:32:42 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 04:32:42 -0800
X-IronPort-AV: E=Sophos;i="5.69,347,1571727600"; d="scan'208";a="207261967"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 04:32:40 -0800
Date: Mon, 23 Dec 2019 14:32:12 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Mika Kahola <mika.kahola@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Message-ID: <20191223123212.GC28659@ideak-desk.fi.intel.com>
References: <20191221120543.22816-1-imre.deak@intel.com>
 <157710144658.16935.15995633062731460084@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157710144658.16935.15995633062731460084@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/tgl=3A_Render_decompression_support?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 11:44:06AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tgl: Render decompression support
> URL   : https://patchwork.freedesktop.org/series/71239/
> State : success

Thanks for the reviews, pushed to -dinq.

> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7617_full -> Patchwork_15870_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.
> 
>   
> 
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_7617_full and Patchwork_15870_full:
> 
> ### New Piglit tests (12) ###
> 
>   * spec@arb_texture_rg@fbo-generatemipmap-formats:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.16] s
> 
>   * spec@arb_texture_rg@fbo-rg-gl_r8:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.08] s
> 
>   * spec@arb_texture_rg@multisample-formats 2 gl_arb_texture_rg-float:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.18] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_double-position-float_mat4_array3:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dvec4-int_int_array3-position:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.16] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-float_float_array3-double_dmat2x4_array2-position:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.17] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec3_array3-position-double_dmat3x4:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.19] s
> 
>   * spec@ext_transform_feedback@query-primitives_generated-bufferrange:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.09] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat4-int_ivec4-position:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.17] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-position-double_dvec4-int_ivec4:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-position-float_mat2_array3-double_dmat3x2_array2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.14] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-position-uint_uvec3_array3-double_dmat3x4:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.14] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15870_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-kbl:          [PASS][1] -> [DMESG-WARN][2] ([i915#180]) +5 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl4/igt@gem_ctx_isolation@rcs0-s3.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-kbl2/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_persistence@vecs0-mixed-process:
>     - shard-apl:          [PASS][3] -> [FAIL][4] ([i915#679])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl6/igt@gem_ctx_persistence@vecs0-mixed-process.html
>     - shard-skl:          [PASS][5] -> [FAIL][6] ([i915#679])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl4/igt@gem_ctx_persistence@vecs0-mixed-process.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl1/igt@gem_ctx_persistence@vecs0-mixed-process.html
> 
>   * igt@gem_exec_create@forked:
>     - shard-tglb:         [PASS][7] -> [INCOMPLETE][8] ([fdo#108838] / [i915#435])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb5/igt@gem_exec_create@forked.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb5/igt@gem_exec_create@forked.html
> 
>   * igt@gem_exec_reuse@single:
>     - shard-tglb:         [PASS][9] -> [INCOMPLETE][10] ([i915#435])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb1/igt@gem_exec_reuse@single.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb5/igt@gem_exec_reuse@single.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-bsd2:
>     - shard-tglb:         [PASS][11] -> [INCOMPLETE][12] ([fdo#111606] / [fdo#111677])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb4/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-bsd2.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-skl:          [PASS][13] -> [TIMEOUT][14] ([i915#530])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl6/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][15] -> [FAIL][16] ([i915#644])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-glk4/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][17] -> [DMESG-WARN][18] ([i915#180]) +2 similar issues
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#456] / [i915#460]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb7/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@kms_color@pipe-b-ctm-max:
>     - shard-skl:          [PASS][21] -> [DMESG-WARN][22] ([i915#109])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl10/igt@kms_color@pipe-b-ctm-max.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl7/igt@kms_color@pipe-b-ctm-max.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding:
>     - shard-skl:          [PASS][23] -> [FAIL][24] ([i915#54]) +2 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl8/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl2/igt@kms_cursor_crc@pipe-b-cursor-64x21-sliding.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-untiled:
>     - shard-skl:          [PASS][25] -> [INCOMPLETE][26] ([i915#646] / [i915#667])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl4/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-blt-untiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-tglb:         [PASS][27] -> [INCOMPLETE][28] ([i915#435] / [i915#456] / [i915#460])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb3/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [PASS][29] -> [FAIL][30] ([i915#79])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl7/igt@kms_flip@flip-vs-expired-vblank.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl4/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [PASS][31] -> [INCOMPLETE][32] ([i915#221])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl1/igt@kms_flip@flip-vs-suspend.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl4/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render:
>     - shard-kbl:          [PASS][33] -> [INCOMPLETE][34] ([fdo#103665] / [i915#667])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-kbl6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move:
>     - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#123] / [i915#667])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl9/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-move.html
> 
>   * igt@kms_plane@pixel-format-pipe-d-planes:
>     - shard-tglb:         [PASS][37] -> [INCOMPLETE][38] ([i915#435] / [i915#667])
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@kms_plane@pixel-format-pipe-d-planes.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb4/igt@kms_plane@pixel-format-pipe-d-planes.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][39] -> [FAIL][40] ([i915#31])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl2/igt@kms_setmode@basic.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl1/igt@kms_setmode@basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_shared@q-smoketest-all:
>     - shard-tglb:         [INCOMPLETE][41] ([fdo#111735]) -> [PASS][42]
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@gem_ctx_shared@q-smoketest-all.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb1/igt@gem_ctx_shared@q-smoketest-all.html
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-snb:          [INCOMPLETE][43] ([i915#82]) -> [PASS][44]
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-snb1/igt@gem_eio@in-flight-contexts-immediate.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-snb2/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@suspend:
>     - shard-tglb:         [INCOMPLETE][45] ([i915#460]) -> [PASS][46]
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb4/igt@gem_eio@suspend.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb7/igt@gem_eio@suspend.html
> 
>   * igt@gem_exec_balancer@smoke:
>     - shard-tglb:         [INCOMPLETE][47] ([fdo#111593]) -> [PASS][48]
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb3/igt@gem_exec_balancer@smoke.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb5/igt@gem_exec_balancer@smoke.html
> 
>   * igt@gem_exec_nop@basic-series:
>     - shard-tglb:         [INCOMPLETE][49] ([i915#435]) -> [PASS][50]
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb4/igt@gem_exec_nop@basic-series.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb7/igt@gem_exec_nop@basic-series.html
> 
>   * igt@gem_exec_parallel@fds:
>     - shard-tglb:         [INCOMPLETE][51] ([i915#470]) -> [PASS][52]
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb6/igt@gem_exec_parallel@fds.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb7/igt@gem_exec_parallel@fds.html
> 
>   * igt@gem_exec_schedule@smoketest-bsd2:
>     - shard-tglb:         [INCOMPLETE][53] ([i915#707]) -> [PASS][54]
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb6/igt@gem_exec_schedule@smoketest-bsd2.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb7/igt@gem_exec_schedule@smoketest-bsd2.html
> 
>   * igt@gem_exec_schedule@wide-render:
>     - shard-kbl:          [INCOMPLETE][55] ([fdo#103665]) -> [PASS][56]
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl7/igt@gem_exec_schedule@wide-render.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-kbl3/igt@gem_exec_schedule@wide-render.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-kbl:          [DMESG-WARN][57] ([i915#180]) -> [PASS][58]
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-kbl2/igt@gem_exec_suspend@basic-s3.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-kbl6/igt@gem_exec_suspend@basic-s3.html
> 
>   * {igt@gen9_exec_parse@allowed-single}:
>     - shard-glk:          [DMESG-WARN][59] ([i915#716]) -> [PASS][60] +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-glk3/igt@gen9_exec_parse@allowed-single.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-glk3/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-skl:          [INCOMPLETE][61] ([i915#151] / [i915#69]) -> [PASS][62]
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl4/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl1/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@i915_selftest@live_requests:
>     - shard-tglb:         [INCOMPLETE][63] ([fdo#112057]) -> [PASS][64]
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb7/igt@i915_selftest@live_requests.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb4/igt@i915_selftest@live_requests.html
> 
>   * igt@i915_selftest@mock_requests:
>     - shard-apl:          [DMESG-WARN][65] -> [PASS][66]
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl2/igt@i915_selftest@mock_requests.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl8/igt@i915_selftest@mock_requests.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo:
>     - shard-tglb:         [SKIP][67] ([i915#400]) -> [PASS][68] +12 similar issues
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb6/igt@kms_ccs@pipe-b-ccs-on-another-bo.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb7/igt@kms_ccs@pipe-b-ccs-on-another-bo.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
>     - shard-skl:          [FAIL][69] ([i915#54]) -> [PASS][70] +4 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl7/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled:
>     - shard-skl:          [INCOMPLETE][71] ([i915#435]) -> [PASS][72]
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl1/igt@kms_draw_crc@draw-method-xrgb2101010-blt-xtiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled:
>     - shard-skl:          [FAIL][73] ([i915#52] / [i915#54]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl9/igt@kms_draw_crc@draw-method-xrgb8888-mmap-gtt-xtiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-skl:          [FAIL][75] ([i915#79]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>     - shard-apl:          [FAIL][77] ([i915#79]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl3/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@plain-flip-ts-check:
>     - shard-skl:          [FAIL][79] ([i915#34]) -> [PASS][80]
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl3/igt@kms_flip@plain-flip-ts-check.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl9/igt@kms_flip@plain-flip-ts-check.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt:
>     - shard-tglb:         [FAIL][81] ([i915#49]) -> [PASS][82] +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-skl:          [INCOMPLETE][83] ([i915#123] / [i915#69]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl8/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl3/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-tglb:         [INCOMPLETE][85] ([i915#456] / [i915#460]) -> [PASS][86] +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-apl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl6/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][89] ([fdo#108145]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-skl5/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-skl9/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-tglb:         [DMESG-WARN][91] ([i915#402]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb3/igt@kms_psr@psr2_suspend.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][93] ([i915#31]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-glk3/igt@kms_setmode@basic.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-glk3/igt@kms_setmode@basic.html
> 
>   * igt@perf@short-reads:
>     - shard-apl:          [TIMEOUT][95] ([i915#51]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl4/igt@perf@short-reads.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl7/igt@perf@short-reads.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_eio@kms:
>     - shard-snb:          [DMESG-WARN][97] ([i915#444]) -> [FAIL][98] ([i915#436])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-snb4/igt@gem_eio@kms.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-snb4/igt@gem_eio@kms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-tglb:         [FAIL][99] ([i915#454]) -> [SKIP][100] ([i915#468])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-tglb5/igt@i915_pm_dc@dc6-psr.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-tglb6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][101], [FAIL][102]) ([i915#716] / [i915#873]) -> [FAIL][103] ([i915#716])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl2/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7617/shard-apl3/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/shard-apl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#103665]: https://bugs.freedesktop.org/show_bug.cgi?id=103665
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#108838]: https://bugs.freedesktop.org/show_bug.cgi?id=108838
>   [fdo#111593]: https://bugs.freedesktop.org/show_bug.cgi?id=111593
>   [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
>   [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
>   [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>   [fdo#112057]: https://bugs.freedesktop.org/show_bug.cgi?id=112057
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#151]: https://gitlab.freedesktop.org/drm/intel/issues/151
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#221]: https://gitlab.freedesktop.org/drm/intel/issues/221
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#34]: https://gitlab.freedesktop.org/drm/intel/issues/34
>   [i915#400]: https://gitlab.freedesktop.org/drm/intel/issues/400
>   [i915#402]: https://gitlab.freedesktop.org/drm/intel/issues/402
>   [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
>   [i915#436]: https://gitlab.freedesktop.org/drm/intel/issues/436
>   [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#468]: https://gitlab.freedesktop.org/drm/intel/issues/468
>   [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#51]: https://gitlab.freedesktop.org/drm/intel/issues/51
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#644]: https://gitlab.freedesktop.org/drm/intel/issues/644
>   [i915#646]: https://gitlab.freedesktop.org/drm/intel/issues/646
>   [i915#667]: https://gitlab.freedesktop.org/drm/intel/issues/667
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#707]: https://gitlab.freedesktop.org/drm/intel/issues/707
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#873]: https://gitlab.freedesktop.org/drm/intel/issues/873
> 
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7617 -> Patchwork_15870
> 
>   CI-20190529: 20190529
>   CI_DRM_7617: 69e01609b293c90f075f1ec63f2665c4714a477c @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5351: e7fdcef72d1d6b3bb9f3003bbc37571959e6e8bb @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_15870: 040fcd92448f46dc429be3cbdcee02f5ffed9c63 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15870/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
