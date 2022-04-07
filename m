Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AB34F8A6E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Apr 2022 01:15:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E813910E7F7;
	Thu,  7 Apr 2022 23:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47CB10E044
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 23:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649373306; x=1680909306;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=DZc0ANyRn4uJSfV09HMsSv5OREKbcNe3Q7DkUZVpAJM=;
 b=KuRZjbW+oEr+d+MWuEcZI+MzYt24kivqQrl2XOHHo71ussittBvuT5yx
 ZIHP4lzUCERs32DnOxzhMshgyztZgX6V9/iDNgJuBeST65//zG+L9y41x
 EQPxdEZ5ymvAR6OY7LtaicQ6saZ/24VnwYcmIOo9VQzb6XS5Z5KGPktiw
 wMwxFLJQU8DoAw1ZYC1olcimRVjfjhnFtChcC2OrYH5Oyu2TpntBMKFqr
 Vk15cRO/JiqmI90HcceVqTDrlRpPFgTsjygoRGnjIJJkuSc6qd7l712WK
 RvIPRQ7bcT1P/Ole0PvEZvG67BfT34EEvypxmrj8B9UHzgW3LpADGUQbD A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10310"; a="322151413"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="322151413"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 16:15:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="621424301"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 16:15:05 -0700
Date: Thu, 7 Apr 2022 16:15:04 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <Yk9weCegqg55I7sx@mdroper-desk1.amr.corp.intel.com>
References: <20220407161839.1073443-1-matthew.d.roper@intel.com>
 <164937021485.14673.14207952868519687238@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <164937021485.14673.14207952868519687238@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_Sunset_igpu_legacy_mmap_support_based_on_GRAPHICS=5FVE?=
 =?utf-8?q?R=5FFULL?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 07, 2022 at 10:23:34PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL
