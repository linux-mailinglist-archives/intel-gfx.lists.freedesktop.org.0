Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5222013291E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 15:41:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D40D46E0C9;
	Tue,  7 Jan 2020 14:41:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377E36E0C9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 14:41:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 06:41:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,406,1571727600"; d="scan'208";a="211164347"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga007.jf.intel.com with ESMTP; 07 Jan 2020 06:41:08 -0800
Received: from fmsmsx158.amr.corp.intel.com (10.18.116.75) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 7 Jan 2020 06:41:08 -0800
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.67]) by
 fmsmsx158.amr.corp.intel.com ([169.254.15.85]) with mapi id 14.03.0439.000;
 Tue, 7 Jan 2020 06:41:08 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvZGlzcGxheTog?=
 =?utf-8?Q?Use_external_dependency_loop_for_port_sync?=
Thread-Index: AQHVxSAt5vCMPqxGJUqw+wdWA4LuPKffzNAA
Date: Tue, 7 Jan 2020 14:41:07 +0000
Message-ID: <46428899d1b23ec3f09722eabd987cdd174a80d6.camel@intel.com>
References: <20200106142823.145260-1-jose.souza@intel.com>
 <157837699697.8942.10749080228508046468@emeril.freedesktop.org>
In-Reply-To: <157837699697.8942.10749080228508046468@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.251.129.53]
Content-ID: <D0509FF046BC724FAFA361716FBD362B@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/display=3A_Use_external_dependency_loop_for_port_sync?=
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

On Tue, 2020-01-07 at 06:03 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/display: Use external dependency loop for port sync
> URL   : https://patchwork.freedesktop.org/series/71660/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7688_full -> Patchwork_16005_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_16005_full absolutely
> need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_16005_full, please notify your bug team to
> allow them
>   to document this new failure mode, which will reduce false
> positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in
> Patchwork_16005_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_exec_create@forked:
>     - shard-glk:          [PASS][1] -> [TIMEOUT][2] +1 similar issue
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk7/igt@gem_exec_create@forked.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-glk3/igt@gem_exec_create@forked.html
> 

Not related to the changes in this patch so pushed to dinq, thanks for
the review Manasi.


