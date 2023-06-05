Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA59D722AB0
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Jun 2023 17:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C095510E2D1;
	Mon,  5 Jun 2023 15:17:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5479E10E2D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Jun 2023 15:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685978221; x=1717514221;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=eUhmUjt4mbsM5DbTHUpIbq22lU7L320zqOW0Y44ITKg=;
 b=CvcEgHPMKoDCFlAsUJNuhhufbZl148xVq0623Ny8d0Ndt2bxSBppuXNN
 sUISrliBg26ZbC/J3NG+hwPov0pOlTPAbHsB8s92CWmYgvbFCo86THau2
 yPOLzsAaEqTqeZDHFkLw3xzYJU6S3sgWEoyGpT3dEiOI8Vk5Dr/y35pPR
 DLfuXaDE3LjBptKExYZIpx01HINO57m9KN/Ygg3pmgMoof/g8D8ztA5ew
 gc6eY7uJhP7PTo37RyJQsvMTFfpfEouW2VL4Ypo+AvejYwnt0VR7MXbaC
 GWq8K6itWqO9VSWAfgoTbr5graJ6q7RaQBam4yScRWWg97iknK8/DHrZh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="356403936"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="356403936"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:17:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="798473740"
X-IronPort-AV: E=Sophos;i="6.00,217,1681196400"; d="scan'208";a="798473740"
Received: from moelschl-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.122])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2023 08:16:59 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230530185529.3378520-3-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230530185529.3378520-1-anusha.srivatsa@intel.com>
 <20230530185529.3378520-3-anusha.srivatsa@intel.com>
Date: Mon, 05 Jun 2023 18:16:57 +0300
Message-ID: <87legyaqhi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/rplp: s/ADLP/ALDERLAKE_P for
 RPLP defines
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

On Tue, 30 May 2023, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Follow consistent naming convention. Replace ADLP with
> ALDERLAKE_P.

Here too the consistent naming convention for all macros using
IS_SUBPLATFORM() is to use the acronym. The IS_METEORLAKE_M() and
IS_METEORLAKE_P() macros are the outliers.

Again, do you suggest we rename all of them, or just ADL-P? The former
is a lot of churn, and the latter is not consistent.

BR,
Jani.


>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h   | 2 +-
>  drivers/gpu/drm/i915/intel_step.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 1a50b8b2f00d..43414cdc137c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -581,7 +581,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_S, INTEL_SUBPLATFORM_RPL)
>  #define IS_ADLP_N(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
> -#define IS_ADLP_RPLP(i915) \
> +#define IS_ALDERLAKE_P_RPLP(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
>  #define IS_ADLP_RPLU(i915) \
>  	IS_SUBPLATFORM(i915, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 8a9ff6227e53..10d86c525beb 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -195,7 +195,7 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ADLP_N(i915)) {
>  		revids = adlp_n_revids;
>  		size = ARRAY_SIZE(adlp_n_revids);
> -	} else if (IS_ADLP_RPLP(i915)) {
> +	} else if (IS_ALDERLAKE_P_RPLP(i915)) {
>  		revids = adlp_rplp_revids;
>  		size = ARRAY_SIZE(adlp_rplp_revids);
>  	} else if (IS_ALDERLAKE_P(i915)) {

-- 
Jani Nikula, Intel Open Source Graphics Center
