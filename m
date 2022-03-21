Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9544A4E254E
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Mar 2022 12:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F61710E2A5;
	Mon, 21 Mar 2022 11:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 517A710E2A5
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Mar 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647862612; x=1679398612;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=txFqy+INIWSe6UsDWXS/bgCbSOfMy1k0DE8vEDKHS54=;
 b=bp3ipllenOOlFCrWpSYJHaoisM6jQVSA4N8L6H5ECXqiesU53ZpYsbdU
 /wMZEC5LYATtEf5cCJJ//BlVUC0nQuGPThTZEpyv+7WFxVyF0oJLWF4sr
 Eh96n+ihbEAuUXWtUHYejeRERhIk4hi0cCRj5d8lqTnd/X1fUA9psiPU6
 UCk6OpLgC4SVbFbGnxtahxWuDCznN5RrYWN9gCqBUk7cBfXqrk2qHqOnt
 LEUOHR8eL0rLpNxretzZl7sX8/ZYnm8P5lFAuxx1tNtzT7du4XIX8OLXG
 M++LEDCNQ48sQQOkAceQD6QKYwSF/VkCT5wv0JmY9LFaq4cEsiE1eIWCU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10292"; a="255094609"
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="255094609"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 04:36:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,198,1643702400"; d="scan'208";a="646574084"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2022 04:36:50 -0700
Date: Mon, 21 Mar 2022 13:36:47 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <20220321113647.GA5666@ideak-desk.fi.intel.com>
References: <20220315080247.1161844-3-ankit.k.nautiyal@intel.com>
 <20220315095730.1179100-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220315095730.1179100-1-ankit.k.nautiyal@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/intel_combo_phy: Print
 procmon ref values
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 15, 2022 at 03:27:30PM +0530, Ankit Nautiyal wrote:
> Add debug print for Procmon Ref values, to help get the
> voltage configurations of combo PHYs.
> 
> v2: Used drm_dbg_kms for logs. (Jani)
> Added names for different voltage levels. (Imre)
> 
> v3: Used const char * for names. (Jani)
> 
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_combo_phy.c    | 36 +++++++++++++------
>  1 file changed, 26 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 4dfe77351b8b..5abd4a285610 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -25,18 +25,29 @@ enum {
>  };
>  
>  static const struct icl_procmon {
> +	const char *name;
>  	u32 dw1, dw9, dw10;
>  } icl_procmon_values[] = {
> -	[PROCMON_0_85V_DOT_0] =
> -		{ .dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96, },
> -	[PROCMON_0_95V_DOT_0] =
> -		{ .dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB, },
> -	[PROCMON_0_95V_DOT_1] =
> -		{ .dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5, },
> -	[PROCMON_1_05V_DOT_0] =
> -		{ .dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1, },
> -	[PROCMON_1_05V_DOT_1] =
> -		{ .dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1, },
> +	[PROCMON_0_85V_DOT_0] = {
> +		.name = "0.85V dot0 (low-voltage)",
> +		.dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96,
> +	},
> +	[PROCMON_0_95V_DOT_0] = {
> +		.name = "0.95V dot0",
> +		.dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB,
> +	},
> +	[PROCMON_0_95V_DOT_1] = {
> +		.name = "0.95V dot1",
> +		.dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5,
> +	},
> +	[PROCMON_1_05V_DOT_0] = {
> +		.name = "1.05V dot0",
> +		.dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1,
> +	},
> +	[PROCMON_1_05V_DOT_1] = {
> +		.name = "1.05V dot1",
> +		.dw1 = 0x00440000, .dw9 = 0x9A00AB25, .dw10 = 0x8AE38FF1,
> +	},
>  };
>  
>  static const struct icl_procmon *
> @@ -113,6 +124,11 @@ static bool icl_verify_procmon_ref_values(struct drm_i915_private *dev_priv,
>  
>  	procmon = icl_get_procmon_ref_values(dev_priv, phy);
>  
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "Combo PHY %c Voltage/Process Info : %s, PROCMON values : 0x%x, 0x%x, 0x%x\n",
> +		    phy_name(phy), procmon->name, procmon->dw1, procmon->dw9,
> +		    procmon->dw10);

I don't think it's worth printing the expected register values, any
mismatch wrt. to the actual ones will be printed anyway. Could you
remove those and print only the phy and procmon->name? With that:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> +
>  	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
>  			    (0xff << 16) | 0xff, procmon->dw1);
>  	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),
> -- 
> 2.25.1
> 
