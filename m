Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CE555B96B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 13:59:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36AB510EFA3;
	Mon, 27 Jun 2022 11:59:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C5B10EFA3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 11:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656331152; x=1687867152;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=AIHaXfFeXtB6bny+yaiRgVBEtHMp8fS+qMSX7LN038E=;
 b=OESkIaDHpqonOzaSOwY/pzqnQGHRlRgRfnimJgl5ZR51BJmq5EbAK8rL
 brWtMjCNLqa0ptsDb4RWYk5M0lkxMKBdOf1uu5ZCMYCAEV4zyXn7eF97X
 WBd54GsH2I5N4OLV+VyODz8UZG8UAugcAcnvNs0nNbK6ROIE2SP8Cxz1L
 8PrOjY+XungS/6AiMuOobJNOWZvkvrIDnmPuc7RNJRmFIkQXiP9Fr4FuO
 TMGlNmmha3L2ee8Co0bcRH82eonlU01zFahPmIRaKZArXEg9knDs7j9xC
 wa/ZKwYzfMR7v8Rm8gHffiPS8KRUlRoWOvA3KbtdqYt3K1pKL+CUlvOy3 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10390"; a="282523909"
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="282523909"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 04:59:12 -0700
X-IronPort-AV: E=Sophos;i="5.92,226,1650956400"; d="scan'208";a="594278068"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com (HELO intel.com)
 ([10.223.74.179])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2022 04:59:10 -0700
