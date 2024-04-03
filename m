Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3544B8979A7
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 22:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780D6112EA5;
	Wed,  3 Apr 2024 20:11:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwrEFpN+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FE5D112EA5;
 Wed,  3 Apr 2024 20:11:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712175084; x=1743711084;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=NJnE8PYOoCwKwjPZ5QdFBQEkIv6tyLl/Yn5h7OGDAR8=;
 b=DwrEFpN+FVkVB95X2YvzrqPNBDvfZY6jlrJO6LTxlwGQEObN4XYhnwV+
 naz6jMwEuxRuwbnpBq8CL8dPp8rLoTz105Hbg+yE9VtdxHBJWnd1NbyWN
 kyKJynrxHAAYF5HKhd5rgppqAbyTWrwTO9z1LmTS1Yz9BHUMK8/xyiMY2
 4iV7oFyKD694hytZTwDqu/Q89ODPL9rq2A/0OEI4LSccOd/Zy/LjARYr+
 wVc/e2ZcWHLkFxju+29T6Z1zFResxieGyk+/mBAZRQWa8XCmhS9iBZL6i
 Dyz/hXNRBzuVkd7xsPDlf5+HHAqlo8+Q9kJ1dnRw+WVHJt67xqUUg9/2f g==;
X-CSE-ConnectionGUID: YAETyPwsTW6M8HsT/ZBwlA==
X-CSE-MsgGUID: vHHJ3FRuQ5yUt3cS/GP9uA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="24938075"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="24938075"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 13:11:22 -0700
X-CSE-ConnectionGUID: aBWzWUa1RzGCxSPj9cZpgA==
X-CSE-MsgGUID: U802jqQzQQqrNs8WM2EQ7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18585790"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 13:11:22 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 13:11:21 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 13:11:21 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 13:11:21 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 13:11:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLFt063Qgf7ES7WRVWDnOcfuv7oMPE7u1FwjKeQ4oqMUTP4VEyy4yR0G/rayZvnfcgoZqBRN9WSRG40QyGrCHF6DTIvDttMOS+p0lv49SEbDnFs5GrbWHRd7696SA+yDHD2jzGh6aKwxNv7MtIj7ZwaOVozieGBRhnkQzsQc53Dp8RDgGkYLchu0O87/jr0rJbRRZFCgGn5s5X6omDXNjB7C0FN+FhFuUAeEgJ3nE++o1tYT0shsQVmiPb0+dvH4spfM/r3bZcCtAyVRlzNKhBqjArfGUttBx63Td7fKEF9UZegELHEfeK1dVHltQ+0DxDdMS9mK6nXko6k2evbWyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=np7b67a6DzLBLAdXR1z/g6R4HX3Zs55N52I1Z/iBpY4=;
 b=hWdHyb8gvT+NGcIAVwXStw3NS4LbjLlueYnGMc+Y8Yo2mOjY8e9AP8dkD4kHSGY+oJrQc2eP9g472o9op8zllJfGWfP2GGnq0dtt8FlxSdMHNTLDQgKxFw5brq/0tr1AaIv4QqPrnHb6FwYzloFmKXLf2FA7OvEprxt8R95KHekGZcO75VZRZqDewYlvuDKReHHSolx0ghJIhy4nQ9St0Fl7hYpVz6TS6kTeZLZ3Z1Tyr8KxCGWhqlOU3Kul9BbNn4AvBbPPHfZsc0TBRJRoxYCB6jHiVck93R2qmodidj/TKRoWWhf5tqlBnAp+jGLZTGoQctMnV4CfRmht2tHJnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA0PR11MB4542.namprd11.prod.outlook.com (2603:10b6:806:9f::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 20:11:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 20:11:19 +0000
Date: Wed, 3 Apr 2024 13:11:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Clint Taylor
 <Clinton.A.Taylor@intel.com>
Subject: Re: [PATCH v2 11/25] drm/i915/xe2hpd: Add support for eDP PLL
 configuration
Message-ID: <20240403201116.GN6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-12-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-12-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: SJ0PR05CA0154.namprd05.prod.outlook.com
 (2603:10b6:a03:339::9) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA0PR11MB4542:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6LSnY645o0widJnYA1SDKvfFTrO/fjvrTolpRKnaMGRXCTjT+Rk0fhytty5gTx9VCpSzLI8gi68B6uhqd0w1Z0g3yVZVx0KDVSHdLz3EOfc9mWNh4MjdFjgBYxHASqEpM23DSq3sVUyu7X+hTg/3pnGz/WpK0Ag7aTXcBwOHzsigEurcroYdBX0+Xy/XH4ZRvbfKk+YM8mXM+6rCvLT0hrbrK5AuPqM7KsSuSYaIJHlhIjsmJ2He1udVmXa6iwdsajlFGxBrceGQTtdo2BQGxKjo+z9o2h5to/Yu4H2/wo7UPSHLvlZbhZ+64gcYLI2PBB4uGj53MQC4J5gze3eACCUgesQ3KD75E2jDHBcnhC1eqHxIjwV4PlDw43aE1jqSdBOSYyy3+PD+IPbZpwsosC+DAmbcvCdivJg7GLSx27mT/AQ+nzqGNBG4PLsLIF4hVIvmJ6P7GbXB4NCJb4k+udvyDDaWJn1bQRXCZWgKRcULKyzfogOGiSoJtWSSSrojuJfshWcrFck1xN0cgEdPjj1aGRKEK0K8NyVV16DfX+qVrMvqRFcml8TpCizUN05On2ruNDg0dIHKAEW4FQTrzat3JwY7WH37jIE7GpA22/kAmY7iEaVJSZV74F/zkx1Wj6EkKErzk1DwPcNS/crFtxJv2PO1jnt2XpwsralwfS0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kc4M5h5NnKtiqZFocGikpk0QFV26B/3UlP/dKPMuISGlLZItxb7cNDoNTdwd?=
 =?us-ascii?Q?5SG81ZelWt2hlOCmeWByK+iz25f6v23WH6BdFg60xOVGVJ9Sss24ecsJZwf3?=
 =?us-ascii?Q?L9IP6k31fjUzQPTJqM65JpDY/LfJGMa0APToATJ47VSVZ4x8pkJSUyEhyoRT?=
 =?us-ascii?Q?tyf3VrmTgoP+YQ+rC/0ME8qV52k1hzqTzEEZcCqmefndm1gvRkYvNkW/706S?=
 =?us-ascii?Q?XhE8Lx2DRR6pfhCAPBDIxANODZkUqGxoMjVoucYY7Df1x9bFxohjI2zxy1yh?=
 =?us-ascii?Q?7bBfHXlA6hxbVDxH0iyThBBJdFOakCq95F4L+8GHPW4ccAau84oz8L9oYe/r?=
 =?us-ascii?Q?8Veu7FabhZb99CZira06MTVKTzDfmHKg8EGELtcpdQs3c9sywXEBEEg2SW08?=
 =?us-ascii?Q?Th5N5nNwKcRn9nUzN5EXkVnQdBwiP4b3cjQbr1jw7Uh2yayU1gBkoDER/rPj?=
 =?us-ascii?Q?ykXwIBeq5I7FBijpbF8qVo7EbSzBNLycwHhjZ7prQAAPIMm43pYJHFfz40IK?=
 =?us-ascii?Q?8vyyGuoim+f6svqX05SNQbtUTF2W5KGurjv9gABKV12FOH1ZSx5M3rrZEHJv?=
 =?us-ascii?Q?Cz8+dxD6BT7DjAuKodH7IIDUmmCi7PIAwWnqgPEFk9kLvCGyI8olHFnQItT0?=
 =?us-ascii?Q?/PNA0+E3pcqHaRt7rqLGpWFaysV0yeIfTn4b06dKiIW325curOGgIw0LpZZt?=
 =?us-ascii?Q?Cxf0ufEaghA99epmEONhOpB7mspRMbCX3ikrvR2bbPrLmCFOJrjGxT4JV+aM?=
 =?us-ascii?Q?NItLItKdrl1tB82/tTtk2CcmlVq0QRXJmpiuxuPBjcPfgdQFiRQ6mPNa92qZ?=
 =?us-ascii?Q?+rEvUlqy3lGUDRvPZwi9JjH+HMWvvS+tj/RiNBFWjANkLaZzA/hYLSFBe2Go?=
 =?us-ascii?Q?fSqITr0UdDW9PIZcNSP8fBex8Tr0Q5pwkOYPPpVjvgKUS6Kk0ZEUyky9Wzxx?=
 =?us-ascii?Q?C9bSg0jmCEqHNG2rGp2NlGrnL6Yqf88/JbGlUUUY9Ns/EXotePhfy9o/5BmJ?=
 =?us-ascii?Q?naimy7Xb+61/RrrzC2xbZRPHPh5wqtLeGMGNWyC3RtfFN4e8TRDLlAXpPhXV?=
 =?us-ascii?Q?cj0ypVHCDasjTyotx5zDqtDOs9+nhuvJdsdMDSfDaZ0mhy4y4ZuzpuhOUBlN?=
 =?us-ascii?Q?xpigHkMS6MCPIGj9k3oqFuWB4Y80kc0Kl/iZTdxd7tLQZ198BoCoJUmzSJ4v?=
 =?us-ascii?Q?+jTOlMNR+HoWKCkxsu7enB7B2sky6Uief1CtUfCVosgRg7Y+pwxyDf5NyhzJ?=
 =?us-ascii?Q?D0h6SJNeYMF6F+5mWSilXFhsDkKnd58tmNtmWYvFYGe2xmv5+I8e4bdz/4xw?=
 =?us-ascii?Q?fQALvU+OavSrLT8grbAIsv/lAI+KA024ywphicOyxhJI0Uakp0t72PSTBsa/?=
 =?us-ascii?Q?bbgUSKD+HK40bEZ1rUz1x3LS9HnCmNT69wcLngZXVAdqkKHvHI8R9HyqJqw/?=
 =?us-ascii?Q?krmU/xqGtU/IXX1H5P0z8vxYgGH0CjoK2VbdDia1SeF+TplbK+VaW4m6ZNmR?=
 =?us-ascii?Q?8VfYDGXFlIblT01Yj/+tSWvnNwbdp90ATwPeEk9GGHy5RsQY7gq/eTKnZR4R?=
 =?us-ascii?Q?uYmv9GVwOiHl5Z8qrfHk+MQRsRr7fK2K5jtrX1MNrT92n5U7goDcYsUTSKwF?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acd33554-b27e-4b44-43e8-08dc541a3966
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 20:11:19.0143 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zETPI1PyY7Alp2BbLq5qaGIjEGiv7YSiHTpnou3iQc7SkeGHnWAn4+Uwfjtr8G5IvVvN9q8uOnFKqkmPB6LCBSax+t+4ysFbEGxHudqLZVk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4542
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

On Wed, Apr 03, 2024 at 04:52:39PM +0530, Balasubramani Vivekanandan wrote:
> Tables for eDP PHY PLL configuration for different link rates added for
> Xe2_HPD. Previous platforms were using C10 PHY for eDP port whereas
> Xe2_HPD has C20 PHY.
> 
> Bpsec: 64568

I think 74165 would be more accurate?

Otherwise the tables below match the current spec, so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> CC: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 147 ++++++++++++++++++-
>  1 file changed, 146 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 6e4647859fc6..d948035f07ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -967,6 +967,148 @@ static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
>  	NULL,
>  };
>  
> +/*
> + * eDP link rates with 38.4 MHz reference clock.
> + */
> +
> +static const struct intel_c20pll_state xe2hpd_c20_edp_r216 = {
> +	.clock = 216000,
> +	.tx = { 0xbe88,
> +		0x4800,
> +		0x0000,
> +		},
> +	.cmn = { 0x0500,
> +		 0x0005,
> +		 0x0000,
> +		 0x0000,
> +		},
> +	.mpllb = { 0x50e1,
> +		   0x2120,
> +		   0x8e18,
> +		   0xbfc1,
> +		   0x9000,
> +		   0x78f6,
> +		   0x0000,
> +		   0x0000,
> +		   0x0000,
> +		   0x0000,
> +		   0x0000,
> +		  },
> +};
> +
> +static const struct intel_c20pll_state xe2hpd_c20_edp_r243 = {
> +	.clock = 243000,
> +	.tx = { 0xbe88,
> +		0x4800,
> +		0x0000,
> +		},
> +	.cmn = { 0x0500,
> +		 0x0005,
> +		 0x0000,
> +		 0x0000,
> +		},
> +	.mpllb = { 0x50fd,
> +		   0x2120,
> +		   0x8f18,
> +		   0xbfc1,
> +		   0xa200,
> +		   0x8814,
> +		   0x2000,
> +		   0x0001,
> +		   0x1000,
> +		   0x0000,
> +		   0x0000,
> +		  },
> +};
> +
> +static const struct intel_c20pll_state xe2hpd_c20_edp_r324 = {
> +	.clock = 324000,
> +	.tx = { 0xbe88,
> +		0x4800,
> +		0x0000,
> +		},
> +	.cmn = { 0x0500,
> +		 0x0005,
> +		 0x0000,
> +		 0x0000,
> +		},
> +	.mpllb = { 0x30a8,
> +		   0x2110,
> +		   0xcd9a,
> +		   0xbfc1,
> +		   0x6c00,
> +		   0x5ab8,
> +		   0x2000,
> +		   0x0001,
> +		   0x6000,
> +		   0x0000,
> +		   0x0000,
> +		  },
> +};
> +
> +static const struct intel_c20pll_state xe2hpd_c20_edp_r432 = {
> +	.clock = 432000,
> +	.tx = { 0xbe88,
> +		0x4800,
> +		0x0000,
> +		},
> +	.cmn = { 0x0500,
> +		 0x0005,
> +		 0x0000,
> +		 0x0000,
> +		},
> +	.mpllb = { 0x30e1,
> +		   0x2110,
> +		   0x8e18,
> +		   0xbfc1,
> +		   0x9000,
> +		   0x78f6,
> +		   0x0000,
> +		   0x0000,
> +		   0x0000,
> +		   0x0000,
> +		   0x0000,
> +		  },
> +};
> +
> +static const struct intel_c20pll_state xe2hpd_c20_edp_r675 = {
> +	.clock = 675000,
> +	.tx = { 0xbe88,
> +		0x4800,
> +		0x0000,
> +		},
> +	.cmn = { 0x0500,
> +		 0x0005,
> +		 0x0000,
> +		 0x0000,
> +		},
> +	.mpllb = { 0x10af,
> +		   0x2108,
> +		   0xce1a,
> +		   0xbfc1,
> +		   0x7080,
> +		   0x5e80,
> +		   0x2000,
> +		   0x0001,
> +		   0x6400,
> +		   0x0000,
> +		   0x0000,
> +		  },
> +};
> +
> +static const struct intel_c20pll_state * const xe2hpd_c20_edp_tables[] = {
> +	&mtl_c20_dp_rbr,
> +	&xe2hpd_c20_edp_r216,
> +	&xe2hpd_c20_edp_r243,
> +	&mtl_c20_dp_hbr1,
> +	&xe2hpd_c20_edp_r324,
> +	&xe2hpd_c20_edp_r432,
> +	&mtl_c20_dp_hbr2,
> +	&xe2hpd_c20_edp_r675,
> +	&mtl_c20_dp_hbr3,
> +	NULL,
> +};
> +
>  /*
>   * HDMI link rates with 38.4 MHz reference clock.
>   */
> @@ -2084,7 +2226,10 @@ intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
>  {
>  	if (intel_crtc_has_dp_encoder(crtc_state))
> -		return mtl_c20_dp_tables;
> +		if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_EDP))
> +			return xe2hpd_c20_edp_tables;
> +		else
> +			return mtl_c20_dp_tables;
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
>  		return mtl_c20_hdmi_tables;
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
