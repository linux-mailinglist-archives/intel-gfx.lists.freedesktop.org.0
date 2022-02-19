Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F2ABC4BC600
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 07:29:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C64C88DA9;
	Sat, 19 Feb 2022 06:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A24AF10F135
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Feb 2022 06:29:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645252169; x=1676788169;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=DNqkGuaOMfafR2IpHD6B0VDazl1HwUYhFLW64o2IYBk=;
 b=eStWP1oRz8Lc8Jkr/x5UXjRirPYdeeO4AhbWiwn8Up8HVfToW3oGaXuR
 ZQADubS460bbi9GGiGig81I/weA9Gv5xvYykSH9v/WgFUCeTZLaayA24q
 lXgAlPm8+gGScWNdsXFlZmD/OU/z5Uiu/kWp1P+UCt7LQSZGnwhroIsJg
 sXo/I2QMOyioyyAclP+NvPPBCFuwKoirOsUm2FTW+3gRDEFHpljV5NUfC
 JZ4T3nibIWYyME8dERBlBn2WpirvA0E22SP7QxKZeYXhWGy/iq2o5C49S
 Pg8sw0TqTSnhIdCbIG94cu5w27k76d2sYqx1H/kz8IYuIJkK81Bodxmfs w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10262"; a="251219885"
X-IronPort-AV: E=Sophos;i="5.88,381,1635231600"; d="scan'208";a="251219885"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 22:29:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,381,1635231600"; d="scan'208";a="605755528"
Received: from rkotlyar-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.149.118])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2022 22:29:28 -0800
Date: Fri, 18 Feb 2022 22:29:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220219062930.sjbz7dlotnb72m5h@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220217175634.4128754-1-lucas.demarchi@intel.com>
 <164518971635.25451.2148301588634439085@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <164518971635.25451.2148301588634439085@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Kill_the_fake_lmem_support_=28rev2=29?=
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

