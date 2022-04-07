Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 237A04F80EE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52BA810E5CB;
	Thu,  7 Apr 2022 13:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63D0F10E5CB
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:47:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649339223; x=1680875223;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=SqYWqWeV+E3/YSOWs9WdxHwkf2F5TYN/K8g9wwvT2Xo=;
 b=XhEgbs4I7WH0HFApDI4cUQCM0NA4Cx4cLMzDIZXaKfK7Ol/akJAdtoln
 hemuFw1lz7npIKRVocLQdwIrl2E2AHP8qYUDKsMnBmKrGS0NZpJqScEUc
 p8pD+3c/VJ8dHDA++RNL1aaDGqd7eKAWO+jU9obyOHF8WPYCaJdqsrKmp
 HVlquDlxYtxgE3Wcp70JIooi+0HSlWpoM9jGHmtBKy7Fx+yNt0Qp+N/FO
 CpaZKs1pnPWm/SiMxWNOxWVsCJsrRulNjXMZNQIvQG9rlQodhsgP5xWDe
 JEBYmDN0vq+V25s+H5aEA1SVQDoZ2rn7ZdV+kOMdlngbkattQm2teyiEo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="322015721"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="322015721"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:47:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="524371267"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com (HELO intel.com)
 ([10.223.74.179])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:47:01 -0700
Date: Thu, 7 Apr 2022 19:16:52 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220407134650.GA28908@intel.com>
References: <20220406191848.20895-1-ashutosh.dixit@intel.com>
 <164932468810.14673.10763174592754380288@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <164932468810.14673.10763174592754380288@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/rps=3A_Centralize_computation_of_freq_caps_=28rev6=29?=
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

