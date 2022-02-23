Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F114C0C3C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 06:38:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C875F10E2C7;
	Wed, 23 Feb 2022 05:38:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E70610E2C7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 05:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645594709; x=1677130709;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qSqjaEUD6GwP6sMDk+JmsEioXDGX4kW9zGZW/AuP63M=;
 b=G/jy5Za2gdka6LsXk0VbWCTFJJaxQ+DFjENSbc1A9tzqg1GF94UDBPTR
 MSxwScogssX0BwpMJWdMAw/P1TTn295ugLU7kz45DUBvTAqv6eRHZb0ci
 d+PRy0KbAC/hwdq/5dxLdktFBi167B2x/RouQR2yoD+6f5G7n1zHCNDBb
 aJp0ZkNM+yxvC8bzwcXUB1RzmG4wx/lf5LmPrtanO7QGOYlP4jNl9w9+3
 3W6PkbNBL+IgkMTgI9Cq4rLOK+D3uLusS/pY6US7X584zM/2TYpPDp5u+
 5kUDDSXjosKdzgHQNWktjNPiTkfsDxx8cRyOl4VEdMDyLfcDx9+y7393m Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="338325890"
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="338325890"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 21:38:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,390,1635231600"; d="scan'208";a="573698688"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 21:38:28 -0800
Date: Tue, 22 Feb 2022 21:38:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YhXIUguaY7AjSM0g@mdroper-desk1.amr.corp.intel.com>
References: <20220127103520.348015-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <164329691839.23661.17521175062441389646@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164329691839.23661.17521175062441389646@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/adl-n=3A_Add_PCH_Support_for_Alder_Lake_N?=
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>, "Vudum,
 Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 27, 2022 at 03:21:58PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/adl-n: Add PCH Support for Alder Lake N
> URL   : https://patchwork.freedesktop.org/series/99413/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11149_full -> Patchwork_22123_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22123_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22123_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22123_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@busy-flip@a-edp1:
>     - shard-skl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl6/igt@kms_flip@busy-flip@a-edp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl10/igt@kms_flip@busy-flip@a-edp1.html

The CI logs for this have expired now, but a SKL display test failure
wouldn't be caused by the addition of a new ADL PCH ID.

Patch applied to drm-intel-next.  Thanks for the patch and review.


Matt

> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22123_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [PASS][3] -> [FAIL][4] ([i915#2842]) +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb3/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][5] ([i915#2842])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [PASS][6] -> [FAIL][7] ([i915#2842]) +1 similar issue
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-kbl4/igt@gem_exec_fair@basic-pace@vecs0.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][8] -> [FAIL][9] ([i915#2849])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_fence@basic-wait@bcs0:
>     - shard-kbl:          NOTRUN -> [SKIP][10] ([fdo#109271]) +29 similar issues
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl4/igt@gem_exec_fence@basic-wait@bcs0.html
> 
>   * igt@gem_exec_whisper@basic-fds-forked:
>     - shard-glk:          [PASS][11] -> [DMESG-WARN][12] ([i915#118]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk8/igt@gem_exec_whisper@basic-fds-forked.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk7/igt@gem_exec_whisper@basic-fds-forked.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-apl:          NOTRUN -> [SKIP][13] ([fdo#109271] / [i915#2190])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-apl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl3/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][15] ([i915#2658])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl3/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-tglb:         NOTRUN -> [SKIP][16] ([i915#4270]) +1 similar issue
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_userptr_blits@access-control:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([i915#3297])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@gem_userptr_blits@access-control.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][18] ([i915#4990])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gem_userptr_blits@unsync-unmap-after-close:
>     - shard-tglb:         NOTRUN -> [SKIP][19] ([i915#3297])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@gem_userptr_blits@unsync-unmap-after-close.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-apl:          NOTRUN -> [FAIL][20] ([i915#3318])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl3/igt@gem_userptr_blits@vma-merge.html
>     - shard-kbl:          NOTRUN -> [FAIL][21] ([i915#3318])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl4/igt@gem_userptr_blits@vma-merge.html
>     - shard-skl:          NOTRUN -> [FAIL][22] ([i915#3318])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl6/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-apl:          [PASS][23] -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-apl8/igt@gen9_exec_parse@allowed-all.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-tglb:         NOTRUN -> [SKIP][25] ([i915#2527] / [i915#2856])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][26] ([i915#1886] / [i915#2291])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl9/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][27] ([i915#3743])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip:
>     - shard-skl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl9/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#111615]) +2 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#110723])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_big_fb@yf-tiled-64bpp-rotate-90.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#3689] / [i915#3886]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [i915#3886]) +4 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][33] ([i915#3689]) +2 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_ccs@pipe-a-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][34] ([fdo#109278] / [i915#3886]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3886]) +2 similar issues
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl7/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886])
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl4/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][37] ([fdo#111615] / [i915#3689]) +1 similar issue
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_ccs@pipe-c-crc-primary-rotation-180-yf_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-single:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([fdo#109284] / [fdo#111827])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_chamelium@dp-crc-single.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-apl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [fdo#111827]) +10 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl3/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_color@pipe-b-ctm-red-to-blue:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][40] ([i915#1982])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl9/igt@kms_color@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +7 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl4/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-blue-to-red:
>     - shard-tglb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_color_chamelium@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_content_protection@dp-mst-lic-type-1:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3116] / [i915#3299])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_content_protection@dp-mst-lic-type-1.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][45] ([i915#3359]) +1 similar issue
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_cursor_crc@pipe-a-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][47] ([fdo#109279] / [i915#3359])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_cursor_crc@pipe-b-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x32-random:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([i915#3319])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_cursor_crc@pipe-d-cursor-32x32-random.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][49] -> [FAIL][50] ([i915#2346])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2346] / [i915#533])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl8/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl10/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#2346])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
>     - shard-glk:          [PASS][55] -> [FAIL][56] ([i915#79])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk9/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@2x-plain-flip-interruptible:
>     - shard-tglb:         NOTRUN -> [SKIP][57] ([fdo#109274] / [fdo#111825]) +3 similar issues
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_flip@2x-plain-flip-interruptible.html
> 
>   * igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1:
>     - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#2122])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl4/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl2/igt@kms_flip@flip-vs-blocking-wf-vblank@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][60] -> [FAIL][61] ([i915#79]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl10/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          NOTRUN -> [FAIL][62] ([i915#2122])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +107 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109280])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-gtt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][65] ([fdo#109280] / [fdo#111825]) +6 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-indfb-plflip-blt.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][66] ([fdo#109271] / [i915#533])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl3/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-skl:          [PASS][67] -> [INCOMPLETE][68] ([i915#1982] / [i915#4939])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +3 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl7/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-skl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265]) +2 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([fdo#108145] / [i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][73] ([fdo#108145] / [i915#265])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl4/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-yf:
>     - shard-tglb:         NOTRUN -> [SKIP][74] ([fdo#111615] / [fdo#112054])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_plane_lowres@pipe-b-tiling-yf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#658])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl6/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area:
>     - shard-tglb:         NOTRUN -> [SKIP][76] ([i915#2920])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-apl:          NOTRUN -> [SKIP][77] ([fdo#109271] / [i915#658])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl7/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_cursor_render:
>     - shard-iclb:         [PASS][78] -> [SKIP][79] ([fdo#109441]) +4 similar issues
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb2/igt@kms_psr@psr2_cursor_render.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_psr@psr2_cursor_render.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][80] -> [FAIL][81] ([i915#31])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk6/igt@kms_setmode@basic.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk8/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-b-ts-continuation-suspend:
>     - shard-apl:          [PASS][82] -> [DMESG-WARN][83] ([i915#180])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-apl7/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl8/igt@kms_vblank@pipe-b-ts-continuation-suspend.html
> 
>   * igt@kms_vblank@pipe-d-wait-forked-hang:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271]) +140 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl4/igt@kms_vblank@pipe-d-wait-forked-hang.html
> 
>   * igt@kms_vrr@flip-dpms:
>     - shard-tglb:         NOTRUN -> [SKIP][85] ([fdo#109502])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@kms_vrr@flip-dpms.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][86] ([i915#2530])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@nouveau_crc@pipe-c-source-outp-complete.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][87] -> [FAIL][88] ([i915#1722])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl4/igt@perf@polling-small-buf.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl6/igt@perf@polling-small-buf.html
> 
>   * igt@prime_udl:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109291]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@prime_udl.html
> 
>   * igt@prime_vgem@coherency-gtt:
>     - shard-iclb:         NOTRUN -> [SKIP][90] ([fdo#109292])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@prime_vgem@coherency-gtt.html
> 
>   * igt@sysfs_clients@fair-0:
>     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl7/igt@sysfs_clients@fair-0.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-apl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [i915#2994])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl4/igt@sysfs_clients@recycle.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@legacy-engines-hostile@vebox:
>     - shard-iclb:         [FAIL][93] ([i915#2410]) -> [PASS][94]
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb6/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb8/igt@gem_ctx_persistence@legacy-engines-hostile@vebox.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [FAIL][95] ([i915#232]) -> [PASS][96] +1 similar issue
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][97] ([i915#4525]) -> [PASS][98]
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [FAIL][99] ([i915#2842]) -> [PASS][100] +1 similar issue
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-tglb8/igt@gem_exec_fair@basic-flow@rcs0.html
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-tglb5/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [FAIL][101] ([i915#2842]) -> [PASS][102] +1 similar issue
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_linear_blits@interruptible:
>     - shard-apl:          [INCOMPLETE][103] ([i915#4977]) -> [PASS][104]
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-apl8/igt@gem_linear_blits@interruptible.html
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl7/igt@gem_linear_blits@interruptible.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [FAIL][105] ([i915#4171]) -> [PASS][106]
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk2/igt@gem_softpin@allocator-evict-all-engines.html
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@gem_spin_batch@legacy-resubmit@vebox:
>     - shard-skl:          [DMESG-WARN][107] ([i915#1982]) -> [PASS][108]
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl5/igt@gem_spin_batch@legacy-resubmit@vebox.html
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl9/igt@gem_spin_batch@legacy-resubmit@vebox.html
> 
>   * igt@gem_workarounds@suspend-resume:
>     - shard-apl:          [DMESG-WARN][109] ([i915#180]) -> [PASS][110] +3 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-apl1/igt@gem_workarounds@suspend-resume.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-apl8/igt@gem_workarounds@suspend-resume.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [FAIL][111] ([i915#454]) -> [PASS][112]
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][113] ([i915#118]) -> [PASS][114] +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          [INCOMPLETE][115] ([i915#2828] / [i915#300]) -> [PASS][116]
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl4/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][117] ([i915#2122]) -> [PASS][118]
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk9/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk3/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible@ab-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@b-dp1:
>     - shard-kbl:          [DMESG-WARN][119] ([i915#180]) -> [PASS][120]
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-kbl4/igt@kms_flip@flip-vs-suspend-interruptible@b-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-edp1:
>     - shard-skl:          [INCOMPLETE][121] -> [PASS][122]
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl2/igt@kms_flip@flip-vs-suspend@a-edp1.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl7/igt@kms_flip@flip-vs-suspend@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@a-edp1:
>     - shard-skl:          [FAIL][123] ([i915#2122]) -> [PASS][124]
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl2/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [FAIL][125] ([i915#4911]) -> [PASS][126]
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk7/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][127] ([i915#3701]) -> [PASS][128]
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_hdr@bpc-switch-dpms:
>     - shard-skl:          [FAIL][129] ([i915#1188]) -> [PASS][130] +1 similar issue
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl7/igt@kms_hdr@bpc-switch-dpms.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl1/igt@kms_hdr@bpc-switch-dpms.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-glk:          [SKIP][131] ([fdo#109271]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-glk1/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [FAIL][133] ([fdo#108145] / [i915#265]) -> [PASS][134]
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-skl6/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][135] ([fdo#109441]) -> [PASS][136] +3 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@sysfs_heartbeat_interval@mixed@bcs0:
>     - shard-skl:          [WARN][137] ([i915#4055]) -> [PASS][138]
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11149/shard-skl5/igt@s
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22123/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
