Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5854E2A26C2
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 10:16:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 201AB6E453;
	Mon,  2 Nov 2020 09:16:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EAD06E43B
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 09:16:03 +0000 (UTC)
IronPort-SDR: 8Y4xhx9k6pkhjelQpp7HdRGI0+tUGTqamLcMvy3Hh67/PNfiNeMwwtZ52VocVkcLbML0BMG5Dp
 aDqBc4enotFQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="253564387"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="253564387"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 01:16:03 -0800
IronPort-SDR: z1rtv9wuadBeWumSmnoNmS8Rc89chJ45iaL6hJQuexysKI6bB8jfY4NqWoB5AZe0F3EzTRZyjo
 BZy5afu+TPIQ==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="527873638"
Received: from genxfsim-desktop.iind.intel.com (HELO intel.com)
 ([10.223.74.178])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 01:16:01 -0800
Date: Mon, 2 Nov 2020 14:32:32 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org;, ramalingam.c@intel.com
Message-ID: <20201102090231.GM29526@intel.com>
References: <20201027164208.10026-1-anshuman.gupta@intel.com>
 <160399408475.1422.14557230419084763153@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160399408475.1422.14557230419084763153@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgSERD?=
 =?utf-8?q?P_2=2E2_and_HDCP_1=2E4_Gen12_DP_MST_support_=28rev2=29?=
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

