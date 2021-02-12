Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 592BC3198F2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 05:00:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 182C36E243;
	Fri, 12 Feb 2021 04:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A98536E1E0
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 04:00:12 +0000 (UTC)
IronPort-SDR: iXd3ncBl7CT/dJK+E05JJhUmCxJPu/8RnXEHimjJEhRFP2I/82QmltTOnl3geW+g0biAq+h3J0
 KlIZYaY9y7Aw==
X-IronPort-AV: E=McAfee;i="6000,8403,9892"; a="182494405"
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="182494405"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 20:00:11 -0800
IronPort-SDR: thtVOI9XDwitnHewDvK7BXngK6O+GUK2Jwu0ypK2MeFOdsUbIoBlREBekGesCdfKFJ4kh79W3N
 ReLX2ekORxyg==
X-IronPort-AV: E=Sophos;i="5.81,172,1610438400"; d="scan'208";a="579031330"
Received: from unknown (HELO intel.com) ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 20:00:09 -0800
Date: Fri, 12 Feb 2021 09:15:02 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: lakshminarayana.vudum@intel.com
Message-ID: <20210212034501.GB31943@intel.com>
References: <20210129080043.24614-1-anshuman.gupta@intel.com>
 <161306172772.27070.14777615744443457839@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161306172772.27070.14777615744443457839@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/debugfs=3A_HDCP_capability_enc_NULL_check_=28rev3=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2021-02-11 at 16:42:07 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/debugfs: HDCP capability enc NULL check (rev3)
