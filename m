Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A665F34D949
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 22:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D59D26E520;
	Mon, 29 Mar 2021 20:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F2E36E520
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 20:49:05 +0000 (UTC)
IronPort-SDR: Nnz7zh967s9JltuiL3GU75zi2i3T0faFOJafjp3QKdD0byuUXw3WtwjElJnDkEzU/pkEcFuQxi
 QuKOlqR21+VQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="178756104"
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="178756104"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 13:49:04 -0700
IronPort-SDR: /uO182gr+16yN5G07BSy9cmEFYvkOEK6Ml76R6ylEuQ6o3p9JaTgKxQnj1iVkC2Cwiptw+Uvl8
 DxW8T8Q4tmOg==
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="376565338"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 13:49:03 -0700
Date: Mon, 29 Mar 2021 23:48:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210329204859.GG233691@ideak-desk.fi.intel.com>
References: <20210325214808.2071517-1-imre.deak@intel.com>
 <161703532379.26035.11366135092208749067@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161703532379.26035.11366135092208749067@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Add_support_for_FBs_requiring_a_POT_stride_padding_=28?=
 =?utf-8?q?rev4=29?=
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

On Mon, Mar 29, 2021 at 04:28:43PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Add support for FBs requiring a POT stride padding (rev4)
> URL   : https://patchwork.freedesktop.org/series/87859/
> State : success

