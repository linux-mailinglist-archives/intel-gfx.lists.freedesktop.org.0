Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9E63FD8E0
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Sep 2021 13:39:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFB536E195;
	Wed,  1 Sep 2021 11:38:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B40646E195
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Sep 2021 11:38:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10093"; a="240992158"
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="240992158"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 04:38:56 -0700
X-IronPort-AV: E=Sophos;i="5.84,369,1620716400"; d="scan'208";a="532118348"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 04:38:55 -0700
Date: Wed, 1 Sep 2021 14:38:51 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Manasi Navare <manasi.d.navare@intel.com>,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210901113851.GA3572110@ideak-desk.fi.intel.com>
References: <20210901112815.16498-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210901112815.16498-1-jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: fix DG2 max source rate check
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

On Wed, Sep 01, 2021 at 02:28:15PM +0300, Jani Nikula wrote:
> Accidentally dropped the else in a rebase fail, causing the DG2 max rate
> to be overwritten later in the if ladder.
> 
> Fixes: e752d1f9c14a ("drm/i915/dg2: add DG2 UHBR source rates")
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4f2fd33529ca..81b7097c6ff1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -345,7 +345,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  		size = ARRAY_SIZE(icl_rates);
>  		if (IS_DG2(dev_priv))
>  			max_rate = dg2_max_source_rate(intel_dp);
> -		if (IS_JSL_EHL(dev_priv))
> +		else if (IS_JSL_EHL(dev_priv))
>  			max_rate = ehl_max_source_rate(intel_dp);
>  		else
>  			max_rate = icl_max_source_rate(intel_dp);
> -- 
> 2.30.2
> 
