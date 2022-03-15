Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C7E4D9674
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 09:38:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C04410E512;
	Tue, 15 Mar 2022 08:38:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E12C10E512
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647333496; x=1678869496;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=qSo1YskTl08jbxjrZF1MNzKfmAMPKh4kGagRx9VJRwU=;
 b=MsRyQCRSdvOSmP8mR2R65/975k8bBEcjnSF00D4LVrMgHo9K9BPsHU0p
 Iu2u0v3+iE8iF1eDGoHy2lKos2g7ppWzPMZ5HDfM8YYPv2lvIX5ghmGDE
 24ia6MamDXjZSmfwdeHnQeom2CulU2srclZZvrjt6c2+1moIWUbczOtEl
 ODoWjrUB54GYbSfHRUIy1S/1447KBNHy1EbpscXL7A7li398yvSroxqjm
 80ZtTJlgbF0OKzB16w5nQG9YbKJFqTBrjO57pS0iPno7mpeN4twVDW8mK
 HT1reFeF4O1gHupG14mwGDNKqQwkN1AmjDVPVpnqDjdfTXlcnmTHQX9yy A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="316968245"
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="316968245"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:38:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,182,1643702400"; d="scan'208";a="556823691"
Received: from cgrilli-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.56.234])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 01:38:13 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220315080247.1161844-3-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220315080247.1161844-1-ankit.k.nautiyal@intel.com>
 <20220315080247.1161844-3-ankit.k.nautiyal@intel.com>
Date: Tue, 15 Mar 2022 10:38:11 +0200
Message-ID: <87czinvcek.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/intel_combo_phy: Print
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 15 Mar 2022, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add debug print for Procmon Ref values, to help get the
> voltage configurations of combo PHYs.
>
> v2: Used drm_dbg_kms for logs. (Jani)
> Added names for different voltage levels. (Imre)
>
> Suggested-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_combo_phy.c    | 36 +++++++++++++------
>  1 file changed, 26 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 4dfe77351b8b..7ccf45578a7f 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -25,18 +25,29 @@ enum {
>  };
>  
>  static const struct icl_procmon {
> +	char name[30];

const char * please, and ditch those \0's in the initialization.

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
> +		.name = "0.85V dot0 (low-voltage)\0",
> +		.dw1 = 0x00000000, .dw9 = 0x62AB67BB, .dw10 = 0x51914F96,
> +	},
> +	[PROCMON_0_95V_DOT_0] = {
> +		.name = "0.95V dot0\0",
> +		.dw1 = 0x00000000, .dw9 = 0x86E172C7, .dw10 = 0x77CA5EAB,
> +	},
> +	[PROCMON_0_95V_DOT_1] = {
> +		.name = "0.95V dot1\0",
> +		.dw1 = 0x00000000, .dw9 = 0x93F87FE1, .dw10 = 0x8AE871C5,
> +	},
> +	[PROCMON_1_05V_DOT_0] = {
> +		.name = "1.05V dot0\0",
> +		.dw1 = 0x00000000, .dw9 = 0x98FA82DD, .dw10 = 0x89E46DC1,
> +	},
> +	[PROCMON_1_05V_DOT_1] = {
> +		.name = "1.05V dot1\0",
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
> +		    "Combo PHY %c %s PROCMON values : 0x%x, 0x%x, 0x%x\n",
> +		    phy_name(phy), procmon->name, procmon->dw1, procmon->dw9,
> +		    procmon->dw10);
> +
>  	ret = check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW1(phy),
>  			    (0xff << 16) | 0xff, procmon->dw1);
>  	ret &= check_phy_reg(dev_priv, phy, ICL_PORT_COMP_DW9(phy),

-- 
Jani Nikula, Intel Open Source Graphics Center
