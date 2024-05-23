Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8528CDA14
	for <lists+intel-gfx@lfdr.de>; Thu, 23 May 2024 20:39:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CE5F10EF5E;
	Thu, 23 May 2024 18:39:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WcmiODLY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A5EB10EF5B;
 Thu, 23 May 2024 18:39:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716489564; x=1748025564;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=FpT9kh8o/qFgEtzaqTRB0rUboKchKPdHsBYNIvMvA2M=;
 b=WcmiODLY1l2RAznzNSFT0RukqXY+4b/Bf5zkN0qkgmONeriGYmtm5gBi
 B1yAmWNaLjbYznB+gjItahsh3S+JaE63Par6MSV1ZtswEtaHI7s0HYFAI
 1DTQOHEBHbjZQtYErpi5V2NID2bmida42CPD6RmAo3VoiBLBVORESKusI
 ciSHbdnRN8V4bHZeGtI2NQK+Ggq7w7S4M7wvMfZz/XIAzWuujmeHuH8cU
 EyyEOaN+rQ4SPucRmIIkZ6cPWAIW8JPTCsZaujJadh0FMWucfvI61dJC6
 ZVp6gn6Iu9E4zX1IqHhTb93VwAsklAk+k3BJXP+iA0xb6X4Ks66/h4wXX w==;
X-CSE-ConnectionGUID: G7dygDhdTLqWOqq26Js6xg==
X-CSE-MsgGUID: X3zqG3tORI2OdsSaRKtk+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11081"; a="12953895"
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="12953895"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2024 11:39:18 -0700
X-CSE-ConnectionGUID: OMzn8dcPTE6FC8thqPooaw==
X-CSE-MsgGUID: Yd45JSMcRr2SNqnjNOIi7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,183,1712646000"; d="scan'208";a="38548934"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 May 2024 11:39:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 23 May 2024 11:39:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 23 May 2024 11:39:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 23 May 2024 11:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=loAGvzCx00gDwTNJQNJw2wjw7uLhFPvdgrgJYqbABhfwqe+oVVCFM4UeV0nMs1eLBvzXryb6eO60lyUobkmAFMjXc1H7M/00wZVVER3l/A/RtqVvNZMGuSnMAd+saa0nuIEzPideKy1iDsTshKv2kiNU4SfDu4DnceXJmPjIzMCEwlP3koEjX9pKKG712egH7SZEAoRwh3BY1rtUSBIXbZ84pTD5kqdQs7zntGOXWHyL/6RWvcqTgej/ulUKX5FZk9jYkTcHDKILJTt9St0THr2d4GSijI/iSrJQg5gEDBKu55Xg3BWNShVENmWLu5meGA108kSAvs3p9GAlR02drQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Eypmb2F4hRjUA0hQ6LVnHCDgeeLuk/pqcy2i1NBS4lk=;
 b=YnX2Ce7w3zf0MjFKmzGR/oKFonv6tM6yl95jGzU7MlQbV3qx0N5CEKWesB9cRJP9VJPubUtrYBeaC0Np5IZ72f+mc8T2GZHpG+AtCxT0ISeB6AAGpnSUTDMepgBQ9TfyOfEoIbyjCTJaj54eFv93Lwdnyzrmh5La/hzrdF89TgW6yrmJv7S2M86zLgabQFnPCtQDth+bRNXji4YRXV9Nfn8Y2NQNn/5a+ASFy9crxsrYMDxTFl9+6ZgFluJ7scTpXZSPDCVLqqHwpmmBt2pHFeatF15HWSB8CFzHw8AfDwmZFe32wU0sFPV48CTFnGA/YGYFDLBywKrDrTPs4vDw4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by LV8PR11MB8770.namprd11.prod.outlook.com (2603:10b6:408:202::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.36; Thu, 23 May
 2024 18:39:15 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.035; Thu, 23 May 2024
 18:39:15 +0000
Date: Thu, 23 May 2024 14:39:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 07/10] drm/i915/display: change display probe to identify
 GMD ID based platforms
Message-ID: <Zk-NUDFQbiA4Mxpo@intel.com>
References: <cover.1716399081.git.jani.nikula@intel.com>
 <e26f6a1a0aa2b051f49d76242194f819be3d83fd.1716399081.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <e26f6a1a0aa2b051f49d76242194f819be3d83fd.1716399081.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::42) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|LV8PR11MB8770:EE_
