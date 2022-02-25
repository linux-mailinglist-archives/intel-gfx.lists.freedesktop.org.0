Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFD3B4C4EA2
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 20:22:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D2310E17E;
	Fri, 25 Feb 2022 19:22:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5460A10E17E
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Feb 2022 19:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645816945; x=1677352945;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=vT3NNxABrJ1X4MUkGzz4rR6NV1VBk8Jf1nkqSJJaiLQ=;
 b=GFcTW9UFRzTRcy2NvXH2wZnYcLQdQGbsn85FzsDxf7VuTx7gUyhDsYvU
 WrB88mc+GbbiEloxmCfQ7YvXCL/U63ZLxVuopJHa0BMRdU8Sl1nXEIi9U
 JRNrqGxHMy6qEoFjgdLmf0YMRiwSCT6q3zqIam3eJ61Yz5dAZU7H2Q+So
 M7Xk916fZGHx2ytaPcHitlMQTvU+AtPW9QDhG0X0Mq+hhP2t5dA53rgnn
 sEj8EJYU+MJdO+J1U5G4w2qocEnhz4nIgpV1av8nBJ0zcpCHNlJdpGVY7
 J9b3fhpkBDEUOHK8q10etwCyyg6RS1i1oPBlKUwaXD9mMQBz6sJ482UE1 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10268"; a="315779279"
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="315779279"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 11:22:14 -0800
X-IronPort-AV: E=Sophos;i="5.90,137,1643702400"; d="scan'208";a="607854857"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2022 11:22:12 -0800
Date: Fri, 25 Feb 2022 21:22:09 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lakshminarayana Vudum <lakshminarayana.vudum@intel.com>
Message-ID: <20220225192209.GA1102708@ideak-desk.fi.intel.com>
References: <20220222165137.1004194-1-imre.deak@intel.com>
 <164570407842.32675.14100227496896812793@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164570407842.32675.14100227496896812793@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Move_power_well_code_to_a_separate_file_=28rev2=29?=
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

