Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE53487E5D
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 22:37:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FC4F10F3A4;
	Fri,  7 Jan 2022 21:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4C110F3A4
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 21:37:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641591452; x=1673127452;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OwEZDwoCmkr7Lp1WUnqHT7irZyfnYxK+i1shLEUAbUk=;
 b=J6w6ivcD5Kc8Jk2l1aKoUHHRhstcZj2CQvWgIQjimezQDf4z8qY/mnUi
 f+hNt65rkPfdbuki1PlPXD7AR2BmWnWb4XuXFUGavckLTnc6spUsNpU6k
 feW4Z91y+/ZVaKei7hfb2x6d0kCAOM4GnhOxSK0VaKHuc4xyGBkVQGz0P
 okHz1Gh6TEFgQ7av+04Awo5hbmNFxK0oAX2QLlzHI2JyI9KRz0onx8EJ/
 7+A2yB4bU2Yv1bfOH3w7UKSTidFAs2C8U8akQXZcmvd0jqpiR0XKGUXBc
 y+AsQCzRbzMBxP27AbgsSaehH+88ILd2kPNOdHx52WNXwgRssgsZRHWsj g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10220"; a="267251938"
X-IronPort-AV: E=Sophos;i="5.88,271,1635231600"; d="scan'208";a="267251938"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 13:37:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,271,1635231600"; d="scan'208";a="668891980"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 13:37:32 -0800
Date: Fri, 7 Jan 2022 13:37:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Ydiym5f4OD56c4lA@mdroper-desk1.amr.corp.intel.com>
References: <20211217160255.1300348-1-harish.chegondi@intel.com>
 <164158350285.24389.215353210673151335@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164158350285.24389.215353210673151335@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Fix_possible_NULL_pointer_dereferences_in_i9xx=5Fupdat?=
 =?utf-8?b?ZV93bSgpIChyZXYzKQ==?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 07, 2022 at 07:25:02PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix possible NULL pointer dereferences in i9xx_update_wm() (rev3)
> URL   : https://patchwork.freedesktop.org/series/98154/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11027_full -> Patchwork_21892_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next.  Thanks for the patch and the review.


Matt

> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21892_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@engines-hang:
>     - shard-snb:          NOTRUN -> [SKIP][1] ([fdo#109271] / [i915#1099])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-snb2/igt@gem_ctx_persistence@engines-hang.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][2] ([i915#4547])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#2842])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][6] -> [FAIL][7] ([i915#2842])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb6/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb3/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][8] -> [FAIL][9] ([i915#2842])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-kbl:          NOTRUN -> [SKIP][10] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl3/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-tglb:         NOTRUN -> [SKIP][11] ([i915#4613])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb3/igt@gem_lmem_swapping@verify-random.html
>     - shard-iclb:         NOTRUN -> [SKIP][12] ([i915#4613])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb1/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-kbl:          NOTRUN -> [SKIP][13] ([fdo#109271]) +157 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl6/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-skl:          [PASS][14] -> [DMESG-WARN][15] ([i915#1436] / [i915#716])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl1/igt@gen9_exec_parse@allowed-all.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl9/igt@gen9_exec_parse@allowed-all.html
>     - shard-apl:          [PASS][16] -> [DMESG-WARN][17] ([i915#1436] / [i915#716])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl4/igt@gen9_exec_parse@allowed-all.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-apl6/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#454])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#1937])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@modeset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([fdo#110892])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb1/igt@i915_pm_rpm@modeset-non-lpsp.html
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#111644] / [i915#1397] / [i915#2411])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb3/igt@i915_pm_rpm@modeset-non-lpsp.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][23] -> [DMESG-WARN][24] ([i915#180]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@i915_suspend@forcewake.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][25] ([i915#4272])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_async_flips@crc.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][26] ([i915#3743])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-16bpp-rotate-0:
>     - shard-glk:          [PASS][27] -> [DMESG-WARN][28] ([i915#118]) +2 similar issues
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk8/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-glk4/igt@kms_big_fb@y-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3777])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][30] ([fdo#111615] / [i915#3689])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb3/igt@kms_ccs@pipe-a-bad-aux-stride-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +8 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl3/igt@kms_ccs@pipe-a-crc-sprite-planes-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_chamelium@hdmi-crc-single:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [fdo#111827])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-apl6/igt@kms_chamelium@hdmi-crc-single.html
> 
>   * igt@kms_chamelium@vga-hpd-without-ddc:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +17 similar issues
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@kms_chamelium@vga-hpd-without-ddc.html
> 
>   * igt@kms_color_chamelium@pipe-d-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_color_chamelium@pipe-d-degamma.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][36] ([i915#1319]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl6/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271]) +4 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-apl6/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][38] ([i915#180])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][39] -> [FAIL][40] ([i915#2346])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl4/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][41] -> [FAIL][42] ([i915#2346])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb6/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled:
>     - shard-skl:          [PASS][43] -> [DMESG-WARN][44] ([i915#1982]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl9/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl6/igt@kms_draw_crc@draw-method-xrgb2101010-mmap-wc-untiled.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109274])
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb1/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
>     - shard-tglb:         NOTRUN -> [SKIP][46] ([fdo#109274] / [fdo#111825])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs:
>     - shard-kbl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [i915#2672])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-skl:          NOTRUN -> [SKIP][48] ([fdo#109271]) +48 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile:
>     - shard-iclb:         [PASS][49] -> [SKIP][50] ([i915#3701])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-skl:          NOTRUN -> [SKIP][51] ([fdo#109271] / [i915#2672])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt:
>     - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109280] / [fdo#111825]) +1 similar issue
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
>     - shard-iclb:         NOTRUN -> [SKIP][53] ([fdo#109280])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb1/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +2 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl7/igt@kms_hdr@bpc-switch-suspend.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-apl4/igt@kms_hdr@bpc-switch-suspend.html
>     - shard-skl:          [PASS][56] -> [FAIL][57] ([i915#1188])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl10/igt@kms_hdr@bpc-switch-suspend.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl4/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][58] ([fdo#109271] / [i915#533])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl4/igt@kms_pipe_crc_basic@read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][59] ([fdo#108145] / [i915#265]) +1 similar issue
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl6/igt@kms_plane_alpha_blend@pipe-a-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][60] ([fdo#108145] / [i915#265]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][61] ([i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-tglb:         NOTRUN -> [SKIP][62] ([i915#1911])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb7/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658]) +1 similar issue
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl4/igt@kms_psr2_su@page_flip-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb5/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@basic:
>     - shard-snb:          NOTRUN -> [FAIL][66] ([i915#31])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-snb2/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-a-ts-continuation-idle-hang:
>     - shard-tglb:         [PASS][67] -> [INCOMPLETE][68] ([i915#4770])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb6/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb6/igt@kms_vblank@pipe-a-ts-continuation-idle-hang.html
> 
>   * igt@kms_vblank@pipe-d-query-forked-hang:
>     - shard-snb:          NOTRUN -> [SKIP][69] ([fdo#109271]) +18 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-snb2/igt@kms_vblank@pipe-d-query-forked-hang.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-busy:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([fdo#109278])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb1/igt@kms_vblank@pipe-d-wait-forked-busy.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-skl:          NOTRUN -> [SKIP][71] ([fdo#109271] / [i915#2437])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          NOTRUN -> [FAIL][72] ([i915#1722])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@perf@polling-small-buf.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@sysfs_clients@sema-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          [INCOMPLETE][74] ([i915#4547]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl3/igt@gem_exec_capture@pi@bcs0.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl8/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][76] ([i915#2842]) -> [PASS][77] +1 similar issue
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@gem_exec_fair@basic-pace@vcs1.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][78] ([i915#3921]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-snb4/igt@i915_selftest@live@hangcheck.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-snb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@kms_big_fb@y-tiled-32bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][80] ([i915#118]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-glk5/igt@kms_big_fb@y-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [FAIL][82] ([i915#2346] / [i915#533]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [FAIL][84] ([i915#79]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-glk9/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-dp1:
>     - shard-apl:          [DMESG-WARN][86] ([i915#180]) -> [PASS][87] +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@kms_flip@flip-vs-suspend@c-dp1.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-apl4/igt@kms_flip@flip-vs-suspend@c-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [FAIL][88] ([i915#2122]) -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-hdmi-a2:
>     - shard-glk:          [FAIL][90] ([i915#2122]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-glk1/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-glk9/igt@kms_flip@plain-flip-ts-check@a-hdmi-a2.html
> 
>   * igt@kms_hdr@bpc-switch-suspend:
>     - shard-kbl:          [DMESG-WARN][92] ([i915#180]) -> [PASS][93] +9 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@kms_hdr@bpc-switch-suspend.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl1/igt@kms_hdr@bpc-switch-suspend.html
> 
>   * igt@kms_psr@psr2_suspend:
>     - shard-iclb:         [SKIP][94] ([fdo#109441]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb7/igt@kms_psr@psr2_suspend.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb2/igt@kms_psr@psr2_suspend.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][96] ([i915#1542]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl7/igt@perf@polling-parameterized.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl4/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_create@create-massive:
>     - shard-tglb:         [DMESG-WARN][98] ([i915#3002]) -> [DMESG-WARN][99] ([i915#3002] / [i915#4856])
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb7/igt@gem_create@create-massive.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb5/igt@gem_create@create-massive.html
> 
>   * igt@gem_exec_fair@basic-none-rrul@rcs0:
>     - shard-iclb:         [FAIL][100] ([i915#2852]) -> [FAIL][101] ([i915#2842])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb1/igt@gem_exec_fair@basic-none-rrul@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb7/igt@gem_exec_fair@basic-none-rrul@rcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-tglb:         [SKIP][102] ([fdo#109283]) -> [SKIP][103] ([fdo#109283] / [i915#4877])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb3/igt@gem_exec_params@no-vebox.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb5/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-tglb:         [SKIP][104] ([i915#2856]) -> [SKIP][105] ([i915#2527] / [i915#2856]) +19 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb8/igt@gen9_exec_parse@bb-start-param.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb2/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_pm_dc@dc3co-vpb-simulation:
>     - shard-iclb:         [SKIP][106] ([i915#658]) -> [SKIP][107] ([i915#588])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb8/igt@i915_pm_dc@dc3co-vpb-simulation.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb2/igt@i915_pm_dc@dc3co-vpb-simulation.html
> 
>   * igt@i915_pm_rc6_residency@rc6-idle:
>     - shard-iclb:         [FAIL][108] ([i915#2680]) -> [WARN][109] ([i915#1804] / [i915#2684])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb6/igt@i915_pm_rc6_residency@rc6-idle.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb7/igt@i915_pm_rc6_residency@rc6-idle.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-tglb:         [SKIP][110] ([fdo#111828]) -> [SKIP][111] ([i915#1063]) +7 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb3/igt@kms_content_protection@uevent.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb5/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_flip@2x-absolute-wf_vblank:
>     - shard-tglb:         [SKIP][112] ([fdo#111825] / [i915#3966]) -> [SKIP][113] ([fdo#109274] / [fdo#111825] / [i915#3966])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb6/igt@kms_flip@2x-absolute-wf_vblank.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb3/igt@kms_flip@2x-absolute-wf_vblank.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-tglb:         [SKIP][114] ([fdo#111825]) -> [SKIP][115] ([fdo#109274] / [fdo#111825]) +64 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb1/igt@kms_flip@2x-plain-flip-ts-check.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb1/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs:
>     - shard-skl:          [INCOMPLETE][116] ([i915#3699]) -> [INCOMPLETE][117] ([i915#3699] / [i915#3701])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl1/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile:
>     - shard-skl:          [SKIP][118] ([fdo#109271]) -> [SKIP][119] ([fdo#109271] / [i915#1888])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-skl10/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt:
>     - shard-tglb:         [SKIP][120] ([fdo#111825]) -> [SKIP][121] ([fdo#109280] / [fdo#111825]) +203 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-tglb2/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][122] ([i915#2920]) -> [SKIP][123] ([fdo#111068] / [i915#658])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [SKIP][124] ([fdo#111068] / [i915#658]) -> [FAIL][125] ([i915#4688])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb8/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [SKIP][126] ([fdo#111068] / [i915#658]) -> [SKIP][127] ([fdo#109642] / [fdo#111068] / [i915#658]) +2 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-iclb6/igt@kms_psr2_su@page_flip-nv12.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-iclb4/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131], [FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312]) -> ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312] / [i915#602])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@runner@aborted.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl6/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl1/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-kbl7/igt@runner@aborted.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl1/igt@runner@aborted.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl1/igt@runner@aborted.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl3/igt@runner@aborted.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl1/igt@runner@aborted.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl1/igt@runner@aborted.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@runner@aborted.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@runner@aborted.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-kbl7/igt@runner@aborted.html
>     - shard-apl:          ([FAIL][149], [FAIL][150], [FAIL][151], [FAIL][152]) ([i915#180] / [i915#3002] / [i915#4312]) -> ([FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157], [FAIL][158]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#4312])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@runner@aborted.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl1/igt@runner@aborted.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl3/igt@runner@aborted.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11027/shard-apl8/igt@runner@aborted.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-apl6/igt@runner@aborted.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/shard-apl4/igt@runner@aborted.html
>    [155]: https://intel-gfx-ci.01.org/tree/d
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21892/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