X-MS-Office365-Filtering-Correlation-Id: 275cd89e-4740-4ab6-6412-08dc7b57a5a5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?4jvjCYyC+Zd3OWOk8QMfCn5EG6iPAGUTXp8C2hynOdwo5C+nod/LgdRqxj09?=
 =?us-ascii?Q?wekLkhyKn6jS7OcBjn9j9W4MbCPSNmpD/+tnnvyWyTm4Fo4qwco3nuu7IfgN?=
 =?us-ascii?Q?ez9nASzb8IywunWZvXe5z4K+ODtk9I4zXa5S48SK1jFmkh7ydJzdCVv8pn2x?=
 =?us-ascii?Q?3uQdydEXniNEJQUqtOdYykzQ20wfuHEoHLI81tN/0Rwou5KuLlwKPB1Q5vwp?=
 =?us-ascii?Q?KtW0z6v4rYX+83LX74fAodw3zsJRz1bk+M3wudpws+B8skWGzGf9xek6K6S9?=
 =?us-ascii?Q?89GHzgcsZQBKYI/N7q6l9zGkCPjgrr9ZMFnTXMjhoFavId/aG2/H2O8n7i30?=
 =?us-ascii?Q?mkc7EnfHfQ3RMfaDT6TgFV/QoK8EastD+QromjKBTRYEESRiZ6BiI9PPxuQG?=
 =?us-ascii?Q?KlmWTnBhjuFTTkHUa8v3LbRfJbmmVywye3Bff+tsM6DjeXEPtwLfMMB7mMfe?=
 =?us-ascii?Q?4fupS7IbyvKIr+TL7nyu+hqGxlFg9x8tAJuVESzYvG4KuurPDxal3CnpGZdz?=
 =?us-ascii?Q?cX9p5kG8M3nPry7hG35qrnzOaFdx/yUwIh3suO+d+RJ75j3ppCmdQrgr6OYu?=
 =?us-ascii?Q?S28Ti4kxiZHy51E6jdpiGdMg54LdEsZ6QOwwzfr4Lzu8PArwVEdXCo4SypeQ?=
 =?us-ascii?Q?aXTH4BeJaUlQPezBhc6WiY7XToHk+vtAhS/qHAv1wRTCRW6OdIVEcJAk8I+O?=
 =?us-ascii?Q?xgICbfYFyAJKBIq/Jqs6wa8MyGw7fOAf8VmsbG8f8nhfJqgF5QYBAIyLfOwj?=
 =?us-ascii?Q?7AVF6FWTZzim32aj1YtxK/rmEGnxy5ZS2qc9b/GjUZPOx1nOf66JrLJuJe6H?=
 =?us-ascii?Q?lyFhe/ldUq0RN5/h2xrKeYLzpdgAMH1KebHa14YZYRQ/v5CB+gwxKzcy+BoE?=
 =?us-ascii?Q?aLpPY3Nt5nQBdLfVsS0Q4cs0C7ZNCNXz77q6n+x1jONmiOExNEoz7oibVnPP?=
 =?us-ascii?Q?h45av3HeAt/eGPmP+A5FT6ThIS4cxVppmqUE1SmTDvpmc62cXGSkZfoaai0c?=
 =?us-ascii?Q?bxryEeU6bh4AEMHXZ1fmV4Qvc3oJNoNPTz0OlV7e/M/1dzil9MjhM8MnkmeF?=
 =?us-ascii?Q?uyrTdjJPKekYpKQLSxBGhTfKZNXBjIEXLFTnsNSAPGcrTpfT249QyWAsajA8?=
 =?us-ascii?Q?qjteeU4BUc4TXcqua4INoi+e6b4m/A0M2mJHigOuj2/K/D5GM6k/hf3SbkHd?=
 =?us-ascii?Q?VlzU40BEODQ7J5EU62LJcF//qJJjOnWPw+ZlmwNZIS7+8yQLfbcxJP+wv15a?=
 =?us-ascii?Q?9+/9X+nYhoZ3aQX62raGtBo03hukrlNP8+P3AYopwA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4PR/968j26/RdfbKsuUrwEbNG9bkG+77ycwWd8ag89FoGBMSuQFSZi92BlF9?=
 =?us-ascii?Q?gL9da8K326/bVgWj7rDlpAGJVMit4I7B7DmuX1SOTGU+DO48h6E54FLvE2WI?=
 =?us-ascii?Q?JxfDkaE31XjZ+Pju4VZFvSZnmzEtytHAiRZ8i0tSZIbDyS5IgzgxfokPLnje?=
 =?us-ascii?Q?B3+8N6AvDCn0BlWt4U2mhJXCVxVHYRWLnX7K066qYj/AF6aHMQk++SqT/Ni/?=
 =?us-ascii?Q?/K7Bkw+vEUwUFC98GQ/Pa+9cNFEEtfvUo9OCUcnt3nWAg1V10crn5OiNBj1Q?=
 =?us-ascii?Q?3HSjd+zMOavEalArQCt3jvVQ0Vz6lgkX7lfhVcknQeksG6kwuEwMB5ReuPBF?=
 =?us-ascii?Q?WU3E/FS7YeStrvkDLLKazGcfmd77uSQk+I9ssNPBqKi07dxFWbaoo7akhRAW?=
 =?us-ascii?Q?4kHlQc64cBGJoHvyZHU5l1CEq7OMeuJDITvjIVEel9rBthL1Xn2nobBhhChO?=
 =?us-ascii?Q?FSR+mKsXxnJ6E5nKbgWEKx8zOz+JZ4HGBqsSVRr70iCCFv5Uks0Hv9NMF9xb?=
 =?us-ascii?Q?Wss+yig16mTQR2aBHDH4ZSoGpf1u4hxBz0NQ59eZ1Bd/UH1vqlXiGOdmtZn4?=
 =?us-ascii?Q?HQFZLOl2zsXzWzJug89jhTsR8r4SNTmaO6/bMzbXkAXMVKnCSXL7LAazhzbB?=
 =?us-ascii?Q?RHiOmfZgNrv6vLYhXGSL2IJGs5pouyqujtaVkMARQ83VWWbBSABjKjPMGkUC?=
 =?us-ascii?Q?DlNqZZRsSAwQZa6nCetKth633W56O5JN/rn3mvH7TKzM3QBAa4sp7mrA0IQi?=
 =?us-ascii?Q?Q1wdq6pJXLdrjz1QAa0dZRdjfG3Ivc6q1sVAjYvm872cWE+WnsyM/aECBLrV?=
 =?us-ascii?Q?rvV1HQVyjbldQBYHGZ+epQuRG7YeIzVc00PSDwz53EcEslDY7pHJnUKLq9ei?=
 =?us-ascii?Q?O2ZjLWwDHWKTXur+8BzLMcqnI0OCtTjaowZF/iCqgo7yz6wZtWjKYnP4Hduk?=
 =?us-ascii?Q?zfD7hyG1+0EfcazfjPqU8vwCl0FQBy8qbCnErKVpRHaOSGYA66uRLDbpYhg9?=
 =?us-ascii?Q?pmgOl2eSKb06SwZ7f0xU189lwvG7NDXjfhqMCYvJsgVrOTf99gzR5qSgBC2v?=
 =?us-ascii?Q?iMgS0wKA60Klkr0yfD5pKNqjaEoiGLEzU3GWFFg7l66P6CNPxzoSMCIakqq9?=
 =?us-ascii?Q?LgaiV66FDPXwkG+YDl+Da3BwrsCNCNlYp7r7wFQhhvIpuoN0fz/GlaOu2dFj?=
 =?us-ascii?Q?NsdD2ktn45+bTNWebGf6fZ8wMiKCNzbSsasz1hRf7KtZv9mc9OFaK7ST/1k/?=
 =?us-ascii?Q?Nq8kM20iFUOioVrOEX4y1FNScUg/iiInww90oG5NuK/d5ykPKV4neY1sZAK9?=
 =?us-ascii?Q?mIGwAI4a3nXmh/vKA53o8t7dNi1U7IN7hCVElq1lfk4Vcl8s+bCC5R4ul8Vv?=
 =?us-ascii?Q?6UOS28wK2tTcAzIRccTdOTkGJaQ2RQHJb0d4jLT2xU2xkye7Xhr9QegJL3B8?=
 =?us-ascii?Q?JBRenjWffrf4Z8IOSu12wamOv1zQBxmETe21a61Ym6pEhwDh+Z2t4/hu2MIm?=
 =?us-ascii?Q?QweBaSbs7L1uitWB/9s+Uqpwmy7JGsH+0xDu0imIJp/mRGTtnpIxATWXMCkS?=
 =?us-ascii?Q?vb9elugkOU7WdXAkQJO7se5yXYTA41PCPvrIlCVBOnH3WZAiDgi7P57YI4/x?=
 =?us-ascii?Q?Ng=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 275cd89e-4740-4ab6-6412-08dc7b57a5a5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 May 2024 18:39:15.3301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rLDENWy09r17e7G6mKN6+lYI2CkwWa1MaH2q4H/zP45SavEM6E8mSKOSV/GPinGy5xAhJkJqGchzfHfPNWS17w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8770
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