On Fri, Feb 18, 2022 at 01:08:36PM +0000, Patchwork wrote:
>== Series Details ==
>
>Series: drm/i915: Kill the fake lmem support (rev2)
>URL   : https://patchwork.freedesktop.org/series/100276/
>State : failure
>
>== Summary ==
>
>CI Bug Log - changes from CI_DRM_11244_full -> Patchwork_22319_full
>====================================================
>
>Summary
>-------
>
>  **FAILURE**
>
>  Serious unknown changes coming with Patchwork_22319_full absolutely need to be
>  verified manually.
>
>  If you think the reported changes have nothing to do with the changes
>  introduced in Patchwork_22319_full, please notify your bug team to allow them
>  to document this new failure mode, which will reduce false positives in CI.
>
>
>
>Participating hosts (11 -> 11)
>------------------------------
>
>  No changes in participating hosts
>
>Possible new issues
>-------------------
>
>  Here are the unknown changes that may have been introduced in Patchwork_22319_full:
>
>### IGT changes ###
>
>#### Possible regressions ####
>
>  * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt:
>    - shard-tglb:         [PASS][1] -> [DMESG-WARN][2]
>   [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-tglb1/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html
>   [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-tglb6/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-indfb-draw-blt.html

this display issue can't be caused by the dead code removal in this
series. And the warning doesn't come from our driver, but rather from
acpi/thermal.

Lucas De Marchi

>
>
>Known issues
>------------
>
>  Here are the changes found in Patchwork_22319_full that come from known issues:
>
>### IGT changes ###
>
>#### Issues hit ####
>
>  * igt@gem_create@create-massive:
>    - shard-apl:          NOTRUN -> [DMESG-WARN][3] ([i915#4991])
>   [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl2/igt@gem_create@create-massive.html
>
>  * igt@gem_exec_balancer@parallel-balancer:
>    - shard-iclb:         [PASS][4] -> [SKIP][5] ([i915#4525])
>   [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>   [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
>
>  * igt@gem_exec_balancer@parallel-bb-first:
>    - shard-kbl:          NOTRUN -> [DMESG-WARN][6] ([i915#5076])
>   [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl1/igt@gem_exec_balancer@parallel-bb-first.html
>
>  * igt@gem_exec_fair@basic-pace-share@rcs0:
>    - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>   [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
>   [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-tglb5/igt@gem_exec_fair@basic-pace-share@rcs0.html
>
>  * igt@gem_exec_fair@basic-throttle@rcs0:
>    - shard-iclb:         [PASS][9] -> [FAIL][10] ([i915#2849])
>   [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>   [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb6/igt@gem_exec_fair@basic-throttle@rcs0.html
>
>  * igt@gem_exec_params@secure-non-root:
>    - shard-iclb:         NOTRUN -> [SKIP][11] ([fdo#112283])
>   [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@gem_exec_params@secure-non-root.html
>
>  * igt@gem_huc_copy@huc-copy:
>    - shard-tglb:         [PASS][12] -> [SKIP][13] ([i915#2190])
>   [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-tglb3/igt@gem_huc_copy@huc-copy.html
>   [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-tglb7/igt@gem_huc_copy@huc-copy.html
>
>  * igt@gem_lmem_swapping@heavy-verify-random:
>    - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613]) +1 similar issue
>   [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl10/igt@gem_lmem_swapping@heavy-verify-random.html
>
>  * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>    - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#768])
>   [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
>
>  * igt@gem_softpin@allocator-evict-all-engines:
>    - shard-glk:          [PASS][16] -> [FAIL][17] ([i915#4171])
>   [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk4/igt@gem_softpin@allocator-evict-all-engines.html
>   [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
>
>  * igt@gem_userptr_blits@dmabuf-sync:
>    - shard-skl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#3323])
>   [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl4/igt@gem_userptr_blits@dmabuf-sync.html
>
>  * igt@gen9_exec_parse@allowed-all:
>    - shard-iclb:         NOTRUN -> [SKIP][19] ([i915#2856]) +1 similar issue
>   [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@gen9_exec_parse@allowed-all.html
>
>  * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>    - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#118])
>   [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk2/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>   [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>
>  * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>    - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#110725] / [fdo#111614]) +2 similar issues
>   [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>    - shard-skl:          NOTRUN -> [FAIL][23] ([i915#3743])
>   [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl10/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>
>  * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip:
>    - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#3777])
>   [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl4/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-flip.html
>
>  * igt@kms_big_fb@yf-tiled-16bpp-rotate-270:
>    - shard-tglb:         NOTRUN -> [SKIP][25] ([fdo#111615])
>   [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-tglb2/igt@kms_big_fb@yf-tiled-16bpp-rotate-270.html
>
>  * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>    - shard-iclb:         NOTRUN -> [SKIP][26] ([fdo#110723]) +1 similar issue
>   [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
>
>  * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>    - shard-apl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3777])
>   [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl1/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
>
>  * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>    - shard-kbl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#3886]) +1 similar issue
>   [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
>
>  * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>    - shard-skl:          NOTRUN -> [SKIP][29] ([fdo#109271] / [i915#3886]) +7 similar issues
>   [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs:
>    - shard-iclb:         NOTRUN -> [SKIP][30] ([fdo#109278] / [i915#3886]) +4 similar issues
>   [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs:
>    - shard-apl:          NOTRUN -> [SKIP][31] ([fdo#109271] / [i915#3886]) +3 similar issues
>   [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl1/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_mc_ccs.html
>
>  * igt@kms_chamelium@dp-crc-multiple:
>    - shard-apl:          NOTRUN -> [SKIP][32] ([fdo#109271] / [fdo#111827]) +4 similar issues
>   [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl1/igt@kms_chamelium@dp-crc-multiple.html
>
>  * igt@kms_chamelium@hdmi-crc-fast:
>    - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#109284] / [fdo#111827]) +3 similar issues
>   [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_chamelium@hdmi-crc-fast.html
>
>  * igt@kms_chamelium@hdmi-hpd-storm-disable:
>    - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [fdo#111827]) +2 similar issues
>   [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl6/igt@kms_chamelium@hdmi-hpd-storm-disable.html
>
>  * igt@kms_color@pipe-d-ctm-0-5:
>    - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271]) +113 similar issues
>   [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl4/igt@kms_color@pipe-d-ctm-0-5.html
>
>  * igt@kms_color@pipe-d-ctm-red-to-blue:
>    - shard-iclb:         NOTRUN -> [SKIP][36] ([fdo#109278] / [i915#1149])
>   [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_color@pipe-d-ctm-red-to-blue.html
>
>  * igt@kms_color_chamelium@pipe-c-ctm-negative:
>    - shard-skl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [fdo#111827]) +7 similar issues
>   [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl1/igt@kms_color_chamelium@pipe-c-ctm-negative.html
>
>  * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>    - shard-kbl:          NOTRUN -> [DMESG-WARN][38] ([i915#180])
>   [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen:
>    - shard-tglb:         NOTRUN -> [SKIP][39] ([i915#3359])
>   [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-tglb2/igt@kms_cursor_crc@pipe-c-cursor-32x10-onscreen.html
>
>  * igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding:
>    - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [fdo#109279])
>   [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@kms_cursor_crc@pipe-c-cursor-512x512-sliding.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-64x64-random:
>    - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278]) +14 similar issues
>   [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_cursor_crc@pipe-d-cursor-64x64-random.html
>
>  * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>    - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +54 similar issues
>   [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl6/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
>
>  * igt@kms_cursor_legacy@cursorb-vs-flipa-toggle:
>    - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109274] / [fdo#109278]) +1 similar issue
>   [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_cursor_legacy@cursorb-vs-flipa-toggle.html
>
>  * igt@kms_dsc@basic-dsc-enable:
>    - shard-iclb:         NOTRUN -> [SKIP][44] ([i915#3840])
>   [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_dsc@basic-dsc-enable.html
>
>  * igt@kms_flip@plain-flip-ts-check@c-edp1:
>    - shard-skl:          [PASS][45] -> [FAIL][46] ([i915#2122])
>   [45]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>   [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl9/igt@kms_flip@plain-flip-ts-check@c-edp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>    - shard-glk:          [PASS][47] -> [FAIL][48] ([i915#4911])
>   [47]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>   [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>
>  * igt@kms_frontbuffer_tracking@fbc-suspend:
>    - shard-kbl:          [PASS][49] -> [DMESG-WARN][50] ([i915#180]) +4 similar issues
>   [49]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
>   [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl7/igt@kms_frontbuffer_tracking@fbc-suspend.html
>
>  * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt:
>    - shard-iclb:         NOTRUN -> [SKIP][51] ([fdo#109280]) +10 similar issues
>   [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-shrfb-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt:
>    - shard-tglb:         NOTRUN -> [SKIP][52] ([fdo#109280] / [fdo#111825])
>   [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-tglb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-gtt.html
>
>  * igt@kms_frontbuffer_tracking@psr-rgb565-draw-render:
>    - shard-apl:          NOTRUN -> [SKIP][53] ([fdo#109271]) +40 similar issues
>   [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl1/igt@kms_frontbuffer_tracking@psr-rgb565-draw-render.html
>
>  * igt@kms_hdr@static-toggle:
>    - shard-iclb:         NOTRUN -> [SKIP][54] ([i915#1187])
>   [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_hdr@static-toggle.html
>
>  * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>    - shard-iclb:         NOTRUN -> [SKIP][55] ([i915#1839])
>   [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
>
>  * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>    - shard-apl:          [PASS][56] -> [DMESG-WARN][57] ([i915#180])
>   [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>   [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl4/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>
>  * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>    - shard-skl:          NOTRUN -> [FAIL][58] ([fdo#108145] / [i915#265]) +1 similar issue
>   [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
>
>  * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>    - shard-kbl:          NOTRUN -> [FAIL][59] ([i915#265])
>   [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
>
>  * igt@kms_plane_lowres@pipe-b-tiling-x:
>    - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#3536])
>   [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_plane_lowres@pipe-b-tiling-x.html
>
>  * igt@kms_plane_scaling@2x-scaler-multi-pipe:
>    - shard-iclb:         NOTRUN -> [SKIP][61] ([fdo#109274]) +2 similar issues
>   [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_plane_scaling@2x-scaler-multi-pipe.html
>
>  * igt@kms_psr2_sf@cursor-plane-update-sf:
>    - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>   [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl10/igt@kms_psr2_sf@cursor-plane-update-sf.html
>
>  * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>    - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
>   [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl1/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>
>  * igt@kms_psr@psr2_cursor_plane_onoff:
>    - shard-iclb:         NOTRUN -> [SKIP][64] ([fdo#109441]) +1 similar issue
>   [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@kms_psr@psr2_cursor_plane_onoff.html
>
>  * igt@kms_psr@psr2_primary_mmap_cpu:
>    - shard-iclb:         [PASS][65] -> [SKIP][66] ([fdo#109441]) +2 similar issues
>   [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
>   [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb8/igt@kms_psr@psr2_primary_mmap_cpu.html
>
>  * igt@kms_setmode@basic:
>    - shard-glk:          [PASS][67] -> [FAIL][68] ([i915#31])
>   [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk3/igt@kms_setmode@basic.html
>   [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk8/igt@kms_setmode@basic.html
>
>  * igt@kms_vrr@flip-dpms:
>    - shard-iclb:         NOTRUN -> [SKIP][69] ([fdo#109502])
>   [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@kms_vrr@flip-dpms.html
>
>  * igt@kms_writeback@writeback-fb-id:
>    - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#2437])
>   [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl2/igt@kms_writeback@writeback-fb-id.html
>
>  * igt@nouveau_crc@pipe-c-source-outp-inactive:
>    - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#2530])
>   [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@nouveau_crc@pipe-c-source-outp-inactive.html
>
>  * igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame:
>    - shard-iclb:         NOTRUN -> [SKIP][72] ([fdo#109278] / [i915#2530])
>   [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@nouveau_crc@pipe-d-ctx-flip-skip-current-frame.html
>
>  * igt@perf_pmu@module-unload:
>    - shard-skl:          NOTRUN -> [FAIL][73] ([i915#5136])
>   [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl4/igt@perf_pmu@module-unload.html
>
>  * igt@sysfs_clients@create:
>    - shard-skl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#2994]) +1 similar issue
>   [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl4/igt@sysfs_clients@create.html
>
>  * igt@sysfs_clients@sema-50:
>    - shard-kbl:          NOTRUN -> [SKIP][75] ([fdo#109271] / [i915#2994])
>   [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl6/igt@sysfs_clients@sema-50.html
>
>  * igt@sysfs_clients@split-10:
>    - shard-iclb:         NOTRUN -> [SKIP][76] ([i915#2994]) +1 similar issue
>   [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@sysfs_clients@split-10.html
>
>
>#### Possible fixes ####
>
>  * igt@gem_exec_capture@pi@bcs0:
>    - shard-iclb:         [INCOMPLETE][77] ([i915#3371]) -> [PASS][78]
>   [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb6/igt@gem_exec_capture@pi@bcs0.html
>   [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb3/igt@gem_exec_capture@pi@bcs0.html
>
>  * igt@gem_exec_fair@basic-none-share@rcs0:
>    - shard-iclb:         [FAIL][79] ([i915#2842]) -> [PASS][80]
>   [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
>   [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb5/igt@gem_exec_fair@basic-none-share@rcs0.html
>
>  * igt@i915_pm_dc@dc6-dpms:
>    - shard-iclb:         [FAIL][81] ([i915#454]) -> [PASS][82]
>   [81]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>   [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html
>
>  * igt@kms_cursor_legacy@cursor-vs-flip-atomic:
>    - shard-iclb:         [FAIL][83] -> [PASS][84]
>   [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
>   [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb8/igt@kms_cursor_legacy@cursor-vs-flip-atomic.html
>
>  * igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2:
>    - shard-glk:          [FAIL][85] ([i915#79]) -> [PASS][86] +1 similar issue
>   [85]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>   [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk6/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@bc-hdmi-a1-hdmi-a2.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>    - shard-kbl:          [DMESG-WARN][87] ([i915#180]) -> [PASS][88] +5 similar issues
>   [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>   [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    - shard-apl:          [DMESG-WARN][89] ([i915#180]) -> [PASS][90] +1 similar issue
>   [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>   [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>
>  * igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1:
>    - shard-skl:          [FAIL][91] ([i915#2122]) -> [PASS][92]
>   [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl7/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>   [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl4/igt@kms_flip@plain-flip-ts-check-interruptible@c-edp1.html
>
>  * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>    - shard-glk:          [FAIL][93] ([i915#4911]) -> [PASS][94]
>   [93]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>   [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>
>  * igt@kms_psr@psr2_cursor_plane_move:
>    - shard-iclb:         [SKIP][95] ([fdo#109441]) -> [PASS][96] +2 similar issues
>   [95]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb4/igt@kms_psr@psr2_cursor_plane_move.html
>   [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb2/igt@kms_psr@psr2_cursor_plane_move.html
>
>  * igt@kms_setmode@basic:
>    - shard-apl:          [FAIL][97] ([i915#31]) -> [PASS][98]
>   [97]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl2/igt@kms_setmode@basic.html
>   [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-apl8/igt@kms_setmode@basic.html
>
>  * igt@kms_vblank@pipe-a-ts-continuation-modeset-hang:
>    - shard-glk:          [TIMEOUT][99] ([i915#5140]) -> [PASS][100]
>   [99]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk1/igt@kms_vblank@pipe-a-ts-continuation-modeset-hang.html
>   [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk7/igt@kms_vblank@pipe-a-ts-continuation-modeset-hang.html
>
>  * igt@sysfs_heartbeat_interval@mixed@bcs0:
>    - shard-skl:          [WARN][101] ([i915#4055]) -> [PASS][102]
>   [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl2/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>   [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl1/igt@sysfs_heartbeat_interval@mixed@bcs0.html
>
>  * igt@sysfs_heartbeat_interval@mixed@vcs0:
>    - shard-skl:          [FAIL][103] ([i915#1731]) -> [PASS][104]
>   [103]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-skl2/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>   [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-skl1/igt@sysfs_heartbeat_interval@mixed@vcs0.html
>
>
>#### Warnings ####
>
>  * igt@gem_exec_balancer@parallel-keep-submit-fence:
>    - shard-iclb:         [DMESG-WARN][105] ([i915#5076]) -> [SKIP][106] ([i915#4525]) +1 similar issue
>   [105]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb1/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>   [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb7/igt@gem_exec_balancer@parallel-keep-submit-fence.html
>
>  * igt@gem_exec_balancer@parallel-ordering:
>    - shard-iclb:         [SKIP][107] ([i915#4525]) -> [DMESG-FAIL][108] ([i915#5076])
>   [107]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb8/igt@gem_exec_balancer@parallel-ordering.html
>   [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb4/igt@gem_exec_balancer@parallel-ordering.html
>
>  * igt@gem_exec_balancer@parallel-out-fence:
>    - shard-iclb:         [SKIP][109] ([i915#4525]) -> [DMESG-WARN][110] ([i915#5076])
>   [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb5/igt@gem_exec_balancer@parallel-out-fence.html
>   [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb1/igt@gem_exec_balancer@parallel-out-fence.html
>
>  * igt@i915_pm_rc6_residency@rc6-idle:
>    - shard-iclb:         [WARN][111] ([i915#1804] / [i915#2684]) -> [WARN][112] ([i915#2684])
>   [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-iclb4/igt@i915_pm_rc6_residency@rc6-idle.html
>   [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle.html
>
>  * igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen:
>    - shard-glk:          [DMESG-FAIL][113] ([i915#118] / [i915#1888]) -> [FAIL][114] ([i915#1888] / [i915#3444])
>   [113]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-glk1/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
>   [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-glk7/igt@kms_cursor_crc@pipe-a-cursor-128x128-offscreen.html
>
>  * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>    - shard-kbl:          [DMESG-WARN][115] ([i915#180]) -> [INCOMPLETE][116] ([i915#636])
>   [115]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>   [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>
>  * igt@runner@aborted:
>    - shard-kbl:          ([FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120], [FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128], [FAIL][129], [FAIL][130], [FAIL][131]) ([i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312]) -> ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140], [FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145]) ([fdo#109271] / [i915#1436] / [i915#180] / [i915#1814] / [i915#2426] / [i915#4312])
>   [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
>   [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
>   [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl4/igt@runner@aborted.html
>   [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl3/igt@runner@aborted.html
>   [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
>   [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl1/igt@runner@aborted.html
>   [123]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl3/igt@runner@aborted.html
>   [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl4/igt@runner@aborted.html
>   [125]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
>   [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
>   [127]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
>   [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
>   [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
>   [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
>   [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-kbl7/igt@runner@aborted.html
>   [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl7/igt@runner@aborted.html
>   [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl4/igt@runner@aborted.html
>   [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl3/igt@runner@aborted.html
>   [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl7/igt@runner@aborted.html
>   [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl4/igt@runner@aborted.html
>   [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl3/igt@runner@aborted.html
>   [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl6/igt@runner@aborted.html
>   [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl1/igt@runner@aborted.html
>   [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl4/igt@runner@aborted.html
>   [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl1/igt@runner@aborted.html
>   [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl7/igt@runner@aborted.html
>   [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl4/igt@runner@aborted.html
>   [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl6/igt@runner@aborted.html
>   [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/shard-kbl3/igt@runner@aborted.html
>    - shard-apl:          ([FAIL][146], [FAIL][147], [FAIL][148], [FAIL][149], [FAIL][150], [FAIL][151]) ([i915#180] / [i915#2426] / [i915#3002] / [i915#4312]) -> ([FAIL][152], [FAIL][153], [FAIL][154], [FAIL][155], [FAIL][156], [FAIL][157]) ([fdo#109271] / [i915#1814] / [i915#2426] / [i915#3002] / [i915#4312])
>   [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl8/igt@runner@aborted.html
>   [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl1/igt@runner@aborted.html
>   [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl4/igt@runner@aborted.html
>   [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11244/shard-apl8/igt@runner@abo
>
>== Logs ==
>
>For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22319/index.html
