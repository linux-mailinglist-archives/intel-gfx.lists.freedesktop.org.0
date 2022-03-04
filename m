Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DD14CD905
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Mar 2022 17:23:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D328112581;
	Fri,  4 Mar 2022 16:23:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B930112581
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Mar 2022 16:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646410985; x=1677946985;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=v7AMRhorpKAqLAzm10lxLStBCP5Mr0IdlOENKYJj5yU=;
 b=ilE/GhZAfncpq4GOSEocZrO7CgWMHZabSdeJlnHoUdN/5Ln5h2R7aUQs
 KoIZbbAOL7WfC524g6uGFndhqT8+IFFf1Nhl5N/fFH4Cuwm1/FR1wDewF
 xOfuja8SRQVsM60mBFBlvChZOFoBv5iaR6TqsaOpHxF7V7Av+vrtkKT/o
 goGTVPYzXuYuYpJoi75RAQOKJMlZfZZtEiM6Bcdey9WyHtuke+j0z70vP
 /Yj8t1jCwBeK/zTpl1ggposfFlhP2oNV/kHm6z4apFquHduS405VQUz3H
 abpcJLz0/efhSvyriDpbOHen1SbKEEaLJGcc5TtMlMLKkm4vfit+YN1vI Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10276"; a="317238037"
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="317238037"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:23:04 -0800
X-IronPort-AV: E=Sophos;i="5.90,155,1643702400"; d="scan'208";a="536326911"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2022 08:23:00 -0800
Date: Fri, 4 Mar 2022 08:22:59 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YiI84zZ+RJFXsvCY@mdroper-desk1.amr.corp.intel.com>
References: <20220223222801.397632-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <164639572344.21335.8439348833048034029@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164639572344.21335.8439348833048034029@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogIHN1Y2Nlc3MgZm9yIEJ1?=
 =?utf-8?q?mp_DMC_to_v2=2E16_on_ADL-P_=28rev2=29?=
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

On Fri, Mar 04, 2022 at 12:08:43PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: Bump DMC to v2.16 on ADL-P (rev2)
> URL   : https://patchwork.freedesktop.org/series/100666/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11320_full -> Patchwork_22480_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Applied to drm-intel-next; thanks for the patch and review.