Thanks for the review, pushed to -din.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9909_full -> Patchwork_19873_full
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
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19873_full:
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uvec2-uvec2 (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [CRASH][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uvec2-uvec2.html
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitor-neg-uint-uint (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][2] +7 similar issues
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/pig-icl-1065g7/spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitor-neg-uint-uint.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9909_full and Patchwork_19873_full:
> 
> ### New Piglit tests (9) ###
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-asin-vec2:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-degrees-vec4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-lshift-uvec2-uvec2:
>     - Statuses : 1 crash(s)
>     - Exec time: [0.50] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-assign-rshift-uint-uint:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitor-neg-uint-uint:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-bitxor-neg-uvec3-uvec3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-div-uvec3-uvec3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-op-rshift-uint-int:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@arb_tessellation_shader@execution@built-in-functions@tcs-outerproduct-vec4-vec2:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19873_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][3] ([i915#3002])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl10/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][4] -> [FAIL][5] ([i915#2410])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb1/igt@gem_ctx_persistence@many-contexts.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-tglb2/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_ctx_persistence@smoketest:
>     - shard-snb:          NOTRUN -> [SKIP][6] ([fdo#109271] / [i915#1099]) +2 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-snb7/igt@gem_ctx_persistence@smoketest.html
> 
>   * igt@gem_ctx_ringsize@active@bcs0:
>     - shard-skl:          [PASS][7] -> [INCOMPLETE][8] ([i915#3316])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl8/igt@gem_ctx_ringsize@active@bcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl7/igt@gem_ctx_ringsize@active@bcs0.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][9] ([fdo#109271]) +97 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2842])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk9/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#2842])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb8/igt@gem_exec_fair@basic-pace@vcs1.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-tglb6/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_flush@basic-wb-rw-default:
>     - shard-glk:          [PASS][14] -> [INCOMPLETE][15] ([i915#2055])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk1/igt@gem_exec_flush@basic-wb-rw-default.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk2/igt@gem_exec_flush@basic-wb-rw-default.html
> 
>   * igt@gem_mmap_gtt@cpuset-basic-small-copy-xy:
>     - shard-iclb:         [PASS][16] -> [FAIL][17] ([i915#2428])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb2/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb7/igt@gem_mmap_gtt@cpuset-basic-small-copy-xy.html
> 
>   * igt@gem_mmap_gtt@cpuset-medium-copy-odd:
>     - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#307])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb6/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb5/igt@gem_mmap_gtt@cpuset-medium-copy-odd.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][20] ([i915#2658])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl1/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][21] ([i915#3318])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl1/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][22] -> [DMESG-WARN][23] ([i915#1436] / [i915#716])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk6/igt@gen9_exec_parse@allowed-all.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@bb-large:
>     - shard-apl:          NOTRUN -> [FAIL][24] ([i915#3296])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl7/igt@gen9_exec_parse@bb-large.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][25] ([i915#454])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl10/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_big_fb@linear-8bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110725] / [fdo#111614])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@kms_big_fb@linear-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([fdo#110723])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_joiner@invalid-modeset:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#2705])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl1/igt@kms_big_joiner@invalid-modeset.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data:
>     - shard-iclb:         [PASS][29] -> [DMESG-WARN][30] ([i915#3219])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb7/igt@kms_ccs@pipe-a-random-ccs-data.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb1/igt@kms_ccs@pipe-a-random-ccs-data.html
> 
>   * igt@kms_ccs@pipe-b-bad-aux-stride:
>     - shard-snb:          NOTRUN -> [SKIP][31] ([fdo#109271]) +260 similar issues
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-snb2/igt@kms_ccs@pipe-b-bad-aux-stride.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-basic:
>     - shard-skl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111304])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@kms_ccs@pipe-c-crc-primary-basic.html
> 
>   * igt@kms_chamelium@dp-audio-edid:
>     - shard-skl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl6/igt@kms_chamelium@dp-audio-edid.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_color@pipe-a-gamma:
>     - shard-tglb:         [PASS][35] -> [FAIL][36] ([i915#1149])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb7/igt@kms_color@pipe-a-gamma.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-tglb2/igt@kms_color@pipe-a-gamma.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-25:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +22 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl1/igt@kms_color_chamelium@pipe-c-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-green-to-red:
>     - shard-snb:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827]) +15 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-snb2/igt@kms_color_chamelium@pipe-c-ctm-green-to-red.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][39] ([i915#1319]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl7/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-random:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@kms_cursor_crc@pipe-d-cursor-256x256-random.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-glk:          [PASS][41] -> [FAIL][42] ([i915#72])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk8/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk5/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#109278])
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          NOTRUN -> [FAIL][44] ([i915#2346])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>     - shard-glk:          [PASS][45] -> [FAIL][46] ([i915#52] / [i915#54])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk1/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#79])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk3/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#79])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl9/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@nonexisting-fb@a-edp1:
>     - shard-skl:          [PASS][51] -> [DMESG-WARN][52] ([i915#1982])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl4/igt@kms_flip@nonexisting-fb@a-edp1.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl4/igt@kms_flip@nonexisting-fb@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][53] ([i915#2122])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>     - shard-skl:          [PASS][54] -> [FAIL][55] ([i915#2122]) +2 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl8/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl2/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271] / [i915#2672])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>     - shard-apl:          NOTRUN -> [SKIP][57] ([fdo#109271] / [i915#2642])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
>     - shard-skl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#2642])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][59] ([fdo#109280]) +3 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][60] -> [DMESG-WARN][61] ([i915#180]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl2/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#1188])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl1/igt@kms_hdr@bpc-switch.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl9/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          NOTRUN -> [FAIL][64] ([i915#1188])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][65] ([fdo#109271] / [i915#533]) +4 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a:
>     - shard-apl:          [PASS][67] -> [DMESG-WARN][68] ([i915#180])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +2 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][70] ([i915#265]) +1 similar issue
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl1/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][71] ([fdo#108145] / [i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2:
>     - shard-skl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#658]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl6/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-2:
>     - shard-apl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +5 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl3/igt@kms_psr2_sf@plane-move-sf-dmg-area-2.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_cpu:
>     - shard-iclb:         [PASS][74] -> [SKIP][75] ([fdo#109441])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_cpu.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb7/igt@kms_psr@psr2_sprite_mmap_cpu.html
> 
>   * igt@kms_psr@sprite_mmap_gtt:
>     - shard-iclb:         [PASS][76] -> [SKIP][77] ([i915#668]) +4 similar issues
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb7/igt@kms_psr@sprite_mmap_gtt.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb1/igt@kms_psr@sprite_mmap_gtt.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-idle:
>     - shard-apl:          NOTRUN -> [SKIP][78] ([fdo#109271]) +216 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl8/igt@kms_vblank@pipe-d-ts-continuation-idle.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl8/igt@kms_writeback@writeback-check-output.html
>     - shard-skl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#2437])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([i915#2530])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@nouveau_crc@pipe-a-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [PASS][82] -> [FAIL][83] ([i915#1542])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb6/igt@perf@polling-parameterized.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-tglb8/igt@perf@polling-parameterized.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][84] ([i915#2369] / [i915#3063]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb8/igt@gem_eio@unwedge-stress.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [FAIL][86] ([i915#2846]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-kbl7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [FAIL][88] ([i915#2842]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-tglb8/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][90] ([i915#2842]) -> [PASS][91] +2 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk5/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>     - shard-kbl:          [FAIL][92] ([i915#2842]) -> [PASS][93] +2 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-kbl1/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-iclb:         [FAIL][94] ([i915#2842]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb5/igt@gem_exec_fair@basic-pace@bcs0.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb8/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_mmap_gtt@cpuset-big-copy-xy:
>     - shard-glk:          [FAIL][96] ([i915#307]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk2/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk8/igt@gem_mmap_gtt@cpuset-big-copy-xy.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][98] ([i915#1436] / [i915#716]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl6/igt@gen9_exec_parse@allowed-single.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl6/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - shard-skl:          [INCOMPLETE][100] ([i915#151]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@i915_pm_rpm@modeset-lpsp-stress.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl6/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip:
>     - shard-skl:          [FAIL][102] ([i915#2521]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl3/igt@kms_async_flips@alternate-sync-async-flip.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl10/igt@kms_async_flips@alternate-sync-async-flip.html
> 
>   * igt@kms_color@pipe-a-ctm-0-5:
>     - shard-skl:          [DMESG-WARN][104] ([i915#1982]) -> [PASS][105] +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl9/igt@kms_color@pipe-a-ctm-0-5.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl7/igt@kms_color@pipe-a-ctm-0-5.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen:
>     - shard-skl:          [FAIL][106] ([i915#54]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl1/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl9/igt@kms_cursor_crc@pipe-b-cursor-256x256-offscreen.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl1/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl6/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [FAIL][110] ([i915#2122]) -> [PASS][111] +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl3/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-c:
>     - shard-skl:          [FAIL][112] ([i915#53]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl4/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-c.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          [FAIL][114] ([fdo#108145] / [i915#265]) -> [PASS][115] +1 similar issue
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_cursor@pipe-c-primary-size-64:
>     - shard-iclb:         [INCOMPLETE][116] -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb7/igt@kms_plane_cursor@pipe-c-primary-size-64.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb3/igt@kms_plane_cursor@pipe-c-primary-size-64.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][118] ([fdo#109441]) -> [PASS][119] +2 similar issues
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb3/igt@kms_psr@psr2_suspend.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   
> #### Warnings ####
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         [WARN][120] ([i915#2681] / [i915#2684]) -> [WARN][121] ([i915#2684])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb8/igt@i915_pm_rc6_residency@rc6-fence.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb5/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][122] ([i915#2681] / [i915#2684]) -> [WARN][123] ([i915#1804] / [i915#2684])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb1/igt@i915_pm_rc6_residency@rc6-idle.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][124] ([i915#658]) -> [SKIP][125] ([i915#2920]) +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][126] ([i915#2920]) -> [SKIP][127] ([i915#658]) +2 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][128], [FAIL][129]) ([i915#3002]) -> ([FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl2/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-kbl2/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-kbl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-kbl4/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-kbl2/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-kbl3/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][134], [FAIL][135], [FAIL][136]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002]) -> [FAIL][137] ([fdo#109271] / [i915#1814])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl6/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl1/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-apl3/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-apl1/igt@runner@aborted.html
>     - shard-glk:          ([FAIL][138], [FAIL][139]) ([i915#3002] / [k.org#202321]) -> ([FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143]) ([i915#2722] / [i915#3002] / [k.org#202321])
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk3/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9909/shard-glk6/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk2/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk3/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk1/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/shard-glk3/igt@runner@aborted.html
>     - shard-skl:          ([FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1436] / [i915#181
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19873/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
