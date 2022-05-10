Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 990D2522709
	for <lists+intel-gfx@lfdr.de>; Wed, 11 May 2022 00:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFCAD10F26E;
	Tue, 10 May 2022 22:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA2010F268
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 22:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652222636; x=1683758636;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=LLhX0NJOQo56lO9xazSr+ZDvDSOI0CxW1JGzBBQqz40=;
 b=Km8kbT4mCOsRQ7M51u7gF7RC1HGi6Qi1i/XbBvpJS+QXRLsuKJy2WIQ/
 cW9fNjVX06SkdKna6F7BFeysQuqcnRnR4TjNcrw8EACS8wGj199OuKygN
 fARUdpKymt2hLuCVuR1Ff7tm2eCZqhsXuoY5Y7144IMSas84vAG7Mi55m
 Dzc7sgFqo5Dpl+WwYWWHrPtA5RsJwfOCSfI8jU9rY6UcdjsE1oTZTmbqd
 OgvXzqw0sKZLHpCabF+n1oYASyCQ9GPP3lvSSzDXQlVUzR0vHor/oziQy
 hzgPXz4fxOLYh6R9JO1Dutk5JE3O6Z1ZeezV2lwhRq7OlIBlB56G3e3xI A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10343"; a="355948883"
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="355948883"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 15:43:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,215,1647327600"; d="scan'208";a="593792511"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 15:43:55 -0700
Date: Tue, 10 May 2022 15:43:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <YnrqqlgWv2IS3CFs@mdroper-desk1.amr.corp.intel.com>
References: <20220505213812.3979301-1-matthew.d.roper@intel.com>
 <165181137780.18816.17312120088389100225@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <165181137780.18816.17312120088389100225@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgaTkx?=
 =?utf-8?q?5=3A_Introduce_Ponte_Vecchio_=28rev3=29?=
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

On Fri, May 06, 2022 at 04:29:37AM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: i915: Introduce Ponte Vecchio (rev3)
> URL   : https://patchwork.freedesktop.org/series/103443/
> State : success
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11613_full -> Patchwork_103443v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **SUCCESS**
> 
>   No regressions found.

Pushed the reviewed patches (all except the two forcewake patches and
the PIPE_CONTROL patch) to drm-intel-gt-next.

Thanks for the reviews.


Matt

