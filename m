Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F871A546E4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 10:52:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AAA110E92C;
	Thu,  6 Mar 2025 09:52:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QXGdT3kk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E49A10E928;
 Thu,  6 Mar 2025 09:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741254742; x=1772790742;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cC92LJ75LnaphkBWk6YYvSqCROazGygqz1YdP4N9J4k=;
 b=QXGdT3kkTqAVEHDIekyX51eGuUVIF4mybroTjfkPMn8h4lbNS5SQVKmw
 g7ylZ643FDvqh5aqG8C438S65XuQblME6tFy4IAPM6OrKj9cHBtE7I6Qx
 2VnAkjvWxK0d+LFRd/3NC6Yw3Lu5KWTLSdZfsBzBCInvuFF7j+jjP8GlD
 UgiZCcC+KYcQcuk9TH8fISVAeSeGQb6f5d1xv2p1no7Nxun/GnSXq/C2q
 MSvzcH0GWYQ0HRApFuN0gjgUvA8ipjYy6JjUhMHG9WsACVo0bp7CvNWl6
 RhDr0FL3SBT5P0UA9qZjdnLNX3+PapDKDfi8TXrYdGimRvBxdjZ7mdH3i w==;
X-CSE-ConnectionGUID: u5HWm55cRqqWExLbYKKXaw==
X-CSE-MsgGUID: 4DMA0nEGQCKbg9HSmbuTDA==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="67626312"
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="67626312"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 01:52:22 -0800
X-CSE-ConnectionGUID: lm3fLdAOSzWnO0kG4F+l1Q==
X-CSE-MsgGUID: FRZAdXQ6SJKFJeb6qnkaVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,225,1736841600"; d="scan'208";a="119474551"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.151])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 01:52:21 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.Full: failure for drm/i915: Fix harmfull
 driver register/unregister assymetry (rev4)
Date: Thu, 06 Mar 2025 10:52:18 +0100
Message-ID: <7805494.EvYhyI6sBW@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <174122693713.65060.18275617722120852070@64e06c682a23>
References: <20250305191152.164615-6-janusz.krzysztofik@linux.intel.com>
 <174122693713.65060.18275617722120852070@64e06c682a23>
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

On Thursday, 6 March 2025 03:08:57 CET Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Fix harmfull driver register/unregister assymetry (rev4)
> URL   : https://patchwork.freedesktop.org/series/144436/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16231_full -> Patchwork_144436v4_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_144436v4_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_144436v4_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 10)
> ------------------------------
> 
>   No changes in participating hosts
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_144436v4_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@reload-with-fault-injection:
>     - shard-snb:          [PASS][1] -> [DMESG-WARN][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16231/shard-snb7/igt@i915_module_load@reload-with-fault-injection.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144436v4/shard-snb6/igt@i915_module_load@reload-with-fault-injection.html

There is already a bug focused on this kernel message,
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9820 ,
only expecting either abort or incomplete, not dmesg-warn result.
This series resolves issues standing behind those aborts/incompletes, but 
does not address that error message, leaving it untouched so now dmesg-warn is 
triggered.  Then, please extend filters of that bug with dmesg-warn result.  
Such reports will start appearing in regular CI runs as soon as the patch is 
accepted and applied.

> 
>   * igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1:
>     - shard-mtlp:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16231/shard-mtlp-4/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144436v4/shard-mtlp-2/igt@kms_flip@plain-flip-fb-recreate-interruptible@a-edp1.html
> 
>   * igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2:
>     - shard-rkl:          [PASS][5] -> [FAIL][6]
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16231/shard-rkl-5/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_144436v4/shard-rkl-3/igt@kms_flip@plain-flip-ts-check-interruptible@a-hdmi-a2.html

Since the series only touches driver unregister path, and the two above listed 
tests don't enter that path, these two issues are not related.  Please update 
filters and re-report.

Thanks,
Janusz




