Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D9F8978FF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 21:28:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A650E112235;
	Wed,  3 Apr 2024 19:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KcjmX1Gl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99C1510E9E6;
 Wed,  3 Apr 2024 19:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712172517; x=1743708517;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=FcKuxMF7O69KeJR8aF9wjl+gldlS4T2ZcYGwLWXZzrE=;
 b=KcjmX1Gl2w6swR+H0ocTqv4HVJM9bWMuGSkyWu8+Rc5p+KtlfkfZKHd8
 MEDHayCX1UkJ0GfC+ZfjsDAsBonPRlJlmOhqNcY+gsENVhIXAi8A+tKEL
 wjgz4Ko4mp8CdWwxY6kEP3uWrS37xKLHk6iw133xPTzzxq5Xo9O0/b8CP
 LbgEN+R51aKHkedZ7v3uyCBBD+9j3NMZF6c/Joxji9lDYAddKJCab7XMd
 a84x0p2/sCplX2hhmct5bNcabG4oCvL03AUoeFPQTeRDWz79UoYEDJ4pv
 xxwTJ62ICzrMFgZd/i4b2l6HNJyY5Lp1aDd330crdbJBzeSgczkAO2c3B g==;
X-CSE-ConnectionGUID: 0xAH3tvAQV2fqhfI/UmcmQ==
X-CSE-MsgGUID: oGBjRng/Q8u3W1CG0fbVhg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7293820"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7293820"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 12:28:37 -0700
X-CSE-ConnectionGUID: fnOFSZkSRhCyxbAQEUc6Kg==
X-CSE-MsgGUID: OH2JSECITHiFjUwd7Z7CQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18514999"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 12:28:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:28:35 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 12:28:34 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 12:28:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 12:28:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KtxeZwsP8ZH6xdTM2GP7SbDNcu9/Y6Iukyj2EWvxf16V48EUEyVJ3CiuPCwNTRO/Fv2bHaNQggJC0ExZlomWNjQe7jsdmevcUM0o5wJpqzl4QNqHeFiPZtpMWNmTKVi77tS3ZTIVJSYBjcqknzHJQWtbA549VjYy9XjMnqPO03Ru9GUHheY0oenyUQzEZ/AN+ud6EZ3eWwPQANBZLeKakQM3Eoi8EyAJHBYL78oudPH5bUfoLJ30HWZ3XuH2vRW872h0tL2a8vQLzOIjdqRQTnAJ/ScQ650k9TvS4JBxpA3TSRR3KU6FfmMZeX/KDKxuBgGVDHDzV2fv19WpTOemDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7fnHUPTyd5XTfcveIEp5bJciI2bSC5M1nqO8i9f/LU=;
 b=XSuIJIlKtQCdB94RQsf4fLiyeE41MAU6wgkD/agoWOXxnq2Z8Anrhnvn/I1JBOWgIa63LYV4ks2QHC7ZEGiGYd6QQSAAomz4J0ftHd5w7fp4ppGV4oNuUg0ITCu4oaG6GJpKDzX8rSPojnYlN21qhsUcwVmBx+ThL1s8gOJy2CVzabj/CTtw948wjUMIBDOMFQPVdikevb0AIbyu0UwETVOLkCJkz/n3pSjBT+oy68SZC5l+PQqxlbrIynZuKayjIPsk5pFW37usDsGB8abEPxuKkpjdZOOTnG5GlC+OvLMMYrvjQ6/DNxP2R+NvLY1gVDIm2ouaZusNVSvE9hE0vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Wed, 3 Apr
 2024 19:28:32 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 19:28:32 +0000
Date: Wed, 3 Apr 2024 12:28:30 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, "=?iso-8859-1?Q?Jos=E9?= Roberto de
 Souza" <jose.souza@intel.com>