>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_7688_full and
> Patchwork_16005_full:
> 
> ### New Piglit tests (39) ###
> 
>   * shaders@glsl-fs-textureenvcolor-statechange:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.09] s
> 
>   * spec@!opengl 1.1@depthstencil-default_fb-blit samples=4:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@!opengl 2.0@gl-2.0-shader-materials:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.09] s
> 
>   * spec@!opengl 2.0@vertex-program-two-side enabled back front2
> back2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@arb_copy_image@arb_copy_image-targets gl_texture_1d 32 1 1
> gl_texture_rectangle 32 32 1 11 0 0 5 13 0 14 1 1:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@arb_depth_texture@fbo-clear-formats:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.17] s
> 
>   * spec@arb_framebuffer_object@framebuffer-blit-levels draw rgba:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.11] s
> 
>   * spec@arb_gpu_shader_fp64@execution@
> built-in-functions@gs-equal-dvec2-dvec2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.10] s
> 
>   * spec@arb_gpu_shader_fp64@execution@
> built-in-functions@vs-notequal-dvec2-dvec2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 32 1 8 64 2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@arb_texture_cube_map_array@texturesize@fs-texturesize-
> samplercubearray:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.08] s
> 
>   * spec@arb_texture_rg@fbo-rg-gl_rg:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat
> 2x3-position-uint_uint:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.89] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-double_dmat
> 2x4-float_mat2x4-position:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.98] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-int_ivec4-
> position-double_dvec2:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.97] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@
> vs_in@vs-input-position-float_mat2-double_dmat2:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.91] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@vs_in@vs-input-ushort_uvec
> 3-position-double_dmat2x3:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.96] s
> 
>   * spec@ext_framebuffer_multisample@interpolation 2 centroid-deriv-
> disabled:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.10] s
> 
>   * spec@ext_framebuffer_multisample@polygon-smooth 8:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.14] s
> 
>   * spec@ext_texture_compression_s3tc@s3tc-targeted:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.09] s
> 
>   * spec@glsl-1.10@execution@interpolation@interpolation-none-
> gl_backcolor-flat-fixed:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.11] s
> 
>   * spec@glsl-1.10@execution@interpolation@interpolation-none-
> gl_frontsecondarycolor-smooth-vertex:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.11] s
> 
>   * spec@glsl-1.30@execution@interpolation@interpolation-flat-
> gl_backcolor-flat-vertex:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@glsl-1.30@execution@interpolation@interpolation-flat-
> gl_backsecondarycolor-smooth-fixed:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@glsl-1.30@execution@interpolation@interpolation-mixed:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.14] s
> 
>   * spec@glsl-1.30@execution@interpolation@interpolation-none-other-
> flat-distance:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@glsl-1.30@execution@interpolation@interpolation-
> noperspective-gl_backcolor-flat-fixed:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@glsl-1.30@execution@interpolation@interpolation-smooth-
> gl_backcolor-smooth-distance:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-double_dmat3x4-position-
> int_int:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.24] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-position-uint_uvec3-
> double_dvec2_array2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.15] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-greaterthan-ivec2-
> ivec2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-lessthanequal-
> uvec2-uvec2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.11] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-op-add-int-ivec2:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.63] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-op-add-mat3x2-
> float:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.67] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-op-bitand-uvec2-
> uint:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.71] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-op-div-float-mat2:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.63] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-op-div-uint-uint:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.71] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-op-eq-uvec4-uvec4:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@glsl-4.30@execution@built-in-functions@cs-op-ge-uint-uint:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.64] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_16005_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@rcs0-s3:
>     - shard-iclb:         [PASS][3] -> [DMESG-WARN][4] ([fdo#111764])
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb3/igt@gem_ctx_isolation@rcs0-s3.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb3/igt@gem_ctx_isolation@rcs0-s3.html
> 
>   * igt@gem_ctx_persistence@bcs0-mixed-process:
>     - shard-apl:          [PASS][5] -> [FAIL][6] ([i915#679])
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
>    [6]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-apl3/igt@gem_ctx_persistence@bcs0-mixed-process.html
>     - shard-skl:          [PASS][7] -> [FAIL][8] ([i915#679])
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl5/igt@gem_ctx_persistence@bcs0-mixed-process.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl6/igt@gem_ctx_persistence@bcs0-mixed-process.html
> 
>   * igt@gem_ctx_persistence@rcs0-mixed-process:
>     - shard-glk:          [PASS][9] -> [FAIL][10] ([i915#679])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk4/igt@gem_ctx_persistence@rcs0-mixed-process.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-glk2/igt@gem_ctx_persistence@rcs0-mixed-process.html
> 
>   * igt@gem_ctx_persistence@vcs1-mixed-process:
>     - shard-iclb:         [PASS][11] -> [SKIP][12] ([fdo#109276] /
> [fdo#112080]) +2 similar issues
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb4/igt@gem_ctx_persistence@vcs1-mixed-process.html
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
> 
>   * igt@gem_ctx_shared@exec-single-timeline-bsd:
>     - shard-iclb:         [PASS][13] -> [SKIP][14] ([fdo#110841])
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@gem_ctx_shared@exec-single-timeline-bsd.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb1/igt@gem_ctx_shared@exec-single-timeline-bsd.html
> 
>   * igt@gem_ctx_shared@q-smoketest-vebox:
>     - shard-tglb:         [PASS][15] -> [INCOMPLETE][16]
> ([fdo#111735])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb5/igt@gem_ctx_shared@q-smoketest-vebox.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb3/igt@gem_ctx_shared@q-smoketest-vebox.html
> 
>   * igt@gem_eio@in-flight-contexts-1us:
>     - shard-snb:          [PASS][17] -> [FAIL][18] ([i915#490])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-snb2/igt@gem_eio@in-flight-contexts-1us.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-snb4/igt@gem_eio@in-flight-contexts-1us.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [PASS][19] -> [INCOMPLETE][20] ([i915#476])
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb7/igt@gem_eio@kms.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb9/igt@gem_eio@kms.html
> 
>   * igt@gem_exec_parallel@fds:
>     - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#470])
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb1/igt@gem_exec_parallel@fds.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb3/igt@gem_exec_parallel@fds.html
> 
>   * igt@gem_exec_schedule@fifo-bsd1:
>     - shard-iclb:         [PASS][23] -> [SKIP][24] ([fdo#109276]) +18
> similar issues
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb2/igt@gem_exec_schedule@fifo-bsd1.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb8/igt@gem_exec_schedule@fifo-bsd1.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [PASS][25] -> [SKIP][26] ([fdo#112146]) +6
> similar issues
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd2:
>     - shard-tglb:         [PASS][27] -> [INCOMPLETE][28]
> ([fdo#111606] / [fdo#111677])
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb1/igt@gem_exec_schedule@preempt-queue-bsd2.html
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb6/igt@gem_exec_schedule@preempt-queue-bsd2.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
>     - shard-tglb:         [PASS][29] -> [INCOMPLETE][30]
> ([fdo#111677])
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb5/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-apl:          [PASS][31] -> [DMESG-WARN][32] ([i915#180])
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl1/igt@gem_softpin@noreloc-s3.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-apl6/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@i915_pm_dc@dc5-dpms:
>     - shard-skl:          [PASS][33] -> [INCOMPLETE][34] ([i915#198])
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl5/igt@i915_pm_dc@dc5-dpms.html
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl1/igt@i915_pm_dc@dc5-dpms.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-skl:          [PASS][35] -> [INCOMPLETE][36] ([i915#69])
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl7/igt@i915_suspend@fence-restore-untiled.html
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl3/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_color@pipe-a-ctm-0-5:
>     - shard-skl:          [PASS][37] -> [DMESG-WARN][38] ([i915#109])
> +1 similar issue
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl8/igt@kms_color@pipe-a-ctm-0-5.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>     - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#52] /
> [i915#54])
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl7/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render:
>     - shard-tglb:         [PASS][41] -> [FAIL][42] ([i915#49])
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-rgb565-draw-render.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-kbl:          [PASS][43] -> [DMESG-WARN][44] ([i915#180])
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl2/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-kbl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes:
>     - shard-tglb:         [PASS][45] -> [INCOMPLETE][46] ([i915#456]
> / [i915#460])
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb7/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-b-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          [PASS][47] -> [FAIL][48] ([fdo#108145])
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_setmode@basic:
>     - shard-tglb:         [PASS][49] -> [FAIL][50] ([i915#31])
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@kms_setmode@basic.html
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb5/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@busy-idle-check-all-vcs1:
>     - shard-iclb:         [PASS][51] -> [SKIP][52] ([fdo#112080]) +5
> similar issues
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb2/igt@perf_pmu@busy-idle-check-all-vcs1.html
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb7/igt@perf_pmu@busy-idle-check-all-vcs1.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_busy@close-race:
>     - shard-tglb:         [INCOMPLETE][53] ([i915#435]) -> [PASS][54]
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb5/igt@gem_busy@close-race.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb3/igt@gem_busy@close-race.html
> 
>   * igt@gem_ctx_persistence@processes:
>     - shard-skl:          [FAIL][55] ([i915#570]) -> [PASS][56]
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl1/igt@gem_ctx_persistence@processes.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl10/igt@gem_ctx_persistence@processes.html
> 
>   * igt@gem_ctx_persistence@vcs1-queued:
>     - shard-iclb:         [SKIP][57] ([fdo#109276] / [fdo#112080]) ->
> [PASS][58] +3 similar issues
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@gem_ctx_persistence@vcs1-queued.html
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb4/igt@gem_ctx_persistence@vcs1-queued.html
> 
>   * igt@gem_ctx_shared@q-smoketest-bsd:
>     - shard-tglb:         [INCOMPLETE][59] ([i915#461]) -> [PASS][60]
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb6/igt@gem_ctx_shared@q-smoketest-bsd.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb1/igt@gem_ctx_shared@q-smoketest-bsd.html
> 
>   * igt@gem_ctx_shared@q-smoketest-bsd1:
>     - shard-tglb:         [INCOMPLETE][61] ([fdo#111735]) ->
> [PASS][62]
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@gem_ctx_shared@q-smoketest-bsd1.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb2/igt@gem_ctx_shared@q-smoketest-bsd1.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-skl:          [INCOMPLETE][63] ([i915#69]) -> [PASS][64]
> +1 similar issue
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl10/igt@gem_eio@in-flight-suspend.html
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl2/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [INCOMPLETE][65] ([i915#469]) -> [PASS][66]
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb2/igt@gem_eio@unwedge-stress.html
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@nop:
>     - shard-tglb:         [INCOMPLETE][67] ([fdo#111736]) ->
> [PASS][68]
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb1/igt@gem_exec_balancer@nop.html
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb5/igt@gem_exec_balancer@nop.html
> 
>   * igt@gem_exec_reloc@basic-active:
>     - shard-tglb:         [INCOMPLETE][69] ([i915#472]) -> [PASS][70]
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb6/igt@gem_exec_reloc@basic-active.html
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb6/igt@gem_exec_reloc@basic-active.html
> 
>   * igt@gem_exec_reloc@basic-gtt-wc-active:
>     - shard-skl:          [DMESG-WARN][71] ([i915#109]) -> [PASS][72]
> +1 similar issue
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl9/igt@gem_exec_reloc@basic-gtt-wc-active.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl5/igt@gem_exec_reloc@basic-gtt-wc-active.html
> 
>   * igt@gem_exec_schedule@out-order-bsd2:
>     - shard-iclb:         [SKIP][73] ([fdo#109276]) -> [PASS][74] +15
> similar issues
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@gem_exec_schedule@out-order-bsd2.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb4/igt@gem_exec_schedule@out-order-bsd2.html
> 
>   * igt@gem_exec_schedule@preempt-queue-chain-render:
>     - shard-tglb:         [INCOMPLETE][75] ([fdo#111606] /
> [fdo#111677]) -> [PASS][76]
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb3/igt@gem_exec_schedule@preempt-queue-chain-render.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb1/igt@gem_exec_schedule@preempt-queue-chain-render.html
> 
>   * igt@gem_exec_schedule@promotion-bsd:
>     - shard-iclb:         [SKIP][77] ([fdo#112146]) -> [PASS][78] +1
> similar issue
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb4/igt@gem_exec_schedule@promotion-bsd.html
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb8/igt@gem_exec_schedule@promotion-bsd.html
> 
>   * igt@gem_exec_suspend@basic-s3:
>     - shard-tglb:         [INCOMPLETE][79] ([fdo#111736] /
> [i915#460]) -> [PASS][80]
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@gem_exec_suspend@basic-s3.html
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb2/igt@gem_exec_suspend@basic-s3.html
> 
>   * igt@gem_persistent_relocs@forked-interruptible-thrashing:
>     - shard-iclb:         [FAIL][81] ([i915#520]) -> [PASS][82]
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb3/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb5/igt@gem_persistent_relocs@forked-interruptible-thrashing.html
> 
>   * igt@gem_persistent_relocs@forked-thrash-inactive:
>     - shard-tglb:         [TIMEOUT][83] ([i915#530]) -> [PASS][84]
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb7/igt@gem_persistent_relocs@forked-thrash-inactive.html
>    [84]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb3/igt@gem_persistent_relocs@forked-thrash-inactive.html
> 
>   * igt@gem_sync@basic-store-each:
>     - shard-tglb:         [INCOMPLETE][85] ([i915#435] / [i915#472])
> -> [PASS][86]
>    [85]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb7/igt@gem_sync@basic-store-each.html
>    [86]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb7/igt@gem_sync@basic-store-each.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][87] ([i915#454]) -> [PASS][88]
>    [87]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb6/igt@i915_pm_dc@dc6-psr.html
>    [88]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb1/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rps@waitboost:
>     - shard-iclb:         [FAIL][89] ([i915#413]) -> [PASS][90]
>    [89]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb5/igt@i915_pm_rps@waitboost.html
>    [90]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb1/igt@i915_pm_rps@waitboost.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][91] ([i915#180]) -> [PASS][92]
> +5 similar issues
>    [91]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [92]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy:
>     - shard-glk:          [FAIL][93] ([i915#72]) -> [PASS][94]
>    [93]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk2/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
>    [94]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-glk7/igt@kms_cursor_legacy@2x-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-glk:          [FAIL][95] ([IGT#5]) -> [PASS][96]
>    [95]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [96]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-glk8/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-apl:          [FAIL][97] ([i915#79]) -> [PASS][98]
>    [97]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [98]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-apl6/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-kbl:          [DMESG-WARN][99] ([i915#180]) ->
> [PASS][100]
>    [99]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-kbl4/igt@kms_flip@flip-vs-suspend.html
>    [100]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-kbl3/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw:
>     - shard-tglb:         [FAIL][101] ([i915#49]) -> [PASS][102] +1
> similar issue
>    [101]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb5/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
>    [102]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb2/igt@kms_frontbuffer_tracking@fbc-1p-pri-indfb-multidraw.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [FAIL][103] ([fdo#108145] / [i915#265]) ->
> [PASS][104]
>    [103]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [104]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][105] ([fdo#109441]) -> [PASS][106]
> +1 similar issue
>    [105]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [106]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-skl:          [FAIL][107] ([i915#31]) -> [PASS][108]
>    [107]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-skl3/igt@kms_setmode@basic.html
>    [108]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-skl2/igt@kms_setmode@basic.html
> 
>   * igt@perf_pmu@busy-no-semaphores-vcs1:
>     - shard-iclb:         [SKIP][109] ([fdo#112080]) -> [PASS][110]
> +9 similar issues
>    [109]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb7/igt@perf_pmu@busy-no-semaphores-vcs1.html
>    [110]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb1/igt@perf_pmu@busy-no-semaphores-vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs1-nonpriv:
>     - shard-iclb:         [FAIL][111] ([IGT#28]) -> [SKIP][112]
> ([fdo#109276] / [fdo#112080])
>    [111]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-iclb1/igt@gem_ctx_isolation@vcs1-nonpriv.html
>    [112]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-iclb6/igt@gem_ctx_isolation@vcs1-nonpriv.html
> 
>   * igt@gem_ctx_isolation@vcs2-reset:
>     - shard-tglb:         [SKIP][113] ([fdo#112080]) -> [SKIP][114]
> ([fdo#111912] / [fdo#112080])
>    [113]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-tglb9/igt@gem_ctx_isolation@vcs2-reset.html
>    [114]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-tglb5/igt@gem_ctx_isolation@vcs2-reset.html
> 
>   * igt@gem_eio@kms:
>     - shard-snb:          [INCOMPLETE][115] ([i915#82]) -> [DMESG-
> WARN][116] ([i915#444])
>    [115]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7688/shard-snb2/igt@gem_eio@kms.html
>    [116]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/shard-snb6/igt@gem_eio@kms.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when
> computing
>           the status of the difference (SUCCESS, WARNING, or
> FAILURE).
> 
>   [IGT#28]: 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/28
>   [IGT#5]: https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/5
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109276]: https://bugs.freedesktop.org/show_bug.cgi?id=109276
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#110841]: https://bugs.freedesktop.org/show_bug.cgi?id=110841
>   [fdo#111606]: https://bugs.freedesktop.org/show_bug.cgi?id=111606
>   [fdo#111677]: https://bugs.freedesktop.org/show_bug.cgi?id=111677
>   [fdo#111735]: https://bugs.freedesktop.org/show_bug.cgi?id=111735
>   [fdo#111736]: https://bugs.freedesktop.org/show_bug.cgi?id=111736
>   [fdo#111764]: https://bugs.freedesktop.org/show_bug.cgi?id=111764
>   [fdo#111912]: https://bugs.freedesktop.org/show_bug.cgi?id=111912
>   [fdo#112080]: https://bugs.freedesktop.org/show_bug.cgi?id=112080
>   [fdo#112146]: https://bugs.freedesktop.org/show_bug.cgi?id=112146
>   [i915#109]: https://gitlab.freedesktop.org/drm/intel/issues/109
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#413]: https://gitlab.freedesktop.org/drm/intel/issues/413
>   [i915#435]: https://gitlab.freedesktop.org/drm/intel/issues/435
>   [i915#444]: https://gitlab.freedesktop.org/drm/intel/issues/444
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#460]: https://gitlab.freedesktop.org/drm/intel/issues/460
>   [i915#461]: https://gitlab.freedesktop.org/drm/intel/issues/461
>   [i915#469]: https://gitlab.freedesktop.org/drm/intel/issues/469
>   [i915#470]: https://gitlab.freedesktop.org/drm/intel/issues/470
>   [i915#472]: https://gitlab.freedesktop.org/drm/intel/issues/472
>   [i915#476]: https://gitlab.freedesktop.org/drm/intel/issues/476
>   [i915#49]: https://gitlab.freedesktop.org/drm/intel/issues/49
>   [i915#490]: https://gitlab.freedesktop.org/drm/intel/issues/490
>   [i915#52]: https://gitlab.freedesktop.org/drm/intel/issues/52
>   [i915#520]: https://gitlab.freedesktop.org/drm/intel/issues/520
>   [i915#530]: https://gitlab.freedesktop.org/drm/intel/issues/530
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#570]: https://gitlab.freedesktop.org/drm/intel/issues/570
>   [i915#677]: https://gitlab.freedesktop.org/drm/intel/issues/677
>   [i915#679]: https://gitlab.freedesktop.org/drm/intel/issues/679
>   [i915#69]: https://gitlab.freedesktop.org/drm/intel/issues/69
>   [i915#72]: https://gitlab.freedesktop.org/drm/intel/issues/72
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
> 
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): pig-hsw-4770r 
> 
> 
> Build changes
> -------------
> 
>   * CI: CI-20190529 -> None
>   * Linux: CI_DRM_7688 -> Patchwork_16005
> 
>   CI-20190529: 20190529
>   CI_DRM_7688: 9901bb096bfe4d9bfd843475eef24b563aed835a @
> git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_5357: a555a4b98f90dab655d24bb3d07e9291a8b8dac8 @
> git://anongit.fr
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_16005/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
