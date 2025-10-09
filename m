Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B1DBC9597
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 15:44:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9B310EA5D;
	Thu,  9 Oct 2025 13:44:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S9fb6uIE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2070210EA55;
 Thu,  9 Oct 2025 13:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760017466; x=1791553466;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=N7kIDyeKEglFDpAz8jrItX/aMPaN5t9m8FmplRgbN1w=;
 b=S9fb6uIEd0XJuFXvpzBclodx2vnSVzG3kG785+wFNJediimDEPnnYgMP
 DaD2oSxGzBWJ/k3aULLEEK6HZFUCGg1KFEXazig7yTMG+HJz0r+pHR24Z
 QBKdEyO8qn50Kepu9PuD8q2jJBp3dg5Jz7S8PAuEd46KVityHgaU+Ocbv
 BovryZkGkN4TMkKscskp4eeAV2eYXrCRvZlLyY8R03MBfU1mtswEDceeA
 P9oT9uEWiReThVxVILq9D8OlEuEnf0IwSJHnOYU9ntdldzg2HYRDjzZYI
 woFk92/A7iPorAHw5XW3ix3uQPHEoJUS1z/5Ba6KR/RbrlT3Ymwiq8a22 A==;
X-CSE-ConnectionGUID: u7ehl69qSlyNoxtOun8TVg==
X-CSE-MsgGUID: +rihQeiNSh+yzctATicwNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="61434545"
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="61434545"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 06:44:26 -0700
X-CSE-ConnectionGUID: xR2Ik1BAREakPMtZY5f4rg==
X-CSE-MsgGUID: SWzX+E97TIuuOhZYp+DApw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,216,1754982000"; d="scan'208";a="179829184"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.14])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 06:44:25 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: I915-ci-infra@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: =?UTF-8?B?4pyX?= i915.CI.Full: failure for drm/i915: Avoid lock
 inversion when pinning to GGTT
Date: Thu, 09 Oct 2025 15:44:21 +0200
Message-ID: <10059071.ag9G3TJQzC@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <175999697874.21440.3520313004963716096@6aec98b87f92>
References: <20251008161258.3568573-5-janusz.krzysztofik@linux.intel.com>
 <175999697874.21440.3520313004963716096@6aec98b87f92>
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

On Thursday, 9 October 2025 10:02:58 CEST Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Avoid lock inversion when pinning to GGTT
> URL   : https://patchwork.freedesktop.org/series/155622/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17327_full -> Patchwork_155622v1_full
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_155622v1_full absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_155622v1_full, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
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
>   Here are the unknown changes that may have been introduced in Patchwork_155622v1_full:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@gem_ctx_isolation@preservation-reset:
>     - shard-dg1:          [PASS][1] -> [FAIL][2] +1 other test fail
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17327/shard-dg1-18/igt@gem_ctx_isolation@preservation-reset.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155622v1/shard-dg1-14/igt@gem_ctx_isolation@preservation-reset.html
> 
>   * igt@i915_pm_rpm@system-suspend-execbuf:
>     - shard-mtlp:         [PASS][3] -> [FAIL][4]
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17327/shard-mtlp-3/igt@i915_pm_rpm@system-suspend-execbuf.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_155622v1/shard-mtlp-2/igt@i915_pm_rpm@system-suspend-execbuf.html

The change in scope modifies behavior of the i915 only when running on 
CherryView, or on Broxton with VT-D enabled.  None of those platforms are 
exercised in shards runs, then none of potential regressions from those runs 
can be related.  Please update filters and re-report.

Thanks,
Janusz

> 
...