Subject: Re: [PATCH v2 09/25] drm/i915/xe2hpd: Properly disable power in port A
Message-ID: <20240403192830.GM6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-10-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240403112253.1432390-10-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BY3PR10CA0009.namprd10.prod.outlook.com
 (2603:10b6:a03:255::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7041:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +Ji58otElLMG6+W6D/mEnCIVlAbjp4xsEEMYdjZlr2pPGH4IBsWLEe2WNPmobZZTZww8gvBp+LwsAxUvJdOna9Vmik/WIpDg5pl2aRj78ID0w7d/kahR1CPXIUhCdIyLPaWSA6qAxZj22uou/pb3mzD4B5kElyY4jY1t3BIqCEiGGLPYxq93BTXirhAN4ucqWCUcWgpM6LWX67VuopDiQ0caloYPVVUT8yidsbPX/0HI+xXji1LzeyZ2EZbFaRtA1Yy2FiSmerhGgIT74vNuMxs6pPlyEd7GVdjWpXQPSInv3e0UVsnHd0KHiEGSZVdwy2oXGunXPqFH5nJ/YTIG5cMbBAGhGN9xIF+Z9AjAwsH1GT+Gvk3+Kp3Gihk3BpQdS2S4fgdPoBf+QWNO967OK0PNn0/359VJCg5iuQswlLQwAPhyVdhtoEDh0QvnlSjhfx08zrZ5RCwLoXD+PXK6OPGrLXhmJBHv/eqrRr9KU9Agr4O83pdCINkSY2LOfO0JQ+YoWv4xjgmntfWJN5NKx9jA/p1DiHjoo2men8m+spdhIKH6GxOAqScBK0W9wfotLfXX1cf6Gk14XTaMkOeELCk+2wip9QX+QTX/ew7FGCJA47ei2lkArvGXjy9xj2B81608NRHIKUp7STYxCaUz0PhHpLKFSTw/pwvp5ngVaFQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?g0xbKrD1h0krjZ8o5ul28zJMiFs30+00xrXASh3HDTMTC5FBFbibMUAeGj?=
 =?iso-8859-1?Q?fI4yT52hDpFLNM1U0Y/zTKuSwJ7refXhqKWAEXsVMsbl7CtwmbAY6136RM?=
 =?iso-8859-1?Q?Oar+0jcs0NGaMVStXI9M2cM8KAcuyd4TNKbuqXx6gv8ueHCNgOQv9LEpAC?=
 =?iso-8859-1?Q?VFx6efriJDIpjVcEEeT0tdR4FLalmfDF1MXDqAZ+52bjxdiuTE/R3kBaQ1?=
 =?iso-8859-1?Q?Hfso4Dv+aMrEdwl2xiobHx3jM2EJnOUXvU1v/+Wyuu6vCrcNmEnk3aG3Rf?=
 =?iso-8859-1?Q?FmRwQvDVoLLwIJgt8cbswqm2xhRtXUo+qJPnQB8lV703x2LYeF5/+abUGm?=
 =?iso-8859-1?Q?6pR8v3ExhgiuYN4g2l/bUMeqDbKAK9zaZjZwkCBsw3iQ9D+5m2HzgxJ7Q5?=
 =?iso-8859-1?Q?LRuRp5N4UBDEsPH3nfbgEED4JO3GX9WnjhAWEXzzqJBoklZHndMcZkHhb6?=
 =?iso-8859-1?Q?TNYlkXpf+zB4iCkn6MHioW+9SHHnPqqcOgtn/7JW+UQKtqiNYXTKzJ+2Mr?=
 =?iso-8859-1?Q?l3M68kxtYjuExkByiye0PfIz5m57MOGWO+4OOESNzCsJaANiYsxih8d2f8?=
 =?iso-8859-1?Q?0z6Eqxa744aEGeq3BFSDCQpR054UNiTChIcVSXM4qc7Z0M7I1g9Xk6fsoN?=
 =?iso-8859-1?Q?HhLxiTyTaynI1itR72/wPky/CSOjmeSkTRtbV1YtNIbUoa7UxQJ/Qm93LD?=
 =?iso-8859-1?Q?1ZSTZo/Kle7K/boPSGqxYbswkS4bH1zhe7terq5zse2+Fymg1XPvMBJDBL?=
 =?iso-8859-1?Q?8c/GTm0Ea6Dx6iQg2mIdKL/E39N0rlx1iqrDTyFgBjzj4EhBhmVTnAWTdc?=
 =?iso-8859-1?Q?Z12nlfloCvkqbdxjlYsdaWktKU8Ohq8sRU0kJUU5k83Gijan4LNbIPDh5r?=
 =?iso-8859-1?Q?6F9+4x7kcwwTocjVRDz0MVmFHCmjFCv4ZJXgiVGGH7SWp7aG1dcRks5YZ2?=
 =?iso-8859-1?Q?WZGogXFy+/9aGivm2VFiHgyZhUwoqBdxQpPngkFGWtgJNVmwm79Linmf2f?=
 =?iso-8859-1?Q?ahf3pHWXVjtmVwZCWd1jOQR+qmQFCZcqcJJ3tvcnY+xg94naLnfS4qFP7+?=
 =?iso-8859-1?Q?H4mjh6gJN9b4md2w4oz6+IIoHNzEQEdkjuuyydhl64C4HSJq4Wc6DASikI?=
 =?iso-8859-1?Q?EuWX9YboaBLSJB8RD2ODEVJKKzLKRQrIHrXzRnBWV5ovJj6yHfQo+MXwDu?=
 =?iso-8859-1?Q?2BLpF7G7Voiue5j/0oQGuhQNPL5AUY+g73UnNut4TvGIpdVSWOoTQP7zZ5?=
 =?iso-8859-1?Q?/ykUjloDFLcoXV9RPtrEoObu7xKdyemr2GeIfAUIDbBRvemKnmqFTJ7tXu?=
 =?iso-8859-1?Q?na3Scd3oAWviRHyPe6e+WKdmy91I9ozinh9zaGbVN2eVqg47xOQitGA5CI?=
 =?iso-8859-1?Q?6NGU0DfOlWxWeI295/85bto8ieaswRkIV1H7jDjWUAD2il3MbrYDOc7PwE?=
 =?iso-8859-1?Q?CoFAog/ylca9cZ9cpjeTzFRneXv+3wJfmnCKszkH4iHBVzV00L+jNYjI7o?=
 =?iso-8859-1?Q?qNPhSh7U0OMgGRZPQjY1bUXvKb+EG7LSkIa5rAXpC5lXOapKWP75EapafV?=
 =?iso-8859-1?Q?MQ8ggPjN3jz+xVtwnY7LX9q3aZjLyk6qy8T0MyjG0C4C/WLwCwB/JVRGFm?=
 =?iso-8859-1?Q?AVOQN5R3Uy6hRE0uVFaPqb3Vv0U0pHKykQ5B5i0F/XkR9lrFN9ETvWdg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b248deed-5627-44ea-26e5-08dc54143f96
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 19:28:32.4061 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0fOgbV+EELDjycrpQ4U0A9X7T409pKM7DYNlQEzJfcmkDkPPIwCegbLth47E50gSeHtvvKIZQJuF+1h4nAawZzj4mFQGvFbIdxVbEdQeyUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7041
X-OriginatorOrg: intel.com
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

On Wed, Apr 03, 2024 at 04:52:37PM +0530, Balasubramani Vivekanandan wrote:
> From: José Roberto de Souza <jose.souza@intel.com>
> 
> Xe2_HPD has a different value to power down port A.
> 
> BSpec: 65450
> CC: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 13a2e3db2812..caaae5d3758e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2921,17 +2921,28 @@ void intel_mtl_pll_enable(struct intel_encoder *encoder,
>  		intel_cx0pll_enable(encoder, crtc_state);
>  }
>  
> +static u8 cx0_power_control_disable_val(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +
> +	if (intel_encoder_is_c10phy(encoder))
> +		return CX0_P2PG_STATE_DISABLE;
> +
> +	if (IS_BATTLEMAGE(i915) && encoder->port == PORT_A)
> +		return CX0_P2PG_STATE_DISABLE;
> +
> +	return CX0_P4PG_STATE_DISABLE;
> +}
> +
>  static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_encoder_to_phy(encoder);
> -	bool is_c10 = intel_encoder_is_c10phy(encoder);
>  	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	/* 1. Change owned PHY lane power to Disable state. */
>  	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
> -					    is_c10 ? CX0_P2PG_STATE_DISABLE :
> -					    CX0_P4PG_STATE_DISABLE);
> +					    cx0_power_control_disable_val(encoder));
>  
>  	/*
>  	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
