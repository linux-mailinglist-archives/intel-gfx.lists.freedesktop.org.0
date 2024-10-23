Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B059ACD89
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 16:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF32E10E807;
	Wed, 23 Oct 2024 14:55:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvwU+3Wk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B692B10E806;
 Wed, 23 Oct 2024 14:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729695358; x=1761231358;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=1xRfxlAF2dIG0s8tV2PPacjEfo+T4QsjhRPrmAvzmQI=;
 b=NvwU+3Wkv7kpDXEjlDhCLiM5L+t/6Z1Al4kJHpDc9/3uukSZxcYXhDzN
 w535JGN7WaOWWa5ioG1fd8YuXsC8FUiMXf/JFiSOECj/aXSrKMSAoyLJ0
 8wGvwrRYvOiSGKq5V8vKP1QTbLulmRgAEgh5dH6LAv4MM5060mOi9Ltve
 iAy0qKyv65Inulm6eDw4lJpst1LUVLyBzlbiaCfNWasaCRKp2s5q06js7
 m/iEYl2nLTHVUjhGSEBhswv56PQSps/b7n2iBxDhemEnv22dSIbWLkCt5
 6RP0c7b2l5pMrjE0hCXsCykCCk/m713ookRxpR+lFtH6PGI5Pvd4aPkht A==;
X-CSE-ConnectionGUID: MTA4XLKMSVO2c7N3pQYNAg==
X-CSE-MsgGUID: 9yKXjN07Q2+SD12tGSduYA==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="28746614"
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="28746614"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 07:55:57 -0700
X-CSE-ConnectionGUID: y6UksYOYTzmFdjfHpbd/jA==
X-CSE-MsgGUID: 2pFMNhWVR+iz19Pjd85KWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,226,1725346800"; d="scan'208";a="81062803"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 07:55:57 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 07:55:56 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 07:55:56 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 07:55:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mzVzZ2DiTQU9To+SKoaOGG35hTcP1DptO/kiaw0kXv+y5+76wSb8fdH7qgUB3kJD4x4jFzdVGiVe5HfUDN8LZIkhJTXtFaMG/qUruZNpU8Pcu3gQL0UoQ0rAl/+rinAyoIaTTj/20zfdoj8k32C5WYxcUAAI6Agb6MYsNK+E0mHqqNeXzCMesgRa5eG72X+um1OykMELi9e8pBem7B9+Yduuw6VQrdxEe22lHAvicDiOY/IQ3TGkPIhSStrspGCxT1cUf6OD8fHQXYhKoHx3ESDvRQgH0h2zKoaALxkzSKGEqVJ3sEgwZYNqqjZ8kokI3NhlOrsZPBrn+R2miet7fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+emAssbSsaYEcH5qkCG361GS/VZlL9oQAVF9/OM72Q=;
 b=hOEDUL8asJ9oCQ6G/TEvRZlxmzNhK8yzQJR2Gy1r45k27h9nqgKB03M6amx4YRHOh7UgyVpggyYvhiFGjx0FA/2dBzaiBx7lRIa9Li1n4GufL+zkFidYzBr5EZYQ5Q8ZjgYm/dHutkRsoG6TZ1WrTMMe49vp9mprlEaf1AKxBm/VayF+6speWjwmKH2wFlMCKEVupfPsY2O1paKnkLO3/zJIRN/URMQvDFZyHvHVg1TTUbfHUYx27KRYWn8IbbBXj2KWT7Gmw22Ul8x+y3z8ibKzvjkqwKS2eZ3ehvkQRivCigNi+v4awByLIfEPBUhQkCby7piyCdA4zr7Pco+TFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH8PR11MB6681.namprd11.prod.outlook.com (2603:10b6:510:1c4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.17; Wed, 23 Oct
 2024 14:55:52 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Wed, 23 Oct 2024
 14:55:52 +0000
Date: Wed, 23 Oct 2024 10:55:45 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 04/11] drm/i915/hdcp: further conversion to struct
 intel_display