Matt

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
>   Here are the unknown changes that may have been introduced in Patchwork_22480_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@api_intel_allocator@fork-simple-stress-signal:
>     - {shard-dg1}:        [PASS][1] -> [TIMEOUT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-dg1-15/igt@api_intel_allocator@fork-simple-stress-signal.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-dg1-16/igt@api_intel_allocator@fork-simple-stress-signal.html
> 
>   * igt@gem_exec_fence@invalid-fence-array:
>     - {shard-rkl}:        [PASS][3] -> [INCOMPLETE][4] +1 similar issue
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-1/igt@gem_exec_fence@invalid-fence-array.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-rkl-5/igt@gem_exec_fence@invalid-fence-array.html
> 
>   * {igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale}:
>     - shard-iclb:         [PASS][5] -> [SKIP][6] +2 similar issues
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb7/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb2/igt@kms_plane_scaling@planes-upscale-factor-0-25-downscale-factor-0-5@pipe-c-edp-1-planes-upscale-downscale.html
> 
>   * igt@prime_mmap@test_forked:
>     - {shard-dg1}:        NOTRUN -> [SKIP][7] +1 similar issue
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-dg1-19/igt@prime_mmap@test_forked.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22480_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-apl:          ([PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [FAIL][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32]) ([i915#4386]) -> ([PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51], [PASS][52], [PASS][53], [PASS][54], [PASS][55], [PASS][56], [PASS][57])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl8/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl1/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl7/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl7/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl7/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl2/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl3/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl3/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl3/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl6/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl8/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl8/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl8/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl8/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl7/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl7/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl7/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl6/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl6/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl4/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl4/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl2/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl2/boot.html
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl2/boot.html
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/boot.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/boot.html
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/boot.html
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/boot.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_param@set-priority-not-supported:
>     - shard-iclb:         NOTRUN -> [SKIP][58] ([fdo#109314])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@gem_ctx_param@set-priority-not-supported.html
> 
>   * igt@gem_ctx_sseu@engines:
>     - shard-snb:          NOTRUN -> [SKIP][59] ([fdo#109271]) +5 similar issues
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-snb5/igt@gem_ctx_sseu@engines.html
> 
>   * igt@gem_exec_balancer@parallel:
>     - shard-iclb:         NOTRUN -> [SKIP][60] ([i915#4525])
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb5/igt@gem_exec_balancer@parallel.html
>     - shard-tglb:         NOTRUN -> [DMESG-WARN][61] ([i915#5076])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb1/igt@gem_exec_balancer@parallel.html
> 
>   * igt@gem_exec_balancer@parallel-keep-in-fence:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][62] ([i915#5076])
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@gem_exec_balancer@parallel-keep-in-fence.html
> 
>   * igt@gem_exec_endless@dispatch@bcs0:
>     - shard-skl:          NOTRUN -> [SKIP][63] ([fdo#109271]) +29 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-skl7/igt@gem_exec_endless@dispatch@bcs0.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-kbl:          NOTRUN -> [FAIL][64] ([i915#2846])
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl6/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-share@rcs0:
>     - shard-glk:          [PASS][65] -> [FAIL][66] ([i915#2842])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk5/igt@gem_exec_fair@basic-none-share@rcs0.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-glk3/igt@gem_exec_fair@basic-none-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-kbl:          [PASS][67] -> [FAIL][68] ([i915#2842]) +1 similar issue
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-kbl1/igt@gem_exec_fair@basic-none@vecs0.html
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-kbl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#2190])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl4/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@heavy-verify-random:
>     - shard-apl:          NOTRUN -> [SKIP][70] ([fdo#109271] / [i915#4613])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/igt@gem_lmem_swapping@heavy-verify-random.html
> 
>   * igt@gem_pxp@fail-invalid-protected-context:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#4270])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@gem_pxp@fail-invalid-protected-context.html
> 
>   * igt@gem_render_copy@linear-to-vebox-y-tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#768])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@gem_render_copy@linear-to-vebox-y-tiled.html
> 
>   * igt@gem_render_copy@x-tiled-to-vebox-yf-tiled:
>     - shard-kbl:          NOTRUN -> [SKIP][73] ([fdo#109271]) +102 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@gem_render_copy@x-tiled-to-vebox-yf-tiled.html
> 
>   * igt@gen9_exec_parse@batch-without-end:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([i915#2856])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@gen9_exec_parse@batch-without-end.html
> 
>   * igt@i915_pm_rpm@dpms-mode-unset-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([fdo#110892])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@i915_pm_rpm@dpms-mode-unset-non-lpsp.html
> 
>   * igt@i915_query@query-topology-known-pci-ids:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109303])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@i915_query@query-topology-known-pci-ids.html
> 
>   * igt@kms_big_fb@linear-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][77] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb5/igt@kms_big_fb@linear-64bpp-rotate-270.html
>     - shard-tglb:         NOTRUN -> [SKIP][78] ([fdo#111614])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb1/igt@kms_big_fb@linear-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
>     - shard-tglb:         [PASS][79] -> [FAIL][80] ([i915#3743])
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-tglb2/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb6/igt@kms_big_fb@x-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip:
>     - shard-kbl:          NOTRUN -> [SKIP][81] ([fdo#109271] / [i915#3777]) +2 similar issues
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl6/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-64bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([fdo#110723])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_big_fb@yf-tiled-64bpp-rotate-270.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0:
>     - shard-apl:          NOTRUN -> [SKIP][83] ([fdo#109271]) +153 similar issues
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-0.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][84] ([fdo#109271] / [i915#3886]) +7 similar issues
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3886]) +8 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][86] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_ccs@pipe-b-ccs-on-another-bo-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][87] ([i915#3689]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb5/igt@kms_ccs@pipe-d-bad-aux-stride-y_tiled_ccs.html
> 
>   * igt@kms_chamelium@dp-crc-fast:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#109284] / [fdo#111827]) +4 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb5/igt@kms_chamelium@dp-crc-fast.html
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#109284] / [fdo#111827])
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb1/igt@kms_chamelium@dp-crc-fast.html
> 
>   * igt@kms_chamelium@hdmi-aspect-ratio:
>     - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-skl7/igt@kms_chamelium@hdmi-aspect-ratio.html
> 
>   * igt@kms_chamelium@vga-edid-read:
>     - shard-apl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827]) +12 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/igt@kms_chamelium@vga-edid-read.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-max:
>     - shard-kbl:          NOTRUN -> [SKIP][92] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@kms_color_chamelium@pipe-d-ctm-max.html
> 
>   * igt@kms_content_protection@content_type_change:
>     - shard-iclb:         NOTRUN -> [SKIP][93] ([fdo#109300] / [fdo#111066])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_content_protection@content_type_change.html
> 
>   * igt@kms_content_protection@srm:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][94] ([i915#1319])
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl4/igt@kms_content_protection@srm.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][95] ([i915#2105])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([fdo#109278] / [fdo#109279])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_cursor_crc@pipe-b-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109278]) +12 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_cursor_edge_walk@pipe-d-128x128-top-edge.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#533]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_flip@2x-modeset-vs-vblank-race-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][99] ([fdo#109274]) +2 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_flip@2x-modeset-vs-vblank-race-interruptible.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][100] -> [DMESG-WARN][101] ([i915#180]) +4 similar issues
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-apl4/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl6/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling:
>     - shard-iclb:         [PASS][102] -> [SKIP][103] ([i915#3701])
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb7/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb2/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-32bpp-ytile-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render:
>     - shard-iclb:         NOTRUN -> [SKIP][104] ([fdo#109280]) +11 similar issues
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move:
>     - shard-tglb:         NOTRUN -> [SKIP][105] ([fdo#109280] / [fdo#111825]) +2 similar issues
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb5/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-spr-indfb-move.html
> 
>   * igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes:
>     - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109289])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb8/igt@kms_pipe_b_c_ivb@from-pipe-c-to-b-with-3-lanes.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d:
>     - shard-kbl:          NOTRUN -> [SKIP][107] ([fdo#109271] / [i915#533])
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-d.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-coverage-7efc:
>     - shard-skl:          NOTRUN -> [FAIL][108] ([fdo#108145] / [i915#265])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][109] ([fdo#108145] / [i915#265])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl6/igt@kms_plane_alpha_blend@pipe-b-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-7efc:
>     - shard-apl:          NOTRUN -> [FAIL][110] ([fdo#108145] / [i915#265]) +2 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-apl:          NOTRUN -> [FAIL][111] ([i915#265])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-b-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([i915#3536])
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_plane_lowres@pipe-b-tiling-x.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-kbl:          NOTRUN -> [SKIP][113] ([fdo#109271] / [i915#658])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl6/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr2_su@page_flip-nv12:
>     - shard-apl:          NOTRUN -> [SKIP][114] ([fdo#109271] / [i915#658]) +2 similar issues
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl8/igt@kms_psr2_su@page_flip-nv12.html
>     - shard-skl:          NOTRUN -> [SKIP][115] ([fdo#109271] / [i915#658])
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-skl7/igt@kms_psr2_su@page_flip-nv12.html
> 
>   * igt@kms_psr2_su@page_flip-p010:
>     - shard-iclb:         NOTRUN -> [SKIP][116] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@kms_psr2_su@page_flip-p010.html
> 
>   * igt@kms_psr@psr2_primary_page_flip:
>     - shard-iclb:         [PASS][117] -> [SKIP][118] ([fdo#109441]) +1 similar issue
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb2/igt@kms_psr@psr2_primary_page_flip.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb8/igt@kms_psr@psr2_primary_page_flip.html
> 
>   * igt@kms_setmode@basic:
>     - shard-glk:          [PASS][119] -> [FAIL][120] ([i915#31])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk7/igt@kms_setmode@basic.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-glk1/igt@kms_setmode@basic.html
> 
>   * igt@kms_sysfs_edid_timing:
>     - shard-kbl:          NOTRUN -> [FAIL][121] ([IGT#2])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@kms_sysfs_edid_timing.html
> 
>   * igt@kms_writeback@writeback-check-output:
>     - shard-apl:          NOTRUN -> [SKIP][122] ([fdo#109271] / [i915#2437])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl1/igt@kms_writeback@writeback-check-output.html
> 
>   * igt@kms_writeback@writeback-pixel-formats:
>     - shard-kbl:          NOTRUN -> [SKIP][123] ([fdo#109271] / [i915#2437]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@kms_writeback@writeback-pixel-formats.html
> 
>   * igt@nouveau_crc@pipe-b-ctx-flip-detection:
>     - shard-iclb:         NOTRUN -> [SKIP][124] ([i915#2530])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@nouveau_crc@pipe-b-ctx-flip-detection.html
> 
>   * igt@nouveau_crc@pipe-c-source-outp-complete:
>     - shard-tglb:         NOTRUN -> [SKIP][125] ([i915#2530])
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglb8/igt@nouveau_crc@pipe-c-source-outp-complete.html
> 
>   * igt@perf@polling:
>     - shard-skl:          [PASS][126] -> [FAIL][127] ([i915#1542])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-skl1/igt@perf@polling.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-skl4/igt@perf@polling.html
> 
>   * igt@sysfs_clients@fair-3:
>     - shard-skl:          NOTRUN -> [SKIP][128] ([fdo#109271] / [i915#2994])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-skl7/igt@sysfs_clients@fair-3.html
> 
>   * igt@sysfs_clients@fair-7:
>     - shard-kbl:          NOTRUN -> [SKIP][129] ([fdo#109271] / [i915#2994])
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl3/igt@sysfs_clients@fair-7.html
> 
>   * igt@sysfs_clients@sema-25:
>     - shard-iclb:         NOTRUN -> [SKIP][130] ([i915#2994])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb3/igt@sysfs_clients@sema-25.html
> 
>   * igt@sysfs_clients@split-50:
>     - shard-apl:          NOTRUN -> [SKIP][131] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-apl3/igt@sysfs_clients@split-50.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@gem_eio@in-flight-contexts-10ms:
>     - {shard-tglu}:       [TIMEOUT][132] ([i915#3063]) -> [PASS][133]
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-tglu-2/igt@gem_eio@in-flight-contexts-10ms.html
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-tglu-5/igt@gem_eio@in-flight-contexts-10ms.html
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         [TIMEOUT][134] ([i915#2481] / [i915#3070]) -> [PASS][135]
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb6/igt@gem_eio@unwedge-stress.html
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb7/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-none@rcs0:
>     - shard-glk:          [FAIL][136] ([i915#2842]) -> [PASS][137]
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk1/igt@gem_exec_fair@basic-none@rcs0.html
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-glk5/igt@gem_exec_fair@basic-none@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs0:
>     - shard-kbl:          [FAIL][138] ([i915#2842]) -> [PASS][139] +2 similar issues
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-kbl1/igt@gem_exec_fair@basic-none@vcs0.html
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl7/igt@gem_exec_fair@basic-none@vcs0.html
> 
>   * igt@gem_mmap_gtt@flink-race:
>     - {shard-rkl}:        [INCOMPLETE][140] ([i915#5080]) -> [PASS][141]
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-5/igt@gem_mmap_gtt@flink-race.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-rkl-6/igt@gem_mmap_gtt@flink-race.html
> 
>   * igt@gem_softpin@allocator-evict-all-engines:
>     - shard-glk:          [FAIL][142] ([i915#4171]) -> [PASS][143]
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk5/igt@gem_softpin@allocator-evict-all-engines.html
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-glk3/igt@gem_softpin@allocator-evict-all-engines.html
> 
>   * igt@i915_pm_dc@dc6-dpms:
>     - shard-iclb:         [FAIL][144] ([i915#454]) -> [PASS][145]
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-iclb6/igt@i915_pm_dc@dc6-dpms.html
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - {shard-rkl}:        [SKIP][146] ([i915#658]) -> [PASS][147]
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-5/igt@i915_pm_dc@dc6-psr.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-rkl-6/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_pm_rpm@gem-pread:
>     - {shard-rkl}:        [SKIP][148] ([fdo#109308]) -> [PASS][149]
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-1/igt@i915_pm_rpm@gem-pread.html
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-rkl-6/igt@i915_pm_rpm@gem-pread.html
> 
>   * igt@i915_pm_rpm@modeset-lpsp-stress:
>     - {shard-rkl}:        [SKIP][150] ([i915#1397]) -> [PASS][151]
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-5/igt@i915_pm_rpm@modeset-lpsp-stress.html
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-rkl-6/igt@i915_pm_rpm@modeset-lpsp-stress.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - shard-snb:          [INCOMPLETE][152] ([i915#3921]) -> [PASS][153]
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-snb6/igt@i915_selftest@live@hangcheck.html
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-snb5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_suspend@forcewake:
>     - shard-kbl:          [DMESG-WARN][154] ([i915#180]) -> [PASS][155] +2 similar issues
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-kbl7/igt@i915_suspend@forcewake.html
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-kbl4/igt@i915_suspend@forcewake.html
> 
>   * igt@kms_atomic@plane-primary-legacy:
>     - {shard-rkl}:        ([SKIP][156], [SKIP][157]) ([i915#1845]) -> [PASS][158] +3 similar issues
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-4/igt@kms_atomic@plane-primary-legacy.html
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-5/igt@kms_atomic@plane-primary-legacy.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-rkl-6/igt@kms_atomic@plane-primary-legacy.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-180:
>     - shard-glk:          [DMESG-WARN][159] ([i915#118]) -> [PASS][160]
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-glk5/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-glk6/igt@kms_big_fb@x-tiled-32bpp-rotate-180.html
> 
>   * igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc:
>     - {shard-rkl}:        [SKIP][161] ([i915#1845] / [i915#4098]) -> [PASS][162] +4 similar issues
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-5/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/shard-rkl-6/igt@kms_ccs@pipe-a-bad-aux-stride-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_color@pipe-a-ctm-blue-to-red:
>     - {shard-rkl}:        [SKIP][163] ([i915#1149] / [i915#1849]) -> [PASS][164] +1 similar issue
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11320/shard-rkl-5/igt@kms_color@pipe-a-ctm-blue-to-red.html
>    [164]: https://intel-gfx-ci.01.org/
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22480/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
