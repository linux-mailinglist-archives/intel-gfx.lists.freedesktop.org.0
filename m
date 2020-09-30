Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B64A27EF99
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:50:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 651C589CF9;
	Wed, 30 Sep 2020 16:50:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB3BD89CF9
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 16:50:09 +0000 (UTC)
IronPort-SDR: LyCKRj8ZFJTm6MDyAta89Wo2q5pJhcWKerZKvAxBPow/KmTZtQOjECbLmF37SZ2m8QVJEVUHV3
 2DwhzEXt5bBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9760"; a="162547932"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="162547932"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:50:09 -0700
IronPort-SDR: zI0vN1SVQESjWFPzwJh67FfExDZ6SBFai9lf9hM0iRmFMwBXNuLirM+OEAFJe93zsY4WbZXYrG
 TJ+k7yDSbLiA==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="325096343"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 09:50:09 -0700
Date: Wed, 30 Sep 2020 09:50:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200930165007.GA2245633@mdroper-desk1.amr.corp.intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
 <20200930064234.85769-23-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930064234.85769-23-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 22/24] drm/i915/dg1: DG1 does not support
 DC6
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 11:42:32PM -0700, Lucas De Marchi wrote:
> From: Anshuman Gupta <anshuman.gupta@intel.com>
> 
> DC6 is not supported on DG1, so change the allowed DC mask for DG1.
> 
> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Do we have a bspec reference for this?  I can't find anything specific
about this from a casual skim of the pages I'd expect it to be mentioned
on.

If we have a reference added (or a note clarifying that we have offline
confirmation from hardware architects),

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


At some point I think we should re-write this section of the code in
general.  The magic numbers used here are annoying, and a driver
modparam named 'enable_dc' really sounds like it should be a bitmask of
the exact DCs supported (rather than defining a combination of 'up to'
values + DC3CO and omitting DC9 completely).  But we don't need to do
that in a DG1 enabling patch.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 0827e68a9d89..7dfc697ccf78 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -4689,7 +4689,10 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
>  	int max_dc;
>  
>  	if (INTEL_GEN(dev_priv) >= 12) {
> -		max_dc = 4;
> +		if (IS_DG1(dev_priv))
> +			max_dc = 3;
> +		else
> +			max_dc = 4;
>  		/*
>  		 * DC9 has a separate HW flow from the rest of the DC states,
>  		 * not depending on the DMC firmware. It's needed by system
> -- 
> 2.28.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