On Thu, Feb 24, 2022 at 12:01:18PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Move power well code to a separate file (rev2)
> URL   : https://patchwork.freedesktop.org/series/100591/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11276_full -> Patchwork_22373_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22373_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22373_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 12)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22373_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@mock@requests:
>     - shard-skl:          [PASS][1] -> [INCOMPLETE][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/igt@i915_selftest@mock@requests.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl4/igt@i915_selftest@mock@requests.html

This looks like
https://gitlab.freedesktop.org/drm/intel/-/issues/5183

which was only filed after this IGT result.

I can't see anything obvious in the logs, the same power wells get
enabled/disabled in both, this is the expected result as the patchset
shouldn't have any functional change.

> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation}:
>     - {shard-dg1}:        NOTRUN -> [INCOMPLETE][3]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-dg1-13/igt@kms_plane_scaling@downscale-with-rotation-factor-2@pipe-d-downscale-with-rotation.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22373_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_create@create-massive:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][4] ([i915#4991])
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@gem_create@create-massive.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@vcs0:
>     - shard-kbl:          [PASS][5] -> [DMESG-WARN][6] ([i915#180]) +5 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@gem_ctx_isolation@preservation-s3@vcs0.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl6/igt@gem_ctx_isolation@preservation-s3@vcs0.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#232])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb5/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_capture@pi@vecs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][9] ([i915#4547])
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_exec_capture@pi@vecs0.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-kbl:          [PASS][10] -> [FAIL][11] ([i915#2842]) +1 similar issue
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl1/igt@gem_exec_fair@basic-none@rcs0.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][12] ([i915#2842]) +4 similar issues
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-glk:          [PASS][13] -> [FAIL][14] ([i915#2842]) +1 similar issue
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk5/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-contexts-all:
>     - shard-glk:          [PASS][15] -> [DMESG-WARN][16] ([i915#118]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk5/igt@gem_exec_whisper@basic-contexts-all.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-glk:          NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#4613])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk4/igt@gem_lmem_swapping@parallel-random-verify.html
>     - shard-apl:          NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#4613])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@random-engines:
>     - shard-skl:          NOTRUN -> [SKIP][19] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_lmem_swapping@random-engines.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-kbl:          NOTRUN -> [SKIP][20] ([fdo#109271] / [i915#4613])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pxp@create-regular-context-1:
>     - shard-iclb:         NOTRUN -> [SKIP][21] ([i915#4270])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@gem_pxp@create-regular-context-1.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][22] ([fdo#109271] / [i915#3323])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gem_userptr_blits@input-checking:
>     - shard-apl:          NOTRUN -> [DMESG-WARN][23] ([i915#4991])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_userptr_blits@input-checking.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][24] ([i915#1436] / [i915#716])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@unaligned-jump:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#2856])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@gen9_exec_parse@unaligned-jump.html
> 
>   * igt@i915_pm_lpsp@screens-disabled:
>     - shard-skl:          NOTRUN -> [SKIP][26] ([fdo#109271]) +147 similar issues
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@i915_pm_lpsp@screens-disabled.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-skl:          [PASS][27] -> [FAIL][28] ([i915#3048])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@i915_pm_sseu@full-enable.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl9/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_suspend@sysfs-reader:
>     - shard-apl:          [PASS][29] -> [DMESG-WARN][30] ([i915#180]) +5 similar issues
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@i915_suspend@sysfs-reader.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@i915_suspend@sysfs-reader.html
> 
>   * igt@kms_big_fb@linear-16bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][31] ([fdo#110725] / [fdo#111614])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@kms_big_fb@linear-16bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][32] ([i915#3763])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-apl:          NOTRUN -> [SKIP][33] ([fdo#109271] / [i915#3777]) +3 similar issues
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][34] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][35] ([fdo#109271] / [i915#3777])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][36] ([fdo#109271] / [i915#3886]) +3 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][37] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs:
>     - shard-glk:          NOTRUN -> [SKIP][38] ([fdo#109271]) +2 similar issues
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk4/igt@kms_ccs@pipe-c-bad-aux-stride-y_tiled_gen12_rc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][39] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_ccs@pipe-c-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#109278] / [i915#3886]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_ccs@pipe-c-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][41] ([fdo#109278]) +8 similar issues
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_ccs@pipe-d-ccs-on-another-bo-yf_tiled_ccs.html
> 
>   * igt@kms_cdclk@mode-transition:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271]) +80 similar issues
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_cdclk@mode-transition.html
> 
>   * igt@kms_chamelium@hdmi-cmp-planar-formats:
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109284] / [fdo#111827]) +2 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_chamelium@hdmi-cmp-planar-formats.html
> 
>   * igt@kms_chamelium@hdmi-hpd-for-each-pipe:
>     - shard-kbl:          NOTRUN -> [SKIP][44] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_chamelium@hdmi-hpd-for-each-pipe.html
> 
>   * igt@kms_chamelium@vga-frame-dump:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_chamelium@vga-frame-dump.html
> 
>   * igt@kms_color_chamelium@pipe-d-degamma:
>     - shard-skl:          NOTRUN -> [SKIP][46] ([fdo#109271] / [fdo#111827]) +14 similar issues
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_color_chamelium@pipe-d-degamma.html
> 
>   * igt@kms_content_protection@dp-mst-type-0:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([i915#3116])
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_content_protection@dp-mst-type-0.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][48] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen:
>     - shard-kbl:          NOTRUN -> [SKIP][49] ([fdo#109271]) +54 similar issues
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl7/igt@kms_cursor_crc@pipe-d-cursor-256x256-onscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][50] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          [PASS][51] -> [FAIL][52] ([i915#2346])
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl1/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size:
>     - shard-iclb:         [PASS][53] -> [FAIL][54] ([i915#2346])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions-varying-size.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-kbl:          NOTRUN -> [INCOMPLETE][55] ([i915#180] / [i915#636])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank:
>     - shard-iclb:         NOTRUN -> [SKIP][56] ([fdo#109274]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_flip@2x-flip-vs-absolute-wf_vblank.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#2587])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling:
>     - shard-glk:          [PASS][58] -> [FAIL][59] ([i915#4911])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][60] -> [SKIP][61] ([i915#3701])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw:
>     - shard-iclb:         NOTRUN -> [SKIP][62] ([fdo#109280]) +12 similar issues
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-pri-indfb-multidraw.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu:
>     - shard-glk:          [PASS][63] -> [FAIL][64] ([i915#2546])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-cpu.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([fdo#109289])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b:
>     - shard-glk:          [PASS][66] -> [FAIL][67] ([i915#1888])
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-b.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-alpha-basic:
>     - shard-apl:          NOTRUN -> [FAIL][68] ([fdo#108145] / [i915#265]) +1 similar issue
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_plane_alpha_blend@pipe-a-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max:
>     - shard-skl:          NOTRUN -> [FAIL][69] ([fdo#108145] / [i915#265]) +1 similar issue
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-max.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-kbl:          NOTRUN -> [FAIL][70] ([fdo#108145] / [i915#265])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][71] ([i915#265])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@kms_plane_alpha_blend@pipe-b-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-a-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#3536])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_plane_lowres@pipe-a-tiling-x.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-skl:          NOTRUN -> [SKIP][73] ([fdo#109271] / [i915#658]) +1 similar issue
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-apl:          NOTRUN -> [SKIP][74] ([fdo#109271] / [i915#658]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][75] -> [SKIP][76] ([fdo#109441]) +3 similar issues
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb7/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_setmode@basic:
>     - shard-apl:          NOTRUN -> [FAIL][77] ([i915#31])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@kms_setmode@basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-skl:          NOTRUN -> [FAIL][78] ([IGT#2])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_vrr@flip-basic:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([fdo#109502])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@kms_vrr@flip-basic.html
> 
>   * igt@nouveau_crc@pipe-b-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2530])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@nouveau_crc@pipe-b-source-rg.html
> 
>   * igt@nouveau_crc@pipe-d-source-rg:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#109278] / [i915#2530])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@nouveau_crc@pipe-d-source-rg.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-skl:          NOTRUN -> [FAIL][82] ([i915#1542])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl5/igt@perf@polling-parameterized.html
> 
>   * igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#109291])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@prime_nv_api@nv_i915_reimport_twice_check_flink_name.html
> 
>   * igt@syncobj_timeline@invalid-transfer-non-existent-point:
>     - shard-iclb:         NOTRUN -> [DMESG-WARN][84] ([i915#5098])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@syncobj_timeline@invalid-transfer-non-existent-point.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([i915#2994])
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb5/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@recycle:
>     - shard-kbl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl3/igt@sysfs_clients@recycle.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#2994])
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@sysfs_clients@recycle-many.html
> 
>   * igt@sysfs_clients@split-25:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#2994])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@sysfs_clients@split-25.html
> 
>   * igt@sysfs_timeslice_duration@timeout@vecs0:
>     - shard-apl:          [PASS][89] -> [FAIL][90] ([i915#1755])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl2/igt@sysfs_timeslice_duration@timeout@vecs0.html
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl6/igt@sysfs_timeslice_duration@timeout@vecs0.html
>     - shard-kbl:          NOTRUN -> [FAIL][91] ([i915#1755])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl4/igt@sysfs_timeslice_duration@timeout@vecs0.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-1us:
>     - shard-tglb:         [TIMEOUT][92] ([i915#3063]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb1/igt@gem_eio@in-flight-1us.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb7/igt@gem_eio@in-flight-1us.html
> 
>   * igt@gem_eio@kms:
>     - shard-tglb:         [FAIL][94] ([i915#232]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglb5/igt@gem_eio@kms.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglb6/igt@gem_eio@kms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][96] ([i915#2481] / [i915#3070]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb8/igt@gem_eio@unwedge-stress.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@gem_eio@unwedge-stress.html
>     - {shard-tglu}:       [TIMEOUT][98] ([i915#3063] / [i915#3648]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-tglu-6/igt@gem_eio@unwedge-stress.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-tglu-3/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [INCOMPLETE][100] ([i915#4547]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-glk:          [FAIL][102] ([i915#2842]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk7/igt@gem_exec_fair@basic-pace@vcs0.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk3/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][104] ([i915#2849]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-apl:          [DMESG-WARN][106] ([i915#180]) -> [PASS][107] +2 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-apl8/igt@gem_workarounds@suspend-resume-context.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-apl1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@i915_suspend@fence-restore-tiled2untiled:
>     - shard-skl:          [INCOMPLETE][108] ([i915#4939]) -> [PASS][109]
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl7/igt@i915_suspend@fence-restore-tiled2untiled.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl5/igt@i915_suspend@fence-restore-tiled2untiled.html
> 
>   * igt@kms_big_fb@yf-tiled-16bpp-rotate-0:
>     - shard-glk:          [DMESG-WARN][110] ([i915#118]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk9/igt@kms_big_fb@yf-tiled-16bpp-rotate-0.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic:
>     - shard-skl:          [FAIL][112] ([i915#2346]) -> [PASS][113]
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl6/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl2/igt@kms_cursor_legacy@flip-vs-cursor-busy-crc-atomic.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-edp1:
>     - shard-skl:          [INCOMPLETE][114] ([i915#4839]) -> [PASS][115]
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-skl1/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-skl7/igt@kms_flip@flip-vs-suspend-interruptible@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling:
>     - shard-glk:          [FAIL][116] ([i915#4911]) -> [PASS][117]
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling:
>     - shard-iclb:         [SKIP][118] ([i915#3701]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc:
>     - shard-glk:          [FAIL][120] ([i915#2546]) -> [PASS][121]
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk2/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk9/igt@kms_frontbuffer_tracking@fbc-rgb565-draw-mmap-wc.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes:
>     - shard-kbl:          [DMESG-WARN][122] ([i915#180]) -> [PASS][123] +3 similar issues
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-kbl7/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-kbl6/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-b-planes.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [SKIP][124] ([fdo#109642] / [fdo#111068] / [i915#658]) -> [PASS][125]
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_primary_mmap_cpu:
>     - shard-iclb:         [SKIP][126] ([fdo#109441]) -> [PASS][127] +4 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb3/igt@kms_psr@psr2_primary_mmap_cpu.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb2/igt@kms_psr@psr2_primary_mmap_cpu.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [FAIL][128] ([i915#31]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk8/igt@kms_setmode@basic.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_setmode@basic.html
> 
>   * igt@kms_vblank@pipe-c-accuracy-idle:
>     - shard-glk:          [FAIL][130] ([i915#43]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-glk1/igt@kms_vblank@pipe-c-accuracy-idle.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-glk6/igt@kms_vblank@pipe-c-accuracy-idle.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [DMESG-WARN][132] ([i915#5076]) -> [SKIP][133] ([i915#4525]) +1 similar issue
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb6/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [SKIP][134] ([i915#4525]) -> [DMESG-FAIL][135] ([i915#5076])
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11276/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/shard-iclb4/igt@gem_exec_balancer@parallel-ordering
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22373/index.html
