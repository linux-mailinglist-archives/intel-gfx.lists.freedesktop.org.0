Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AE7341CDE8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 23:16:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BEE56EADA;
	Wed, 29 Sep 2021 21:16:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3E396EAD9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 21:16:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="224701848"
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="224701848"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 14:16:37 -0700
X-IronPort-AV: E=Sophos;i="5.85,334,1624345200"; d="scan'208";a="479425014"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 14:16:35 -0700
Date: Thu, 30 Sep 2021 00:16:31 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Jose Souza <jose.souza@intel.com>,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20210929211631.GM2192289@ideak-desk.fi.intel.com>
References: <20210921002313.1132357-1-imre.deak@intel.com>
 <163293472618.27097.4220388084850898506@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163293472618.27097.4220388084850898506@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Fix_TypeC_connect/disconnect_sequences_=28rev8=29?=
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

On Wed, Sep 29, 2021 at 04:58:46PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Fix TypeC connect/disconnect sequences (rev8)
> URL   : https://patchwork.freedesktop.org/series/94878/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_10660_full -> Patchwork_21189_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_21189_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_21189_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_21189_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@fbdev@unaligned-read:
>     - shard-glk:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk3/igt@fbdev@unaligned-read.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-glk4/igt@fbdev@unaligned-read.html
> 
>   * igt@gem_eio@reset-stress:
>     - shard-skl:          [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl1/igt@gem_eio@reset-stress.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl2/igt@gem_eio@reset-stress.html
> 
>   * igt@kms_async_flips@crc:
>     - shard-skl:          NOTRUN -> [FAIL][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl7/igt@kms_async_flips@crc.html

The above platforms don't have any TypeC ports, so the failures are
unrelated.

Thanks for the review, I pushed the patchset to drm-intel-next.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_21189_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][6] ([i915#3002])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl6/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_sseu@mmap-args:
>     - shard-tglb:         NOTRUN -> [SKIP][7] ([i915#280])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb2/igt@gem_ctx_sseu@mmap-args.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [PASS][8] -> [TIMEOUT][9] ([i915#2369] / [i915#2481] / [i915#3070])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb7/igt@gem_eio@unwedge-stress.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][10] -> [FAIL][11] ([i915#2846])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk8/igt@gem_exec_fair@basic-deadline.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-glk1/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-skl:          NOTRUN -> [SKIP][12] ([fdo#109271]) +106 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl1/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-tglb:         [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          [PASS][15] -> [FAIL][16] ([i915#2842])
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl2/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][17] ([i915#2842])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-iclb:         [PASS][18] -> [FAIL][19] ([i915#2842])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb7/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_gttfill@basic:
>     - shard-glk:          [PASS][20] -> [DMESG-WARN][21] ([i915#118] / [i915#95]) +1 similar issue
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk1/igt@gem_exec_gttfill@basic.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-glk4/igt@gem_exec_gttfill@basic.html
> 
>   * igt@gem_exec_params@no-blt:
>     - shard-tglb:         NOTRUN -> [SKIP][22] ([fdo#109283])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@gem_exec_params@no-blt.html
> 
>   * igt@gem_exec_params@secure-non-master:
>     - shard-tglb:         NOTRUN -> [SKIP][23] ([fdo#112283])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@gem_exec_params@secure-non-master.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-skl:          [PASS][24] -> [FAIL][25] ([i915#644])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl2/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl3/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gen3_render_tiledy_blits:
>     - shard-tglb:         NOTRUN -> [SKIP][26] ([fdo#109289]) +2 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@gen3_render_tiledy_blits.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-tglb:         NOTRUN -> [SKIP][27] ([i915#2856])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][28] ([fdo#109271] / [i915#1937])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl6/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rpm@gem-execbuf-stress-pc8:
>     - shard-tglb:         NOTRUN -> [SKIP][29] ([fdo#109506] / [i915#2411])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@i915_pm_rpm@gem-execbuf-stress-pc8.html
> 
>   * igt@i915_selftest@live@gt_lrc:
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][30] ([i915#2373])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@i915_selftest@live@gt_lrc.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-tglb:         NOTRUN -> [DMESG-FAIL][31] ([i915#1759] / [i915#2291])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][32] ([i915#180]) +1 similar issue
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl6/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271]) +195 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl6/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-270:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111614])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@kms_big_fb@linear-32bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][35] ([i915#3722]) +1 similar issue
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl8/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-90:
>     - shard-tglb:         NOTRUN -> [SKIP][36] ([fdo#111615]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>     - shard-kbl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [i915#3777])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3777])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl8/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][40] ([i915#3689]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_ccs@pipe-a-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl9/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl7/igt@kms_ccs@pipe-b-random-ccs-data-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +14 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl3/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3689] / [i915#3886]) +1 similar issue
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@kms_ccs@pipe-c-missing-ccs-buffer-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +18 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl3/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-blue-to-red:
>     - shard-kbl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl3/igt@kms_color_chamelium@pipe-a-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-max:
>     - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl3/igt@kms_color_chamelium@pipe-b-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-red-to-blue:
>     - shard-tglb:         NOTRUN -> [SKIP][48] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_color_chamelium@pipe-c-ctm-red-to-blue.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][49] ([i915#1319]) +1 similar issue
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_content_protection@mei_interface:
>     - shard-tglb:         NOTRUN -> [SKIP][50] ([fdo#111828])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_content_protection@mei_interface.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][51] ([fdo#109279] / [i915#3359]) +1 similar issue
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][52] ([i915#2828] / [i915#300])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl9/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement:
>     - shard-tglb:         NOTRUN -> [SKIP][53] ([i915#3359]) +3 similar issues
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x10-rapid-movement.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][54] ([i915#3319])
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_cursor_crc@pipe-c-cursor-32x32-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [SKIP][55] ([fdo#109271]) +79 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
>     - shard-tglb:         [PASS][56] -> [INCOMPLETE][57] ([i915#4211])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb2/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb7/igt@kms_cursor_crc@pipe-d-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][58] -> [FAIL][59] ([i915#2346])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-single-bo:
>     - shard-kbl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl7/igt@kms_cursor_legacy@pipe-d-single-bo.html
> 
>   * igt@kms_flip@2x-plain-flip-ts-check:
>     - shard-tglb:         NOTRUN -> [SKIP][61] ([fdo#111825]) +12 similar issues
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@kms_flip@2x-plain-flip-ts-check.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1:
>     - shard-skl:          [PASS][62] -> [FAIL][63] ([i915#79])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl3/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl7/igt@kms_flip@flip-vs-expired-vblank-interruptible@b-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-apl:          [PASS][64] -> [DMESG-WARN][65] ([i915#180])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([i915#3701])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile:
>     - shard-tglb:         NOTRUN -> [SKIP][68] ([i915#2587])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs:
>     - shard-apl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2672])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytilercccs.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-suspend:
>     - shard-kbl:          [PASS][70] -> [DMESG-WARN][71] ([i915#180]) +6 similar issues
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl4/igt@kms_frontbuffer_tracking@fbc-suspend.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl1/igt@kms_frontbuffer_tracking@fbc-suspend.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d:
>     - shard-apl:          NOTRUN -> [SKIP][72] ([fdo#109271] / [i915#533]) +1 similar issue
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl6/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-d.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#533])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl8/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb:
>     - shard-apl:          NOTRUN -> [FAIL][74] ([fdo#108145] / [i915#265]) +2 similar issues
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl1/igt@kms_plane_alpha_blend@pipe-a-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          [PASS][75] -> [FAIL][76] ([fdo#108145] / [i915#265])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl8/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl4/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max:
>     - shard-kbl:          NOTRUN -> [FAIL][77] ([fdo#108145] / [i915#265])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl7/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-max.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-x:
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([i915#3536]) +1 similar issue
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_plane_lowres@pipe-b-tiling-x.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4:
>     - shard-kbl:          NOTRUN -> [SKIP][79] ([fdo#109271] / [i915#658]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl3/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4:
>     - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#658]) +5 similar issues
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl1/igt@kms_psr2_sf@overlay-primary-update-sf-dmg-area-4.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1:
>     - shard-skl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#658]) +1 similar issue
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl1/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-1.html
> 
>   * igt@kms_psr@psr2_primary_mmap_gtt:
>     - shard-tglb:         NOTRUN -> [FAIL][82] ([i915#132] / [i915#3467]) +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@kms_psr@psr2_primary_mmap_gtt.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][83] -> [SKIP][84] ([fdo#109441]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb7/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][85] ([IGT#2])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl3/igt@kms_sysfs_edid_timing.html
>     - shard-skl:          NOTRUN -> [FAIL][86] ([IGT#2])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl8/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vblank@pipe-d-ts-continuation-suspend:
>     - shard-tglb:         [PASS][87] -> [INCOMPLETE][88] ([i915#3896])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb1/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb7/igt@kms_vblank@pipe-d-ts-continuation-suspend.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([i915#2437]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@prime_nv_api@i915_self_import_to_different_fd:
>     - shard-tglb:         NOTRUN -> [SKIP][90] ([fdo#109291]) +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb8/igt@prime_nv_api@i915_self_import_to_different_fd.html
> 
>   * igt@syncobj_basic@bad-destroy:
>     - shard-skl:          [PASS][91] -> [DMESG-WARN][92] ([i915#1982]) +1 similar issue
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl5/igt@syncobj_basic@bad-destroy.html
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl5/igt@syncobj_basic@bad-destroy.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-apl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#2994]) +3 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl6/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@sema-50:
>     - shard-kbl:          NOTRUN -> [SKIP][94] ([fdo#109271] / [i915#2994])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl7/igt@sysfs_clients@sema-50.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#2994])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@sysfs_clients@split-25.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-iclb:         [FAIL][96] ([i915#2842]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb7/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-glk:          [FAIL][98] ([i915#2842]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-glk9/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@rcs0:
>     - shard-tglb:         [FAIL][100] ([i915#2842]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb5/igt@gem_exec_fair@basic-pace@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb6/igt@gem_exec_fair@basic-pace@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs1:
>     - shard-kbl:          [FAIL][102] ([i915#2842]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@gem_exec_fair@basic-pace@vcs1.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl2/igt@gem_exec_fair@basic-pace@vcs1.html
> 
>   * igt@gem_exec_params@dr1-dirt:
>     - shard-skl:          [DMESG-WARN][104] ([i915#1982]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl4/igt@gem_exec_params@dr1-dirt.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl5/igt@gem_exec_params@dr1-dirt.html
> 
>   * igt@gem_ppgtt@flink-and-close-vma-leak:
>     - shard-glk:          [FAIL][106] ([i915#644]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk6/igt@gem_ppgtt@flink-and-close-vma-leak.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-glk5/igt@gem_ppgtt@flink-and-close-vma-leak.html
> 
>   * igt@gem_softpin@noreloc-s3:
>     - shard-kbl:          [DMESG-WARN][108] ([i915#180]) -> [PASS][109] +1 similar issue
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl1/igt@gem_softpin@noreloc-s3.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-kbl7/igt@gem_softpin@noreloc-s3.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-skl:          [INCOMPLETE][110] ([i915#198] / [i915#4173]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl2/igt@gem_workarounds@suspend-resume-context.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl8/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          [DMESG-WARN][112] ([i915#1436] / [i915#716]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl9/igt@gen9_exec_parse@allowed-single.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl1/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][114] ([i915#454]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb4/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][116] ([i915#118] / [i915#95]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-glk4/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-glk7/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-skl:          [FAIL][118] ([i915#2122]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-tglb:         [INCOMPLETE][120] ([i915#2411] / [i915#456]) -> [PASS][121] +1 similar issue
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-tglb7/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_hdr@bpc-switch:
>     - shard-skl:          [FAIL][122] ([i915#1188]) -> [PASS][123]
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl1/igt@kms_hdr@bpc-switch.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl2/igt@kms_hdr@bpc-switch.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-apl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-apl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-apl2/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [FAIL][126] ([fdo#108145] / [i915#265]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl10/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][128] ([fdo#109441]) -> [PASS][129] +2 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          [FAIL][130] ([i915#1542]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-skl3/igt@perf@polling-parameterized.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-skl8/igt@perf@polling-parameterized.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2:
>     - shard-iclb:         [SKIP][132] ([i915#658]) -> [SKIP][133] ([i915#2920]) +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb4/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-2.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4:
>     - shard-iclb:         [SKIP][134] ([i915#2920]) -> [SKIP][135] ([i915#658]) +2 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/shard-iclb7/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area-4.html
> 
>   * igt@runner@aborted:
>     - shard-kbl:          ([FAIL][136], [FAIL][137], [FAIL][138], [FAIL][139], [FAIL][140]) ([i915#180] / [i915#1814] / [i915#3002] / [i915#3363]) -> ([FAIL][141], [FAIL][142], [FAIL][143], [FAIL][144], [FAIL][145], [FAIL][146], [FAIL][147], [FAIL][148]) ([fdo#109271] / [i915#180] / [i915#1814] / [i915#3002] / [i915#3363] / [i915#602])
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl1/igt@runner@aborted.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl1/igt@runner@aborted.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl4/igt@runner@aborted.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl4/igt@runner@aborted.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10660/shard-kbl6/igt@runner@aborted.ht
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21189/index.html