On 2022-04-07 at 09:44:48 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/rps: Centralize computation of freq caps (rev6)
> URL   : https://patchwork.freedesktop.org/series/101606/
> State : success
Pushed to drm-intel-gt-next.
Thanks for patch and review.
Br,
Anshuman.
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11467_full -> Patchwork_22802_full
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
> Participating hosts (13 -> 13)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22802_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@gem_exec_schedule@wide@bcs0:
>     - {shard-rkl}:        NOTRUN -> [INCOMPLETE][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-5/igt@gem_exec_schedule@wide@bcs0.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22802_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ccs@ctrl-surf-copy:
>     - shard-iclb:         NOTRUN -> [SKIP][2] ([i915#5327])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gem_ccs@ctrl-surf-copy.html
> 
>   * igt@gem_ctx_isolation@preservation-s3@bcs0:
>     - shard-apl:          [PASS][3] -> [DMESG-WARN][4] ([i915#180]) +6 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl1/igt@gem_ctx_isolation@preservation-s3@bcs0.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl6/igt@gem_ctx_isolation@preservation-s3@bcs0.html
> 
>   * igt@gem_exec_capture@pi@bcs0:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][5] ([i915#4547])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl10/igt@gem_exec_capture@pi@bcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-skl:          NOTRUN -> [FAIL][6] ([i915#2846])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl10/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-flow@rcs0:
>     - shard-tglb:         [PASS][7] -> [FAIL][8] ([i915#2842])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb1/igt@gem_exec_fair@basic-flow@rcs0.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb6/igt@gem_exec_fair@basic-flow@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-wb:
>     - shard-snb:          [PASS][9] -> [SKIP][10] ([fdo#109271]) +3 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-wb.html
> 
>   * igt@gem_exec_params@secure-non-root:
>     - shard-tglb:         NOTRUN -> [SKIP][11] ([fdo#112283])
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@gem_exec_params@secure-non-root.html
>     - shard-iclb:         NOTRUN -> [SKIP][12] ([fdo#112283])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gem_exec_params@secure-non-root.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-tglb:         NOTRUN -> [SKIP][13] ([i915#4613])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@gem_lmem_swapping@random.html
>     - shard-skl:          NOTRUN -> [SKIP][14] ([fdo#109271] / [i915#4613])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl10/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@smem-oom:
>     - shard-iclb:         NOTRUN -> [SKIP][15] ([i915#4613]) +1 similar issue
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gem_lmem_swapping@smem-oom.html
>     - shard-apl:          NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#4613])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl1/igt@gem_lmem_swapping@smem-oom.html
> 
>   * igt@gem_mmap_gtt@coherency:
>     - shard-iclb:         NOTRUN -> [SKIP][17] ([fdo#109292])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gem_mmap_gtt@coherency.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-apl:          NOTRUN -> [WARN][18] ([i915#2658])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl1/igt@gem_pread@exhaustion.html
>     - shard-iclb:         NOTRUN -> [WARN][19] ([i915#2658])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@create-protected-buffer:
>     - shard-iclb:         NOTRUN -> [SKIP][20] ([i915#4270])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gem_pxp@create-protected-buffer.html
>     - shard-tglb:         NOTRUN -> [SKIP][21] ([i915#4270])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@gem_pxp@create-protected-buffer.html
> 
>   * igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([i915#768]) +1 similar issue
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gem_render_copy@y-tiled-mc-ccs-to-vebox-y-tiled.html
> 
>   * igt@gen9_exec_parse@basic-rejected-ctx-param:
>     - shard-iclb:         NOTRUN -> [SKIP][23] ([i915#2856]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@gen9_exec_parse@basic-rejected-ctx-param.html
> 
>   * igt@gen9_exec_parse@cmd-crossing-page:
>     - shard-tglb:         NOTRUN -> [SKIP][24] ([i915#2527] / [i915#2856])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@gen9_exec_parse@cmd-crossing-page.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-iclb:         [PASS][25] -> [FAIL][26] ([i915#454])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb2/igt@i915_pm_dc@dc6-psr.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb8/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_sseu@full-enable:
>     - shard-iclb:         NOTRUN -> [SKIP][27] ([i915#4387])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@i915_pm_sseu@full-enable.html
> 
>   * igt@i915_query@query-topology-unsupported:
>     - shard-iclb:         NOTRUN -> [SKIP][28] ([fdo#109302])
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@i915_query@query-topology-unsupported.html
> 
>   * igt@i915_suspend@fence-restore-untiled:
>     - shard-glk:          [PASS][29] -> [SKIP][30] ([fdo#109271])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/igt@i915_suspend@fence-restore-untiled.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-glk1/igt@i915_suspend@fence-restore-untiled.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][31] ([i915#5286]) +1 similar issue
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-iclb:         NOTRUN -> [SKIP][32] ([i915#5286]) +2 similar issues
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@x-tiled-16bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][33] ([fdo#110725] / [fdo#111614])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_big_fb@x-tiled-16bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][34] ([fdo#111615])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-iclb:         NOTRUN -> [SKIP][35] ([fdo#109278] / [i915#3886])
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-d-ctm-negative:
>     - shard-kbl:          NOTRUN -> [SKIP][36] ([fdo#109271]) +16 similar issues
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-kbl6/igt@kms_color@pipe-d-ctm-negative.html
> 
>   * igt@kms_color_chamelium@pipe-c-ctm-0-5:
>     - shard-iclb:         NOTRUN -> [SKIP][37] ([fdo#109284] / [fdo#111827]) +3 similar issues
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
>     - shard-skl:          NOTRUN -> [SKIP][38] ([fdo#109271] / [fdo#111827])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl10/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
>     - shard-tglb:         NOTRUN -> [SKIP][39] ([fdo#109284] / [fdo#111827])
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@kms_color_chamelium@pipe-c-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-c-degamma:
>     - shard-apl:          NOTRUN -> [SKIP][40] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl3/igt@kms_color_chamelium@pipe-c-degamma.html
>     - shard-kbl:          NOTRUN -> [SKIP][41] ([fdo#109271] / [fdo#111827]) +1 similar issue
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-kbl6/igt@kms_color_chamelium@pipe-c-degamma.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-random:
>     - shard-tglb:         NOTRUN -> [SKIP][42] ([fdo#109279] / [i915#3359])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
>     - shard-iclb:         NOTRUN -> [SKIP][43] ([fdo#109278] / [fdo#109279]) +1 similar issue
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x170-random.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][44] ([i915#3359])
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@kms_cursor_crc@pipe-d-cursor-32x10-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement:
>     - shard-iclb:         NOTRUN -> [SKIP][45] ([fdo#109278]) +13 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_cursor_crc@pipe-d-cursor-64x64-rapid-movement.html
> 
>   * igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109274] / [fdo#109278]) +1 similar issue
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-size.html
> 
>   * igt@kms_flip@2x-nonexisting-fb:
>     - shard-iclb:         NOTRUN -> [SKIP][47] ([fdo#109274]) +4 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_flip@2x-nonexisting-fb.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1:
>     - shard-skl:          [PASS][48] -> [FAIL][49] ([i915#2122]) +1 similar issue
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl7/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl10/igt@kms_flip@plain-flip-fb-recreate-interruptible@b-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][50] -> [SKIP][51] ([i915#3701])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb6/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt:
>     - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#1888] / [i915#2546])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk5/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-glk1/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite:
>     - shard-skl:          NOTRUN -> [SKIP][54] ([fdo#109271]) +7 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl10/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
>     - shard-tglb:         NOTRUN -> [SKIP][55] ([fdo#109280] / [fdo#111825]) +4 similar issues
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-pwrite.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +39 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-shrfb-pgflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-tiling-4:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([i915#5438])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-tiling-4.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109280]) +7 similar issues
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-move.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          [PASS][59] -> [FAIL][60] ([i915#1188])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl6/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl9/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min:
>     - shard-skl:          [PASS][61] -> [FAIL][62] ([fdo#108145] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl4/igt@kms_plane_alpha_blend@pipe-b-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-kbl:          NOTRUN -> [FAIL][63] ([fdo#108145] / [i915#265])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-kbl6/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
>     - shard-apl:          NOTRUN -> [FAIL][64] ([fdo#108145] / [i915#265])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format:
>     - shard-iclb:         NOTRUN -> [SKIP][65] ([i915#5176]) +2 similar issues
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_plane_scaling@downscale-with-pixel-format-factor-0-25@pipe-a-edp-1-downscale-with-pixel-format.html
> 
>   * igt@kms_psr@psr2_sprite_plane_move:
>     - shard-iclb:         [PASS][66] -> [SKIP][67] ([fdo#109441]) +3 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb2/igt@kms_psr@psr2_sprite_plane_move.html
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_psr@psr2_sprite_plane_move.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-iclb:         NOTRUN -> [SKIP][68] ([fdo#109502])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@kms_vrr@flipline.html
> 
>   * igt@nouveau_crc@pipe-a-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][69] ([i915#2530])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb3/igt@nouveau_crc@pipe-a-source-outp-complete.html
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#2530])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@nouveau_crc@pipe-a-source-outp-complete.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][71] -> [FAIL][72] ([i915#1722])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl6/igt@perf@polling-small-buf.html
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl9/igt@perf@polling-small-buf.html
> 
>   * igt@prime_nv_api@nv_self_import_to_different_fd:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109291])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@prime_nv_api@nv_self_import_to_different_fd.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@fbdev@info:
>     - {shard-rkl}:        [SKIP][74] ([i915#2582]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@fbdev@info.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@fbdev@info.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [FAIL][76] ([i915#232]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb5/igt@gem_eio@unwedge-stress.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [SKIP][78] ([i915#4525]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb7/igt@gem_exec_balancer@parallel-balancer.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb1/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_capture@pi@rcs0:
>     - shard-skl:          [INCOMPLETE][80] ([i915#4547]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl4/igt@gem_exec_capture@pi@rcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl10/igt@gem_exec_capture@pi@rcs0.html
> 
>   * igt@gem_exec_endless@dispatch@vecs0:
>     - shard-tglb:         [INCOMPLETE][82] ([i915#3778]) -> [PASS][83]
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglb3/igt@gem_exec_endless@dispatch@vecs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglb2/igt@gem_exec_endless@dispatch@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-apl:          [FAIL][84] ([i915#2842]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl8/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [SKIP][86] ([fdo#109271]) -> [PASS][87] +6 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-snb7/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_exec_suspend@basic-s3-devices@smem:
>     - shard-kbl:          [DMESG-WARN][88] -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@gem_exec_suspend@basic-s3-devices@smem.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-kbl3/igt@gem_exec_suspend@basic-s3-devices@smem.html
> 
>   * igt@gem_exec_whisper@basic-queues-priority:
>     - {shard-rkl}:        [INCOMPLETE][90] -> [PASS][91] +1 similar issue
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-5/igt@gem_exec_whisper@basic-queues-priority.html
> 
>   * igt@gem_ppgtt@blt-vs-render-ctxn:
>     - shard-snb:          [DMESG-FAIL][92] ([i915#3692]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-snb6/igt@gem_ppgtt@blt-vs-render-ctxn.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-snb7/igt@gem_ppgtt@blt-vs-render-ctxn.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [FAIL][94] ([i915#4171]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][96] ([i915#454]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb5/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_rpm@i2c:
>     - {shard-rkl}:        [SKIP][98] ([fdo#109308]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@i915_pm_rpm@i2c.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@i915_pm_rpm@i2c.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-iclb:         [INCOMPLETE][100] ([i915#5096]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb4/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb6/igt@i915_pm_rpm@system-suspend-execbuf.html
> 
>   * igt@kms_big_fb@linear-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][102] ([i915#118]) -> [PASS][103] +1 similar issue
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/igt@kms_big_fb@linear-32bpp-rotate-180.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-glk6/igt@kms_big_fb@linear-32bpp-rotate-180.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-0:
>     - {shard-tglu}:       [DMESG-WARN][104] ([i915#402]) -> [PASS][105]
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-tglu-6/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-tglu-2/igt@kms_big_fb@x-tiled-32bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0:
>     - {shard-rkl}:        [SKIP][106] ([i915#1845] / [i915#4098]) -> [PASS][107] +28 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs:
>     - shard-kbl:          [DMESG-WARN][108] ([i915#62] / [i915#92]) -> [PASS][109] +5 similar issues
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-kbl3/igt@kms_ccs@pipe-b-crc-sprite-planes-basic-y_tiled_ccs.html
> 
>   * igt@kms_color@pipe-c-invalid-degamma-lut-sizes:
>     - {shard-rkl}:        [SKIP][110] ([i915#4070]) -> [PASS][111]
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-6/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-5/igt@kms_color@pipe-c-invalid-degamma-lut-sizes.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding:
>     - {shard-rkl}:        [SKIP][112] ([fdo#112022] / [i915#4070]) -> [PASS][113] +9 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_cursor_crc@pipe-b-cursor-128x128-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge:
>     - {shard-rkl}:        [SKIP][114] ([i915#1849] / [i915#4070] / [i915#4098]) -> [PASS][115] +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_cursor_edge_walk@pipe-b-64x64-right-edge.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic:
>     - {shard-rkl}:        [SKIP][116] ([fdo#111825] / [i915#4070]) -> [PASS][117] +5 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-5/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_cursor_legacy@flip-vs-cursor-crc-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-toggle:
>     - shard-iclb:         [FAIL][118] ([i915#2346]) -> [PASS][119]
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-iclb1/igt@kms_cursor_legacy@flip-vs-cursor-toggle.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled:
>     - {shard-rkl}:        [SKIP][120] ([fdo#111314] / [i915#4098] / [i915#4369]) -> [PASS][121] +3 similar issues
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-1/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-ytiled.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled:
>     - {shard-rkl}:        [SKIP][122] ([i915#4098] / [i915#4369]) -> [PASS][123] +1 similar issue
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-4/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_draw_crc@draw-method-xrgb8888-blt-ytiled.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [DMESG-WARN][124] ([i915#180]) -> [PASS][125] +2 similar issues
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-apl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>     - shard-kbl:          [INCOMPLETE][126] ([i915#636]) -> [PASS][127]
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl3/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-kbl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1:
>     - shard-kbl:          [DMESG-WARN][128] ([i915#1982] / [i915#62] / [i915#92]) -> [PASS][129]
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-kbl6/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-kbl3/igt@kms_flip@flip-vs-wf_vblank-interruptible@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [FAIL][130] ([i915#2122]) -> [PASS][131]
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-skl6/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling:
>     - {shard-rkl}:        [INCOMPLETE][132] ([i915#3701]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-4/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-upscaling.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling:
>     - shard-glk:          [FAIL][134] ([i915#4911]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk8/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-glk3/igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-upscaling.html
> 
>   * igt@kms_frontbuffer_tracking@basic:
>     - {shard-rkl}:        [SKIP][136] ([i915#1849] / [i915#4098]) -> [PASS][137] +23 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-4/igt@kms_frontbuffer_tracking@basic.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_frontbuffer_tracking@basic.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite:
>     - shard-glk:          [FAIL][138] ([i915#2546]) -> [PASS][139]
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-glk4/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-glk3/igt@kms_frontbuffer_tracking@fbc-1p-primscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_invalid_mode@int-max-clock:
>     - {shard-rkl}:        [SKIP][140] ([i915#4278]) -> [PASS][141] +1 similar issue
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-4/igt@kms_invalid_mode@int-max-clock.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/shard-rkl-6/igt@kms_invalid_mode@int-max-clock.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-pipe-b:
>     - {shard-rkl}:        [SKIP][142] ([i915#4098]) -> [PASS][143] +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11467/shard-rkl-4/igt@
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22802/index.html
