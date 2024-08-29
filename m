Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA3C96437A
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Aug 2024 13:50:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1189810E64E;
	Thu, 29 Aug 2024 11:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BdTLeocw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 540B810E650
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Aug 2024 11:50:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724932207; x=1756468207;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=p0PXQIVle0LYFGwiKrDAZrLHKyuqK/7RVzquiVZkOxI=;
 b=BdTLeocwpWa+nWVewNcs5PVkzhBnwl60RqvlH83gIvqFuORAUbnJYRQ5
 qbmkscff+KEWmMfzZm0i8ylkmnFKr6QKeQ/SItDXQ5d+YDPes9ZLAIr8l
 ji9tupNbKrFYqifB0rJLjlBtbb7d27oYHcAyMzSAOEPmFGa9mJpJ0Hie8
 vUs2xu7/X55UFp1noeyqeRf63OmT+idhPsfFqqJCj9FBUgBopas30livL
 n3NNN2poBgWOV+C4wwRvKIYWExKvGYoQfTCJfRbhm4EKrPDx84vzkJ75X
 j2u4zQZtXboS+li+1rN11Hgc41QBfq/vPrNiDrz2Epq0AT+Q+l7d9wRgk w==;
X-CSE-ConnectionGUID: aFT3Sv4pRzG+lkn1swWDVg==
X-CSE-MsgGUID: oK2Mw7S9RCWOOhJa9A5c7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11178"; a="34892642"
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="34892642"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:50:06 -0700
X-CSE-ConnectionGUID: yDLhWvkVRiSJI+7QYfC2AQ==
X-CSE-MsgGUID: yzJmYBxPS76vD+gbZbg9qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,185,1719903600"; d="scan'208";a="63887806"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.14])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2024 04:49:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, LGCI Bug Filing
 <lgci.bug.filing@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?Q?=E2=9C=93?= Fi.CI.BAT: success for drm/i915:
 nomodeset and i915.modeset cleanups (rev2)
In-Reply-To: <172485475830.827467.7681242890043675648@2413ebb6fbb6>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1724843853.git.jani.nikula@intel.com>
 <172485475830.827467.7681242890043675648@2413ebb6fbb6>
Date: Thu, 29 Aug 2024 14:49:54 +0300
Message-ID: <87r0a7wntp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 28 Aug 2024, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915: nomodeset and i915.modeset cleanups (rev2)
> URL   : https://patchwork.freedesktop.org/series/137909/
> State : success
>
> == Summary ==
>
> CI Bug Log - changes from CI_DRM_15308 -> Patchwork_137909v2
> ====================================================
>
> Summary
> -------
>
>   **SUCCESS**
>
>   No regressions found.
>
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/index.html

BAT passed, but no shard results, and it's not in the queue either?

BR,
Jani.


>
> Participating hosts (39 -> 36)
> ------------------------------
>
>   Missing    (3): bat-dg2-11 fi-snb-2520m fi-kbl-8809g 
>
> Known issues
> ------------
>
>   Here are the changes found in Patchwork_137909v2 that come from known issues:
>
> ### IGT changes ###
>
> #### Warnings ####
>
>   * igt@fbdev@read:
>     - bat-arls-1:         [DMESG-WARN][1] ([i915#9157]) -> [DMESG-FAIL][2] ([i915#9157])
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15308/bat-arls-1/igt@fbdev@read.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/bat-arls-1/igt@fbdev@read.html
>
>   
>   [i915#9157]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9157
>
>
> Build changes
> -------------
>
>   * Linux: CI_DRM_15308 -> Patchwork_137909v2
>
>   CI-20190529: 20190529
>   CI_DRM_15308: 3d18c558b87ad1c2d6d59ea1c56603a01e84ab88 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_7993: 3b6b2d238e864ff1af9e33159d3bbf4b7f01d86d @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_137909v2: 3d18c558b87ad1c2d6d59ea1c56603a01e84ab88 @ git://anongit.freedesktop.org/gfx-ci/linux
>
> == Logs ==
>
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_137909v2/index.html

-- 
Jani Nikula, Intel