> 
>   
> 
> Participating hosts (10 -> 12)
> ------------------------------
> 
>   Additional (2): shard-rkl shard-tglu 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_103443v3_full:
> 
> ### IGT changes ###
> 
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * {igt@kms_plane_scaling@downscale-with-modifier-factor-0-25}:
>     - {shard-rkl}:        NOTRUN -> [SKIP][1] +4 similar issues
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-rkl-2/igt@kms_plane_scaling@downscale-with-modifier-factor-0-25.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_103443v3_full that come from known issues:
> 
> ### CI changes ###
> 
> #### Possible fixes ####
> 
>   * boot:
>     - shard-apl:          ([PASS][2], [FAIL][3], [PASS][4], [PASS][5], [PASS][6], [PASS][7], [PASS][8], [PASS][9], [PASS][10], [PASS][11], [PASS][12], [PASS][13], [PASS][14], [PASS][15], [PASS][16], [PASS][17], [PASS][18], [PASS][19], [PASS][20], [PASS][21], [PASS][22], [PASS][23], [PASS][24], [PASS][25], [PASS][26]) ([i915#4386]) -> ([PASS][27], [PASS][28], [PASS][29], [PASS][30], [PASS][31], [PASS][32], [PASS][33], [PASS][34], [PASS][35], [PASS][36], [PASS][37], [PASS][38], [PASS][39], [PASS][40], [PASS][41], [PASS][42], [PASS][43], [PASS][44], [PASS][45], [PASS][46], [PASS][47], [PASS][48], [PASS][49], [PASS][50], [PASS][51])
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl1/boot.html
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl1/boot.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl1/boot.html
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl1/boot.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl1/boot.html
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl2/boot.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl2/boot.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl2/boot.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl2/boot.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl3/boot.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl3/boot.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl3/boot.html
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl4/boot.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl4/boot.html
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl4/boot.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl4/boot.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl6/boot.html
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl6/boot.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl6/boot.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl7/boot.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl7/boot.html
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl7/boot.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl8/boot.html
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl8/boot.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl8/boot.html
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl1/boot.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl1/boot.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl1/boot.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl2/boot.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl2/boot.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl2/boot.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl3/boot.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl3/boot.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl3/boot.html
>    [36]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl3/boot.html
>    [37]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/boot.html
>    [38]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/boot.html
>    [39]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/boot.html
>    [40]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/boot.html
>    [41]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/boot.html
>    [42]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl6/boot.html
>    [43]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl6/boot.html
>    [44]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl6/boot.html
>    [45]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl6/boot.html
>    [46]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/boot.html
>    [47]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/boot.html
>    [48]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/boot.html
>    [49]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl8/boot.html
>    [50]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl8/boot.html
>    [51]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl8/boot.html
> 
>   
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@gem_eio@unwedge-stress:
>     - shard-iclb:         NOTRUN -> [TIMEOUT][52] ([i915#3070])
>    [52]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gem_eio@unwedge-stress.html
> 
>   * igt@gem_exec_fair@basic-deadline:
>     - shard-glk:          [PASS][53] -> [FAIL][54] ([i915#2846])
>    [53]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-glk4/igt@gem_exec_fair@basic-deadline.html
>    [54]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-glk4/igt@gem_exec_fair@basic-deadline.html
> 
>   * igt@gem_exec_fair@basic-none@vcs1:
>     - shard-iclb:         NOTRUN -> [FAIL][55] ([i915#2842])
>    [55]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb2/igt@gem_exec_fair@basic-none@vcs1.html
> 
>   * igt@gem_exec_fair@basic-none@vecs0:
>     - shard-apl:          [PASS][56] -> [FAIL][57] ([i915#2842])
>    [56]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl2/igt@gem_exec_fair@basic-none@vecs0.html
>    [57]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/igt@gem_exec_fair@basic-none@vecs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vcs0:
>     - shard-kbl:          NOTRUN -> [FAIL][58] ([i915#2842])
>    [58]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@gem_exec_fair@basic-pace@vcs0.html
> 
>   * igt@gem_exec_fair@basic-pace@vecs0:
>     - shard-tglb:         [PASS][59] -> [FAIL][60] ([i915#2842])
>    [59]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
>    [60]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-tglb2/igt@gem_exec_fair@basic-pace@vecs0.html
> 
>   * igt@gem_exec_fair@basic-throttle@rcs0:
>     - shard-iclb:         [PASS][61] -> [FAIL][62] ([i915#2849])
>    [61]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
>    [62]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb1/igt@gem_exec_fair@basic-throttle@rcs0.html
> 
>   * igt@gem_exec_flush@basic-batch-kernel-default-uc:
>     - shard-snb:          [PASS][63] -> [SKIP][64] ([fdo#109271]) +2 similar issues
>    [63]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-snb5/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
>    [64]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-snb6/igt@gem_exec_flush@basic-batch-kernel-default-uc.html
> 
>   * igt@gem_huc_copy@huc-copy:
>     - shard-tglb:         [PASS][65] -> [SKIP][66] ([i915#2190])
>    [65]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-tglb5/igt@gem_huc_copy@huc-copy.html
>    [66]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-tglb7/igt@gem_huc_copy@huc-copy.html
> 
>   * igt@gem_lmem_swapping@parallel-random:
>     - shard-iclb:         NOTRUN -> [SKIP][67] ([i915#4613])
>    [67]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gem_lmem_swapping@parallel-random.html
> 
>   * igt@gem_lmem_swapping@parallel-random-verify-ccs:
>     - shard-kbl:          NOTRUN -> [SKIP][68] ([fdo#109271] / [i915#4613])
>    [68]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@gem_lmem_swapping@parallel-random-verify-ccs.html
> 
>   * igt@gem_lmem_swapping@random:
>     - shard-skl:          NOTRUN -> [SKIP][69] ([fdo#109271] / [i915#4613])
>    [69]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@gem_lmem_swapping@random.html
> 
>   * igt@gem_pxp@verify-pxp-execution-after-suspend-resume:
>     - shard-iclb:         NOTRUN -> [SKIP][70] ([i915#4270])
>    [70]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gem_pxp@verify-pxp-execution-after-suspend-resume.html
> 
>   * igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][71] ([i915#768])
>    [71]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gem_render_copy@y-tiled-ccs-to-yf-tiled-mc-ccs.html
> 
>   * igt@gem_softpin@evict-single-offset:
>     - shard-kbl:          NOTRUN -> [FAIL][72] ([i915#4171])
>    [72]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@gem_softpin@evict-single-offset.html
> 
>   * igt@gem_softpin@evict-snoop:
>     - shard-iclb:         NOTRUN -> [SKIP][73] ([fdo#109312])
>    [73]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gem_softpin@evict-snoop.html
> 
>   * igt@gem_workarounds@suspend-resume-context:
>     - shard-kbl:          [PASS][74] -> [DMESG-WARN][75] ([i915#180]) +1 similar issue
>    [74]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html
>    [75]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@gem_workarounds@suspend-resume-context.html
> 
>   * igt@gen3_render_linear_blits:
>     - shard-iclb:         NOTRUN -> [SKIP][76] ([fdo#109289])
>    [76]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gen3_render_linear_blits.html
> 
>   * igt@gen9_exec_parse@allowed-single:
>     - shard-glk:          [PASS][77] -> [DMESG-WARN][78] ([i915#5566] / [i915#716])
>    [77]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-glk1/igt@gen9_exec_parse@allowed-single.html
>    [78]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-glk4/igt@gen9_exec_parse@allowed-single.html
> 
>   * igt@gen9_exec_parse@basic-rejected:
>     - shard-iclb:         NOTRUN -> [SKIP][79] ([i915#2856]) +1 similar issue
>    [79]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gen9_exec_parse@basic-rejected.html
> 
>   * igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp:
>     - shard-apl:          NOTRUN -> [SKIP][80] ([fdo#109271] / [i915#1937])
>    [80]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl8/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-dp.html
> 
>   * igt@i915_pm_rc6_residency@rc6-fence:
>     - shard-iclb:         NOTRUN -> [WARN][81] ([i915#2684])
>    [81]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@i915_pm_rc6_residency@rc6-fence.html
> 
>   * igt@kms_big_fb@4-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][82] ([i915#5286])
>    [82]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_big_fb@4-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@x-tiled-32bpp-rotate-90:
>     - shard-iclb:         NOTRUN -> [SKIP][83] ([fdo#110725] / [fdo#111614])
>    [83]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_big_fb@x-tiled-32bpp-rotate-90.html
> 
>   * igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip:
>     - shard-skl:          NOTRUN -> [FAIL][84] ([i915#3763])
>    [84]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-async-flip.html
> 
>   * igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs:
>     - shard-iclb:         NOTRUN -> [SKIP][85] ([fdo#109278] / [i915#3886]) +2 similar issues
>    [85]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs:
>     - shard-skl:          NOTRUN -> [SKIP][86] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [86]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_ccs@pipe-b-crc-primary-basic-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc:
>     - shard-kbl:          NOTRUN -> [SKIP][87] ([fdo#109271] / [i915#3886]) +1 similar issue
>    [87]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@kms_ccs@pipe-c-bad-pixel-format-y_tiled_gen12_rc_ccs_cc.html
> 
>   * igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs:
>     - shard-apl:          NOTRUN -> [SKIP][88] ([fdo#109271] / [i915#3886]) +6 similar issues
>    [88]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/igt@kms_ccs@pipe-c-crc-primary-rotation-180-y_tiled_gen12_mc_ccs.html
> 
>   * igt@kms_chamelium@dp-hpd-storm-disable:
>     - shard-apl:          NOTRUN -> [SKIP][89] ([fdo#109271] / [fdo#111827]) +5 similar issues
>    [89]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/igt@kms_chamelium@dp-hpd-storm-disable.html
> 
>   * igt@kms_chamelium@hdmi-hpd-storm-disable:
>     - shard-skl:          NOTRUN -> [SKIP][90] ([fdo#109271] / [fdo#111827]) +6 similar issues
>    [90]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_chamelium@hdmi-hpd-storm-disable.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-0-5:
>     - shard-kbl:          NOTRUN -> [SKIP][91] ([fdo#109271] / [fdo#111827])
>    [91]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@kms_color_chamelium@pipe-b-ctm-0-5.html
> 
>   * igt@kms_color_chamelium@pipe-b-ctm-limited-range:
>     - shard-iclb:         NOTRUN -> [SKIP][92] ([fdo#109284] / [fdo#111827]) +1 similar issue
>    [92]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_color_chamelium@pipe-b-ctm-limited-range.html
> 
>   * igt@kms_content_protection@uevent:
>     - shard-kbl:          NOTRUN -> [FAIL][93] ([i915#2105])
>    [93]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@kms_content_protection@uevent.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding:
>     - shard-iclb:         NOTRUN -> [SKIP][94] ([fdo#109278] / [fdo#109279]) +2 similar issues
>    [94]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_cursor_crc@pipe-a-cursor-512x512-sliding.html
> 
>   * igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen:
>     - shard-iclb:         NOTRUN -> [SKIP][95] ([fdo#109278]) +8 similar issues
>    [95]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_cursor_crc@pipe-b-cursor-32x10-onscreen.html
> 
>   * igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding:
>     - shard-apl:          NOTRUN -> [SKIP][96] ([fdo#109271]) +101 similar issues
>    [96]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl8/igt@kms_cursor_crc@pipe-d-cursor-64x64-sliding.html
> 
>   * igt@kms_cursor_legacy@cursora-vs-flipb-toggle:
>     - shard-iclb:         NOTRUN -> [SKIP][97] ([fdo#109274] / [fdo#109278])
>    [97]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_cursor_legacy@cursora-vs-flipb-toggle.html
> 
>   * igt@kms_cursor_legacy@pipe-d-torture-bo:
>     - shard-apl:          NOTRUN -> [SKIP][98] ([fdo#109271] / [i915#533]) +1 similar issue
>    [98]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/igt@kms_cursor_legacy@pipe-d-torture-bo.html
>     - shard-skl:          NOTRUN -> [SKIP][99] ([fdo#109271] / [i915#533])
>    [99]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_cursor_legacy@pipe-d-torture-bo.html
> 
>   * igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled:
>     - shard-iclb:         NOTRUN -> [SKIP][100] ([i915#5287])
>    [100]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_draw_crc@draw-method-xrgb8888-mmap-cpu-4tiled.html
> 
>   * igt@kms_fbcon_fbt@fbc-suspend:
>     - shard-apl:          [PASS][101] -> [FAIL][102] ([i915#4767])
>    [101]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl8/igt@kms_fbcon_fbt@fbc-suspend.html
>    [102]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/igt@kms_fbcon_fbt@fbc-suspend.html
> 
>   * igt@kms_flip@2x-plain-flip-fb-recreate-interruptible:
>     - shard-iclb:         NOTRUN -> [SKIP][103] ([fdo#109274]) +2 similar issues
>    [103]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_flip@2x-plain-flip-fb-recreate-interruptible.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-skl:          [PASS][104] -> [FAIL][105] ([i915#2122])
>    [104]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-skl6/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [105]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl1/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc:
>     - shard-kbl:          NOTRUN -> [SKIP][106] ([fdo#109271]) +40 similar issues
>    [106]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-cur-indfb-draw-mmap-wc.html
> 
>   * igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc:
>     - shard-iclb:         NOTRUN -> [SKIP][107] ([fdo#109280]) +8 similar issues
>    [107]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_frontbuffer_tracking@fbcpsr-2p-primscrn-pri-indfb-draw-mmap-wc.html
> 
>   * igt@kms_multipipe_modeset@basic-max-pipe-crc-check:
>     - shard-iclb:         NOTRUN -> [SKIP][108] ([i915#1839])
>    [108]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_multipipe_modeset@basic-max-pipe-crc-check.html
> 
>   * igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c:
>     - shard-apl:          [PASS][109] -> [DMESG-WARN][110] ([i915#180]) +4 similar issues
>    [109]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
>    [110]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl3/igt@kms_pipe_crc_basic@suspend-read-crc-pipe-c.html
> 
>   * igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes:
>     - shard-kbl:          [PASS][111] -> [INCOMPLETE][112] ([i915#3614])
>    [111]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
>    [112]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl4/igt@kms_plane@plane-panning-bottom-right-suspend@pipe-a-planes.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min:
>     - shard-skl:          NOTRUN -> [FAIL][113] ([fdo#108145] / [i915#265]) +1 similar issue
>    [113]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_plane_alpha_blend@pipe-c-constant-alpha-min.html
> 
>   * igt@kms_plane_alpha_blend@pipe-c-coverage-7efc:
>     - shard-skl:          [PASS][114] -> [FAIL][115] ([fdo#108145] / [i915#265])
>    [114]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-skl1/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
>    [115]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl6/igt@kms_plane_alpha_blend@pipe-c-coverage-7efc.html
> 
>   * igt@kms_plane_lowres@pipe-d-tiling-yf:
>     - shard-skl:          NOTRUN -> [SKIP][116] ([fdo#109271]) +89 similar issues
>    [116]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_plane_lowres@pipe-d-tiling-yf.html
> 
>   * igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale:
>     - shard-iclb:         [PASS][117] -> [SKIP][118] ([i915#5235]) +2 similar issues
>    [117]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb8/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
>    [118]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb2/igt@kms_plane_scaling@planes-upscale-20x20-downscale-factor-0-5@pipe-a-edp-1-planes-upscale-downscale.html
> 
>   * igt@kms_psr2_sf@cursor-plane-move-continuous-sf:
>     - shard-skl:          NOTRUN -> [SKIP][119] ([fdo#109271] / [i915#658])
>    [119]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_psr2_sf@cursor-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@overlay-plane-move-continuous-sf:
>     - shard-iclb:         NOTRUN -> [SKIP][120] ([i915#658])
>    [120]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_psr2_sf@overlay-plane-move-continuous-sf.html
> 
>   * igt@kms_psr2_sf@plane-move-sf-dmg-area:
>     - shard-kbl:          NOTRUN -> [SKIP][121] ([fdo#109271] / [i915#658])
>    [121]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@kms_psr2_sf@plane-move-sf-dmg-area.html
> 
>   * igt@kms_psr2_su@frontbuffer-xrgb8888:
>     - shard-iclb:         [PASS][122] -> [SKIP][123] ([fdo#109642] / [fdo#111068] / [i915#658])
>    [122]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb2/igt@kms_psr2_su@frontbuffer-xrgb8888.html
>    [123]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb5/igt@kms_psr2_su@frontbuffer-xrgb8888.html
> 
>   * igt@kms_psr@psr2_dpms:
>     - shard-iclb:         [PASS][124] -> [SKIP][125] ([fdo#109441]) +1 similar issue
>    [124]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb2/igt@kms_psr@psr2_dpms.html
>    [125]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb5/igt@kms_psr@psr2_dpms.html
> 
>   * igt@kms_vrr@flipline:
>     - shard-iclb:         NOTRUN -> [SKIP][126] ([i915#3555])
>    [126]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@kms_vrr@flipline.html
> 
>   * igt@nouveau_crc@pipe-d-source-outp-complete:
>     - shard-iclb:         NOTRUN -> [SKIP][127] ([fdo#109278] / [i915#2530])
>    [127]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@nouveau_crc@pipe-d-source-outp-complete.html
> 
>   * igt@perf@polling-small-buf:
>     - shard-skl:          [PASS][128] -> [FAIL][129] ([i915#1722])
>    [128]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-skl6/igt@perf@polling-small-buf.html
>    [129]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl1/igt@perf@polling-small-buf.html
> 
>   * igt@sysfs_clients@recycle-many:
>     - shard-apl:          NOTRUN -> [SKIP][130] ([fdo#109271] / [i915#2994]) +1 similar issue
>    [130]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl8/igt@sysfs_clients@recycle-many.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@feature_discovery@psr2:
>     - shard-iclb:         [SKIP][131] ([i915#658]) -> [PASS][132]
>    [131]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb3/igt@feature_discovery@psr2.html
>    [132]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb2/igt@feature_discovery@psr2.html
> 
>   * igt@gem_exec_fair@basic-none-solo@rcs0:
>     - shard-kbl:          [FAIL][133] ([i915#2842]) -> [PASS][134] +3 similar issues
>    [133]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl7/igt@gem_exec_fair@basic-none-solo@rcs0.html
>    [134]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl3/igt@gem_exec_fair@basic-none-solo@rcs0.html
> 
>   * igt@gem_exec_flush@basic-wb-set-default:
>     - shard-snb:          [SKIP][135] ([fdo#109271]) -> [PASS][136] +3 similar issues
>    [135]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-snb6/igt@gem_exec_flush@basic-wb-set-default.html
>    [136]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-snb4/igt@gem_exec_flush@basic-wb-set-default.html
> 
>   * igt@gem_exec_whisper@basic-contexts-priority:
>     - shard-glk:          [DMESG-WARN][137] ([i915#118]) -> [PASS][138] +2 similar issues
>    [137]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-glk6/igt@gem_exec_whisper@basic-contexts-priority.html
>    [138]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-glk6/igt@gem_exec_whisper@basic-contexts-priority.html
> 
>   * igt@kms_cursor_crc@pipe-a-cursor-suspend:
>     - shard-kbl:          [DMESG-WARN][139] ([i915#180]) -> [PASS][140]
>    [139]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
>    [140]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@kms_cursor_crc@pipe-a-cursor-suspend.html
> 
>   * igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>     - shard-iclb:         [FAIL][141] ([i915#2346]) -> [PASS][142]
>    [141]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
>    [142]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html
> 
>   * igt@kms_flip@flip-vs-suspend-interruptible@c-edp1:
>     - shard-skl:          [INCOMPLETE][143] ([i915#4939]) -> [PASS][144] +1 similar issue
>    [143]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
>    [144]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl10/igt@kms_flip@flip-vs-suspend-interruptible@c-edp1.html
> 
>   * igt@kms_flip@flip-vs-suspend@a-dp1:
>     - shard-apl:          [DMESG-WARN][145] ([i915#180]) -> [PASS][146] +2 similar issues
>    [145]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl8/igt@kms_flip@flip-vs-suspend@a-dp1.html
>    [146]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl7/igt@kms_flip@flip-vs-suspend@a-dp1.html
> 
>   * igt@kms_flip@plain-flip-fb-recreate@c-edp1:
>     - shard-skl:          [FAIL][147] ([i915#2122]) -> [PASS][148]
>    [147]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-skl9/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
>    [148]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl7/igt@kms_flip@plain-flip-fb-recreate@c-edp1.html
> 
>   * igt@kms_frontbuffer_tracking@psr-suspend:
>     - shard-tglb:         [DMESG-WARN][149] ([i915#2411]) -> [PASS][150]
>    [149]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-tglb3/igt@kms_frontbuffer_tracking@psr-suspend.html
>    [150]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-tglb5/igt@kms_frontbuffer_tracking@psr-suspend.html
> 
>   * igt@kms_psr@psr2_cursor_mmap_cpu:
>     - shard-iclb:         [SKIP][151] ([fdo#109441]) -> [PASS][152] +2 similar issues
>    [151]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb8/igt@kms_psr@psr2_cursor_mmap_cpu.html
>    [152]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_cpu.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_balancer@parallel-contexts:
>     - shard-iclb:         [SKIP][153] ([i915#4525]) -> [DMESG-WARN][154] ([i915#5614])
>    [153]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb3/igt@gem_exec_balancer@parallel-contexts.html
>    [154]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb4/igt@gem_exec_balancer@parallel-contexts.html
> 
>   * igt@gem_exec_balancer@parallel-ordering:
>     - shard-iclb:         [DMESG-FAIL][155] ([i915#5614]) -> [SKIP][156] ([i915#4525])
>    [155]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb2/igt@gem_exec_balancer@parallel-ordering.html
>    [156]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb6/igt@gem_exec_balancer@parallel-ordering.html
> 
>   * igt@kms_plane_cursor@pipe-d-overlay-size-256:
>     - shard-skl:          [SKIP][157] ([fdo#109271]) -> [SKIP][158] ([fdo#109271] / [i915#1888])
>    [157]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-skl9/igt@kms_plane_cursor@pipe-d-overlay-size-256.html
>    [158]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl7/igt@kms_plane_cursor@pipe-d-overlay-size-256.html
> 
>   * igt@kms_plane_multiple@atomic-pipe-d-tiling-y:
>     - shard-skl:          [SKIP][159] ([fdo#109271] / [i915#1888]) -> [SKIP][160] ([fdo#109271])
>    [159]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-skl9/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html
>    [160]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-skl7/igt@kms_plane_multiple@atomic-pipe-d-tiling-y.html
> 
>   * igt@kms_psr2_sf@overlay-plane-update-continuous-sf:
>     - shard-iclb:         [SKIP][161] ([i915#2920]) -> [SKIP][162] ([fdo#111068] / [i915#658])
>    [161]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
>    [162]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb5/igt@kms_psr2_sf@overlay-plane-update-continuous-sf.html
> 
>   * igt@kms_psr2_sf@primary-plane-update-sf-dmg-area:
>     - shard-iclb:         [SKIP][163] ([fdo#111068] / [i915#658]) -> [SKIP][164] ([i915#2920])
>    [163]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-iclb5/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
>    [164]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-iclb2/igt@kms_psr2_sf@primary-plane-update-sf-dmg-area.html
> 
>   * igt@runner@aborted:
>     - shard-apl:          ([FAIL][165], [FAIL][166], [FAIL][167], [FAIL][168], [FAIL][169], [FAIL][170]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][171], [FAIL][172], [FAIL][173], [FAIL][174], [FAIL][175], [FAIL][176], [FAIL][177], [FAIL][178]) ([fdo#109271] / [i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [165]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl2/igt@runner@aborted.html
>    [166]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl6/igt@runner@aborted.html
>    [167]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl8/igt@runner@aborted.html
>    [168]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl7/igt@runner@aborted.html
>    [169]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl7/igt@runner@aborted.html
>    [170]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-apl1/igt@runner@aborted.html
>    [171]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl1/igt@runner@aborted.html
>    [172]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl1/igt@runner@aborted.html
>    [173]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/igt@runner@aborted.html
>    [174]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl3/igt@runner@aborted.html
>    [175]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl4/igt@runner@aborted.html
>    [176]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl3/igt@runner@aborted.html
>    [177]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl2/igt@runner@aborted.html
>    [178]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-apl6/igt@runner@aborted.html
>     - shard-kbl:          ([FAIL][179], [FAIL][180], [FAIL][181], [FAIL][182], [FAIL][183], [FAIL][184], [FAIL][185], [FAIL][186], [FAIL][187], [FAIL][188], [FAIL][189], [FAIL][190]) ([i915#3002] / [i915#4312] / [i915#5257]) -> ([FAIL][191], [FAIL][192], [FAIL][193], [FAIL][194], [FAIL][195], [FAIL][196], [FAIL][197], [FAIL][198], [FAIL][199], [FAIL][200], [FAIL][201], [FAIL][202]) ([i915#180] / [i915#3002] / [i915#4312] / [i915#5257])
>    [179]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl7/igt@runner@aborted.html
>    [180]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl6/igt@runner@aborted.html
>    [181]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl6/igt@runner@aborted.html
>    [182]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl7/igt@runner@aborted.html
>    [183]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl1/igt@runner@aborted.html
>    [184]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl4/igt@runner@aborted.html
>    [185]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl1/igt@runner@aborted.html
>    [186]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl6/igt@runner@aborted.html
>    [187]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl3/igt@runner@aborted.html
>    [188]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl1/igt@runner@aborted.html
>    [189]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl6/igt@runner@aborted.html
>    [190]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11613/shard-kbl1/igt@runner@aborted.html
>    [191]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@runner@aborted.html
>    [192]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@runner@aborted.html
>    [193]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl6/igt@runner@aborted.html
>    [194]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@runner@aborted.html
>    [195]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl3/igt@runner@aborted.html
>    [196]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl6/igt@runner@aborted.html
>    [197]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl1/igt@runner@aborted.html
>    [198]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl7/igt@runner@aborted.html
>    [199]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl4/igt@runner@aborted.html
>    [200]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl7/igt@runner@aborted.html
>    [201]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl4/igt@runner@aborted.html
>    [202]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/shard-kbl4/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#108145]: https://bugs.freedesktop.org/show_bug.cgi?id=108145
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [fdo#109274]: https://bugs.freedesktop.org/show_bug.cgi?id=109274
>   [fdo#109278]: https://bugs.freedesktop.org/show_bug.cgi?id=109278
>   [fdo#109279]: https://bugs.freedesktop.org/show_bug.cgi?id=109279
>   [fdo#109280]: https://bugs.freedesktop.org/show_bug.cgi?id=109280
>   [fdo#109283]: https://bugs.freedesktop.org/show_bug.cgi?id=109283
>   [fdo#109284]: https://bugs.freedesktop.org/show_bug.cgi?id=109284
>   [fdo#109289]: https://bugs.freedesktop.org/show_bug.cgi?id=109289
>   [fdo#109291]: https://bugs.freedesktop.org/show_bug.cgi?id=109291
>   [fdo#109295]: https://bugs.freedesktop.org/show_bug.cgi?id=109295
>   [fdo#109302]: https://bugs.freedesktop.org/show_bug.cgi?id=109302
>   [fdo#109307]: https://bugs.freedesktop.org/show_bug.cgi?id=109307
>   [fdo#109308]: https://bugs.freedesktop.org/show_bug.cgi?id=109308
>   [fdo#109309]: https://bugs.freedesktop.org/show_bug.cgi?id=109309
>   [fdo#109312]: https://bugs.freedesktop.org/show_bug.cgi?id=109312
>   [fdo#109313]: https://bugs.freedesktop.org/show_bug.cgi?id=109313
>   [fdo#109441]: https://bugs.freedesktop.org/show_bug.cgi?id=109441
>   [fdo#109506]: https://bugs.freedesktop.org/show_bug.cgi?id=109506
>   [fdo#109642]: https://bugs.freedesktop.org/show_bug.cgi?id=109642
>   [fdo#110189]: https://bugs.freedesktop.org/show_bug.cgi?id=110189
>   [fdo#110254]: https://bugs.freedesktop.org/show_bug.cgi?id=110254
>   [fdo#110542]: https://bugs.freedesktop.org/show_bug.cgi?id=110542
>   [fdo#110723]: https://bugs.freedesktop.org/show_bug.cgi?id=110723
>   [fdo#110725]: https://bugs.freedesktop.org/show_bug.cgi?id=110725
>   [fdo#111068]: https://bugs.freedesktop.org/show_bug.cgi?id=111068
>   [fdo#111314]: https://bugs.freedesktop.org/show_bug.cgi?id=111314
>   [fdo#111614]: https://bugs.freedesktop.org/show_bug.cgi?id=111614
>   [fdo#111615]: https://bugs.freedesktop.org/show_bug.cgi?id=111615
>   [fdo#111644]: https://bugs.freedesktop.org/show_bug.cgi?id=111644
>   [fdo#111656]: https://bugs.freedesktop.org/show_bug.cgi?id=111656
>   [fdo#111825]: https://bugs.freedesktop.org/show_bug.cgi?id=111825
>   [fdo#111827]: https://bugs.freedesktop.org/show_bug.cgi?id=111827
>   [fdo#112022]: https://bugs.freedesktop.org/show_bug.cgi?id=112022
>   [fdo#112054]: https://bugs.freedesktop.org/show_bug.cgi?id=112054
>   [fdo#112283]: https://bugs.freedesktop.org/show_bug.cgi?id=112283
>   [i915#1063]: https://gitlab.freedesktop.org/drm/intel/issues/1063
>   [i915#1072]: https://gitlab.freedesktop.org/drm/intel/issues/1072
>   [i915#1149]: https://gitlab.freedesktop.org/drm/intel/issues/1149
>   [i915#1155]: https://gitlab.freedesktop.org/drm/intel/issues/1155
>   [i915#118]: https://gitlab.freedesktop.org/drm/intel/issues/118
>   [i915#1257]: https://gitlab.freedesktop.org/drm/intel/issues/1257
>   [i915#132]: https://gitlab.freedesktop.org/drm/intel/issues/132
>   [i915#1397]: https://gitlab.freedesktop.org/drm/intel/issues/1397
>   [i915#1722]: https://gitlab.freedesktop.org/drm/intel/issues/1722
>   [i915#1769]: https://gitlab.freedesktop.org/drm/intel/issues/1769
>   [i915#180]: https://gitlab.freedesktop.org/drm/intel/issues/180
>   [i915#1825]: https://gitlab.freedesktop.org/drm/intel/issues/1825
>   [i915#1836]: https://gitlab.freedesktop.org/drm/intel/issues/1836
>   [i915#1839]: https://gitlab.freedesktop.org/drm/intel/issues/1839
>   [i915#1845]: https://gitlab.freedesktop.org/drm/intel/issues/1845
>   [i915#1849]: https://gitlab.freedesktop.org/drm/intel/issues/1849
>   [i915#1888]: https://gitlab.freedesktop.org/drm/intel/issues/1888
>   [i915#1902]: https://gitlab.freedesktop.org/drm/intel/issues/1902
>   [i915#1937]: https://gitlab.freedesktop.org/drm/intel/issues/1937
>   [i915#2105]: https://gitlab.freedesktop.org/drm/intel/issues/2105
>   [i915#2122]: https://gitlab.freedesktop.org/drm/intel/issues/2122
>   [i915#2190]: https://gitlab.freedesktop.org/drm/intel/issues/2190
>   [i915#2346]: https://gitlab.freedesktop.org/drm/intel/issues/2346
>   [i915#2410]: https://gitlab.freedesktop.org/drm/intel/issues/2410
>   [i915#2411]: https://gitlab.freedesktop.org/drm/intel/issues/2411
>   [i915#2433]: https://gitlab.freedesktop.org/drm/intel/issues/2433
>   [i915#2434]: https://gitlab.freedesktop.org/drm/intel/issues/2434
>   [i915#2435]: https://gitlab.freedesktop.org/drm/intel/issues/2435
>   [i915#2436]: https://gitlab.freedesktop.org/drm/intel/issues/2436
>   [i915#2437]: https://gitlab.freedesktop.org/drm/intel/issues/2437
>   [i915#2527]: https://gitlab.freedesktop.org/drm/intel/issues/2527
>   [i915#2530]: https://gitlab.freedesktop.org/drm/intel/issues/2530
>   [i915#2582]: https://gitlab.freedesktop.org/drm/intel/issues/2582
>   [i915#2587]: https://gitlab.freedesktop.org/drm/intel/issues/2587
>   [i915#265]: https://gitlab.freedesktop.org/drm/intel/issues/265
>   [i915#2658]: https://gitlab.freedesktop.org/drm/intel/issues/2658
>   [i915#2681]: https://gitlab.freedesktop.org/drm/intel/issues/2681
>   [i915#2684]: https://gitlab.freedesktop.org/drm/intel/issues/2684
>   [i915#2705]: https://gitlab.freedesktop.org/drm/intel/issues/2705
>   [i915#280]: https://gitlab.freedesktop.org/drm/intel/issues/280
>   [i915#284]: https://gitlab.freedesktop.org/drm/intel/issues/284
>   [i915#2842]: https://gitlab.freedesktop.org/drm/intel/issues/2842
>   [i915#2846]: https://gitlab.freedesktop.org/drm/intel/issues/2846
>   [i915#2849]: https://gitlab.freedesktop.org/drm/intel/issues/2849
>   [i915#2856]: https://gitlab.freedesktop.org/drm/intel/issues/2856
>   [i915#2920]: https://gitlab.freedesktop.org/drm/intel/issues/2920
>   [i915#2994]: https://gitlab.freedesktop.org/drm/intel/issues/2994
>   [i915#3002]: https://gitlab.freedesktop.org/drm/intel/issues/3002
>   [i915#3012]: https://gitlab.freedesktop.org/drm/intel/issues/3012
>   [i915#3070]: https://gitlab.freedesktop.org/drm/intel/issues/3070
>   [i915#3116]: https://gitlab.freedesktop.org/drm/intel/issues/3116
>   [i915#3282]: https://gitlab.freedesktop.org/drm/intel/issues/3282
>   [i915#3291]: https://gitlab.freedesktop.org/drm/intel/issues/3291
>   [i915#3297]: https://gitlab.freedesktop.org/drm/intel/issues/3297
>   [i915#3299]: https://gitlab.freedesktop.org/drm/intel/issues/3299
>   [i915#3301]: https://gitlab.freedesktop.org/drm/intel/issues/3301
>   [i915#3318]: https://gitlab.freedesktop.org/drm/intel/issues/3318
>   [i915#3319]: https://gitlab.freedesktop.org/drm/intel/issues/3319
>   [i915#3323]: https://gitlab.freedesktop.org/drm/intel/issues/3323
>   [i915#3359]: https://gitlab.freedesktop.org/drm/intel/issues/3359
>   [i915#3464]: https://gitlab.freedesktop.org/drm/intel/issues/3464
>   [i915#3469]: https://gitlab.freedesktop.org/drm/intel/issues/3469
>   [i915#3555]: https://gitlab.freedesktop.org/drm/intel/issues/3555
>   [i915#3558]: https://gitlab.freedesktop.org/drm/intel/issues/3558
>   [i915#3614]: https://gitlab.freedesktop.org/drm/intel/issues/3614
>   [i915#3637]: https://gitlab.freedesktop.org/drm/intel/issues/3637
>   [i915#3638]: https://gitlab.freedesktop.org/drm/intel/issues/3638
>   [i915#3689]: https://gitlab.freedesktop.org/drm/intel/issues/3689
>   [i915#3701]: https://gitlab.freedesktop.org/drm/intel/issues/3701
>   [i915#3708]: https://gitlab.freedesktop.org/drm/intel/issues/3708
>   [i915#3734]: https://gitlab.freedesktop.org/drm/intel/issues/3734
>   [i915#3736]: https://gitlab.freedesktop.org/drm/intel/issues/3736
>   [i915#3742]: https://gitlab.freedesktop.org/drm/intel/issues/3742
>   [i915#3763]: https://gitlab.freedesktop.org/drm/intel/issues/3763
>   [i915#3826]: https://gitlab.freedesktop.org/drm/intel/issues/3826
>   [i915#3828]: https://gitlab.freedesktop.org/drm/intel/issues/3828
>   [i915#3840]: https://gitlab.freedesktop.org/drm/intel/issues/3840
>   [i915#3886]: https://gitlab.freedesktop.org/drm/intel/issues/3886
>   [i915#3955]: https://gitlab.freedesktop.org/drm/intel/issues/3955
>   [i915#3966]: https://gitlab.freedesktop.org/drm/intel/issues/3966
>   [i915#3987]: https://gitlab.freedesktop.org/drm/intel/issues/3987
>   [i915#4016]: https://gitlab.freedesktop.org/drm/intel/issues/4016
>   [i915#4070]: https://gitlab.freedesktop.org/drm/intel/issues/4070
>   [i915#4098]: https://gitlab.freedesktop.org/drm/intel/issues/4098
>   [i915#4103]: https://gitlab.freedesktop.org/drm/intel/issues/4103
>   [i915#4171]: https://gitlab.freedesktop.org/drm/intel/issues/4171
>   [i915#4270]: https://gitlab.freedesktop.org/drm/intel/issues/4270
>   [i915#4278]: https://gitlab.freedesktop.org/drm/intel/issues/4278
>   [i915#4281]: https://gitlab.freedesktop.org/drm/intel/issues/4281
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#433]: https://gitlab.freedesktop.org/drm/intel/issues/433
>   [i915#4369]: https://gitlab.freedesktop.org/drm/intel/issues/4369
>   [i915#4386]: https://gitlab.freedesktop.org/drm/intel/issues/4386
>   [i915#4387]: https://gitlab.freedesktop.org/drm/intel/issues/4387
>   [i915#4525]: https://gitlab.freedesktop.org/drm/intel/issues/4525
>   [i915#454]: https://gitlab.freedesktop.org/drm/intel/issues/454
>   [i915#4613]: https://gitlab.freedesktop.org/drm/intel/issues/4613
>   [i915#4767]: https://gitlab.freedesktop.org/drm/intel/issues/4767
>   [i915#4893]: https://gitlab.freedesktop.org/drm/intel/issues/4893
>   [i915#4939]: https://gitlab.freedesktop.org/drm/intel/issues/4939
>   [i915#4991]: https://gitlab.freedesktop.org/drm/intel/issues/4991
>   [i915#5076]: https://gitlab.freedesktop.org/drm/intel/issues/5076
>   [i915#5098]: https://gitlab.freedesktop.org/drm/intel/issues/5098
>   [i915#5115]: https://gitlab.freedesktop.org/drm/intel/issues/5115
>   [i915#5176]: https://gitlab.freedesktop.org/drm/intel/issues/5176
>   [i915#5235]: https://gitlab.freedesktop.org/drm/intel/issues/5235
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5286]: https://gitlab.freedesktop.org/drm/intel/issues/5286
>   [i915#5287]: https://gitlab.freedesktop.org/drm/intel/issues/5287
>   [i915#5288]: https://gitlab.freedesktop.org/drm/intel/issues/5288
>   [i915#5289]: https://gitlab.freedesktop.org/drm/intel/issues/5289
>   [i915#5325]: https://gitlab.freedesktop.org/drm/intel/issues/5325
>   [i915#533]: https://gitlab.freedesktop.org/drm/intel/issues/533
>   [i915#5461]: https://gitlab.freedesktop.org/drm/intel/issues/5461
>   [i915#5566]: https://gitlab.freedesktop.org/drm/intel/issues/5566
>   [i915#5614]: https://gitlab.freedesktop.org/drm/intel/issues/5614
>   [i915#5691]: https://gitlab.freedesktop.org/drm/intel/issues/5691
>   [i915#5723]: https://gitlab.freedesktop.org/drm/intel/issues/5723
>   [i915#658]: https://gitlab.freedesktop.org/drm/intel/issues/658
>   [i915#716]: https://gitlab.freedesktop.org/drm/intel/issues/716
>   [i915#768]: https://gitlab.freedesktop.org/drm/intel/issues/768
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11613 -> Patchwork_103443v3
> 
>   CI-20190529: 20190529
>   CI_DRM_11613: ad303c70b93ba69fa8eb8cd90411b64830857f7b @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6467: 929abc51cdd48d673efa03e025b1f31b557972ed @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_103443v3: ad303c70b93ba69fa8eb8cd90411b64830857f7b @ git://anongit.freedesktop.org/gfx-ci/linux
>   piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ git://anongit.freedesktop.org/piglit
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_103443v3/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
