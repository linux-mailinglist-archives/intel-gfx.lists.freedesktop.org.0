Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C64486C6B4
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 11:21:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B05A410E06D;
	Thu, 29 Feb 2024 10:21:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G87GE3mY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9CE610E06D
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709202088; x=1740738088;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=odKLVXBKbwWm5/6InbEst98sNLt6MkN5Qu1kH4Z/jUU=;
 b=G87GE3mY406W4rgZzIb2oX09EAYHJHhhKgIvguXuktCMVmwsnzS1PKsR
 xAnEOfLwbCxh/qd03CVosj4PfazCDiKYNJedE3ChH0aNtuQhLxG4hVVN1
 EceBFN01AisDgUb8puJ8maFQuqr4/48jdF3Rfo605/5gnU9pfabePLrxP
 /pDHsP4D8SSWbSSupP1chlhXosEcFe8atO999rySuIdD7Fo76IU39kfWC
 CVGJj7AE1PuHqpXqY8mQrDLWTimwVOPu0dJ/vEQBDfKyp0hs6J0JOW2Xq
 RzYh36wG4uvJBwd4AqqAtifxFCYOge1jNMme+vOKtG1kEmOXeNrk08Xzt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10998"; a="14812194"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; d="scan'208";a="14812194"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 02:21:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="7648402"
Received: from lcostigx-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.246.51.191])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 02:21:23 -0800
Date: Thu, 29 Feb 2024 11:21:20 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>
Subject: Re: [PATCH V2] drm/i915/mtl: Update workaround 14018575942
Message-ID: <ZeBaoNbgN9px_PqJ@ashyti-mobl2.lan>
References: <20240228103738.2018458-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240228103738.2018458-1-tejas.upadhyay@intel.com>
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

Hi Tejas,

On Wed, Feb 28, 2024 at 04:07:38PM +0530, Tejas Upadhyay wrote:
> Applying WA 14018575942 only on Compute engine has impact on
> some apps like chrome. Updating this WA to apply on Render
> engine as well as it is helping with performance on Chrome.
> 
> Note: There is no concern from media team thus not applying
> WA on media engines. We will revisit if any issues reported
> from media team.
> 
> V2(Matt):
>  - Use correct WA number
> 
> Fixes: 668f37e1ee11 ("drm/i915/mtl: Update workaround 14018778641")
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Let's wait for a green CI. Unfortunately you got an unrelated
failure.

In the meantime:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index d67d44611c28..25413809b9dc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1653,6 +1653,7 @@ static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
>  	/* Wa_14018575942 / Wa_18018781329 */
> +	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
>  	/* Wa_22016670082 */
> -- 
> 2.25.1
