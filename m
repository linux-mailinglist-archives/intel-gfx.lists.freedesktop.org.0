Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C67C15E75E5
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Sep 2022 10:38:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 940C110E74A;
	Fri, 23 Sep 2022 08:38:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6987A10E74A
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Sep 2022 08:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663922292; x=1695458292;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pPgFRyZdzBenjO9H1nlREUHIVG1EWj3ScAllB2+scxg=;
 b=Lg3f+etdcfzWOZ4MvmIfBkseFs/huwMvpa9fOOv3QK91Y07sUwJBQnYh
 +zx5DECZ8ZQYbH3KKubGyjBqrCf8coBVjWpUfYM005nonAoXNLwIxyuTh
 FU6+nqc/7ZLgk33t/JhiGsEk4UWhosl+Lk5CaZ3lPPjLdOcg4A8MfW8dY
 tlwLecIK0MQs8xFbXPvxTxZowM1qEuQoHxi32xChJw10bDyA0Ct4pM5ag
 +ZxzlBpm3PRr25vkhY/xL7HUAOMJXegOcidGQNyTC0W2Sp7BUGgWPMH4i
 Zdyrfxw2oh3GPdh1zfxzWaojeSVmVAukuZ4OpeyghVAK/YCGY1sjos211 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10478"; a="301991061"
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="301991061"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 01:38:11 -0700
X-IronPort-AV: E=Sophos;i="5.93,337,1654585200"; d="scan'208";a="571307280"
Received: from jkrzyszt-mobl1.ger.corp.intel.com ([10.213.16.163])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2022 01:38:10 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Sep 2022 10:38:08 +0200
Message-ID: <44973242.fMDQidcC6G@jkrzyszt-mobl1.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <166387433103.19671.11107197511886460116@emeril.freedesktop.org>
References: <20220922101036.87457-1-janusz.krzysztofik@linux.intel.com>
 <166387433103.19671.11107197511886460116@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgaW9t?=
 =?utf-8?q?mu=3A_Remove_iova_cpu_hotplugging_flushing?=
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thursday, 22 September 2022 21:18:51 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: iommu: Remove iova cpu hotplugging flushing
> URL   : https://patchwork.freedesktop.org/series/108880/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_12166_full -> Patchwork_108880v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_108880v1_full absolutely 
need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_108880v1_full, please notify your bug team to 
allow them
>   to document this new failure mode, which will reduce false positives in 
CI.
> 
>   
> 
> Participating hosts (11 -> 12)
> ------------------------------
> 
>   Additional (1): shard-dg1 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in 
Patchwork_108880v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_pm_dc@dc6-psr:
>     - shard-skl:          NOTRUN -> [CRASH][1]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v1/shard-skl9/igt@i915_pm_dc@dc6-psr.html
> 
>   * igt@i915_selftest@live@gt_pm:
>     - shard-skl:          NOTRUN -> [DMESG-FAIL][2]
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v1/shard-skl4/igt@i915_selftest@live@gt_pm.html
> 
>   * igt@kms_color@ctm-0-75@pipe-b-edp-1:
>     - shard-skl:          NOTRUN -> [FAIL][3] +5 similar issues
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v1/shard-skl9/igt@kms_color@ctm-0-75@pipe-b-edp-1.html
> 
>   * igt@kms_cursor_legacy@cursor-vs-flip@varying-size:
>     - shard-skl:          NOTRUN -> [INCOMPLETE][4] +2 similar issues
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v1/shard-skl3/igt@kms_cursor_legacy@cursor-vs-flip@varying-size.html
> 
>   * igt@perf@non-zero-reason:
>     - shard-skl:          NOTRUN -> [TIMEOUT][5]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_108880v1/shard-skl9/igt@perf@non-zero-reason.html

All those "regressions" look to me like not related, possibly old, potentially 
hidden before due to CI blocked on some platforms by the issue that the patch 
has just resolved.  I've asked Bug Filing to update CI buglog filters and re-
report.

Thanks,
Janusz



