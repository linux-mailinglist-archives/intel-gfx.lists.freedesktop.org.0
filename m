Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8D6C05092
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 10:26:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1AEF10E18B;
	Fri, 24 Oct 2025 08:26:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rx6CyoFx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD50F10E0DB;
 Fri, 24 Oct 2025 08:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761294384; x=1792830384;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nDxsXYvOLaVYadygPORyUldWw7uirMClbyOXL1yZ3yw=;
 b=Rx6CyoFxVmXlrP9IidKwHJejL7IuNXpFIC+7yfOFpOQPHt0d8ts/9vBi
 gqTRbfS1jiwi61rubaDuDGBAnn81mF0B9iYs7WpKiNZ39jtF/3e3Hw6l0
 8PZeAvBxkDWNCmt7YSBAZCrWTYmYB+zUylVR583lV3NxWhEpCak+5kJ7P
 N0YUhBjFu0MnAEsfpD4rHYshza8BrYmZep2Sx7NW6F7mYZPsEFqeq+WvA
 8LBCoVCmYEopLyrllRxPSsH/MC3ir1nuc3uGb004Qp9r5Nf21/GEhJ3eN
 x3cmaDx7fzNACIQHIIXdl3+dyOBVNVjvHlkQ3qdKdDstyn2oCnC9Infc/ A==;
X-CSE-ConnectionGUID: n6GuWsHMSNO1z6F2VOKJzA==
X-CSE-MsgGUID: W7nYsZzHRhyLb/jiC013+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="74819359"
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="74819359"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 01:26:23 -0700
X-CSE-ConnectionGUID: vnWfFM2ARSqy9Hg1WnnnQw==
X-CSE-MsgGUID: zipVqwhxSCqpY4r+OKQXog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,251,1754982000"; d="scan'208";a="183551085"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.231])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 01:26:23 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.Full: failure for drm/i915: Avoid lock
 inversion when pinning to GGTT (rev3)
Date: Fri, 24 Oct 2025 10:26:20 +0200
Message-ID: <2251275.Icojqenx9y@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <176128046833.49991.14877943513710466398@97596180aaec>
References: <20251023082925.351307-5-janusz.krzysztofik@linux.intel.com>
 <176128046833.49991.14877943513710466398@97596180aaec>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

Hi I915-ci-infra@lists.freedesktop.org,

On Friday, 24 October 2025 06:34:28 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Avoid lock inversion when pinning to GGTT (rev3)
> URL   : https://patchwork.freedesktop.org/series/155622/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17414_full -> Patchwork_155622v3_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_155622v3_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155622v3_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (11 -> 11)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_155622v3_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_setmode@basic:
>     - shard-rkl:          [PASS][1] -> [FAIL][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17414/shard-rkl-5/igt@kms_setmode@basic.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155622v3/shard-rkl-2/igt@kms_setmode@basic.html
> 
>   * igt@kms_setmode@basic@pipe-a-hdmi-a-1:
>     - shard-rkl:          NOTRUN -> [FAIL][3] +1 other test fail
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155622v3/shard-rkl-2/igt@kms_setmode@basic@pipe-a-hdmi-a-1.html

Changes tested in this pre-merge run can only affect CHV and BXT platforms, 
then the above potential regressions are not related.  Please update filters 
and re-report.

Thanks,
Janusz

> 
>   
> Known issues
> ------------
...



