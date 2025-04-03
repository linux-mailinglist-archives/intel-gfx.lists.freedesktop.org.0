Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24772A79FD0
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:17:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8CF010E976;
	Thu,  3 Apr 2025 09:17:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UrfzR9w9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CCD110E1C5;
 Thu,  3 Apr 2025 09:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743671874; x=1775207874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=whjmuLAfPSGumj6s9WrPRPqMKf9aWAmdkwWwTeJbMiU=;
 b=UrfzR9w9GQSWoqFgQ08Fdsz8mFaS8bH8olbynvE1U0O82CnJwGKHSarj
 x8UdHvfOyYTf9u5YclgjSA+u4D0jg0ytsk9XzZ2REahGWYcwoDcEVUQ5z
 LOjUgIugnxtRDVLBriwc9y7PGDhxV1FzwJSz1PXJvDtk41WtjjSNujytj
 aMkwrKkqsJZd3cOcOMsA6NJ/4xi+I5aEVT6zr983H0CFH/rJz4ROAYHIX
 u6Ud/we9DxEkFp2YRGx0EYWE0xhWv1BGyW7YC+xzA9ksPezGkI16zYwBs
 bSecFOg52qMxJD6nApDkq5X4Bzry/C95RwetcezO1LDKZb/7LtMYC8vqr g==;
X-CSE-ConnectionGUID: zpXqr8TUQdKVg0MeQnvp3g==
X-CSE-MsgGUID: HRgc6TCMSmCiVbIC3n8mMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="56433782"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="56433782"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:17:54 -0700
X-CSE-ConnectionGUID: RSNd5wVLSl+InZPq4vcKZg==
X-CSE-MsgGUID: NGBGiiEgQ1C1hCPC0ukvmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="126717756"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.164])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:17:53 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.Full: failure for drm/i915/huc: Fix
 fence not released on early probe errors
Date: Thu, 03 Apr 2025 11:17:49 +0200
Message-ID: <10633950.nUPlyArG6x@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <174362548435.30316.6853241837141883790@e6b6f09ec485>
References: <20250402172057.209924-2-janusz.krzysztofik@linux.intel.com>
 <174362548435.30316.6853241837141883790@e6b6f09ec485>
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

On Wednesday, 2 April 2025 22:24:44 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/huc: Fix fence not released on early probe errors
> URL   : https://patchwork.freedesktop.org/series/147160/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16364_full -> Patchwork_147160v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_147160v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_147160v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   
> 
> Participating hosts (10 -> 11)
> ------------------------------
> 
>   Additional (1): pig-kbl-iris 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_147160v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>     - shard-tglu:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16364/shard-tglu-3/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_147160v1/shard-tglu-8/igt@kms_atomic_transition@plane-all-modeset-transition-fencing.html

The change can interfere only with module load/unload / driver probe/remove 
paths, while looking at the code of that test I can't see it doing such 
operations, then that incomplete is rather not related to the change.  Please 
update CBL filters and re-report.

Thanks,
Janusz