On Wed, May 22, 2024 at 08:33:44PM +0300, Jani Nikula wrote:
> We'll need to identify all platforms, including the ones that have
> display defined by GMD ID. Add MTL and LNL. Their display info will
> still be probed via GMD ID.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 44 +++++++++++--------
>  1 file changed, 26 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index d1e03437abb3..416853ed50df 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -21,7 +21,7 @@ __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
>  struct platform_desc {
> -	const struct intel_display_device_info *info;
> +	const struct intel_display_device_info *info; /* NULL for GMD ID */
>  };
>  
>  static const struct intel_display_device_info no_display = {};
> @@ -871,6 +871,17 @@ static const struct intel_display_device_info xe2_hpd_display = {
>  		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4),
>  };
>  
> +/*
> + * Do not initialize the .info member of the platform desc for GMD ID based
> + * platforms. Their display will be probed automatically based on the IP version
> + * reported by the hardware.
> + */
> +static const struct platform_desc mtl_desc = {
> +};
> +
> +static const struct platform_desc lnl_desc = {
> +};
> +
>  __diag_pop();
>  
>  /*
> @@ -937,12 +948,8 @@ static const struct {
>  	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
>  	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &adl_p_desc),
>  	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &dg2_desc),
> -
> -	/*
> -	 * Do not add any GMD_ID-based platforms to this list.  They will
> -	 * be probed automatically based on the IP version reported by
> -	 * the hardware.
> -	 */
> +	INTEL_MTL_IDS(INTEL_DISPLAY_DEVICE, &mtl_desc),
> +	INTEL_LNL_IDS(INTEL_DISPLAY_DEVICE, &lnl_desc),
>  };
>  
>  static const struct {
> @@ -995,20 +1002,15 @@ probe_gmdid_display(struct drm_i915_private *i915, struct intel_display_ip_ver *
>  	return NULL;
>  }
>  
> -static const struct intel_display_device_info *
> -probe_display(struct drm_i915_private *i915)
> +static const struct platform_desc *find_platform_desc(struct pci_dev *pdev)
>  {
> -	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	int i;
>  
>  	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
>  		if (intel_display_ids[i].devid == pdev->device)
> -			return intel_display_ids[i].desc->info;
> +			return intel_display_ids[i].desc;
>  	}
>  
> -	drm_dbg(&i915->drm, "No display ID found for device ID %04x; disabling display.\n",
> -		pdev->device);
> -
>  	return NULL;
>  }
>  
> @@ -1017,6 +1019,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	const struct intel_display_device_info *info;
>  	struct intel_display_ip_ver ip_ver = {};
> +	const struct platform_desc *desc;
>  
>  	/* Add drm device backpointer as early as possible. */
>  	i915->display.drm = &i915->drm;
> @@ -1028,12 +1031,17 @@ void intel_display_device_probe(struct drm_i915_private *i915)
>  		goto no_display;
>  	}
>  
> -	if (HAS_GMD_ID(i915))
> -		info = probe_gmdid_display(i915, &ip_ver);
> -	else
> -		info = probe_display(i915);
> +	desc = find_platform_desc(pdev);
> +	if (!desc) {
> +		drm_dbg_kms(&i915->drm, "Unknown device ID %04x; disabling display.\n",
> +			    pdev->device);
> +		goto no_display;
> +	}
>  
> +	info = desc->info;
>  	if (!info)
> +		info = probe_gmdid_display(i915, &ip_ver);
> +        if (!info)
>  		goto no_display;
>  
>  	DISPLAY_INFO(i915) = info;
> -- 
> 2.39.2
> 
