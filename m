Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B3E4FD4AF
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Apr 2022 12:06:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 073C610E5B6;
	Tue, 12 Apr 2022 10:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFF7310E068
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Apr 2022 10:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649757962; x=1681293962;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=vQ0TqSr6WAdj4f3PsyaZFHgcHmAj05v5HCNyDOWVDxI=;
 b=PRK5Y3zuwUons5rjAm93hTM3BofrHnzhxSBaF+jnahAFaDqVgWH6Q1VT
 WIUmHF2XbcqqXn44TwYF7GYg2O857tPBZ6Usy0WaYWW2c1FqxfgTxqMWR
 ok23iWZ0KKXdqAn2xIGGuDfyT4+B9WvEyYFBBEyrdWUXOZPeKK9pEgHhR
 PIGj0w3fs8xRemLWhRg7ph+cxMYcXIcKW/P+HGEAGZbElDtyYQf+8axYL
 dE0589+fkTaSE/SvDL59rjZuY+BAPyFYdS9T6P0y9VhZm9pakLmIhHqCR
 7QmTo5cwpUxFUE0F/0SyabqD/EaeStX/u4wEyP1/uObOWvNzSLTk8DAo/ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10314"; a="261184722"
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="261184722"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 03:06:02 -0700
X-IronPort-AV: E=Sophos;i="5.90,253,1643702400"; d="scan'208";a="699771627"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2022 03:05:59 -0700
Date: Tue, 12 Apr 2022 13:05:56 +0300
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org, Mika Kahola <mika.kahola@intel.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Nanley G Chery <nanley.g.chery@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Message-ID: <YlVPBNb4K12dfnlU@ideak-desk.fi.intel.com>
References: <20220411143405.1073845-1-imre.deak@intel.com>
 <164972390351.18364.5134851666943224956@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164972390351.18364.5134851666943224956@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgZHJt?=
 =?utf-8?q?/i915/dg2=3A_Add_support_for_render/media_decompression_=28rev2?=
 =?utf-8?q?=29?=
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 12, 2022 at 12:38:23AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/dg2: Add support for render/media decompression (rev2)
> URL   : https://patchwork.freedesktop.org/series/102147/
> State : success

Thanks for the patches and reviews, patchset pushed to drm-intel-next.

> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11484_full -> Patchwork_102147v2_full
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
> Participating hosts (13 -> 10)
> ------------------------------
> 
>   Missing    (3): shard-rkl shard-dg1 shard-tglu 
> 
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_102147v2_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-skl:          ([PASS][1], [PASS][2], [PASS][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [FAIL][12], [PASS][13], [PASS][14], [FAIL][15], [FAIL][16], [FAIL][17], [FAIL][18], [FAIL][19], [FAIL][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25]) ([i915#5032]) -> ([PASS][26], [PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl9/boot.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl9/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl8/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl8/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl8/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl7/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl7/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl7/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl6/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl6/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl5/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl5/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl4/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl2/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl2/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl2/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl2/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl2/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl2/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl1/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl1/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl10/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl10/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl10/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl9/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl9/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl9/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl8/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl8/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl8/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl7/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl7/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl6/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl6/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl6/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl5/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl5/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl2/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl1/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl1/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl10/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl10/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl10/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_ctx_persistence@many-contexts:
>     - shard-tglb:         [PASS][48] -> [FAIL][49] ([i915#2410])
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb6/igt@gem_ctx_persistence@many-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-balancer:
>     - shard-iclb:         [PASS][50] -> [SKIP][51] ([i915#4525])
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-iclb2/igt@gem_exec_balancer@parallel-balancer.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb8/igt@gem_exec_balancer@parallel-balancer.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         NOTRUN -> [SKIP][52] ([i915#4525])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#2846])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-glk6/igt@gem_exec_fair@basic-deadline.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-glk7/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none-vip@rcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][55] ([i915#2842])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl7/igt@gem_exec_fair@basic-none-vip@rcs0.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][56] ([i915#2842]) +1 similar issue
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb1/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-pace-share@rcs0:
>     - shard-tglb:         [PASS][57] -> [FAIL][58] ([i915#2842])
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-tglb1/igt@gem_exec_fair@basic-pace-share@rcs0.html
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb7/igt@gem_exec_fair@basic-pace-share@rcs0.html
> 
>   * igt@gem_exec_fair@basic-pace-solo@rcs0:
>     - shard-kbl:          [PASS][59] -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-kbl7/igt@gem_exec_fair@basic-pace-solo@rcs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl4/igt@gem_exec_fair@basic-pace-solo@rcs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][61] -> [FAIL][62] ([i915#2849])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-iclb3/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb8/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-uc-prw-default:
>     - shard-snb:          [PASS][63] -> [SKIP][64] ([fdo#109271])
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-snb7/igt@gem_exec_flush@basic-uc-prw-default.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-snb6/igt@gem_exec_flush@basic-uc-prw-default.html
> 
>   * igt@gem_exec_whisper@basic-contexts-all:
>     - shard-glk:          [PASS][65] -> [DMESG-WARN][66] ([i915#118])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-glk9/igt@gem_exec_whisper@basic-contexts-all.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-glk3/igt@gem_exec_whisper@basic-contexts-all.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#4613])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@gem_lmem_swapping@parallel-random-verify.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl4/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_lmem_swapping@verify-random:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613]) +4 similar issues
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl9/igt@gem_lmem_swapping@verify-random.html
> 
>   * igt@gem_pread@exhaustion:
>     - shard-skl:          NOTRUN -> [WARN][70] ([i915#2658])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl10/igt@gem_pread@exhaustion.html
> 
>   * igt@gem_pxp@reject-modify-context-protection-off-3:
>     - shard-tglb:         NOTRUN -> [SKIP][71] ([i915#4270])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@gem_pxp@reject-modify-context-protection-off-3.html
> 
>   * igt@gem_pxp@verify-pxp-stale-buf-optout-execution:
>     - shard-iclb:         NOTRUN -> [SKIP][72] ([i915#4270])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@gem_pxp@verify-pxp-stale-buf-optout-execution.html
> 
>   * igt@gem_render_copy@yf-tiled-to-vebox-linear:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([i915#768]) +2 similar issues
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@gem_render_copy@yf-tiled-to-vebox-linear.html
> 
>   * igt@gem_userptr_blits@coherency-sync:
>     - shard-iclb:         NOTRUN -> [SKIP][74] ([fdo#109290])
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@gem_userptr_blits@coherency-sync.html
> 
>   * igt@gem_userptr_blits@coherency-unsync:
>     - shard-iclb:         NOTRUN -> [SKIP][75] ([i915#3297])
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@gem_userptr_blits@coherency-unsync.html
> 
>   * igt@gem_userptr_blits@vma-merge:
>     - shard-kbl:          NOTRUN -> [FAIL][76] ([i915#3318])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl4/igt@gem_userptr_blits@vma-merge.html
>     - shard-tglb:         NOTRUN -> [FAIL][77] ([i915#3318])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@gem_userptr_blits@vma-merge.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][78] -> [DMESG-WARN][79] ([i915#5566] / [i915#716])
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-glk7/igt@gen9_exec_parse@allowed-single.html
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-glk9/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@bb-start-param:
>     - shard-iclb:         NOTRUN -> [SKIP][80] ([i915#2856])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@gen9_exec_parse@bb-start-param.html
> 
>   * igt@i915_pm_rpm@dpms-non-lpsp:
>     - shard-iclb:         NOTRUN -> [SKIP][81] ([fdo#110892])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@i915_pm_rpm@dpms-non-lpsp.html
> 
>   * igt@i915_pm_rpm@modeset-pc8-residency-stress:
>     - shard-tglb:         NOTRUN -> [SKIP][82] ([fdo#109506] / [i915#2411])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@i915_pm_rpm@modeset-pc8-residency-stress.html
> 
>   * igt@kms_big_fb@4-tiled-addfb:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([i915#5286]) +1 similar issue
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_big_fb@4-tiled-addfb.html
> 
>   * igt@kms_big_fb@x-tiled-8bpp-rotate-270:
>     - shard-iclb:         NOTRUN -> [SKIP][84] ([fdo#110725] / [fdo#111614]) +1 similar issue
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_big_fb@x-tiled-8bpp-rotate-270.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip:
>     - shard-apl:          NOTRUN -> [SKIP][85] ([fdo#109271] / [i915#3777]) +1 similar issue
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-apl4/igt@kms_big_fb@y-tiled-max-hw-stride-32bpp-rotate-0-hflip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][86] ([i915#3763])
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-skl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3777]) +6 similar issues
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl8/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_big_fb@yf-tiled-8bpp-rotate-0:
>     - shard-iclb:         NOTRUN -> [SKIP][88] ([fdo#110723])
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_big_fb@yf-tiled-8bpp-rotate-0.html
> 
>   * igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip:
>     - shard-tglb:         NOTRUN -> [SKIP][89] ([fdo#111615]) +1 similar issue
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_big_fb@yf-tiled-max-hw-stride-64bpp-rotate-180-hflip-async-flip.html
> 
>   * igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-apl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [i915#3886])
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-apl4/igt@kms_ccs@pipe-a-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc:
>     - shard-skl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [i915#3886]) +18 similar issues
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl6/igt@kms_ccs@pipe-a-ccs-on-another-bo-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][92] ([i915#3689] / [i915#3886])
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][93] ([fdo#109271] / [i915#3886]) +5 similar issues
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl6/igt@kms_ccs@pipe-a-crc-primary-rotation-180-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278] / [i915#3886]) +4 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs:
>     - shard-tglb:         NOTRUN -> [SKIP][95] ([i915#3689])
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_ccs@pipe-d-bad-rotation-90-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_cdclk@plane-scaling:
>     - shard-iclb:         NOTRUN -> [SKIP][96] ([i915#3742])
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_cdclk@plane-scaling.html
> 
>   * igt@kms_chamelium@dp-mode-timings:
>     - shard-apl:          NOTRUN -> [SKIP][97] ([fdo#109271] / [fdo#111827]) +3 similar issues
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-apl4/igt@kms_chamelium@dp-mode-timings.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm:
>     - shard-kbl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [fdo#111827]) +8 similar issues
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl3/igt@kms_chamelium@hdmi-hpd-storm.html
> 
>   * igt@kms_chamelium@vga-hpd-after-suspend:
>     - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [fdo#111827]) +24 similar issues
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl6/igt@kms_chamelium@vga-hpd-after-suspend.html
> 
>   * igt@kms_color@pipe-d-ctm-max:
>     - shard-iclb:         NOTRUN -> [SKIP][100] ([fdo#109278] / [i915#1149])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_color@pipe-d-ctm-max.html
> 
>   * igt@kms_color_chamelium@pipe-a-ctm-0-25:
>     - shard-tglb:         NOTRUN -> [SKIP][101] ([fdo#109284] / [fdo#111827])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_color_chamelium@pipe-a-ctm-0-25.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-red-to-blue:
>     - shard-iclb:         NOTRUN -> [SKIP][102] ([fdo#109284] / [fdo#111827]) +9 similar issues
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_color_chamelium@pipe-b-ctm-red-to-blue.html
> 
>   * igt@kms_color_chamelium@pipe-d-ctm-negative:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109278] / [fdo#109284] / [fdo#111827])
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_color_chamelium@pipe-d-ctm-negative.html
> 
>   * igt@kms_content_protection@atomic:
>     - shard-kbl:          NOTRUN -> [TIMEOUT][104] ([i915#1319])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl4/igt@kms_content_protection@atomic.html
> 
>   * igt@kms_content_protection@legacy:
>     - shard-iclb:         NOTRUN -> [SKIP][105] ([fdo#109300] / [fdo#111066])
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_content_protection@legacy.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen:
>     - shard-tglb:         NOTRUN -> [SKIP][106] ([fdo#109279] / [i915#3359])
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_cursor_crc@pipe-a-cursor-512x170-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109278] / [fdo#109279]) +2 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-max-size-sliding:
>     - shard-tglb:         NOTRUN -> [SKIP][108] ([i915#3359])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_cursor_crc@pipe-b-cursor-max-size-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-suspend:
>     - shard-kbl:          NOTRUN -> [DMESG-WARN][109] ([i915#180])
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl1/igt@kms_cursor_crc@pipe-b-cursor-suspend.html
> 
>   * igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][110] ([fdo#109278]) +12 similar issues
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_cursor_crc@pipe-c-cursor-32x10-offscreen.html
> 
>   * igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy:
>     - shard-tglb:         NOTRUN -> [SKIP][111] ([fdo#109274] / [fdo#111825]) +1 similar issue
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_cursor_legacy@2x-long-flip-vs-cursor-legacy.html
> 
>   * igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic:
>     - shard-iclb:         NOTRUN -> [SKIP][112] ([fdo#109274] / [fdo#109278]) +5 similar issues
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_cursor_legacy@2x-long-nonblocking-modeset-vs-cursor-atomic.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions:
>     - shard-skl:          NOTRUN -> [FAIL][113] ([i915#2346])
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>     - shard-glk:          [PASS][114] -> [FAIL][115] ([i915#2346])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-glk3/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-glk7/igt@kms_cursor_legacy@flip-vs-cursor-atomic-transitions.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271] / [i915#533]) +2 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl1/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled:
>     - shard-tglb:         NOTRUN -> [SKIP][117] ([i915#5287])
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_draw_crc@draw-method-rgb565-mmap-gtt-4tiled.html
> 
>   * igt@kms_draw_crc@draw-method-rgb565-render-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][118] ([i915#5287])
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_draw_crc@draw-method-rgb565-render-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][119] -> [INCOMPLETE][120] ([i915#180])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-apl6/igt@kms_fbcon_fbt@fbc-suspend.html
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-apl3/igt@kms_fbcon_fbt@fbc-suspend.html
>     - shard-kbl:          [PASS][121] -> [INCOMPLETE][122] ([i915#180])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-kbl3/igt@kms_fbcon_fbt@fbc-suspend.html
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl6/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][123] ([fdo#109274]) +1 similar issue
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible.html
> 
>   * igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2:
>     - shard-glk:          [PASS][124] -> [FAIL][125] ([i915#79])
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-glk6/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-glk7/igt@kms_flip@flip-vs-expired-vblank@b-hdmi-a2.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@a-dp1:
>     - shard-kbl:          [PASS][126] -> [DMESG-WARN][127] ([i915#180]) +4 similar issues
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-kbl7/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl1/igt@kms_flip@flip-vs-suspend-interruptible@a-dp1.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-dp1:
>     - shard-apl:          [PASS][128] -> [DMESG-WARN][129] ([i915#180]) +4 similar issues
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-apl2/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-apl8/igt@kms_flip@flip-vs-suspend-interruptible@c-dp1.html
> 
>   * igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling:
>     - shard-iclb:         [PASS][130] -> [SKIP][131] ([i915#3701])
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-iclb6/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-downscaling.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt:
>     - shard-skl:          NOTRUN -> [SKIP][132] ([fdo#109271]) +315 similar issues
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl8/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt:
>     - shard-iclb:         NOTRUN -> [SKIP][133] ([fdo#109280]) +18 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb5/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-draw-blt.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render:
>     - shard-apl:          NOTRUN -> [SKIP][134] ([fdo#109271]) +44 similar issues
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-apl4/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-render.html
> 
>   * igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt:
>     - shard-skl:          NOTRUN -> [DMESG-WARN][135] ([i915#1982])
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-plflip-blt.html
> 
>   * igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite:
>     - shard-tglb:         NOTRUN -> [SKIP][136] ([fdo#109280] / [fdo#111825]) +3 similar issues
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-tglb3/igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-shrfb-draw-pwrite.html
> 
>   * igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a:
>     - shard-skl:          [PASS][137] -> [FAIL][138] ([i915#1188]) +1 similar issue
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl9/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl2/igt@kms_hdr@bpc-switch-suspend@bpc-switch-suspend-edp-1-pipe-a.html
> 
>   * igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][139] ([fdo#108145] / [i915#265]) +3 similar issues
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl7/igt@kms_plane_alpha_blend@pipe-a-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-b-coverage-7efc:
>     - shard-skl:          [PASS][140] -> [FAIL][141] ([fdo#108145] / [i915#265])
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-skl9/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl8/igt@kms_plane_alpha_blend@pipe-b-coverage-7efc.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
>     - shard-kbl:          NOTRUN -> [FAIL][142] ([fdo#108145] / [i915#265]) +1 similar issue
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl1/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb:
>     - shard-skl:          NOTRUN -> [FAIL][143] ([i915#265])
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl9/igt@kms_plane_alpha_blend@pipe-c-alpha-transparent-fb.html
> 
>   * igt@kms_plane_lowres@pipe-c-tiling-x:
>     - shard-iclb:         NOTRUN -> [SKIP][144] ([i915#3536])
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_plane_lowres@pipe-c-tiling-x.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-d-tiling-x:
>     - shard-kbl:          NOTRUN -> [SKIP][145] ([fdo#109271]) +115 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl7/igt@kms_plane_multiple@atomic-pipe-d-tiling-x.html
> 
>   * igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][146] -> [SKIP][147] ([i915#5235]) +2 similar issues
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11484/shard-iclb4/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb2/igt@kms_plane_scaling@planes-unity-scaling-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         NOTRUN -> [SKIP][148] ([i915#5235]) +2 similar issues
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb3/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-25@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@cursor-plane-update-sf:
>     - shard-kbl:          NOTRUN -> [SKIP][149] ([fdo#109271] / [i915#658])
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-kbl7/igt@kms_psr2_sf@cursor-plane-update-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
>     - shard-iclb:         NOTRUN -> [SKIP][150] ([fdo#111068] / [i915#658])
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-iclb7/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-skl:          NOTRUN -> [SKIP][151] ([fdo#109271] / [i915#658]) +3 similar issues
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/shard-skl9/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_cursor_blt:
>     - shard-tglb:         NOTRUN -> [FAIL][152] ([i915#132] / [i915#3467])
>    [152]: https://intel-gfx-ci.01.org/tree/drm-
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_102147v2/index.html