Date: Mon, 27 Jun 2022 17:29:02 +0530
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220627115901.GA8563@intel.com>
References: <20220606122656.31479-1-anshuman.gupta@intel.com>
 <165542498576.20133.1794964059737312821@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <165542498576.20133.1794964059737312821@emeril.freedesktop.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/dgfx=3A_Disable_d3cold_Correctly_=28rev2=29?=
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2022-06-17 at 00:16:25 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dgfx: Disable d3cold Correctly (rev2)
> URL   : https://patchwork.freedesktop.org/series/104770/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11768_full -> Patchwork_104770v2_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_104770v2_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_104770v2_full, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (12 -> 10)
> ------------------------------
> 
>   Missing    (2): shard-rkl shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_104770v2_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
Below are unrelated failures on GLK, not cause by this patch.
Pushed to drm-intel-next, thanks for Ack and Review.
Br,
Anshuman Gupta.
> 
>   * igt@kms_concurrent@pipe-b:
>     - shard-glk:          NOTRUN -> [TIMEOUT][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk7/igt@kms_concurrent@pipe-b.html
> 
>   * igt@perf@enable-disable:
>     - shard-glk:          [PASS][2] -> [TIMEOUT][3] +1 similar issue
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk7/igt@perf@enable-disable.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk7/igt@perf@enable-disable.html
> 
>   
> #### Warnings ####
> 
>   * igt@kms_chamelium@dp-crc-single:
>     - shard-glk:          [SKIP][4] ([fdo#109271] / [fdo#111827]) -> [TIMEOUT][5]
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk7/igt@kms_chamelium@dp-crc-single.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk7/igt@kms_chamelium@dp-crc-single.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_104770v2_full that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@in-flight-contexts-immediate:
>     - shard-apl:          [PASS][6] -> [TIMEOUT][7] ([i915#3063])
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl6/igt@gem_eio@in-flight-contexts-immediate.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl4/igt@gem_eio@in-flight-contexts-immediate.html
> 
>   * igt@gem_eio@in-flight-immediate:
>     - shard-tglb:         [PASS][8] -> [TIMEOUT][9] ([i915#3063]) +1 similar issue
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-tglb3/igt@gem_eio@in-flight-immediate.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-tglb3/igt@gem_eio@in-flight-immediate.html
> 
>   * igt@gem_eio@suspend:
>     - shard-skl:          [PASS][10] -> [DMESG-WARN][11] ([i915#1982])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-skl10/igt@gem_eio@suspend.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl9/igt@gem_eio@suspend.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-tglb:         [PASS][12] -> [FAIL][13] ([i915#5784])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-tglb7/igt@gem_eio@unwedge-stress.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-tglb1/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         [PASS][14] -> [SKIP][15] ([i915#4525])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb1/igt@gem_exec_balancer@parallel.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb5/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_capture@pi@vcs0:
>     - shard-iclb:         [PASS][16] -> [INCOMPLETE][17] ([i915#3371])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb1/igt@gem_exec_capture@pi@vcs0.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb5/igt@gem_exec_capture@pi@vcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [PASS][18] -> [FAIL][19] ([i915#2842]) +2 similar issues
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-glk:          [PASS][20] -> [FAIL][21] ([i915#2842])
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk8/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk6/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_params@no-vebox:
>     - shard-iclb:         NOTRUN -> [SKIP][22] ([fdo#109283])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@gem_exec_params@no-vebox.html
> 
>   * igt@gem_lmem_swapping@basic:
>     - shard-apl:          NOTRUN -> [SKIP][23] ([fdo#109271] / [i915#4613]) +1 similar issue
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@gem_lmem_swapping@basic.html
> 
>   * igt@gem_lmem_swapping@heavy-random:
>     - shard-skl:          NOTRUN -> [SKIP][24] ([fdo#109271] / [i915#4613]) +3 similar issues
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl9/igt@gem_lmem_swapping@heavy-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][25] ([i915#4613])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_render_copy@y-tiled-to-vebox-yf-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][26] ([i915#768])
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@gem_render_copy@y-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gem_userptr_blits@dmabuf-sync:
>     - shard-skl:          NOTRUN -> [SKIP][27] ([fdo#109271] / [i915#3323])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl9/igt@gem_userptr_blits@dmabuf-sync.html
> 
>   * igt@gen9_exec_parse@allowed-all:
>     - shard-glk:          [PASS][28] -> [DMESG-WARN][29] ([i915#5566] / [i915#716]) +1 similar issue
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk4/igt@gen9_exec_parse@allowed-all.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk3/igt@gen9_exec_parse@allowed-all.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-apl:          [PASS][30] -> [DMESG-WARN][31] ([i915#5566] / [i915#716])
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl7/igt@gen9_exec_parse@allowed-single.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl8/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@i915_pm_dc@dc9-dpms:
>     - shard-apl:          [PASS][32] -> [FAIL][33] ([i915#4275])
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl6/igt@i915_pm_dc@dc9-dpms.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl4/igt@i915_pm_dc@dc9-dpms.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-tglb:         [PASS][34] -> [DMESG-WARN][35] ([i915#5591])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-tglb1/igt@i915_selftest@live@hangcheck.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-tglb1/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [PASS][36] -> [DMESG-WARN][37] ([i915#180]) +1 similar issue
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl3/igt@i915_suspend@forcewake.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][38] ([i915#5286])
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][39] ([i915#3743]) +1 similar issue
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl2/igt@kms_big_fb@x-tiled-max-hw-stride-64bpp-rotate-180-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-8bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][40] ([fdo#110725] / [fdo#111614])
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_big_fb@y-tiled-8bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][41] ([i915#3763])
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl2/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][42] ([fdo#109271] / [i915#3886])
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@kms_ccs@pipe-b-bad-rotation-90-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][43] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl1/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][44] ([fdo#109278]) +3 similar issues
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_ccs@pipe-d-random-ccs-data-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@hdmi-crc-nonplanar-formats:
>     - shard-apl:          NOTRUN -> [SKIP][45] ([fdo#109271] / [fdo#111827]) +2 similar issues
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@kms_chamelium@hdmi-crc-nonplanar-formats.html
> 
>   * igt@kms_color@pipe-d-ctm-blue-to-red:
>     - shard-iclb:         NOTRUN -> [SKIP][46] ([fdo#109278] / [i915#1149])
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_color@pipe-d-ctm-blue-to-red.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-25:
>     - shard-skl:          NOTRUN -> [SKIP][47] ([fdo#109271] / [fdo#111827]) +11 similar issues
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl9/igt@kms_color_chamelium@pipe-b-ctm-0-25.html
> 
>   * igt@kms_content_protection@lic:
>     - shard-apl:          NOTRUN -> [TIMEOUT][48] ([i915#1319])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@kms_content_protection@lic.html
> 
>   * igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][49] ([fdo#109274] / [fdo#109278])
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_cursor_legacy@2x-long-cursor-vs-flip-legacy.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip-toggle:
>     - shard-iclb:         [PASS][50] -> [FAIL][51] ([i915#5072])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb6/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb7/igt@kms_cursor_legacy@cursor-vs-flip-toggle.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2:
>     - shard-glk:          [PASS][52] -> [FAIL][53] ([i915#79])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank-interruptible@a-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [PASS][54] -> [DMESG-WARN][55] ([i915#180]) +3 similar issues
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl1/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt:
>     - shard-apl:          NOTRUN -> [SKIP][56] ([fdo#109271]) +31 similar issues
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@kms_frontbuffer_tracking@psr-2p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][57] ([fdo#109280])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1:
>     - shard-kbl:          [PASS][58] -> [FAIL][59] ([i915#1188])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl1/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl7/igt@kms_hdr@bpc-switch-dpms@pipe-a-dp-1.html
> 
>   * igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence:
>     - shard-skl:          NOTRUN -> [SKIP][60] ([fdo#109271] / [i915#533]) +1 similar issue
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl2/igt@kms_pipe_crc_basic@read-crc-pipe-d-frame-sequence.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-basic:
>     - shard-skl:          NOTRUN -> [FAIL][61] ([fdo#108145] / [i915#265])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl2/igt@kms_plane_alpha_blend@pipe-b-alpha-basic.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][62] ([fdo#109271] / [i915#658])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl9/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-apl:          NOTRUN -> [SKIP][63] ([fdo#109271] / [i915#658])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr@psr2_sprite_blt:
>     - shard-iclb:         [PASS][64] -> [SKIP][65] ([fdo#109441]) +1 similar issue
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb2/igt@kms_psr@psr2_sprite_blt.html
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb1/igt@kms_psr@psr2_sprite_blt.html
> 
>   * igt@kms_rotation_crc@primary-4-tiled-reflect-x-180:
>     - shard-skl:          NOTRUN -> [SKIP][66] ([fdo#109271]) +127 similar issues
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl9/igt@kms_rotation_crc@primary-4-tiled-reflect-x-180.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-inactive:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#2530])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@nouveau_crc@pipe-c-source-outp-inactive.html
> 
>   * igt@perf@polling-parameterized:
>     - shard-glk:          [PASS][68] -> [FAIL][69] ([i915#5639])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk6/igt@perf@polling-parameterized.html
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk9/igt@perf@polling-parameterized.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [FAIL][70] ([i915#2410]) -> [PASS][71]
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-tglb8/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][72] ([i915#3070]) -> [PASS][73]
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb8/igt@gem_eio@unwedge-stress.html
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][74] ([i915#4525]) -> [PASS][75]
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb5/igt@gem_exec_balancer@parallel-contexts.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [FAIL][76] ([i915#2842]) -> [PASS][77]
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk1/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-apl:          [FAIL][78] ([i915#2842]) -> [PASS][79]
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@bcs0:
>     - shard-tglb:         [FAIL][80] ([i915#2842]) -> [PASS][81]
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-tglb1/igt@gem_exec_fair@basic-pace@bcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-kbl:          [FAIL][82] ([i915#2842]) -> [PASS][83] +1 similar issue
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl1/igt@gem_exec_fair@basic-pace@vecs0.html
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl7/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [FAIL][84] ([i915#2849]) -> [PASS][85]
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb7/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_whisper@basic-queues-all:
>     - shard-glk:          [DMESG-WARN][86] ([i915#118]) -> [PASS][87]
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk2/igt@gem_exec_whisper@basic-queues-all.html
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk4/igt@gem_exec_whisper@basic-queues-all.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-iclb:         [INCOMPLETE][88] -> [PASS][89]
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb1/igt@i915_selftest@live@hangcheck.html
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-apl:          [DMESG-WARN][90] ([i915#180]) -> [PASS][91]
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl6/igt@i915_suspend@forcewake.html
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1:
>     - shard-skl:          [FAIL][92] ([i915#2521]) -> [PASS][93]
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-skl1/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl4/igt@kms_async_flips@alternate-sync-async-flip@pipe-a-edp-1.html
> 
>   * igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2:
>     - shard-glk:          [FAIL][94] ([i915#79]) -> [PASS][95]
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk2/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk4/igt@kms_flip@2x-flip-vs-expired-vblank@bc-hdmi-a1-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1:
>     - shard-glk:          [FAIL][96] ([i915#2122]) -> [PASS][97]
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-glk3/igt@kms_flip@flip-vs-expired-vblank@a-hdmi-a1.html
> 
>   * igt@kms_flip@flip-vs-suspend@c-edp1:
>     - shard-skl:          [INCOMPLETE][98] ([i915#4839]) -> [PASS][99]
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-skl6/igt@kms_flip@flip-vs-suspend@c-edp1.html
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl4/igt@kms_flip@flip-vs-suspend@c-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check@a-edp1:
>     - shard-skl:          [FAIL][100] ([i915#2122]) -> [PASS][101]
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-skl4/igt@kms_flip@plain-flip-ts-check@a-edp1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl10/igt@kms_flip@plain-flip-ts-check@a-edp1.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1:
>     - shard-kbl:          [FAIL][102] ([i915#1188]) -> [PASS][103]
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl1/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl7/igt@kms_hdr@bpc-switch-suspend@pipe-a-dp-1.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-iclb:         [SKIP][104] ([fdo#109441]) -> [PASS][105] +2 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb4/igt@kms_psr@psr2_cursor_blt.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_psr@psr2_cursor_blt.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [FAIL][106] ([i915#1722]) -> [PASS][107]
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-skl6/igt@perf@polling-small-buf.html
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl7/igt@perf@polling-small-buf.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-skl:          [SKIP][108] ([fdo#109271] / [i915#1888]) -> [SKIP][109] ([fdo#109271])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-skl7/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-skl1/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf:
>     - shard-iclb:         [SKIP][110] ([i915#2920]) -> [SKIP][111] ([i915#658]) +1 similar issue
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb2/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-exceed-fully-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-iclb:         [SKIP][112] ([fdo#111068] / [i915#658]) -> [SKIP][113] ([i915#2920])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb3/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb2/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-iclb:         [FAIL][114] ([i915#5939]) -> [SKIP][115] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-iclb2/igt@kms_psr2_su@page_flip-nv12.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-iclb1/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][116], [FAIL][117], [FAIL][118], [FAIL][119], [FAIL][120]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][121], [FAIL][122], [FAIL][123], [FAIL][124], [FAIL][125], [FAIL][126], [FAIL][127], [FAIL][128]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl2/igt@runner@aborted.html
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl1/igt@runner@aborted.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl7/igt@runner@aborted.html
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl6/igt@runner@aborted.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-apl6/igt@runner@aborted.html
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl8/igt@runner@aborted.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl4/igt@runner@aborted.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl3/igt@runner@aborted.html
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl1/igt@runner@aborted.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl7/igt@runner@aborted.html
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl1/igt@runner@aborted.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl8/igt@runner@aborted.html
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-apl6/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][129], [FAIL][130], [FAIL][131]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][132], [FAIL][133], [FAIL][134], [FAIL][135], [FAIL][136]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl3/igt@runner@aborted.html
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl4/igt@runner@aborted.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11768/shard-kbl6/igt@runner@aborted.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl6/igt@runner@aborted.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl4/igt@runner@aborted.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl4/igt@runner@aborted.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl7/igt@runner@aborted.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1188]: https://gitlab.freedesktop.org/drm/intel/issues/1188
>   [i915#1319]: https://gitlab.freedesktop.org/drm/intel/issues/1319
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1982]: https://gitlab.freedesktop.org/drm/intel/issues/1982
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2521]: https://gitlab.freedesktop.org/drm/intel/issues/2521
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3063]: https://gitlab.freedesktop.org/drm/intel/issues/3063
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3371]: https://gitlab.freedesktop.org/drm/intel/issues/3371
>   [i915#3743]: https://gitlab.freedesktop.org/drm/intel/issues/3743
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#4275]: https://gitlab.freedesktop.org/drm/intel/issues/4275
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4839]: https://gitlab.freedesktop.org/drm/intel/issues/4839
>   [i915#5072]: https://gitlab.freedesktop.org/drm/intel/issues/5072
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5591]: https://gitlab.freedesktop.org/drm/intel/issues/5591
>   [i915#5639]: https://gitlab.freedesktop.org/drm/intel/issues/5639
>   [i915#5784]: https://gitlab.freedesktop.org/drm/intel/issues/5784
>   [i915#5939]: https://gitlab.freedesktop.org/drm/intel/issues/5939
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
>   [i915#79]: https://gitlab.freedesktop.org/drm/intel/issues/79
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11768 -> Patchwork_104770v2
> 
>   CI-20190529: 20190529
>   CI_DRM_11768: 6da0a0872a9b44e2be9645c1d7045fe88e035c25 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6533: 6b5107d91827962808441db6b98e478aa9e67bdb @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_104770v2: 6da0a0872a9b44e2be9645c1d7045fe88e035c25 @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_104770v2/index.html
