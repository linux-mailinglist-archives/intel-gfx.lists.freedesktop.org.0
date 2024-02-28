Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9088C86B2AC
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Feb 2024 16:06:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F26C510E17B;
	Wed, 28 Feb 2024 15:06:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YzthLjnZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5493C10E17B
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Feb 2024 15:06:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709132770; x=1740668770;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Mj39iEfY0sxNd8YQbcCG6lRnVM9Oy29DNe+bINgCNwA=;
 b=YzthLjnZWIfNC6FOaIotOviMsk93km+laClNEqDGCCs0tbaX2QwAp772
 RwdpW973BiHMh0Mq6PfcJIGhuxpSSZjZ0HP3dN6vguyKVCrKjHhYYVDSl
 XQK9BQywwVxl6OLtCLXu7kSNUJS/+7+TpmxGIdK+VvQsiLeDjcmR9SxT4
 P+OzuUbrTX5e1fEPwxneIa/vx9CKMZ2NeX1TVPRkzfWJH2dOe2zxPc0cm
 +KoCOxgcZ7XFKaePtZPy70wyi6MXYE59CKuqgDeNumse2iscFj522F9FU
 GMoYhjJFBryzTAdyuZAEoU9ScR3Oa0sHG5rafulPOhiLl+D1jFf7Yifpx g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="20987922"
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; d="scan'208";a="20987922"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 07:06:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,190,1705392000"; 
   d="scan'208";a="7496445"
Received: from tmelzer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.32.33])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2024 07:06:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCHv2] drm/i915/display/dp: Remove support for UHBR13.5
In-Reply-To: <20240228144350.3184930-1-arun.r.murthy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240228144350.3184930-1-arun.r.murthy@intel.com>
Date: Wed, 28 Feb 2024 17:06:03 +0200
Message-ID: <87zfvk8w84.fsf@intel.com>
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

On Wed, 28 Feb 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> UHBR13.5 is not supported in MTL and also the DP2.1 spec says UHBR13.5
> is optional. Hence removing UHBR135 from the supported link rates.
>
> Fixes: https://gitlab.freedesktop.org/drm/intel/-/issues/8686

Fixes: trailer is for commits. And trailers should be together, with no
blank lines or patch changelogs in between.

>
> v2: Reframed the commit message and added link to the the issue.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8686
Fixes: 62618c7f117e ("drm/i915/mtl: C20 PLL programming")
Cc: <stable@vger.kernel.org> # v6.5+
Reviewed-by: Jani Nikula <jani.nikula@intel.com>

There's no need to add /display/ in every subject prefix. drm/i915/dp
will do just fine.

Can be fixed while applying.

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6ece2c563c7a..c11d9055981f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -498,7 +498,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	/* The values must be in increasing order */
>  	static const int mtl_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
> -		810000,	1000000, 1350000, 2000000,
> +		810000,	1000000, 2000000,
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,

-- 
Jani Nikula, Intel