Hi Ram ,
Below series is reviewed by Uma and CI results are green.
New HDCP MST test are skipping since there is no HDCP and DP-MST coverage in CI.
But it have tested the new IGT test locally.
Could you please take a look at this in order to merge the series.
There is a typo require to fix in patch [v4,15/16] commit log, i will send 
a patch for this.
"drm/i915/hdcp: Support for HDCP 2.2 MST shim callbacks
-:13: WARNING:TYPO_SPELLING: 'chnages' may be misspelled - perhaps 'changes'?"
Thanks,
Anshuman Gupta.
On 2020-10-29 at 17:54:44 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: HDCP 2.2 and HDCP 1.4 Gen12 DP MST support (rev2)
> URL   : https://patchwork.freedesktop.org/series/82998/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9206_full -> Patchwork_18788_full
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
>   Here are the unknown changes that may have been introduced in Patchwork_18788_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@gem_exec_parallel@engines@userptr}:
>     - shard-hsw:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw6/igt@gem_exec_parallel@engines@userptr.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@gem_exec_parallel@engines@userptr.html
> 
>   
> 
> ### Piglit changes ###
> 
> #### Possible regressions ####
> 
>   * spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3 (NEW):
>     - {pig-icl-1065g7}:   NOTRUN -> [INCOMPLETE][3] +2 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/pig-icl-1065g7/spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3.html
> 
>   
> New tests
> ---------
> 
>   New tests have been introduced between CI_DRM_9206_full and Patchwork_18788_full:
> 
> ### New CI tests (1) ###
> 
>   * boot:
>     - Statuses : 200 pass(s)
>     - Exec time: [0.0] s
> 
>   
> 
> 
> ### New IGT tests (4) ###
> 
>   * igt@kms_content_protection@dp-mst-lic-type-0:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0] s
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - Statuses : 6 skip(s)
>     - Exec time: [0.0, 0.00] s
> 
>   * igt@kms_content_protection@dp-mst-type-1:
>     - Statuses : 5 skip(s)
>     - Exec time: [0.0] s
> 
>   
> 
> 
> ### New Piglit tests (3) ###
> 
>   * spec@glsl-4.00@execution@built-in-functions@fs-op-mult-dmat4-dmat2x4:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat3-dmat3:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   * spec@glsl-4.00@execution@built-in-functions@gs-op-mult-dmat4x3-double:
>     - Statuses : 1 incomplete(s)
>     - Exec time: [0.0] s
> 
>   
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_18788_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@drm_read@empty-nonblock:
>     - shard-glk:          [PASS][4] -> [DMESG-WARN][5] ([i915#1982]) +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk7/igt@drm_read@empty-nonblock.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk5/igt@drm_read@empty-nonblock.html
> 
>   * igt@gem_exec_parallel@engines@contexts:
>     - shard-snb:          [PASS][6] -> [INCOMPLETE][7] ([i915#82])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb5/igt@gem_exec_parallel@engines@contexts.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb4/igt@gem_exec_parallel@engines@contexts.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-cycles:
>     - shard-hsw:          [PASS][8] -> [FAIL][9] ([i915#1888])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw1/igt@gem_userptr_blits@unsync-unmap-cycles.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@gem_userptr_blits@unsync-unmap-cycles.html
> 
>   * igt@i915_selftest@live@evict:
>     - shard-skl:          [PASS][10] -> [INCOMPLETE][11] ([i915#198])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl9/igt@i915_selftest@live@evict.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl3/igt@i915_selftest@live@evict.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [PASS][12] -> [INCOMPLETE][13] ([i915#1888])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk2/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic:
>     - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1982]) +6 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl8/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-hsw:          [PASS][16] -> [FAIL][17] ([i915#2370])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw1/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-xtiled:
>     - shard-snb:          [PASS][18] -> [SKIP][19] ([fdo#109271]) +2 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb2/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb4/igt@kms_draw_crc@draw-method-rgb565-blt-xtiled.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-render-ytiled:
>     - shard-apl:          [PASS][20] -> [DMESG-WARN][21] ([i915#1635] / [i915#1982]) +2 similar issues
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl8/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl6/igt@kms_draw_crc@draw-method-rgb565-render-ytiled.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1:
>     - shard-hsw:          [PASS][22] -> [DMESG-WARN][23] ([i915#1982]) +3 similar issues
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw2/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw6/igt@kms_flip@2x-plain-flip-ts-check@ab-vga1-hdmi-a1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc:
>     - shard-snb:          [PASS][24] -> [FAIL][25] ([i915#2546])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb6/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb7/igt@kms_frontbuffer_tracking@fbc-rgb101010-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-apl:          [PASS][26] -> [INCOMPLETE][27] ([i915#1635] / [i915#2606])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-skl:          [PASS][28] -> [DMESG-WARN][29] ([i915#2606])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite:
>     - shard-skl:          [PASS][30] -> [INCOMPLETE][31] ([i915#123]) +3 similar issues
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff:
>     - shard-skl:          [PASS][32] -> [INCOMPLETE][33] ([i915#123] / [i915#2606])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl3/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl1/igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-onoff.html
> 
>   * igt@kms_psr@cursor_mmap_gtt:
>     - shard-skl:          [PASS][34] -> [INCOMPLETE][35] ([i915#2606])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@kms_psr@cursor_mmap_gtt.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl7/igt@kms_psr@cursor_mmap_gtt.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          [PASS][36] -> [FAIL][37] ([i915#1635] / [i915#31])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl3/igt@kms_setmode@basic.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl3/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-wait-forked-busy:
>     - shard-kbl:          [PASS][38] -> [DMESG-WARN][39] ([i915#1982]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl1/igt@kms_vblank@pipe-b-wait-forked-busy.html
> 
>   * igt@perf@oa-exponents:
>     - shard-apl:          [PASS][40] -> [SKIP][41] ([fdo#109271] / [i915#1354] / [i915#1635]) +1 similar issue
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@perf@oa-exponents.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl3/igt@perf@oa-exponents.html
> 
>   * igt@perf@rc6-disable:
>     - shard-hsw:          [PASS][42] -> [SKIP][43] ([fdo#109271]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw2/igt@perf@rc6-disable.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@perf@rc6-disable.html
>     - shard-kbl:          [PASS][44] -> [SKIP][45] ([fdo#109271] / [i915#1354]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl7/igt@perf@rc6-disable.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl4/igt@perf@rc6-disable.html
> 
>   * igt@perf_pmu@busy-idle-no-semaphores@rcs0:
>     - shard-hsw:          [PASS][46] -> [FAIL][47] ([i915#2614])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw4/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw4/igt@perf_pmu@busy-idle-no-semaphores@rcs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_create@basic:
>     - shard-snb:          [INCOMPLETE][48] ([i915#82]) -> [PASS][49]
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-snb2/igt@gem_exec_create@basic.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-snb4/igt@gem_exec_create@basic.html
> 
>   * igt@gem_exec_gttfill@all:
>     - shard-glk:          [DMESG-WARN][50] ([i915#118] / [i915#95]) -> [PASS][51]
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk5/igt@gem_exec_gttfill@all.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk7/igt@gem_exec_gttfill@all.html
> 
>   * {igt@kms_async_flips@async-flip-with-page-flip-events}:
>     - shard-kbl:          [FAIL][52] ([i915#2521]) -> [PASS][53]
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl1/igt@kms_async_flips@async-flip-with-page-flip-events.html
> 
>   * igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a:
>     - shard-skl:          [DMESG-WARN][54] ([i915#1982]) -> [PASS][55] +5 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms_atomic_transition@plane-use-after-nonblocking-unbind-fencing@edp-1-pipe-a.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-0:
>     - shard-kbl:          [DMESG-WARN][56] ([i915#1982]) -> [PASS][57]
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl1/igt@kms_big_fb@x-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent:
>     - shard-skl:          [FAIL][58] ([i915#54]) -> [PASS][59]
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl2/igt@kms_cursor_crc@pipe-c-cursor-alpha-transparent.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-suspend:
>     - shard-apl:          [INCOMPLETE][60] ([i915#1635]) -> [PASS][61] +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl7/igt@kms_cursor_crc@pipe-c-cursor-suspend.html
> 
>   * igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge:
>     - shard-glk:          [DMESG-WARN][62] ([i915#1982]) -> [PASS][63] +4 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-glk4/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-glk7/igt@kms_cursor_edge_walk@pipe-c-256x256-left-edge.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled:
>     - shard-hsw:          [DMESG-WARN][64] ([i915#1982]) -> [PASS][65]
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw6/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw2/igt@kms_draw_crc@draw-method-xrgb8888-pwrite-untiled.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt:
>     - shard-skl:          [INCOMPLETE][66] ([i915#123]) -> [PASS][67] +1 similar issue
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl6/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-shrfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt:
>     - shard-skl:          [INCOMPLETE][68] ([i915#123] / [i915#2606]) -> [PASS][69]
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence:
>     - shard-skl:          [SKIP][70] ([fdo#109271]) -> [PASS][71] +7 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl6/igt@kms_pipe_crc_basic@read-crc-pipe-a-frame-sequence.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-kbl:          [DMESG-WARN][72] ([i915#165] / [i915#78]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-kbl2/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_vblank@pipe-c-wait-forked-busy:
>     - shard-apl:          [DMESG-WARN][74] ([i915#1635] / [i915#1982]) -> [PASS][75] +3 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl1/igt@kms_vblank@pipe-c-wait-forked-busy.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl8/igt@kms_vblank@pipe-c-wait-forked-busy.html
> 
>   
> #### Warnings ####
> 
>   * igt@core_hotunplug@hotrebind-lateclose:
>     - shard-hsw:          [FAIL][76] -> [WARN][77] ([i915#2283])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-hsw4/igt@core_hotunplug@hotrebind-lateclose.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-hsw1/igt@core_hotunplug@hotrebind-lateclose.html
> 
>   * igt@kms_flip_tiling@flip-y-tiled:
>     - shard-skl:          [DMESG-WARN][78] ([i915#1982]) -> [FAIL][79] ([i915#699])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl8/igt@kms_flip_tiling@flip-y-tiled.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl1/igt@kms_flip_tiling@flip-y-tiled.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc:
>     - shard-skl:          [INCOMPLETE][80] ([i915#123] / [i915#2606]) -> [DMESG-WARN][81] ([i915#1982])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl7/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@psr-1p-offscren-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-modesetfrombusy:
>     - shard-skl:          [SKIP][82] ([fdo#109271]) -> [INCOMPLETE][83] ([i915#123] / [i915#2606])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-skl1/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-skl10/igt@kms_frontbuffer_tracking@psr-modesetfrombusy.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][84], [FAIL][85]) ([i915#1611] / [i915#1635] / [i915#1814]) -> [FAIL][86] ([fdo#109271] / [i915#1635] / [i915#1814])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl7/igt@runner@aborted.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-apl1/igt@runner@aborted.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-apl4/igt@runner@aborted.html
>     - shard-tglb:         ([FAIL][87], [FAIL][88], [FAIL][89], [FAIL][90], [FAIL][91], [FAIL][92], [FAIL][93], [FAIL][94], [FAIL][95], [FAIL][96], [FAIL][97], [FAIL][98], [FAIL][99], [FAIL][100], [FAIL][101], [FAIL][102], [FAIL][103], [FAIL][104], [FAIL][105], [FAIL][106], [FAIL][107], [FAIL][108], [FAIL][109], [FAIL][110], [FAIL][111]) ([i915#1764] / [i915#1814] / [i915#456] / [k.org#205379]) -> ([FAIL][112], [FAIL][113], [FAIL][114], [FAIL][115], [FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([i915#1602] / [i915#1764] / [i915#1814] / [i915#456] / [k.org#205379])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb2/igt@runner@aborted.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb3/igt@runner@aborted.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb8/igt@runner@aborted.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb5/igt@runner@aborted.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb7/igt@runner@aborted.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb6/igt@runner@aborted.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9206/shard-tglb1/igt@runner@aborted.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@aborted.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb8/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb3/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb7/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb2/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb3/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb1/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb5/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/shard-tglb6/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#123]: https://gitlab.freedesktop.org/drm/intel/issues/123
>   [i915#1354]: https://gitlab.freedesktop.org/drm/intel/issues/1354
>   [i915#1602]: https://gitlab.freedesktop.org/drm/intel/issues/1602
>   [i915#1611]: https://gitlab.freedesktop.org/drm/intel/issues/1611
>   [i915#1635]: https://gitlab.freedesktop.org/drm/intel/issues/1635
>   [i915#165]: https://gitlab.freedesktop.org/drm/intel/issues/165
>   [i915#1764]: https://gitlab.freedesktop.org/drm/intel/issues/1764
>   [i915#1814]: https://gitlab.freedesktop.org/drm/intel/issues/1814
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#198]: https://gitlab.freedesktop.org/drm/intel/issues/198
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2283]: https://gitlab.freedesktop.org/drm/intel/issues/2283
>   [i915#2370]: https://gitlab.freedesktop.org/drm/intel/issues/2370
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2546]: https://gitlab.freedesktop.org/drm/intel/issues/2546
>   [i915#2606]: https://gitlab.freedesktop.org/drm/intel/issues/2606
>   [i915#2614]: https://gitlab.freedesktop.org/drm/intel/issues/2614
>   [i915#31]: https://gitlab.freedesktop.org/drm/intel/issues/31
>   [i915#456]: https://gitlab.freedesktop.org/drm/intel/issues/456
>   [i915#54]: https://gitlab.freedesktop.org/drm/intel/issues/54
>   [i915#699]: https://gitlab.freedesktop.org/drm/intel/issues/699
>   [i915#78]: https://gitlab.freedesktop.org/drm/intel/issues/78
>   [i915#82]: https://gitlab.freedesktop.org/drm/intel/issues/82
>   [i915#95]: https://gitlab.freedesktop.org/drm/intel/issues/95
>   [k.org#205379]: https://bugzilla.kernel.org/show_bug.cgi?id=205379
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
>   * IGT: IGT_5827 -> IGTPW_5090
>   * Linux: CI_DRM_9206 -> Patchwork_18788
> 
>   CI-20190529: 20190529
>   CI_DRM_9206: 85ce674ff932ed7ca41aef52d8bb42c04fbe2171 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGTPW_5090: https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_5090/index.html
>   IGT_5827: 7fd7e3fb8b42eb4e62a4575f6edc5a048e5bec3d @ git://anongit.freedesktop.org/xorg/app/intel-gpu-tools
>   Patchwork_18788: d046e7f1a967ed742d1fdecb23c6eb56cddcc95f @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_18788/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
