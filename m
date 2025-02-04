Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3C4A27F18
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2025 23:59:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44BF510E705;
	Tue,  4 Feb 2025 22:59:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HYsYOdZN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AB7D10E705;
 Tue,  4 Feb 2025 22:59:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738709966; x=1770245966;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/3jaDEUL267SMitXsjZ2Iok6+AW7Tl/ISnkNC+Mc1f4=;
 b=HYsYOdZNuD21hE557lEscs+3vNLxpm13uOxJamdTeACfc+gx7Ipajt4b
 HRekp8Yjc29tnpNXCLJ3ZWn+rUyFwOc340btQ5S45Ig28EUsWSGHYZ1m+
 BFvpOyPudU8kjuOW9hnhvWrxL+Yrna6c840GxGZpUSRefKuv9/3pCWJ78
 wgik3BU+F78xjZ07tg9zUGUAM5OnFvJM/GBelJjEXBHRNg9SnZUKfh1Zz
 s8CaK+D2wVCDViAYJ5UDqwSd6i7ufDNu1b/NaQLIQ+D7+EMO6LGa2umqz
 LW940Ai+uxpIAE74TKeYEuluT5GayWt3AW0+j+sWYBd7ReLADDFTxhavD w==;
X-CSE-ConnectionGUID: WqximwxWT7C+Uv4VLATCwQ==
X-CSE-MsgGUID: cFKpkRgLQSyDplr8Rq8Qdw==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="42096166"
X-IronPort-AV: E=Sophos;i="6.13,259,1732608000"; d="scan'208";a="42096166"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2025 14:59:26 -0800
X-CSE-ConnectionGUID: R4tepPUSTFCj5IgyghblDQ==
X-CSE-MsgGUID: VHI5/iLbQWGJYoJ894Z5gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110567183"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Feb 2025 14:59:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 4 Feb 2025 14:59:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 4 Feb 2025 14:59:24 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 4 Feb 2025 14:59:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ah36LaaVrxS6d93gF9sLL+OY3RyexhiQJJU/7JiDPwEzyYTWqdjI+v2EoaVFr4DHHnrb6UNx4nen+85XGrKABnrjaEUSHiZxmO/iyDylt32ubnkkoVmKFy2t9Z6ah/m+C6wYQfQEGrMRX1GXQnzNCxafOHPTzpmLEZYWg4VDdl6z5CucPQBeGHVhfkfWQkiy3MNvn2UGIPwEHrtiQNB6w2NKKe0uiDKIqOni+6Y8mcD+rPfjk0GWpNJ4w2pH2aLXmzZ1trWqqF1cAQ1ldS2hxMA/4HoIEEMoG19KWhYWJ/hpPtD2aI3gEfj85dy/6phGM014JSj00vxptvwbIxDiIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6IJR5UMVTvGPKn12pZ2Q0OK3rZQ72YAhIppxA7p8AZ8=;
 b=dpBYVFW8d/3Ex0BdUz7mgUTVU/vaGudctGlb6Vzc9gMdjb0czZmW0xRJmiUWuyiaczLU+Llcdh1vUFBondIjRKzw3CTI6QBvrZ4JjwE0yUtBpw2HYlEU2QsrZrAN6RGVrn/e98EVJn92EPsyDpJRnWsaqamv7cX6pSLQ4Od4cqLyB6Lrt4+8J2Vkm4d2DP6kg7gAixPBNRatNC5JZPOpNEmTZfe1nnfP2GV0FPVLGUtbiJ+e5xBu043gwtWqgGMXIzU/yDuRP9xwKsgCjz0mGyDp7ajApKxSE/CYKdPKApA9d+i4HNJtpZ7NuR4UQaS6uANXhXzgH1xJVjYVgCo+9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by BL1PR11MB5223.namprd11.prod.outlook.com (2603:10b6:208:31a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.26; Tue, 4 Feb
 2025 22:59:09 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Tue, 4 Feb 2025
 22:59:08 +0000
Date: Tue, 4 Feb 2025 17:59:05 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 5/6] drm/i915/lspcon: remove dp_to_lspcon(), hide
 enc_to_intel_lspcon()