> URL   : https://patchwork.freedesktop.org/series/86440/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_9761_full -> Patchwork_19664_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_19664_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_19664_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_19664_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@perf_pmu@cpu-hotplug:
>     - shard-iclb:         [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@perf_pmu@cpu-hotplug.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb7/igt@perf_pmu@cpu-hotplug.html
Hi Lakshmi ,
Above failure are not related to this series.
could you please create a issue for above failure ans re-report the results.
Thanks,
Anshuman Gupta. 
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_19664_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_hotunplug@unbind-rebind:
>     - shard-hsw:          NOTRUN -> [WARN][3] ([i915#2283])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-hsw4/igt@core_hotunplug@unbind-rebind.html
> 
>   * igt@gem_ctx_persistence@engines-mixed:
>     - shard-hsw:          NOTRUN -> [SKIP][4] ([fdo#109271] / [i915#1099])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-hsw6/igt@gem_ctx_persistence@engines-mixed.html
> 
>   * igt@gem_ctx_persistence@replace-hostile:
>     - shard-hsw:          NOTRUN -> [SKIP][5] ([fdo#109271]) +59 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-hsw4/igt@gem_ctx_persistence@replace-hostile.html
> 
>   * igt@gem_ctx_sseu@invalid-args:
>     - shard-apl:          NOTRUN -> [SKIP][6] ([fdo#109271]) +34 similar issues
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl2/igt@gem_ctx_sseu@invalid-args.html
> 
>   * igt@gem_exec_create@forked:
>     - shard-glk:          [PASS][7] -> [DMESG-WARN][8] ([i915#118] / [i915#95])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk5/igt@gem_exec_create@forked.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-glk5/igt@gem_exec_create@forked.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          [PASS][9] -> [FAIL][10] ([i915#2846])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl1/igt@gem_exec_fair@basic-deadline.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl3/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][11] -> [FAIL][12] ([i915#2842]) +2 similar issues
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@gem_exec_fair@basic-none@vcs0.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_reloc@basic-wide-active@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][15] ([i915#2389])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb4/igt@gem_exec_reloc@basic-wide-active@vcs1.html
> 
>   * igt@gem_exec_schedule@u-fairslice@bcs0:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][16] ([i915#1610])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl7/igt@gem_exec_schedule@u-fairslice@bcs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-skl:          [PASS][17] -> [DMESG-WARN][18] ([i915#1610] / [i915#2803])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl7/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][19] ([i915#2658])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl2/igt@gem_pread@exhaustion.html
>     - shard-skl:          NOTRUN -> [WARN][20] ([i915#2658])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl10/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_request_retire@retire-vma-not-inactive:
>     - shard-tglb:         [PASS][21] -> [INCOMPLETE][22] ([i915#2895])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb5/igt@gem_request_retire@retire-vma-not-inactive.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb1/igt@gem_request_retire@retire-vma-not-inactive.html
> 
>   * igt@gem_userptr_blits@process-exit-mmap@wb:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#1699]) +3 similar issues
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl8/igt@gem_userptr_blits@process-exit-mmap@wb.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][24] ([fdo#112306])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@gen9_exec_parse@batch-without-end.html
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#112306])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@gen9_exec_parse@bb-oversize:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([i915#2527])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@gen9_exec_parse@bb-oversize.html
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#2527])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@gen9_exec_parse@bb-oversize.html
> 
>   * igt@i915_hangman@engine-error@vecs0:
>     - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271]) +38 similar issues
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl2/igt@i915_hangman@engine-error@vecs0.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([i915#1902])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@i915_pm_lpsp@screens-disabled.html
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([i915#1902])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@kms_async_flips@test-time-stamp:
>     - shard-tglb:         [PASS][31] -> [FAIL][32] ([i915#2597])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb6/igt@kms_async_flips@test-time-stamp.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb3/igt@kms_async_flips@test-time-stamp.html
> 
>   * igt@kms_chamelium@vga-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl2/igt@kms_chamelium@vga-hpd-for-each-pipe.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-75:
>     - shard-apl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl7/igt@kms_color_chamelium@pipe-b-ctm-0-75.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-negative:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl4/igt@kms_color_chamelium@pipe-c-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-hsw:          NOTRUN -> [SKIP][36] ([fdo#109271] / [fdo#111827]) +4 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-hsw4/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-red-to-blue:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@kms_color_chamelium@pipe-d-ctm-red-to-blue.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109279])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [fdo#109279])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen:
>     - shard-skl:          [PASS][41] -> [FAIL][42] ([i915#54]) +2 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl5/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl3/igt@kms_cursor_crc@pipe-c-cursor-64x21-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-512x170-random:
>     - shard-hsw:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#533]) +8 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-hsw4/igt@kms_cursor_crc@pipe-d-cursor-512x170-random.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled:
>     - shard-skl:          [PASS][44] -> [DMESG-WARN][45] ([i915#1982]) +2 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl8/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl4/igt@kms_draw_crc@draw-method-xrgb2101010-pwrite-untiled.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [PASS][46] -> [DMESG-WARN][47] ([i915#180]) +2 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl2/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#2587])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-apl:          NOTRUN -> [SKIP][49] ([fdo#109271] / [i915#2672])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt:
>     - shard-skl:          NOTRUN -> [SKIP][50] ([fdo#109271]) +22 similar issues
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#111825]) +2 similar issues
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-shrfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([fdo#109280]) +2 similar issues
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-shrfb-plflip-blt.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-apl:          NOTRUN -> [FAIL][53] ([fdo#108145] / [i915#265])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl2/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][54] ([i915#265])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl2/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][55] -> [FAIL][56] ([fdo#108145] / [i915#265])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl5/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl3/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109278]) +2 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@kms_plane_lowres@pipe-d-tiling-x.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area-3:
>     - shard-apl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#658])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl8/igt@kms_psr2_sf@plane-move-sf-dmg-area-3.html
> 
>   * igt@kms_psr2_su@frontbuffer:
>     - shard-skl:          NOTRUN -> [SKIP][59] ([fdo#109271] / [i915#658])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl4/igt@kms_psr2_su@frontbuffer.html
> 
>   * igt@kms_psr@psr2_sprite_mmap_gtt:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([fdo#109441]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@kms_psr@psr2_sprite_mmap_gtt.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb5/igt@kms_psr@psr2_sprite_mmap_gtt.html
> 
>   * igt@kms_psr@suspend:
>     - shard-hsw:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#1072]) +1 similar issue
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-hsw4/igt@kms_psr@suspend.html
> 
>   * igt@kms_vblank@pipe-c-ts-continuation-suspend:
>     - shard-kbl:          [PASS][63] -> [DMESG-WARN][64] ([i915#180])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl7/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl3/igt@kms_vblank@pipe-c-ts-continuation-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-tglb:         [PASS][65] -> [FAIL][66] ([i915#1542])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb3/igt@perf@polling-parameterized.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb1/igt@perf@polling-parameterized.html
> 
>   * igt@perf_pmu@module-unload:
>     - shard-skl:          [PASS][67] -> [DMESG-WARN][68] ([i915#1982] / [i915#262])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl1/igt@perf_pmu@module-unload.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl4/igt@perf_pmu@module-unload.html
> 
>   * igt@prime_nv_api@i915_self_import_to_different_fd:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([fdo#109291])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@prime_nv_api@i915_self_import_to_different_fd.html
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109291])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@prime_nv_api@i915_self_import_to_different_fd.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-tglb:         [PASS][71] -> [FAIL][72] ([i915#3028])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb6/igt@sysfs_clients@recycle.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb7/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@close-replace-race:
>     - shard-glk:          [TIMEOUT][73] ([i915#2918]) -> [PASS][74]
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk9/igt@gem_ctx_persistence@close-replace-race.html
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-glk6/igt@gem_ctx_persistence@close-replace-race.html
> 
>   * igt@gem_eio@in-flight-suspend:
>     - shard-apl:          [DMESG-WARN][75] ([i915#1037] / [i915#180]) -> [PASS][76]
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl6/igt@gem_eio@in-flight-suspend.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl8/igt@gem_eio@in-flight-suspend.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [TIMEOUT][77] ([i915#1037] / [i915#3063]) -> [PASS][78]
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb3/igt@gem_eio@unwedge-stress.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][79] ([i915#2842]) -> [PASS][80] +2 similar issues
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>     - shard-glk:          [FAIL][81] ([i915#2842]) -> [PASS][82]
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk4/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-tglb:         [FAIL][83] ([i915#2876]) -> [PASS][84]
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb3/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][85] ([i915#2842]) -> [PASS][86] +3 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_schedule@u-fairslice@rcs0:
>     - shard-iclb:         [DMESG-WARN][87] ([i915#2803]) -> [PASS][88]
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb8/igt@gem_exec_schedule@u-fairslice@rcs0.html
>     - shard-tglb:         [DMESG-WARN][89] ([i915#2803]) -> [PASS][90]
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@gem_exec_schedule@u-fairslice@rcs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@gem_exec_schedule@u-fairslice@rcs0.html
> 
>   * igt@gem_sync@basic-each:
>     - shard-apl:          [INCOMPLETE][91] ([i915#2944]) -> [PASS][92]
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl3/igt@gem_sync@basic-each.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl7/igt@gem_sync@basic-each.html
> 
>   * igt@gem_vm_create@destroy-race:
>     - shard-tglb:         [TIMEOUT][93] ([i915#2795]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb8/igt@gem_vm_create@destroy-race.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb8/igt@gem_vm_create@destroy-race.html
> 
>   * igt@i915_pm_rpm@system-suspend-modeset:
>     - shard-skl:          [INCOMPLETE][95] ([i915#146] / [i915#151]) -> [PASS][96]
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl1/igt@i915_pm_rpm@system-suspend-modeset.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl4/igt@i915_pm_rpm@system-suspend-modeset.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [INCOMPLETE][97] ([i915#155] / [i915#636]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl6/igt@i915_suspend@forcewake.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl2/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-64x21-random:
>     - shard-skl:          [FAIL][99] ([i915#54]) -> [PASS][100] +3 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl6/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl8/igt@kms_cursor_crc@pipe-c-cursor-64x21-random.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic:
>     - shard-skl:          [FAIL][101] ([i915#2346]) -> [PASS][102]
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-blt-ytiled:
>     - shard-skl:          [DMESG-WARN][103] ([i915#1982]) -> [PASS][104] +1 similar issue
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl10/igt@kms_draw_crc@draw-method-rgb565-blt-ytiled.html
> 
>   * igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1:
>     - shard-skl:          [FAIL][105] ([i915#2122]) -> [PASS][106] +1 similar issue
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl7/igt@kms_flip@flip-vs-absolute-wf_vblank@a-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2:
>     - shard-glk:          [FAIL][107] ([i915#79]) -> [PASS][108] +1 similar issue
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a2.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-kbl:          [DMESG-WARN][109] ([i915#180] / [i915#78]) -> [PASS][110]
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@kms_hdr@bpc-switch.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl7/igt@kms_hdr@bpc-switch.html
>     - shard-skl:          [FAIL][111] ([i915#1188]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl9/igt@kms_hdr@bpc-switch.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl2/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes:
>     - shard-apl:          [DMESG-WARN][113] ([i915#180] / [i915#533]) -> [PASS][114]
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-apl1/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend-pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [FAIL][115] ([fdo#108145] / [i915#265]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][117] ([fdo#109441]) -> [PASS][118] +2 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb4/igt@kms_psr@psr2_suspend.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend:
>     - shard-skl:          [INCOMPLETE][119] ([i915#146] / [i915#198]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl10/igt@kms_vblank@pipe-a-ts-continuation-dpms-suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][121] ([i915#1542]) -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl7/igt@perf@polling-parameterized.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl6/igt@perf@polling-parameterized.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-hsw:          [FAIL][123] ([i915#3028]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-hsw5/igt@sysfs_clients@recycle.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-hsw6/igt@sysfs_clients@recycle.html
> 
>   * {igt@sysfs_clients@recycle-many}:
>     - shard-glk:          [FAIL][125] ([i915#3028]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-glk5/igt@sysfs_clients@recycle-many.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-glk5/igt@sysfs_clients@recycle-many.html
>     - shard-skl:          [FAIL][127] ([i915#3028]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-skl3/igt@sysfs_clients@recycle-many.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-skl7/igt@sysfs_clients@recycle-many.html
>     - shard-tglb:         [FAIL][129] ([i915#3028]) -> [PASS][130]
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-tglb7/igt@sysfs_clients@recycle-many.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-tglb5/igt@sysfs_clients@recycle-many.html
> 
>   * igt@testdisplay:
>     - shard-kbl:          [DMESG-WARN][131] ([i915#165] / [i915#180] / [i915#78]) -> [PASS][132] +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@testdisplay.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl7/igt@testdisplay.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-kbl:          [SKIP][133] ([fdo#109271]) -> [FAIL][134] ([i915#2842])
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@gem_exec_fair@basic-pace@rcs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl2/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [WARN][135] ([i915#2684]) -> [WARN][136] ([i915#1804] / [i915#2684])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb5/igt@i915_pm_rc6_residency@rc6-idle.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-kbl:          [DMESG-FAIL][137] ([i915#165]) -> [FAIL][138] ([i915#2641])
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5:
>     - shard-iclb:         [SKIP][139] ([i915#658]) -> [SKIP][140] ([i915#2920]) +1 similar issue
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-5.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][141] ([i915#2920]) -> [SKIP][142] ([i915#658]) +2 similar issues
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][143], [FAIL][144], [FAIL][145]) ([i915#2295] / [i915#3002]) -> ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149]) ([i915#1814] / [i915#2295] / [i915#3002] / [i915#602])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl2/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-kbl4/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl4/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl7/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl3/igt@runner@aborted.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-kbl4/igt@runner@aborted.html
>     - shard-iclb:         ([FAIL][150], [FAIL][151], [FAIL][152], [FAIL][153]) ([i915#2295] / [i915#2426] / [i915#2724] / [i915#3002]) -> ([FAIL][154], [FAIL][155], [FAIL][156]) ([i915#2295] / [i915#2724] / [i915#3002])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb2/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_9761/shard-iclb6/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/shard-i
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_19664/index.html
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
