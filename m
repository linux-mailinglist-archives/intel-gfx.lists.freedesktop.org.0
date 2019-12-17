Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 50BF81234EC
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 19:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D83C46E046;
	Tue, 17 Dec 2019 18:34:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2CD06E046
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 18:34:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 10:33:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="212657030"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga008.fm.intel.com with ESMTP; 17 Dec 2019 10:33:59 -0800
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 17 Dec 2019 10:33:59 -0800
Received: from fmsmsx116.amr.corp.intel.com ([169.254.2.67]) by
 fmsmsx117.amr.corp.intel.com ([169.254.3.123]) with mapi id 14.03.0439.000;
 Tue, 17 Dec 2019 10:33:58 -0800
From: "Souza, Jose" <jose.souza@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVz?=
 =?utf-8?B?IHN0YXJ0aW5nIHdpdGggWzEvNV0gZHJtOiBBZGQgX19kcm1fYXRvbWljX2hl?=
 =?utf-8?B?bHBlcl9jcnRjX3N0YXRlX3Jlc2V0KCkgJiBjby4gKHJldjMp?=
Thread-Index: AQHVtQVU09dayDc5LkyTFuRGi98gt6e/LSUA
Date: Tue, 17 Dec 2019 18:33:58 +0000
Message-ID: <123572f4a35a0926ea7320c5d323a6167c70b065.camel@intel.com>
References: <20191107142417.11107-1-ville.syrjala@linux.intel.com>
 <157660623168.21846.16115780710120309601@emeril.freedesktop.org>
In-Reply-To: <157660623168.21846.16115780710120309601@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.135.96]
Content-ID: <9384330FF43F8F4CB4664E38F92D5EC7@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B1/5=5D_drm=3A_Add_=5F=5Fdrm=5Fatomic=5Fhel?=
 =?utf-8?b?cGVyX2NydGNfc3RhdGVfcmVzZXQoKSAmIGNvLiAocmV2Myk=?=
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

On Tue, 2019-12-17 at 18:10 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: series starting with [1/5] drm: Add
> __drm_atomic_helper_crtc_state_reset() & co. (rev3)
> URL   : https://patchwork.freedesktop.org/series/69129/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_7578_full -> Patchwork_15797_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_15797_full absolutely
> need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the
> changes
>   introduced in Patchwork_15797_full, please notify your bug team to
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
> Patchwork_15797_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-180:
>     - shard-tglb:         [PASS][1] -> [DMESG-WARN][2]
>    [1]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_big_fb@linear-16bpp-rotate-180.html
>    [2]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb3/igt@kms_big_fb@linear-16bpp-rotate-180.html

This one is not related to the changes in this series

> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - shard-skl:          [PASS][3] -> ([INCOMPLETE][4], [PASS][5])
>    [3]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_frontbuffer_tracking@basic.html
>    [4]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@kms_frontbuffer_tracking@basic.html
>    [5]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl7/igt@kms_frontbuffer_tracking@basic.html
> 

Getting AccessDenied when trying to access the error reports