Message-ID: <Z6KbuaFn-ypjhwpF@intel.com>
References: <cover.1738677489.git.jani.nikula@intel.com>
 <ea14ba07b88ba5ed65d832c89a3415b7a91edea9.1738677489.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ea14ba07b88ba5ed65d832c89a3415b7a91edea9.1738677489.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW2PR16CA0061.namprd16.prod.outlook.com
 (2603:10b6:907:1::38) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|BL1PR11MB5223:EE_
X-MS-Office365-Filtering-Correlation-Id: 3566ff16-2fea-4a90-130b-08dd456f8800
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8qnnbvWzOqX5YwX8cr4C+sp+oYUQyOUps+faLi+J50Y6BJDnVIHENiojOkq7?=
 =?us-ascii?Q?YSQGwdDgzEjFFyagS4O7eKwHbl2eE3dca5NZ75zZR7BjIB7iwkGkprPoMKCn?=
 =?us-ascii?Q?ZmXoFlrtwCxhRCSEQaR3Ykdah88uxUuNVeFOKF7CskSl0tNrX4ZIvf4sFzuj?=
 =?us-ascii?Q?iYFS6yXkj69cqTQM2wuALE/qAHChmUtKWshaENRObfGUDETHJsy5sujkyi0w?=
 =?us-ascii?Q?fKgaxvleWJ9XwwL8CUvsuQDRl71sfERQk2ryWZOZUB7ugRZ8JPi51Xyg9i85?=
 =?us-ascii?Q?mt+KXXzsjVJFu7YpFUqpUqJazbSfRrjRqLzTFIkL4ttJ64ygX9C69sw8dqgt?=
 =?us-ascii?Q?1vBoyuhPNkfWgx8bIquRgS+Rq8OXOP4T5jrafoVzdaBhk+8Eegpb7nQclNA0?=
 =?us-ascii?Q?qfmib/ONL2lzL6qC1dUsB8HT4Frsj0AYg2QxKFnV9Y/V7qRB1lI1kxC09PsR?=
 =?us-ascii?Q?zmEF7a9MI2AzHwSMFCw9wjXJxDLGvY1178vgpIb4RvYNmRcBW3AC3wFy0lal?=
 =?us-ascii?Q?CtLvCBHWfTg+P/6RA8yzqjaww1ty+ftEFZq+L51r0wpyk2vyCZwhpZmoFV55?=
 =?us-ascii?Q?LANhUsb25e1YrWFbD2HF8EFxtwCKr0dmImfG5A3HLyAUlOq9AABaJfPSXr0L?=
 =?us-ascii?Q?WfpTV/pV4Bh4OoC/eiQFBDBrOBousQz8GYDZWFd8I2EvePyn94kAljJo7yJU?=
 =?us-ascii?Q?d45uqiInEJpRFle/a6ukVQfYjmICn/BQPNM1QY5JrPVkHd4xOxqg1E7tnkJ8?=
 =?us-ascii?Q?8I+/+lB/V2JMObbFG+kyd4ihQv0YSHa4gFPK+oZpgnfFt11G+qCK5kyHxk8Y?=
 =?us-ascii?Q?Hli7zwZUlcVgMk+WVOKN24+YeAyqfMzaPBt0ZfODenWTRUbVLSHVT1CkguNr?=
 =?us-ascii?Q?JzQoTZOCMf1bsBPjIqB3qxBbSVWNsUy+1c89Dm4WGGDZxmSu/8wlkYW4sZ8d?=
 =?us-ascii?Q?hYU7iwQHB1HIQdPpsLKEfEPtYs/02AgSBeYdzDq8Sitz5hentGSEu0d8wfTm?=
 =?us-ascii?Q?rK3Ui6XpmBcRFNHDAF/nGvyBwhEy0ehe5NIittxZPI5/w+VJHL/o2TBrfJlH?=
 =?us-ascii?Q?ga+BSALSpLpzE8fnWkuUDdD6jUoRLm2u4RspF6WM5bTWTBrr47tsFXapcZze?=
 =?us-ascii?Q?bTxLsJODcnahVb1F+X3/OqrPWLtFFPvN00Mqo+a0wMPNJDFUEJ8oqryuLY1h?=
 =?us-ascii?Q?yEZwECcx0m+FgZCeMuQaBKDDsOSLm5KMiv+YtXu8WaV20/Myjyw5hEUbLrW/?=
 =?us-ascii?Q?9IwPEax0EVspOwz24qH4t5OIpVJ4pfc7936rWX703Gl+RN63JBKluB3NggW2?=
 =?us-ascii?Q?htU6TfuOc82I5FBP7lZfIB846EyaeaC+Nlxxb1us9FbZOD3RrB/lnlqnThR1?=
 =?us-ascii?Q?OLffRO3MgGbhEYiH/ZzXkaxiRyb4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zVYpDHNJTPtBnwyssQLsF++H1CGqBqirHV4lUiw4MPqTsC+k6PvKDAlzRxb7?=
 =?us-ascii?Q?rbZz/DPfrzIjUVheORrxF1KFHsrUau2jwf8NOzzQ03miMa8di9/5tIwGiWrB?=
 =?us-ascii?Q?5Zd9CIDZeFgfg1IshrmCB9p7XficPAfmn5Q97Elubi6aC1/KqCt4VzxsGfY3?=
 =?us-ascii?Q?iyhP1V/D2+EfYkWD/z+nL4sIK4QYEEqJ6LJFjgnKpDoyw8gVy0S0qVZoqlq3?=
 =?us-ascii?Q?RpC2+M1Bu1umf3t6zq44NjdWZ5YYUkNFWQohm7qq+m67Am0ITv66GIBvSqtl?=
 =?us-ascii?Q?uSgaqEYif8Ib+Tk2ftzBi5MItRXMr+LbI+pRz/90APvNjCpFwA0pYeNSlDZl?=
 =?us-ascii?Q?fv5IOrPkNNINCBJCQ4VDkq/19y9DissSG5gqo/hlwVwYX2yB9ctQboTxzTyQ?=
 =?us-ascii?Q?Q7U9apqbik2nlp0ldLx0Rs5mwQZ+TAO706amqhIoMeoFaismBAp6f8KBUJDa?=
 =?us-ascii?Q?SsUvEzdN5statDkt0+gmltqYTZ8f7m/Twz2CV2UNRo3+wvjtrwlY3KkKmh0E?=
 =?us-ascii?Q?eG5AZ87I9TbJkEITiK8ltTEiLCjZHa0uNf/RDijUKbyNRNOfUrzieMD611cB?=
 =?us-ascii?Q?Xd+9/ZAcA1DFoPG7ZXO8p5a1+RVbBYUUbM3tteU2e1YFnB3TYOLPprPenkbM?=
 =?us-ascii?Q?5e2TblToXzf24zA2Uh0O1tNG1SaVtDitqxThnbVxNMhzii1i+KjlZPZAsmMM?=
 =?us-ascii?Q?AnmIBjLxcNXqBbi9aVCscaG8dPeCmX/Z+s3Qr8GlbUI5aw+EgG6E1PhaynKq?=
 =?us-ascii?Q?O3HW0bxsa4q0HndCMtzQe1MmCimM88r9gH1TTEJ7XcS6Wr/r2Y+wvVnFr4lR?=
 =?us-ascii?Q?1YunxYtGRfveoPV/6Ft7VtCW+Rxm8YN9NaV+N6gPka+6d6JqzElRO2fEwS0T?=
 =?us-ascii?Q?v5KNOYZQ+c2keNGmtuqbcLGKQo2Tb9WEjg9uAxDRYxDgU3XFUOtR0drfA0W0?=
 =?us-ascii?Q?WGLy8mswU4uGz8qr/ywrm6wqLsCpYJp3IFfPwEi4mZssVFMRuzeByFiZ6h+D?=
 =?us-ascii?Q?mZEp1zYZKSQbrZzkDIRx57EPB4ysS0+TlH9Yz+yluWbsyAt9YxeWKZQ74ehC?=
 =?us-ascii?Q?xOKdTnxlHcYj7Mn2BwhuRRR/J0mhUd5vNeqHMV1eupgt3/JRLd8KHCG0yhK1?=
 =?us-ascii?Q?ICK6P9QRibTAuS9jantIFgWanvAJpwNp56k9FSzJgFbBcLeJlpS934u7NkxD?=
 =?us-ascii?Q?XeII4Xve5BJjKVDAFZDp/eo9xzvlgdaFULzhvl9nlH3YDI8BlpmAb6wbK1a1?=
 =?us-ascii?Q?w7b0N/Sx9l0XwoxBV4dS+qdsqdKmgbvasPrFnErKvd0IxGHekx5mmpX1euPU?=
 =?us-ascii?Q?+V9kWgT4sZaFZKHgcXcD8ctPa/XxQlHWraSsmk1Ygc3S5pdMhXNsXNsbzu7B?=
 =?us-ascii?Q?5MWIzL9kDTObzceydQntpJGnGgAnFJ6FTKYmqvRu8+nemsMHyBIGCRIhSNdG?=
 =?us-ascii?Q?vaPSZxg2ItC3mqWWcpxR7SdJEB/Lby/P+VhqqRWDJC+b/DxcMd4DXk0Zof1t?=
 =?us-ascii?Q?lsxfPMSA++b79INJjj2N1SBVCpBxygEHT1cyhds7iGh1I+g94Mmfj3nPK+W0?=
 =?us-ascii?Q?c5r1NgJqGoQMvRYg62NWCdp7GrD75r2zroAmjgjqs3T7BUGMzbtuDZB+n7a2?=
 =?us-ascii?Q?Kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3566ff16-2fea-4a90-130b-08dd456f8800
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2025 22:59:08.3689 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ohyDIUhla0rlrpYTYJFLql5Dy54z4PbQd8H8ObNtRcuo9/yMLYlV2IGtrf503fvEudlF4mxmOjh49CUdlaD57Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5223
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

