Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7546BE465
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 09:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF1CF10EE98;
	Fri, 17 Mar 2023 08:54:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85FB910EE98
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 08:54:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679043289; x=1710579289;
 h=date:from:to:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=QYSNkfKXTSBJxBWl5D5gjPEopVZJQ2JICanlGSA35lM=;
 b=e9XUEiiOClCamSQIbUMjVq7g/tqjzd996LKjhH+r/r8llSZGzycQjTYP
 xpDGbgkZp0OTMUxZT4PaM9XUDh8krmPsZXK7qcl5MtlyugLInVPYEcCkU
 1tkngqm5ffskeOqgbPqSQvcmU0tYTdJPPcYBGu1uIOhMnMfWDTlVXj/u9
 +dLnfDSqZ+t8ngiugcTseDqlhU/rc5OSAKIp5Cnk8OnHPDtwNW5HN7jmB
 GS9C9eX7E35rcND/hUL2RsLLqNmMzbd2w+FbXQy1p0lU6IY9vlrlpIuGV
 J22vuioo5HDQdXqW2L7lHLKujfFqjs4OsOKEQTjiBBQwqZCrXsFhkLIhC Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="340578272"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="340578272"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 01:54:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="710423974"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="710423974"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 01:54:47 -0700
Date: Fri, 17 Mar 2023 10:54:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZBQq1GwIKjyYEogn@ideak-desk.fi.intel.com>
References: <20230316131724.359612-1-imre.deak@intel.com>
 <167900565399.19095.11023049529428638972@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <167900565399.19095.11023049529428638972@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/tc=3A_Fix_a_few_TypeC_/_MST_issues?=
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

On Thu, Mar 16, 2023 at 10:27:33PM +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/tc: Fix a few TypeC / MST issues
> URL   : https://patchwork.freedesktop.org/series/115270/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12872 -> Patchwork_115270v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_115270v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_115270v1, please notify your bug team to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/index.html
> 
> Participating hosts (35 -> 34)
> ------------------------------
> 
>   Additional (1): fi-pnv-d510 
>   Missing    (2): fi-kbl-soraka fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_115270v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@load:
>     - bat-adlm-1:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adlm-1/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-adlm-1/igt@i915_module_load@load.html

The above is due to an incorrect IFWI/VBT flashed on bat-adlm-1 and the
wrong native/DP-alt port configuration in BIOS setup. Because of this
DP-1 on this machine didn't actually work so far. I filed a ticket to CI
team to fix the config.

> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_115270v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@i915_selftest@live@execlists:
>     - fi-bsw-n3050:       [PASS][3] -> [ABORT][4] ([i915#7911])
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/fi-bsw-n3050/igt@i915_selftest@live@execlists.html
> 
>   * igt@i915_selftest@live@slpc:
>     - bat-rpls-1:         [PASS][5] -> [DMESG-FAIL][6] ([i915#6367] / [i915#7996])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-rpls-1/igt@i915_selftest@live@slpc.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-rpls-1/igt@i915_selftest@live@slpc.html
> 
>   * igt@kms_chamelium_hpd@common-hpd-after-suspend:
>     - bat-dg1-5:          NOTRUN -> [SKIP][7] ([i915#7828])
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-dg1-5/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
>     - bat-adln-1:         NOTRUN -> [SKIP][8] ([i915#7828])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-adln-1/igt@kms_chamelium_hpd@common-hpd-after-suspend.html
> 
>   * igt@kms_psr@primary_page_flip:
>     - fi-pnv-d510:        NOTRUN -> [SKIP][9] ([fdo#109271]) +38 similar issues
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/fi-pnv-d510/igt@kms_psr@primary_page_flip.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@dmabuf@all-tests@dma_fence:
>     - bat-adln-1:         [FAIL][10] ([i915#8064]) -> [PASS][11]
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-adln-1/igt@dmabuf@all-tests@dma_fence.html
> 
>   * igt@dmabuf@all-tests@sanitycheck:
>     - bat-adln-1:         [ABORT][12] ([i915#8144]) -> [PASS][13]
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-adln-1/igt@dmabuf@all-tests@sanitycheck.html
> 
>   * igt@i915_selftest@live@hangcheck:
>     - bat-dg1-5:          [ABORT][14] ([i915#4983]) -> [PASS][15]
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-dg1-5/igt@i915_selftest@live@hangcheck.html
> 
>   * igt@i915_selftest@live@migrate:
>     - bat-dg2-11:         [DMESG-WARN][16] ([i915#7699]) -> [PASS][17]
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12872/bat-dg2-11/igt@i915_selftest@live@migrate.html
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/bat-dg2-11/igt@i915_selftest@live@migrate.html
> 
>   
>   [fdo#109271]: https://bugs.freedesktop.org/show_bug.cgi?id=109271
>   [i915#4983]: https://gitlab.freedesktop.org/drm/intel/issues/4983
>   [i915#6367]: https://gitlab.freedesktop.org/drm/intel/issues/6367
>   [i915#7699]: https://gitlab.freedesktop.org/drm/intel/issues/7699
>   [i915#7828]: https://gitlab.freedesktop.org/drm/intel/issues/7828
>   [i915#7911]: https://gitlab.freedesktop.org/drm/intel/issues/7911
>   [i915#7996]: https://gitlab.freedesktop.org/drm/intel/issues/7996
>   [i915#8064]: https://gitlab.freedesktop.org/drm/intel/issues/8064
>   [i915#8144]: https://gitlab.freedesktop.org/drm/intel/issues/8144
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_12872 -> Patchwork_115270v1
> 
>   CI-20190529: 20190529
>   CI_DRM_12872: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7202: b4ec7dac375eed2dda89c64d4de94c4c9205b601 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_115270v1: f65e171596ef70c076fe02be596de29e83cfc8a3 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> 
> ### Linux commits
> 
> 4f4cd3bb5490 drm/i915/tc: Check the PLL type used by an enabled TC port
> 6788acd2d29d drm/i915/tc: Factor out a function querying active links on a TC port
> 2df86ebac0ac drm/i915: Add encoder hook to get the PLL type used by TC ports
> 19c9fc79f1c7 drm/i915/tc: Assume a TC port is legacy if VBT says the port has HDMI
> f62facaf83a9 drm/i915/tc: Make the TC mode readout consistent in all PHY states
> 46d8d4b76ac0 drm/i915/tc: Fix initial TC mode on disabled legacy ports
> f49b12379b17 drm/i915/tc: Fix TC mode for a legacy port if the PHY is not ready
> e486592720ef drm/i915/tc: Fix target TC mode for a disconnected legacy port
> d9d040d8b0f4 drm/i915/tc: Factor out helpers converting HPD mask to TC mode
> 0d755942a984 drm/i915/tc: Wait for IOM/FW PHY initialization of legacy TC ports
> 640515916908 drm/i915/tc: Fix system resume MST mode restore for DP-alt sinks
> ac20f47ad7bc drm/i915/tc: Fix the ICL PHY ownership check in TC-cold state
> befe49b817ea drm/i915/tc: Fix TC port link ref init for DP MST during HW readout
> 161029d2a8c2 drm/i915/tc: Abort DP AUX transfer on a disconnected TC port
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_115270v1/index.html