>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 512 1 8 128 3 (NEW):
>     - {pig-hsw-4770r}:    NOTRUN -> [FAIL][6] +20 similar issues
>    [6]: None
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_7578_full and
> Patchwork_15797_full:
> 
> ### New Piglit tests (21) ###
> 
>   * object namespace pollution@texture with glgetteximage-compressed:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * object namespace pollution@texture with gltexsubimage2d:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.15] s
> 
>   * spec@arb_gpu_shader5@texturegather@vs-rgb-0-float-cube:
>     - Statuses : 1 fail(s)
>     - Exec time: [1.83] s
> 
>   * spec@arb_query_buffer_object@coherency:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.22] s
> 
>   * spec@arb_shader_image_load_store@host-mem-barrier:
>     - Statuses : 1 fail(s)
>     - Exec time: [5.66] s
> 
>   * spec@arb_shader_image_load_store@layer:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.31] s
> 
>   * spec@arb_shader_image_load_store@level:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.27] s
> 
>   * spec@arb_shader_image_load_store@semantics:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.53] s
> 
>   * spec@arb_shader_image_load_store@unused:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.16] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 32 1 8 128 2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 32 42 1 128 4:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.08] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 32 42 8 128 2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.10] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 32 42 8 128 3:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.12] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 512 1 8 128 3:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.24] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 512 1 8 128 4:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.27] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 512 1 8 128 8:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.26] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 512 42 1 128 8:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.19] s
> 
>   * spec@arb_texture_barrier@arb_texture_barrier-blending-in-shader
> 512 42 1 8 8:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.17] s
> 
>   * spec@arb_vertex_attrib_64bit@execution@
> vs_in@vs-input-position-double_dmat3-float_mat3x2_array3:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.13] s
> 
>   * spec@arb_vertex_type_2_10_10_10_rev@attribs:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.95] s
> 
>   * spec@glsl-4.20@execution@vs_in@vs-input-int_ivec3_array3-
> position-double_dmat3_array2:
>     - Statuses : 1 fail(s)
>     - Exec time: [0.18] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_15797_full that come from
> known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_isolation@vcs1-none:
>     - shard-iclb:         [PASS][7] -> [SKIP][8] ([fdo#109276] /
> [fdo#112080])
>    [7]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_ctx_isolation@vcs1-none.html
>    [8]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@gem_ctx_isolation@vcs1-none.html
> 
>   * igt@gem_ctx_persistence@bcs0-mixed-process:
>     - shard-apl:          [PASS][9] -> ([FAIL][10], [PASS][11])
> ([i915#679])
>    [9]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@gem_ctx_persistence@bcs0-mixed-process.html
>    [10]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@gem_ctx_persistence@bcs0-mixed-process.html
>    [11]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl7/igt@gem_ctx_persistence@bcs0-mixed-process.html
> 
>   * igt@gem_ctx_persistence@vecs0-mixed-process:
>     - shard-glk:          [PASS][12] -> ([PASS][13], [FAIL][14])
> ([i915#679])
>    [12]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk4/igt@gem_ctx_persistence@vecs0-mixed-process.html
>    [13]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk1/igt@gem_ctx_persistence@vecs0-mixed-process.html
>    [14]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk7/igt@gem_ctx_persistence@vecs0-mixed-process.html
> 
>   * igt@gem_exec_async@concurrent-writes-bsd2:
>     - shard-iclb:         [PASS][15] -> [SKIP][16] ([fdo#109276])
>    [15]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_exec_async@concurrent-writes-bsd2.html
>    [16]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@gem_exec_async@concurrent-writes-bsd2.html
> 
>   * igt@gem_exec_gttfill@basic:
>     - shard-tglb:         [PASS][17] -> [INCOMPLETE][18]
> ([fdo#111593])
>    [17]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@gem_exec_gttfill@basic.html
>    [18]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@gem_exec_gttfill@basic.html
> 
>   * igt@gem_exec_schedule@preempt-other-chain-bsd:
>     - shard-iclb:         [PASS][19] -> [SKIP][20] ([fdo#112146]) +5
> similar issues
>    [19]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_schedule@preempt-other-chain-bsd.html
>    [20]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb4/igt@gem_exec_schedule@preempt-other-chain-bsd.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox:
>     - shard-tglb:         [PASS][21] -> [INCOMPLETE][22]
> ([fdo#111606] / [fdo#111677])
>    [21]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
>    [22]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-chain-vebox.html
> 
>   * igt@gem
> _persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive
> :
>     - shard-tglb:         [PASS][23] -> [TIMEOUT][24] ([fdo#112126] /
> [i915#530])
>    [23]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
>    [24]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb5/igt@gem_persistent_relocs@forked-interruptible-faulting-reloc-thrash-inactive.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [PASS][25] -> ([FAIL][26], [PASS][27])
> ([i915#644])
>    [25]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk7/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [26]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk9/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [27]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
>     - shard-apl:          [PASS][28] -> ([FAIL][29], [PASS][30])
> ([i915#644])
>    [28]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [29]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [30]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl8/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [PASS][31] -> ([DMESG-WARN][32],
> [PASS][33]) ([i915#180]) +4 similar issues
>    [31]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl2/igt@gem_workarounds@suspend-resume-context.html
>    [32]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@gem_workarounds@suspend-resume-context.html
>    [33]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_hangman@error-state-capture-vcs1:
>     - shard-iclb:         [PASS][34] -> [SKIP][35] ([fdo#112080])
>    [34]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@i915_hangman@error-state-capture-vcs1.html
>    [35]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@i915_hangman@error-state-capture-vcs1.html
> 
>   * igt@i915_pm_dc@dc5-psr:
>     - shard-skl:          [PASS][36] -> ([PASS][37],
> [INCOMPLETE][38]) ([i915#198])
>    [36]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@i915_pm_dc@dc5-psr.html
>    [37]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@i915_pm_dc@dc5-psr.html
>    [38]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl9/igt@i915_pm_dc@dc5-psr.html
> 
>   * igt@i915_selftest@mock_sanitycheck:
>     - shard-skl:          [PASS][39] -> ([PASS][40], [DMESG-
> WARN][41]) ([i915#747])
>    [39]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl5/igt@i915_selftest@mock_sanitycheck.html
>    [40]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl6/igt@i915_selftest@mock_sanitycheck.html
>    [41]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@i915_selftest@mock_sanitycheck.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-skl:          [PASS][42] -> ([INCOMPLETE][43],
> [PASS][44]) ([i915#69])
>    [42]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl9/igt@i915_suspend@forcewake.html
>    [43]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl6/igt@i915_suspend@forcewake.html
>    [44]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@i915_suspend@forcewake.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][45] -> [DMESG-WARN][46] ([i915#180])
> +1 similar issue
>    [45]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl3/igt@i915_suspend@sysfs-reader.html
>    [46]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_color@pipe-a-ctm-0-75:
>     - shard-skl:          [PASS][47] -> ([DMESG-WARN][48],
> [PASS][49]) ([i915#109])
>    [47]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
>    [48]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@kms_color@pipe-a-ctm-0-75.html
>    [49]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl7/igt@kms_color@pipe-a-ctm-0-75.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [PASS][50] -> [DMESG-WARN][51] ([i915#180])
> +2 similar issues
>    [50]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-kbl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [51]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-kbl6/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen:
>     - shard-hsw:          [PASS][52] -> ([DMESG-WARN][53],
> [PASS][54]) ([IGT#6] / [i915#435])
>    [52]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw4/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
>    [53]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw6/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
>    [54]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw4/igt@kms_cursor_crc@pipe-c-cursor-128x128-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding:
>     - shard-skl:          [PASS][55] -> ([FAIL][56], [PASS][57])
> ([i915#54]) +1 similar issue
>    [55]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
>    [56]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
>    [57]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl4/igt@kms_cursor_crc@pipe-c-cursor-256x85-sliding.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled:
>     - shard-skl:          [PASS][58] -> ([INCOMPLETE][59],
> [PASS][60]) ([fdo#112347] / [i915#646] / [i915#667])
>    [58]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
>    [59]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
>    [60]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl8/igt@kms_draw_crc@draw-method-xrgb8888-render-ytiled.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank:
>     - shard-skl:          [PASS][61] -> ([FAIL][62], [PASS][63])
> ([i915#46])
>    [61]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@kms_flip@flip-vs-expired-vblank.html
>    [62]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl9/igt@kms_flip@flip-vs-expired-vblank.html
>    [63]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@kms_flip@flip-vs-expired-vblank.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move:
>     - shard-iclb:         [PASS][64] -> [INCOMPLETE][65] ([i915#140])
>    [64]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
>    [65]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb2/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-cur-indfb-move.html
> 
>   * igt@kms
> _frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render:
>     - shard-iclb:         [PASS][66] -> [INCOMPLETE][67] ([i915#123]
> / [i915#140])
>    [66]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
>    [67]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms
> _frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-tglb:         [PASS][68] -> [INCOMPLETE][69] ([i915#474]
> / [i915#667])
>    [68]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
>    [69]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb9/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms
> _frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render:
>     - shard-skl:          [PASS][70] -> ([PASS][71], [FAIL][72])
> ([i915#49])
>    [70]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
>    [71]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
>    [72]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-render.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-tglb:         [PASS][73] -> [INCOMPLETE][74] ([i915#456]
> / [i915#460]) +1 similar issue
>    [73]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [74]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][75] -> ([FAIL][76], [FAIL][77])
> ([fdo#108145] / [i915#265])
>    [75]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl3/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [76]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl5/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [77]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-tglb:         [PASS][78] -> [DMESG-WARN][79] ([i915#402])
>    [78]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_psr@psr2_suspend.html
>    [79]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb8/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][80] -> ([FAIL][81], [FAIL][82])
> ([i915#31])
>    [80]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_setmode@basic.html
>    [81]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl7/igt@kms_setmode@basic.html
>    [82]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@kms_setmode@basic.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_busy@close-race:
>     - shard-tglb:         [INCOMPLETE][83] ([i915#435]) -> [PASS][84]
>    [83]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_busy@close-race.html
>    [84]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb2/igt@gem_busy@close-race.html
> 
>   * igt@gem_ctx_persistence@vcs0-mixed-process:
>     - shard-apl:          [FAIL][85] ([i915#679]) -> ([PASS][86],
> [PASS][87])
>    [85]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
>    [86]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl1/igt@gem_ctx_persistence@vcs0-mixed-process.html
>    [87]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl3/igt@gem_ctx_persistence@vcs0-mixed-process.html
> 
>   * igt@gem_ctx_persistence@vcs1-mixed-process:
>     - shard-iclb:         [SKIP][88] ([fdo#109276] / [fdo#112080]) ->
> [PASS][89] +1 similar issue
>    [88]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@gem_ctx_persistence@vcs1-mixed-process.html
>    [89]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb1/igt@gem_ctx_persistence@vcs1-mixed-process.html
> 
>   * igt@gem_eio@banned:
>     - shard-tglb:         [INCOMPLETE][90] ([i915#476]) -> [PASS][91]
>    [90]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_eio@banned.html
>    [91]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb4/igt@gem_eio@banned.html
> 
>   * igt@gem_exec_balancer@smoke:
>     - shard-iclb:         [SKIP][92] ([fdo#110854]) -> [PASS][93]
>    [92]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@gem_exec_balancer@smoke.html
>    [93]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb4/igt@gem_exec_balancer@smoke.html
> 
>   * igt@gem_exec_reloc@basic-wc-active:
>     - shard-skl:          [DMESG-WARN][94] ([i915#109]) ->
> ([PASS][95], [PASS][96])
>    [94]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl8/igt@gem_exec_reloc@basic-wc-active.html
>    [95]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl2/igt@gem_exec_reloc@basic-wc-active.html
>    [96]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl9/igt@gem_exec_reloc@basic-wc-active.html
> 
>   * igt@gem_exec_schedule@preempt-queue-bsd2:
>     - shard-iclb:         [SKIP][97] ([fdo#109276]) -> [PASS][98] +10
> similar issues
>    [97]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb8/igt@gem_exec_schedule@preempt-queue-bsd2.html
>    [98]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb1/igt@gem_exec_schedule@preempt-queue-bsd2.html
> 
>   * igt@gem_exec_schedule@preempt-queue-contexts-vebox:
>     - shard-tglb:         [INCOMPLETE][99] ([fdo#111677]) ->
> [PASS][100]
>    [99]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
>    [100]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb3/igt@gem_exec_schedule@preempt-queue-contexts-vebox.html
> 
>   * igt@gem_exec_schedule@preemptive-hang-bsd:
>     - shard-iclb:         [SKIP][101] ([fdo#112146]) -> [PASS][102]
> +2 similar issues
>    [101]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb1/igt@gem_exec_schedule@preemptive-hang-bsd.html
>    [102]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb8/igt@gem_exec_schedule@preemptive-hang-bsd.html
> 
>   * igt@gem_exec_schedule@smoketest-bsd2:
>     - shard-tglb:         [INCOMPLETE][103] ([i915#707]) ->
> [PASS][104]
>    [103]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb2/igt@gem_exec_schedule@smoketest-bsd2.html
>    [104]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb1/igt@gem_exec_schedule@smoketest-bsd2.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-tglb:         [INCOMPLETE][105] ([i915#456]) ->
> [PASS][106]
>    [105]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@gem_softpin@noreloc-s3.html
>    [106]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@gem_softpin@noreloc-s3.html
> 
>   * {igt@gen9_exec_parse@allowed-single}:
>     - shard-glk:          [DMESG-WARN][107] ([i915#716]) ->
> ([PASS][108], [PASS][109])
>    [107]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@gen9_exec_parse@allowed-single.html
>    [108]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk1/igt@gen9_exec_parse@allowed-single.html
>    [109]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk7/igt@gen9_exec_parse@allowed-single.html
>     - shard-apl:          [DMESG-WARN][110] ([i915#716]) ->
> [PASS][111]
>    [110]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [111]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-apl:          [DMESG-WARN][112] ([i915#180]) ->
> ([PASS][113], [PASS][114])
>    [112]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl4/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [113]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl6/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [114]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding:
>     - shard-skl:          [FAIL][115] ([i915#54]) -> [PASS][116]
>    [115]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl10/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
>    [116]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-128x128-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding:
>     - shard-hsw:          [DMESG-WARN][117] ([IGT#6]) ->
> ([PASS][118], [PASS][119])
>    [117]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw6/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>    [118]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw1/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
>    [119]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw5/igt@kms_cursor_crc@pipe-a-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-tglb:         [INCOMPLETE][120] ([i915#456] / [i915#460])
> -> [PASS][121]
>    [120]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [121]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb6/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible:
>     - shard-glk:          [FAIL][122] ([i915#79]) -> ([PASS][123],
> [PASS][124])
>    [122]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>    [123]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
>    [124]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible:
>     - shard-apl:          [FAIL][125] ([i915#79]) -> ([PASS][126],
> [PASS][127])
>    [125]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [126]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl8/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
>    [127]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl4/igt@kms_flip@flip-vs-expired-vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-skl:          [INCOMPLETE][128] ([i915#221]) ->
> ([PASS][129], [PASS][130])
>    [128]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-skl4/igt@kms_flip@flip-vs-suspend.html
>    [129]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl1/igt@kms_flip@flip-vs-suspend.html
>    [130]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-skl10/igt@kms_flip@flip-vs-suspend.html
> 
>   * igt@kms
> _frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt:
>     - shard-tglb:         [FAIL][131] ([i915#49]) -> [PASS][132]
>    [131]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb6/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
>    [132]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-1p-primscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-suspend:
>     - shard-tglb:         [INCOMPLETE][133] ([i915#456] / [i915#460]
> / [i915#474]) -> [PASS][134]
>    [133]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb8/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
>    [134]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb4/igt@kms_frontbuffer_tracking@fbcpsr-suspend.html
> 
>   * igt@kms_plane@pixel-format-pipe-b-planes-source-clamping:
>     - shard-iclb:         [INCOMPLETE][135] ([i915#140] / [i915#246])
> -> [PASS][136]
>    [135]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
>    [136]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb2/igt@kms_plane@pixel-format-pipe-b-planes-source-clamping.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][137] ([fdo#109441]) -> [PASS][138]
> +1 similar issue
>    [137]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [138]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-apl:          [DMESG-WARN][139] ([i915#180]) ->
> [PASS][140] +1 similar issue
>    [139]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-apl1/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [140]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-apl2/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@perf_pmu@busy-check-all-vcs1:
>     - shard-iclb:         [SKIP][141] ([fdo#112080]) -> [PASS][142]
> +5 similar issues
>    [141]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-iclb6/igt@perf_pmu@busy-check-all-vcs1.html
>    [142]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-iclb4/igt@perf_pmu@busy-check-all-vcs1.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_ctx_isolation@vcs2-s3:
>     - shard-tglb:         [SKIP][143] ([fdo#111912] / [fdo#112080])
> -> [SKIP][144] ([fdo#112080])
>    [143]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb4/igt@gem_ctx_isolation@vcs2-s3.html
>    [144]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb9/igt@gem_ctx_isolation@vcs2-s3.html
> 
>   * igt@gem_tiled_blits@normal:
>     - shard-hsw:          [FAIL][145] ([i915#818]) -> ([FAIL][146],
> [DMESG-FAIL][147]) ([i915#44] / [i915#818])
>    [145]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-hsw7/igt@gem_tiled_blits@normal.html
>    [146]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw2/igt@gem_tiled_blits@normal.html
>    [147]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-hsw1/igt@gem_tiled_blits@normal.html
> 
>   * igt@kms_atomic_transition@6x-modeset-transitions:
>     - shard-tglb:         [SKIP][148] ([fdo#112021]) -> [SKIP][149]
> ([fdo#112016] / [fdo#112021])
>    [148]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_7578/shard-tglb9/igt@kms_atomic_transition@6x-modeset-transitions.html
>    [149]: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/shard-tglb8/igt@kms_atomic_transition@6x-modeset-transitions.html
> 
>   * igt@kms_flip@flip-vs-suspend:
>     - shard-apl:          [DMESG-WARN][150] ([i915#180]) ->
> ([PASS][151], [DMESG-WARN][152]) ([i915#180])
>    [150]: https://intel-gfx-ci.01.org
> 
> == Logs ==
> 
> For more details see: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_15797/index.html
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
