Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8192D587E53
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 16:46:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73C308B9D0;
	Tue,  2 Aug 2022 14:46:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65A588D910
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 14:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659451601; x=1690987601;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=acxFHsu+olABEhVIhkN96R+pWK/Q4qStkl7UiGLwPZQ=;
 b=ZjRyvJae8+x1ba4CKlnHFu9BtgHnYFxCv/GK0a50SECA29ME9yUGDaIp
 HA2v3cQNrWwvuopgRz4tze0jROAp7/DPsG0CMfDUmtLlCnlkHWHjoyiiM
 1X9v7/Ow2ELZ1chbCsNWACvV1tip2zkaYx/+4Is2PJql/p1xNjuHvl1Y1
 r+mzqJJZvCmCUDSt+UhGjg0Tx1xlMAMCt5Z5pAuak+D4BJfScRCYHh438
 wQdq8A9wuFajYvqw+yPH6ExCT9oo08w+UENi1dvBaQCfHbAXSZs9oB5rR
 PdXR2383Vz0ohzx76NuLIKp1/1DG5NAB2/XyMHMuzXotlE2h7tolkBQm2 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="315270476"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="315270476"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 07:46:40 -0700
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="705396756"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 07:46:39 -0700
Date: Tue, 2 Aug 2022 17:46:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Yuk4zFT2j+Cno8VM@ideak-desk.fi.intel.com>
References: <20220728183641.55692-1-anusha.srivatsa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220728183641.55692-1-anusha.srivatsa@intel.com>
Subject: Re: [Intel-gfx] [CI] drm/i915/dg2: Add support for DC5 state
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 28, 2022 at 11:36:41AM -0700, Anusha Srivatsa wrote:
> With the latest DMC in place, enabling DC5 on DG2.
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks for the patch, pushed to drm-intel-next.

The failures in the IGT CI result are unrelated, since there are no
shard-DG2 machines.

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 13aaa3247a5a..3f84af6beff3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -908,7 +908,7 @@ static u32 get_allowed_dc_mask(const struct drm_i915_private *dev_priv,
>  		return 0;
>  
>  	if (IS_DG2(dev_priv))
> -		max_dc = 0;
> +		max_dc = 1;
>  	else if (IS_DG1(dev_priv))
>  		max_dc = 3;
>  	else if (DISPLAY_VER(dev_priv) >= 12)
> -- 
> 2.25.1
> 
