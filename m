Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F03269B7F91
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 17:03:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99DB110E08F;
	Thu, 31 Oct 2024 16:03:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mgEe8tKJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02A4C10E08F
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Oct 2024 16:03:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730390598; x=1761926598;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=6QembafccocPIKjuCKEGTIbPZGh2d2TpBXY+Mdoxej0=;
 b=mgEe8tKJRSfupuBzHtC150bCFKJlNgY1PUILbgbXkA/8FiZn1WflzG7Y
 226gWOrUz4Wg1D2rXkWqMb4pUI7j43sIM/G/+xRI79WRbjR5UC3UQ9QHC
 ZI5xwXEJb6CHJ+zccd91vja3zqJKm1uxfoTxVwmrWcZcde3gUYj7h10nt
 8y2wpbRGhXpXSyMacoGzJcJbsUP1Xp4ol9JdDq9VJqMTHBJwVgd39Un95
 f/Mg6hUAnSplhbXAfRbjcGr9gM26JTnC6SVx9pTmwbBIZzVpKljRJZVwH
 Xrp3bXBkby6npAfii4lYSnE8S2AoHmYTlHdh69ZSHyFfo+yTqOpt/BqGU g==;
X-CSE-ConnectionGUID: 3lrhuS3gTX2ndjq/3y7eXw==
X-CSE-MsgGUID: B56fNujXSN6mS49Nekj8Yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11242"; a="29576138"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="29576138"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 09:03:14 -0700
X-CSE-ConnectionGUID: SQ80qPlNQRWbbkzrZxAASA==
X-CSE-MsgGUID: IsYVr3VCTs6lsHr/08202A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="82793290"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 31 Oct 2024 09:03:12 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Oct 2024 18:03:11 +0200
Date: Thu, 31 Oct 2024 18:03:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVA==?= =?utf-8?Q?=3A?= failure for
 drm/i915/scaler: Scaler code cleanups
Message-ID: <ZyOqP1EpX6rvikD_@intel.com>
References: <20241029211030.13255-1-ville.syrjala@linux.intel.com>
 <173025032574.1362390.11246292470345205230@2413ebb6fbb6>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <173025032574.1362390.11246292470345205230@2413ebb6fbb6>
X-Patchwork-Hint: comment
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

On Wed, Oct 30, 2024 at 01:05:25AM -0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/scaler: Scaler code cleanups
> URL   : https://patchwork.freedesktop.org/series/140694/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_15607 -> Patchwork_140694v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_140694v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_140694v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140694v1/index.html
> 
> Participating hosts (47 -> 46)
> ------------------------------
> 
>   Missing    (1): fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_140694v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_module_load@load:
>     - bat-arls-1:         [PASS][1] -> [ABORT][2]
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15607/bat-arls-1/igt@i915_module_load@load.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_140694v1/bat-arls-1/igt@i915_module_load@load.html

Looks like this failed because we apparently depend on some extra
scaler state copying being done in intel_crtc_prepare_cleared_state().
I'll need to figure out what to do about that eventually, but for now
I'll probably just drop '[PATCH 7/9] drm/i915/scaler: Move pfit
scaler into pfit state' which should avoid this problem.

-- 
Ville Syrjälä
Intel