On Tue, Feb 04, 2025 at 03:58:42PM +0200, Jani Nikula wrote:
> There are no users left for dp_to_lspcon(), remove it. The only two
> users of enc_to_intel_lspcon() are in intel_lspcon.c, so hide it there.
> 
> v2: Rebase

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 12 ------------
>  drivers/gpu/drm/i915/display/intel_lspcon.c        |  5 +++++
>  2 files changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index cb51b7936f93..a358620e2c09 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1982,24 +1982,12 @@ static inline bool intel_encoder_is_hdmi(struct intel_encoder *encoder)
>  	}
>  }
>  
> -static inline struct intel_lspcon *
> -enc_to_intel_lspcon(struct intel_encoder *encoder)
> -{
> -	return &enc_to_dig_port(encoder)->lspcon;
> -}
> -
>  static inline struct intel_digital_port *
>  dp_to_dig_port(struct intel_dp *intel_dp)
>  {
>  	return container_of(intel_dp, struct intel_digital_port, dp);
>  }
>  
> -static inline struct intel_lspcon *
> -dp_to_lspcon(struct intel_dp *intel_dp)
> -{
> -	return &dp_to_dig_port(intel_dp)->lspcon;
> -}
> -
>  static inline struct intel_digital_port *
>  hdmi_to_dig_port(struct intel_hdmi *intel_hdmi)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
> index 45b63fea3642..02c22a981fe1 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.c
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
> @@ -55,6 +55,11 @@
>  #define  LSPCON_PARADE_AVI_IF_KICKOFF (1 << 7)
>  #define LSPCON_PARADE_AVI_IF_DATA_SIZE 32
>  
> +static struct intel_lspcon *enc_to_intel_lspcon(struct intel_encoder *encoder)
> +{
> +	return &enc_to_dig_port(encoder)->lspcon;
> +}
> +
>  static struct intel_dp *lspcon_to_intel_dp(struct intel_lspcon *lspcon)
>  {
>  	struct intel_digital_port *dig_port =
> -- 
> 2.39.5
> 
