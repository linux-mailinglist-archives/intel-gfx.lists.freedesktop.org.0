Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8486150BBBF
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Apr 2022 17:35:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68D510E077;
	Fri, 22 Apr 2022 15:35:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1114310E143
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Apr 2022 15:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650641700; x=1682177700;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ggWetfVBuBqh3ZzUQROYFbRT5wxt3ZCGnlS9lTe9AsE=;
 b=FBMp7xzyFEp15KLukyydfXSvgOg5V1BxAu6lS3lWkMAyynFOCazwpLbx
 P87ZNCFHrNn3ftKmGHoKPwC4xitjCwmTBhoZaUOUm6c3AHaZE/5/t3cuV
 uLNXbiIvqL5b28oXnHJZYc/h5Ty877Cma3tMj46IOf/P4hI+w4DzqIp/z
 1wI3GmdKwi4qi0NseYDtV/UrK0jPKXK6+jEw+zfetSqVWUkEa0/ECs4o7
 nJcMqrmbf6VpZRrWva5DEBjZd153XKdYefsL08ynAhZkGlON7RFukF2v+
 28ivzES344QyxhkuCAAIi3CdDO0sy+gBgKbBU8b7HGsxJNyAE5abPOW6T Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10324"; a="244631189"
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="244631189"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 08:34:34 -0700
X-IronPort-AV: E=Sophos;i="5.90,282,1643702400"; d="scan'208";a="577952831"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2022 08:34:34 -0700
Date: Fri, 22 Apr 2022 08:34:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
Message-ID: <YmLLCLW5R9xzfAAz@mdroper-desk1.amr.corp.intel.com>
References: <20220422133752.1370964-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220422133752.1370964-1-badal.nilawar@intel.com>
Subject: Re: [Intel-gfx] [RFC] drm/i915/rc6: Access RC6 regs with forcewake
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
Cc: intel-gfx@lists.freedesktop.org, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 22, 2022 at 07:07:52PM +0530, Badal Nilawar wrote:
> To access RC6 related MMIO regs use intel_uncore_write(), which grabs
> forcewake if reg requires a forcewake.
> 
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index b4770690e794..9edaad3f19b5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -55,7 +55,7 @@ static struct drm_i915_private *rc6_to_i915(struct intel_rc6 *rc)
>  
>  static void set(struct intel_uncore *uncore, i915_reg_t reg, u32 val)
>  {
> -	intel_uncore_write_fw(uncore, reg, val);
> +	intel_uncore_write(uncore, reg, val);

The set() function is primarily used within the *_rc6_enable() functions.
Those are all called via intel_rc6_enable() which has already
grabbed explicit forcewake before calling them:

        intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);

so there's no need to grab an additional reference on every register
access.  Likewise, the call in vlv_residency_raw() doesn't need
forcewake because its own caller (intel_rc6_residency_ns) has already
acquired it.

I think the call in intel_rc6_unpark() is the only one that might be
questionable from a very quick skim of the code.  So rather than
needlessly grabbing forcewake in all the other spots, it's probably
better to just replace that single call with a direct call to
intel_uncore_write() if it actually is problematic.

Even better, we might just want to drop the set() wrapper completely and
replace all instances with the appropriate intel_uncore_write[_fw]
calls; I don't really see the slightly shorter lines the wrapper gives
us as being worth the deviation from the rest of the driver's code
(especially if it's causing us confusion about what the intendended
forcewake semantics are).


Matt

>  }
>  
>  static void gen11_rc6_enable(struct intel_rc6 *rc6)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