> URL   : https://patchwork.freedesktop.org/series/102352/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_11472 -> Patchwork_22819
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_22819 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_22819, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/index.html
> 
> Participating hosts (49 -> 35)
> ------------------------------
> 
>   Additional (1): fi-bwr-2160 
>   Missing    (15): fi-bdw-samus shard-tglu bat-adls-5 bat-dg1-6 bat-dg1-5 bat-dg2-8 shard-rkl bat-dg2-9 fi-bsw-cyan bat-adlp-6 bat-rpls-1 fi-blb-e6850 shard-dg1 bat-jsl-2 bat-jsl-1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_22819:
> 
> ### CI changes ###
> 
> #### Possible regressions ####
> 
>   * boot:
>     - fi-bwr-2160:        NOTRUN -> [FAIL][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-bwr-2160/boot.html
> 

It looks like something failed during the initial driver probe (not sure
what; there don't seem to be any obvious warnings/errors) and then
driver cleanup started triggering more warnings and an eventual panic
since not everything being cleaned up had been fully setup at that
point.

Not related to this patch (which shouldn't have any functional impact on
any currently-existing platform).


Matt

>   
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_lmem_swapping@basic:
>     - fi-cfl-8109u:       NOTRUN -> [FAIL][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@gem_lmem_swapping@basic.html
> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - fi-kbl-x1275:       [FAIL][3] ([i915#4312]) -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-x1275/igt@runner@aborted.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-x1275/igt@runner@aborted.html
>     - fi-kbl-guc:         [FAIL][5] ([i915#4312] / [i915#5257]) -> [FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-guc/igt@runner@aborted.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-guc/igt@runner@aborted.html
>     - fi-kbl-7567u:       [FAIL][7] ([i915#4312]) -> [FAIL][8]
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-7567u/igt@runner@aborted.html
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-7567u/igt@runner@aborted.html
> 
>   
> #### Suppressed ####
> 
>   The following results come from untrusted machines, tests, or statuses.
>   They do not affect the overall result.
> 
>   * igt@runner@aborted:
>     - {fi-jsl-1}:         [FAIL][9] ([i915#4312]) -> [FAIL][10]
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-jsl-1/igt@runner@aborted.html
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-jsl-1/igt@runner@aborted.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_22819 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@core_auth@basic-auth:
>     - fi-kbl-8809g:       NOTRUN -> [SKIP][11] ([fdo#109271]) +1 similar issue
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@core_auth@basic-auth.html
> 
>   * igt@fbdev@eof:
>     - fi-kbl-8809g:       NOTRUN -> [INCOMPLETE][12] ([i915#5557])
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@fbdev@eof.html
> 
>   * igt@gem_close_race@basic-process:
>     - fi-ivb-3770:        NOTRUN -> [SKIP][13] ([fdo#109271]) +146 similar issues
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@gem_close_race@basic-process.html
> 
>   * igt@kms_flip@basic-flip-vs-dpms:
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][14] ([fdo#109271]) +146 similar issues
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@kms_flip@basic-flip-vs-dpms.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b:
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][15] ([fdo#109271]) +145 similar issues
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-b.html
> 
>   * igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c:
>     - fi-cfl-8109u:       NOTRUN -> [SKIP][16] ([fdo#109271] / [i915#5341])
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-kbl-soraka:      NOTRUN -> [SKIP][17] ([fdo#109271] / [i915#5341])
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
>     - fi-ivb-3770:        NOTRUN -> [SKIP][18] ([fdo#109271] / [i915#5341])
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@kms_pipe_crc_basic@compare-crc-sanitycheck-pipe-c.html
> 
>   
> #### Warnings ####
> 
>   * igt@runner@aborted:
>     - fi-cfl-8700k:       [FAIL][19] ([i915#4312] / [i915#5257]) -> [FAIL][20] ([i915#4312])
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8700k/igt@runner@aborted.html
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8700k/igt@runner@aborted.html
>     - fi-cfl-8109u:       [FAIL][21] -> [FAIL][22] ([i915#4312])
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-cfl-8109u/igt@runner@aborted.html
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-cfl-8109u/igt@runner@aborted.html
>     - fi-kbl-8809g:       [FAIL][23] -> [FAIL][24] ([i915#2722])
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-8809g/igt@runner@aborted.html
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-8809g/igt@runner@aborted.html
>     - fi-kbl-soraka:      [FAIL][25] -> [FAIL][26] ([i915#4312])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-kbl-soraka/igt@runner@aborted.html
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-kbl-soraka/igt@runner@aborted.html
>     - fi-hsw-4770:        [FAIL][27] ([i915#4312]) -> [FAIL][28] ([i915#5594])
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-hsw-4770/igt@runner@aborted.html
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-hsw-4770/igt@runner@aborted.html
>     - fi-ivb-3770:        [FAIL][29] -> [FAIL][30] ([i915#4312])
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-ivb-3770/igt@runner@aborted.html
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-ivb-3770/igt@runner@aborted.html
>     - fi-tgl-1115g4:      [FAIL][31] ([i915#4312] / [i915#5257]) -> [FAIL][32] ([i915#3690])
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-tgl-1115g4/igt@runner@aborted.html
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-tgl-1115g4/igt@runner@aborted.html
>     - fi-bsw-n3050:       [FAIL][33] ([i915#4312]) -> [FAIL][34] ([i915#3690] / [i915#4312])
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11472/fi-bsw-n3050/igt@runner@aborted.html
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/fi-bsw-n3050/igt@runner@aborted.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#2722]: https://gitlab.freedesktop.org/drm/intel/issues/2722
>   [i915#3690]: https://gitlab.freedesktop.org/drm/intel/issues/3690
>   [i915#4312]: https://gitlab.freedesktop.org/drm/intel/issues/4312
>   [i915#5257]: https://gitlab.freedesktop.org/drm/intel/issues/5257
>   [i915#5341]: https://gitlab.freedesktop.org/drm/intel/issues/5341
>   [i915#5557]: https://gitlab.freedesktop.org/drm/intel/issues/5557
>   [i915#5594]: https://gitlab.freedesktop.org/drm/intel/issues/5594
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_11472 -> Patchwork_22819
> 
>   CI-20190529: 20190529
>   CI_DRM_11472: 85882df13168c5f46b41401b96975de857e3ccac @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_6415: c3b690bd5f7fb1fb7ed786ab0f3b815930a6a55f @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_22819: 6508c18df33f9cf03c32b4b6928203a29ab0f3bd @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> == Linux commits ==
> 
> 6508c18df33f drm/i915: Sunset igpu legacy mmap support based on GRAPHICS_VER_FULL
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22819/index.html

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