Message-ID: <ZxkOcTHyzcyZ9Z37@intel.com>
References: <cover.1729612605.git.jani.nikula@intel.com>
 <ad036d2f267ab49b7943f46dad94c0f34e9f2d84.1729612605.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ad036d2f267ab49b7943f46dad94c0f34e9f2d84.1729612605.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4P223CA0024.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH8PR11MB6681:EE_
X-MS-Office365-Filtering-Correlation-Id: 10df9540-cc15-4a4f-f8c4-08dcf372c90e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Bkraoz81c+RMPnDUKovFOTXT/NnbOoDfuNfoJ2U7lZnD+ei0EmJDqzRjFgzH?=
 =?us-ascii?Q?PK/9ns5c2TVe/e62w0FtPXsq6opMrv2Xitsr3eKW37Q6PumHyCR9c8uZa5SS?=
 =?us-ascii?Q?zfqhCARS+p+01eDK7lG5Z8dLiaUvmyRgkUjggWZ1ZbGG+273bbjBJdzl2HDt?=
 =?us-ascii?Q?wrUgLtdgLxkGkXPDIldWOddo6oOYIuSjutvsz9DbL2Ls+QG8mLtYXKR6eyS2?=
 =?us-ascii?Q?BtZPjgVmqIb+Vrfyjsa2YUowoM+49IfN1dS5fLiQFl3imwaWjMIrNZF8vjRd?=
 =?us-ascii?Q?grNqRyemHSUzdx54ct4PXvBMnbJGu/3G0UrisGwFY5/ssvA0FnHEanBqz939?=
 =?us-ascii?Q?zr6aD91DW//2iZ3IGwLwS5ittog8eU613zJj1rJXOu2OHBriL24DjEd9qrQp?=
 =?us-ascii?Q?cSpjTcwyW6gduPbunY5t8qxxxT4g0YMoscRc8SbNv0dHwbyqHEF67S0QlmCH?=
 =?us-ascii?Q?A4TSJ3ruZYFtGkCJfABexLJQpQmPdEPmxvL+JFGBLosl0Q4W/POYPOhNiM8A?=
 =?us-ascii?Q?7+Exf+qg8SYtn7a3wjQAcQ9K/2WSxcKEitC/COH8WPCjBksXpZohf6PWRR7G?=
 =?us-ascii?Q?AB+aH3+BeIPeCLr61kRbpBOnuEtErKxWBo3U5FOHK7hS1/Cehad/gf7BN3Po?=
 =?us-ascii?Q?KDOlXXqrxK8IXGc5fXh7ff8zXC/if5BVZQlJy+v2BM2q+Vcyvkw5wE93RwWF?=
 =?us-ascii?Q?Aqx9rm8ZSI/DOHR6VrUOG0rf1oP3me0Jbv4AxHij/T4jlESLFIPILeMkdnrM?=
 =?us-ascii?Q?K7Ckv3Qjy7sHJZxfbUiSgaBOeb8dK3zygdEUqI3Df+0wyP8I8ORGjW6EtDIN?=
 =?us-ascii?Q?dWwqxLvKw4ob8j4w9GOE8A77x8FvI/rLbqkpbVLtHjmVPb8PNmmroxV5wVxX?=
 =?us-ascii?Q?d/syscl4EYeDoRKPyIFYGHSCy1dcKk/9CWcjEgpytik3WVPr/1orLhWmA1fX?=
 =?us-ascii?Q?ViZAgqARAN1gA+2t+hxwFPeCY0ZY7sYMMVf/uDWTeXY0sAvMJUKVVMLVdm4l?=
 =?us-ascii?Q?hmFqchd6ZnP7w3bNwcNbHfoLZnYcF6coTx8oV6Dl+VEFFivd3xc71Ng9cNvZ?=
 =?us-ascii?Q?ml3jfCejp9OaAs80wcmFAbtfvXExcL7ZUTBE89B/Xt2Eo/sbuzLKqt4Ik5M+?=
 =?us-ascii?Q?s8yACFNNhr2qgoKIWnvAQMIzIYU4W/osYdusxCjibFz/jZu47UT3JGJE+paC?=
 =?us-ascii?Q?5TKz5h+9IoKJn6uUTV9D49e+/TBVN9SunJe4fLUKBcU9SY/aFxa984OX/Tg8?=
 =?us-ascii?Q?dQke4lz5aIV2EmwThbvASNYAf2X+lLNeZkIJX4Oy4DXN6eV1gmVP04MHdrtT?=
 =?us-ascii?Q?naRsJZCWZRm+RH9shjMOxnS9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rg+cOxfwqjhH6yTcdWwWsBPeYs5Y6ZTQAOxwqdsHwZgJbjIOmbhyg11hG4bM?=
 =?us-ascii?Q?G67LJGhEfL6+NsIaCTpt0X+WMDJ9IktgzJaG+GLeVFu6t2dOH/CEOrKFzgbU?=
 =?us-ascii?Q?e8+8bnU6JhREXI9/XBIP1VOBACsPupEP/H3HUDHr1AMkXc9RmNKGoaI1ySZH?=
 =?us-ascii?Q?52gqxPXOWnMwJNQWCAhCWOZOFmcF6jlyqTLgOGilP4sZRdDDNM5VYBeXVx4y?=
 =?us-ascii?Q?9z1Vg55CjOiQ9VSNW4ySkh0NJk17rZanyzDsRuQ5JRfsKy05T5tISGaXhIUx?=
 =?us-ascii?Q?gYf0Ma/cuxghdKO5TsmnxmGuklk3YI+5hkJmBK/OtLcazjdB9MyFSDhTc9+E?=
 =?us-ascii?Q?SEp/y+m6238BHJG3mdsxbGDSx/lT1NBLFLIKk7eDc/nl9LiD5TbdWsBZMSSe?=
 =?us-ascii?Q?qtIG1v8Ax4q4ohXGW62Fo4EYiRvJ6aSPflnvdA6qilR58Iix8M2HkhfXWg+g?=
 =?us-ascii?Q?8gKc6tiMwAWD4S7rwZCF4uqR3kGciC4oeVq1MeSQQugi0m5sik7HJ2ej2dpt?=
 =?us-ascii?Q?hWXU/iekHgfJh2B8qet5PxgTIxFNwMWQGGsXP1GW7Ye8eW82uHCE2Ng8d3qS?=
 =?us-ascii?Q?HZCIsA0BSXNT2RXf2bQ+VNs0g9sbNTpG/gezNWP2LceJ9CD0nuwRZQL7/+gT?=
 =?us-ascii?Q?ocYBDewFcOcomumfdiosWMYHEL00VLLFKCdaUA5xJ9vRW5LU9e8cdRkc0q+I?=
 =?us-ascii?Q?D3mfRiLG5fiBDYL9QlqYMr4IRXAzW83EtW6tl8DV1n/N3HaWm1NfsFDpYvn0?=
 =?us-ascii?Q?LkSS/jyvZV07xygpzKJcbR+iUbYdIHRtnTrAbg7FPB07JmjWDYE0oRyK37BO?=
 =?us-ascii?Q?UBs/IN+QfVMYXW5OmvLF2ygJSxTx26rEH3NROQj4QD71heEXc99CRcXIY9NT?=
 =?us-ascii?Q?8byWltXSXVvZJ7X/TBrM5fJ2ES8yyleGZmsuitrHkenkDDyNyu/6vjEqRvKN?=
 =?us-ascii?Q?A8MU1nSBMLjn2l+Wu8nVqJZ2vFtUUpGb066pO9CQ/kzLoHpwXsCOsk9TiFZA?=
 =?us-ascii?Q?EXQpeU6XeBEcQAPht3GT0m+woKEmVPztXK4UrfdsY/KzNEQWGHsHQIxyczgE?=
 =?us-ascii?Q?6hZugLLvRaUDENXKEiEqCtlyUYZ7VpYNtUXrecNzAMQ2cnv8UjVLHvEci3Xn?=
 =?us-ascii?Q?Z0Rgg5/9HxBk2G2pVisMufo1Le3Ok92oXX9Ex0wCdf1kbKxGTL5eJbu6kbpB?=
 =?us-ascii?Q?aca8NpgkSwSLgUqIdUHQ/Wg5glYbMbmgTGCkeEZz5rMTzbFD7PA6Mj51xCCB?=
 =?us-ascii?Q?ReOJf1eG8piPKtUZ4VueRWwXcZdupU6wFltxSnQTk1GNj1ju4QzQ+uKyePCk?=
 =?us-ascii?Q?CnKERz9J0SBXNBiDEZTeb6XYWiYkm4ms+BJ0QOxKwwnhTmZ88SlX4fnu1QlG?=
 =?us-ascii?Q?nHA6fSVlxc+5NwnRY13wPtgvqY68Ere4A3ozbAyTOv2hCF2kRNUGXXgnCDqj?=
 =?us-ascii?Q?vOJeW3ogGILMLgVeyl66+exSffUTKzya8LVDErerGVZGpeY51zF8fY9DWsOA?=
 =?us-ascii?Q?KtLKUqZmgSbR0y2Kgrla8jVLPmTe0q+HKs/FoWLiEnhfffxdFvSWS+1+NUDa?=
 =?us-ascii?Q?czxnmrQks4aqImUM/RpIe/Mk/keR5aMM9tSHkw3U8MLEppGj2COK+vi9JL62?=
 =?us-ascii?Q?zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10df9540-cc15-4a4f-f8c4-08dcf372c90e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 14:55:52.5425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZyMK+r7PVFurs3fcq6/o90wu6KLOoj8xd5wqiCfgDZhCnEDC9VEMnqkeaVQzcf5oDYhq/SJ/dZP2du/gkox+Cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6681
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

