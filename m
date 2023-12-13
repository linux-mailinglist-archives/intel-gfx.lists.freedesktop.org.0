Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35E09810B32
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 08:13:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A4AEA10E037;
	Wed, 13 Dec 2023 07:13:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AAD110E037
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 07:13:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702451630; x=1733987630;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=FqDeP+RQ0lsgOUNKs0KPHndUkDUbf2S8ljK/LBB0pp0=;
 b=d7HIFrECpCQCrh6JAJQQzJ6ws8CDnX5nfpay60I21QmGeJZhmDgBdFIX
 ntaTXwCZeLdB83Sn8hPTJny2uFcUp0piKh63azHoi3RHrSUHZilW8tgQq
 Mfibxnqkrm1wu2OzewWBD69uTzxX/lCiaI0hAiXXVroVDc8o5/ZQF5TUK
 gOsv1ajwijsSNfWqwdD9SmGxK0yL+6PeaDt+8ho+IANMPWYHA0vwIKZCW
 Z8bZanpIhqE4wZTcp89R1Jz/XpPbb4/DYgeueHd6ArViekU8PgImMH+MU
 TxEZTKdZIjkTM2ZNWX2Jn9Bm1nmXW5w7D81k9PWToj1JenQQ8Sw6SL8pK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="398764460"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="398764460"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 23:13:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="777391058"
X-IronPort-AV: E=Sophos;i="6.04,272,1695711600"; d="scan'208";a="777391058"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 23:13:48 -0800
Date: Wed, 13 Dec 2023 09:13:53 +0200
From: Imre Deak <imre.deak@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Wait for PHY readiness not needed
 for disabling sequence
Message-ID: <ZXlZsQxCnvbnv9Co@ideak-desk.fi.intel.com>
References: <20231212115130.485911-1-mika.kahola@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231212115130.485911-1-mika.kahola@intel.com>
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

On Tue, Dec 12, 2023 at 01:51:30PM +0200, Mika Kahola wrote:
> When going through the disconnection flow we don't need to wait for PHY
> readiness and hence we can skip the wait part. For disabling the function
> returns false as an indicator that the power is not enabled. After all,
> we are not even using the return value when Type-C is disconnecting.
> 
> v2: Cleanup for increased readibility (Imre)
> 
> BSpec: 65380
> 
> For VLK-53734
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>

For next time: it would've been better to separate to refactor + fix
patches. The change looks ok:
Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 25 ++++++++++++++++---------
>  1 file changed, 16 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index f64d348a969e..dcf05e00e505 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -1030,18 +1030,25 @@ static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enabl
>  
>  	__xelpdp_tc_phy_enable_tcss_power(tc, enable);
>  
> -	if ((!tc_phy_wait_for_ready(tc) ||
> -	     !xelpdp_tc_phy_wait_for_tcss_power(tc, enable)) &&
> -	    !drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY)) {
> -		if (enable) {
> -			__xelpdp_tc_phy_enable_tcss_power(tc, false);
> -			xelpdp_tc_phy_wait_for_tcss_power(tc, false);
> -		}
> +	if (enable && !tc_phy_wait_for_ready(tc))
> +		goto out_disable;
>  
> -		return false;
> -	}
> +	if (!xelpdp_tc_phy_wait_for_tcss_power(tc, enable))
> +		goto out_disable;
>  
>  	return true;
> +
> +out_disable:
> +	if (drm_WARN_ON(&i915->drm, tc->mode == TC_PORT_LEGACY))
> +		return false;
> +
> +	if (!enable)
> +		return false;
> +
> +	__xelpdp_tc_phy_enable_tcss_power(tc, false);
> +	xelpdp_tc_phy_wait_for_tcss_power(tc, false);
> +
> +	return false;
>  }
>  
>  static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
> -- 
> 2.34.1
> 