On Tue, Oct 22, 2024 at 06:57:21PM +0300, Jani Nikula wrote:
> There are some unconverted stragglers left in the HDCP API still using
> struct drm_i915_private. Convert to struct intel_display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_driver.c   |  7 +++--
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>  drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  5 ++--
>  drivers/gpu/drm/i915/display/intel_hdcp.c     | 30 ++++++++-----------
>  drivers/gpu/drm/i915/display/intel_hdcp.h     | 10 +++----
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  3 +-
>  drivers/gpu/drm/xe/display/xe_display.c       |  4 ++-
>  7 files changed, 30 insertions(+), 32 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> index ae5470078173..3b37a8a69201 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> @@ -485,7 +485,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  	return 0;
>  
>  err_hdcp:
> -	intel_hdcp_component_fini(i915);
> +	intel_hdcp_component_fini(display);
>  err_mode_config:
>  	intel_mode_config_cleanup(i915);
>  
> @@ -495,6 +495,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
>  /* part #3: call after gem init */
>  int intel_display_driver_probe(struct drm_i915_private *i915)
>  {
> +	struct intel_display *display = &i915->display;
>  	int ret;
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -505,7 +506,7 @@ int intel_display_driver_probe(struct drm_i915_private *i915)
>  	 * the BIOS fb takeover and whatever else magic ggtt reservations
>  	 * happen during gem/ggtt init.
>  	 */
> -	intel_hdcp_component_init(i915);
> +	intel_hdcp_component_init(display);
>  
>  	/*
>  	 * Force all active planes to recompute their states. So that on
> @@ -600,7 +601,7 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915)
>  	/* flush any delayed tasks or pending work */
>  	flush_workqueue(i915->unordered_wq);
>  
> -	intel_hdcp_component_fini(i915);
> +	intel_hdcp_component_fini(display);
>  
>  	intel_mode_config_cleanup(i915);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6aba1d03a9d2..df3aa5fe3441 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6415,6 +6415,7 @@ bool
>  intel_dp_init_connector(struct intel_digital_port *dig_port,
>  			struct intel_connector *intel_connector)
>  {
> +	struct intel_display *display = to_intel_display(dig_port);
>  	struct drm_connector *connector = &intel_connector->base;
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  	struct intel_encoder *intel_encoder = &dig_port->base;
> @@ -6504,7 +6505,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
>  
>  	intel_dp_add_properties(intel_dp, connector);
>  
> -	if (is_hdcp_supported(dev_priv, port) && !intel_dp_is_edp(intel_dp)) {
> +	if (is_hdcp_supported(display, port) && !intel_dp_is_edp(intel_dp)) {
>  		int ret = intel_dp_hdcp_init(dig_port, intel_connector);
>  		if (ret)
>  			drm_dbg_kms(&dev_priv->drm,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> index dce645a07cdb..5d77adaaf566 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
> @@ -873,13 +873,12 @@ static const struct intel_hdcp_shim intel_dp_mst_hdcp_shim = {
>  int intel_dp_hdcp_init(struct intel_digital_port *dig_port,
>  		       struct intel_connector *intel_connector)
>  {
> -	struct drm_device *dev = intel_connector->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
> +	struct intel_display *display = to_intel_display(dig_port);
>  	struct intel_encoder *intel_encoder = &dig_port->base;
>  	enum port port = intel_encoder->port;
>  	struct intel_dp *intel_dp = &dig_port->dp;
>  
> -	if (!is_hdcp_supported(dev_priv, port))
> +	if (!is_hdcp_supported(display, port))
>  		return 0;
>  
>  	if (intel_connector->mst_port)
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..870084af92d0 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -1192,10 +1192,10 @@ static void intel_hdcp_prop_work(struct work_struct *work)
>  	drm_connector_put(&connector->base);
>  }
>  
> -bool is_hdcp_supported(struct drm_i915_private *i915, enum port port)
> +bool is_hdcp_supported(struct intel_display *display, enum port port)
>  {
> -	return DISPLAY_RUNTIME_INFO(i915)->has_hdcp &&
> -		(DISPLAY_VER(i915) >= 12 || port < PORT_E);
> +	return DISPLAY_RUNTIME_INFO(display)->has_hdcp &&
> +		(DISPLAY_VER(display) >= 12 || port < PORT_E);
>  }
>  
>  static int
> @@ -2301,9 +2301,9 @@ static int initialize_hdcp_port_data(struct intel_connector *connector,
>  	return 0;
>  }
>  
> -static bool is_hdcp2_supported(struct drm_i915_private *i915)
> +static bool is_hdcp2_supported(struct intel_display *display)
>  {
> -	struct intel_display *display = to_intel_display(&i915->drm);
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	if (intel_hdcp_gsc_cs_required(display))
>  		return true;
> @@ -2317,12 +2317,11 @@ static bool is_hdcp2_supported(struct drm_i915_private *i915)
>  		IS_COMETLAKE(i915));
>  }
>  
> -void intel_hdcp_component_init(struct drm_i915_private *i915)
> +void intel_hdcp_component_init(struct intel_display *display)
>  {
> -	struct intel_display *display = to_intel_display(&i915->drm);
>  	int ret;
>  
> -	if (!is_hdcp2_supported(i915))
> +	if (!is_hdcp2_supported(display))
>  		return;
>  
>  	mutex_lock(&display->hdcp.hdcp_mutex);
> @@ -2367,19 +2366,18 @@ int intel_hdcp_init(struct intel_connector *connector,
>  		    struct intel_digital_port *dig_port,
>  		    const struct intel_hdcp_shim *shim)
>  {
> -	struct drm_i915_private *i915 = to_i915(connector->base.dev);
> +	struct intel_display *display = to_intel_display(connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
>  	int ret;
>  
>  	if (!shim)
>  		return -EINVAL;
>  
> -	if (is_hdcp2_supported(i915))
> +	if (is_hdcp2_supported(display))
>  		intel_hdcp2_init(connector, dig_port, shim);
>  
> -	ret =
> -	drm_connector_attach_content_protection_property(&connector->base,
> -							 hdcp->hdcp2_supported);
> +	ret = drm_connector_attach_content_protection_property(&connector->base,
> +							       hdcp->hdcp2_supported);
>  	if (ret) {
>  		hdcp->hdcp2_supported = false;
>  		kfree(dig_port->hdcp_port_data.streams);
> @@ -2432,7 +2430,7 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>  		hdcp->stream_transcoder = INVALID_TRANSCODER;
>  	}
>  
> -	if (DISPLAY_VER(i915) >= 12)
> +	if (DISPLAY_VER(display) >= 12)
>  		dig_port->hdcp_port_data.hdcp_transcoder =
>  			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
>  
> @@ -2583,10 +2581,8 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  		_intel_hdcp_enable(state, encoder, crtc_state, conn_state);
>  }
>  
> -void intel_hdcp_component_fini(struct drm_i915_private *i915)
> +void intel_hdcp_component_fini(struct intel_display *display)
>  {
> -	struct intel_display *display = to_intel_display(&i915->drm);
> -
>  	mutex_lock(&display->hdcp.hdcp_mutex);
>  	if (!display->hdcp.comp_added) {
>  		mutex_unlock(&display->hdcp.hdcp_mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.h b/drivers/gpu/drm/i915/display/intel_hdcp.h
> index 477f2d2bb120..d99830cfb798 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.h
> @@ -12,13 +12,13 @@
>  
>  struct drm_connector;
>  struct drm_connector_state;
> -struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_connector;
>  struct intel_crtc_state;
> +struct intel_digital_port;
> +struct intel_display;
>  struct intel_encoder;
>  struct intel_hdcp_shim;
> -struct intel_digital_port;
>  enum port;
>  enum transcoder;
>  
> @@ -37,14 +37,14 @@ void intel_hdcp_update_pipe(struct intel_atomic_state *state,
>  			    struct intel_encoder *encoder,
>  			    const struct intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state);
> -bool is_hdcp_supported(struct drm_i915_private *i915, enum port port);
> +bool is_hdcp_supported(struct intel_display *display, enum port port);
>  bool intel_hdcp_get_capability(struct intel_connector *connector);
>  bool intel_hdcp2_get_capability(struct intel_connector *connector);
>  void intel_hdcp_get_remote_capability(struct intel_connector *connector,
>  				      bool *hdcp_capable,
>  				      bool *hdcp2_capable);
> -void intel_hdcp_component_init(struct drm_i915_private *i915);
> -void intel_hdcp_component_fini(struct drm_i915_private *i915);
> +void intel_hdcp_component_init(struct intel_display *display);
> +void intel_hdcp_component_fini(struct intel_display *display);
>  void intel_hdcp_cleanup(struct intel_connector *connector);
>  void intel_hdcp_handle_cp_irq(struct intel_connector *connector);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 022ba3635101..665b980cc74d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3025,7 +3025,6 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>  	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
>  	struct intel_encoder *intel_encoder = &dig_port->base;
>  	struct drm_device *dev = intel_encoder->base.dev;
> -	struct drm_i915_private *dev_priv = to_i915(dev);
>  	enum port port = intel_encoder->port;
>  	struct cec_connector_info conn_info;
>  	u8 ddc_pin;
> @@ -3075,7 +3074,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
>  	intel_connector_attach_encoder(intel_connector, intel_encoder);
>  	intel_hdmi->attached_connector = intel_connector;
>  
> -	if (is_hdcp_supported(dev_priv, port)) {
> +	if (is_hdcp_supported(display, port)) {
>  		int ret = intel_hdcp_init(intel_connector, dig_port,
>  					  &intel_hdmi_hdcp_shim);
>  		if (ret)
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 695c27ac6b0f..b5502f335f53 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -202,12 +202,14 @@ int xe_display_init(struct xe_device *xe)
>  
>  void xe_display_fini(struct xe_device *xe)
>  {
> +	struct intel_display *display = &xe->display;
> +
>  	if (!xe->info.probe_display)
>  		return;
>  
>  	intel_hpd_poll_fini(xe);
>  
> -	intel_hdcp_component_fini(xe);
> +	intel_hdcp_component_fini(display);
>  	intel_audio_deinit(xe);
>  }
>  
> -- 
> 2.39.5
> 
