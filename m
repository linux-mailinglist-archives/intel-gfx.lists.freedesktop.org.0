Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A718C7791
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 15:26:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 414EE10ED14;
	Thu, 16 May 2024 13:26:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EAmr3E7N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EE7B10ED14
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 13:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715865966; x=1747401966;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bPNAvzqct3qh1I6UHbzEQtzJn/fZ9vvKvloymIujrq0=;
 b=EAmr3E7NK9MSxuhBdmiexbi8q9Fxzzxs293jxSWQp8cWBzsbw02owhOG
 sMFn+M9g2FvlUDlzIAxk1N3bE6Qv5scjxMoQuM3uHoymopzp+oBI5tMp/
 tCGoHs2wqCsIbV74EdGi/pb8koEI/v+lSPLGYzKpRvE4bThpiw5aX7kga
 xqTAixKqIH25EBSUa4RGHLtNlJV3DMb+Lkx5bdLGVDOxu9iZZb1e343N0
 Hp09FKZyo6KEIgfXi8LFfiSaHrsiV3rs+VbrCUbSQ0sTVATF46vK+Wmwt
 ChxKImRJwWM9iJmsp54RwQjTFaXbVRSpTyxcFNFX6MLWuBtycNwfbQWX2 Q==;
X-CSE-ConnectionGUID: zDWEGVhXRVGwr5IFrrnlmQ==
X-CSE-MsgGUID: /bSiPmEwRiqvefhSjeaiOQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="11827168"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="11827168"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 06:26:04 -0700
X-CSE-ConnectionGUID: V/BoUreARpy5dn33PmoWbw==
X-CSE-MsgGUID: 7izdMEDhQ66GJ0i33W+haQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="62643493"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 May 2024 06:26:04 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 06:26:03 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 16 May 2024 06:26:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 16 May 2024 06:26:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 16 May 2024 06:26:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHb2srsqqd+vxStWhkIcDobOH8WoZdNx9GbdrykF3z3v1iL2UKX5CVh0I21TEVA7v5WIwx1OYuHHJlER6+p3f+hPnNSdGYW+n3NkYiXu5sWdLqU6dyWcWPoensqFbKEFhdLyxlsNu7iO9IlJuReEOtAzr8QB1msG8YA3Hp7clTsg/LwRAiCs6OWwx0+jY3GArmLky78ZdPMu7kV0mO8iiUxCCTGUEgI4smkwj0n65gGfWnvgwMadFGwFO2Gb2ESp0+s8UwzjFrBLZce7VzLV+sHpsCI+zh7GhDOUQ27V7Pny3yqn+aEo9eHPHGqwvTI3BBzNk9QHkuQw0s/nPIE+0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sn8fSn0Q62QCdGdiW6KjR2aZq1Gp9l6sCdftX0cvsyc=;
 b=cfs0A49h6ojhP+eAQA+yIkZjawcCdBUOLKU1uLi7QZ2COJaSo3LtfZclWztnkjOrg1FaZtf4mOn+IBAjy7DBRJD5AXF3AnwwOKtLmdVii6pMw0ZnoMEFCULQji8+xUKmNyU5UYvqKAot05rBwbAKHgeDWcbo90LdRQQwm7SFZ9ODm+oDFRH1tIKRg8s1Vq8o+10DgAQ4F7q/1S6yBRq3C0hfhmUiSG3650+I38Sii1MZ+PthvSgYVphYU/e6b4SKYstMnxIe5/zz3+Ixzn3z/lgszVtAnx/HwIBhqD01uxQC4xV2QDxbjxC89cprzxTc0BDw45icnvqhClpr7CDwVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB8349.namprd11.prod.outlook.com (2603:10b6:806:383::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.58; Thu, 16 May
 2024 13:25:59 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 13:25:59 +0000
Date: Thu, 16 May 2024 09:25:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Lucas De Marchi
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: stop redefining INTEL_VGA_DEVICE
Message-ID: <ZkYJY9ITCVV9tiZj@intel.com>
References: <20240515165651.1230465-1-jani.nikula@intel.com>
 <20240515165651.1230465-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240515165651.1230465-2-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB8349:EE_
X-MS-Office365-Filtering-Correlation-Id: fb84358f-23c1-4b79-735f-08dc75abb95a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ctV4hF4jVXRrHJhubTuSu5aSIU5V+j9Md20CRmw4MYkY+56Qj+j9CPQZTEDs?=
 =?us-ascii?Q?NM3h4GR+tEGMIKyBv+gOJ++nR3yMblfWx8MtcimKk8MPXUVpYBFpClTc8L2I?=
 =?us-ascii?Q?DEh16WE0sbOs/yrxeqH3DUlzeA0+fwSjWkwGfxy+Jy7qJa+TOiFnWm96JxIu?=
 =?us-ascii?Q?38Q+yprf0bhxqrellP18x2s+ZwW1FEwH6le7L2orHIuQgl9bWR+O7NT6V4iP?=
 =?us-ascii?Q?aD99YZIRZycxD6ApAwMYmzG8meF+taVfw05PB19fDGDQ4FCKcW/8KZdb/jEf?=
 =?us-ascii?Q?HNEXhKBQm5xLYgI1ibvcBxadfcYs8kMS/AE9vpCLj2z770GKLfc+/bE/aZAU?=
 =?us-ascii?Q?Bbc9SxsypC0E9NJbjtXLK2Q1sO3ohS7y9oH9YfWkDV/FGndcxhgHvm2gu/tv?=
 =?us-ascii?Q?bROZ+lXZlOny8PaYL0Ie/9Lh8VzB72YdiHwYiQh5w3fXUYy/c6kJ7BJl90BL?=
 =?us-ascii?Q?C4aIRw6+CdGpL6tEyIkhj9o0SojgWAkj79As9J7Mbg2z0q7ndMJOFyNfTBSl?=
 =?us-ascii?Q?D/+gcvAgmp3mX4/fQRG7Hvy6TqSku40A7K33NLgjvwyZ9spd2n6pPvzi39m7?=
 =?us-ascii?Q?EQOPgEWZKRQ/BtMd07geP4uVqWRtjU1oIsTtyux1QhJPY5WLxzlwskQYBrTv?=
 =?us-ascii?Q?YZcu7Dq7iHKoFJwcrMnzIwXT8ea9z1YzUR1BVOZry6/UcTr17QVhLiyYKQY1?=
 =?us-ascii?Q?1ZJRy6UC221ldKYjCQg9WyetGcMXR/Htpp38wEc++bkBsVgIauRvKPD8ynTE?=
 =?us-ascii?Q?fOFDnzylToy6+tJj98pChe44FKebgGKJKKoT/juaZg98yw70fdjhxC38ei9j?=
 =?us-ascii?Q?WrtljFXgmSCsr9FubwSTDXHYYNaNnKp+sKE9VY4loe0vJJ89c6KF8cs96MGi?=
 =?us-ascii?Q?PZ9yRpwNWN7NVkBMXbuA55NIVO6xhW6Mf5TbH4b96ua5F5aujWsfTsir7k6H?=
 =?us-ascii?Q?QmmseK+oB1l4kR+MLTFB1OlaAOumEAha1LY1+7Kv7Hz3EdnUZvNMgu4ZFdyB?=
 =?us-ascii?Q?8dZLdZJmY7EZt6qvRUWRytMw91eosSvemn0dfsOpTBaMALlisFY7yFjOk+s+?=
 =?us-ascii?Q?+BMyGBWiCFZMdTltQ3in86Zv/Gff1Xxp2pUHce4pvvGGYWN0+zzWFhhXzlTV?=
 =?us-ascii?Q?TfppqBMgWtUBasA3tmW2F28i+k0itmuWCS+dl3gLWEynnMhKsvs08VAdFZB6?=
 =?us-ascii?Q?N5qOdHiGB4zsAEsyH2Zx+k6d/Urb2/kF4tup4lRCgUEXEKdJv79kujMoBgvx?=
 =?us-ascii?Q?6ls/XqVsZ6JtbWbb+OlXj5ISm1PKylXmOv2ldRisJg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i51tu5oZJlHRkAKsgLBTAuxDU/01vhD6lU49DS7RyXxcjvF1m4PAirxgxfpd?=
 =?us-ascii?Q?XbKgw2YO6EoaVT8EG9tdX6sW5p2cUTj9+uxKlajHXuuLwY2iJK79nqXK1a9+?=
 =?us-ascii?Q?ySaT6kLGPoIKM10fe4UcOX7DVirl6lPg5YGXNX46+6J3kuHqjBaP8zXfqc3v?=
 =?us-ascii?Q?K4VbPIPfhnpre3383DmH39zqPEQahBr9hqgkRFogF06tZdCkeGhBo9zIZECH?=
 =?us-ascii?Q?CIJ+3iRoO2uB1TJiGKtYmRMaVtDTD7LiZLp3LVmo+kWRjSVsdwrY/wA80N52?=
 =?us-ascii?Q?RWz4l3SQ8BQuycRQ/TpldEuLHArdT8Q7088DFYQyhX7HcZ5+C2d4MDZeRCAX?=
 =?us-ascii?Q?HSNcJqGB8Vy3n8XCDVn+mfwaXDb82+3aMw7BqQ+lJLn8KxIzoZJ46ej3XKd2?=
 =?us-ascii?Q?dJ/fbtiF4I7lCmJb4gD/oxcZSpwSZ6xKtOfBCRpSqMdvMtmcUnnTQQRVfZrj?=
 =?us-ascii?Q?AoqyMjmoR+coca83I6l+7aac2POBSrDxy5xYS/jwEz+ovn/SyMFgcLve/5Kg?=
 =?us-ascii?Q?LeBkEIQLp6NTb4XQ3kJAfSXRUXsZmaWIxSzQLw5dqTTl13wBcfagQCBPGCMq?=
 =?us-ascii?Q?ANQjEWXnDEkK1EL0/IEc+plC6tGA6CsFTkdRqJXmT3JuGwEJ6wps8PrtOEla?=
 =?us-ascii?Q?tZkegJe9sZ0MOI8Ftc7ijPradoMIfKYmJr/BTdIvaqpGkAvg4qCYJLFNqe1m?=
 =?us-ascii?Q?8amYDcJuX5TsdxcynpQpwRQdkSDrreGfOT7NqEiwJAuUDsXtG0Pga+Swvyzq?=
 =?us-ascii?Q?Di6Tbx25r/JsHWu7OV0GGiWPQ1FXUXKwfs0X/zH7WNYRJ5fTKS7ZkveLV1zP?=
 =?us-ascii?Q?vYuqE9ug441lIIjgTtaYeIc0QQGEPoqahGA0mAd9cJZ2+WtdR+bFdTj2uTVV?=
 =?us-ascii?Q?MPpoH7rwhZh93jzJOLwuX1nZ8KK21VWQgMpyhiNabLeMqmf5HVNI05eA2cua?=
 =?us-ascii?Q?K3xv9dgvaYcNq0Xj01gnjhB/s1RLzjtsuHZsTSBIyB+Tvxap/ALAW3SGDx4T?=
 =?us-ascii?Q?DJRs5XO7CC52xd6MxwUz5CZKddnpADxx65t2pR3GFlqpTnKxs3Ysv9Mlx4BP?=
 =?us-ascii?Q?ttZVorXKzJ6gQ97bD7p973xaSvFLLyWpxIjWE9Ks2Z/5wpxyuuv50mYliASQ?=
 =?us-ascii?Q?hOwDcMOtEFfb62cU/D5cHNHQ+h5KDvmFORO4nP3eQq+2H0n03AiA5sgrOyNk?=
 =?us-ascii?Q?j9v2JwwXf+TWF3QSqW7w7fwlpiYIQFKJDhw3loiv0R3G80T9lmytBXDIcghB?=
 =?us-ascii?Q?tm7cR0OOGtNt9uAyDwo0g1MUtW7uaFc1o91MQTEGRAYVDdWolVWLccfXn8DL?=
 =?us-ascii?Q?yPM1dmwt1HXB0xzak6lSmjKmMmUmUTS0V1BezYOIjB2EKLj4bvOybRAn1RDw?=
 =?us-ascii?Q?3OTGlJGCpUKCkN6WLMdTBz2iqT+3SOFa2FtvfQckyNlToetE0LUk5fWk/KZz?=
 =?us-ascii?Q?TZQ6M433oSmkm1Kx9udnE/zrdDVKjC6SwHAlz/2GYTtrEOirWY+BAd1Y8GF5?=
 =?us-ascii?Q?Y3vzgoQuJjkq0U9jil4Eyn08IRHLKa9ygkEpb82Q0F9SqY0wefxaMFnDjI+x?=
 =?us-ascii?Q?7rdrcB8jNs2C8hF70vyt4zZPnwCoEiqwbhSkXgf85DQrDsiebbkJIQhx2IsT?=
 =?us-ascii?Q?hA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fb84358f-23c1-4b79-735f-08dc75abb95a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 13:25:59.1250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a9601J0AsSUdDgl3ycvnXmiyTPaiQY8EWj7h8MwIqeWnFVo5W1r+mni+3qST8Thuv1h1sNm8z6mh2oMBxF+XgQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8349
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

On Wed, May 15, 2024 at 07:56:51PM +0300, Jani Nikula wrote:
> Now that the PCI ID macros allow us to pass in the macro to use, stop
> redefining INTEL_VGA_DEVICE.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 87 +++++++++---------
>  drivers/gpu/drm/i915/intel_device_info.c      | 91 +++++++++----------
>  2 files changed, 88 insertions(+), 90 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 950e66cdba0a..cf093bc0cb28 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -795,55 +795,54 @@ static bool has_no_display(struct pci_dev *pdev)
>  	return pci_match_id(ids, pdev);
>  }
>  
> -#undef INTEL_VGA_DEVICE
> -#define INTEL_VGA_DEVICE(id, info) { id, info }
> +#define INTEL_DISPLAY_DEVICE(_id, _info) { .devid = (_id), .info = (_info) }
>  
>  static const struct {
>  	u32 devid;
>  	const struct intel_display_device_info *info;
>  } intel_display_ids[] = {
> -	INTEL_I830_IDS(INTEL_VGA_DEVICE, &i830_display),
> -	INTEL_I845G_IDS(INTEL_VGA_DEVICE, &i845_display),
> -	INTEL_I85X_IDS(INTEL_VGA_DEVICE, &i85x_display),
> -	INTEL_I865G_IDS(INTEL_VGA_DEVICE, &i865g_display),
> -	INTEL_I915G_IDS(INTEL_VGA_DEVICE, &i915g_display),
> -	INTEL_I915GM_IDS(INTEL_VGA_DEVICE, &i915gm_display),
> -	INTEL_I945G_IDS(INTEL_VGA_DEVICE, &i945g_display),
> -	INTEL_I945GM_IDS(INTEL_VGA_DEVICE, &i945gm_display),
> -	INTEL_I965G_IDS(INTEL_VGA_DEVICE, &i965g_display),
> -	INTEL_G33_IDS(INTEL_VGA_DEVICE, &g33_display),
> -	INTEL_I965GM_IDS(INTEL_VGA_DEVICE, &i965gm_display),
> -	INTEL_GM45_IDS(INTEL_VGA_DEVICE, &gm45_display),
> -	INTEL_G45_IDS(INTEL_VGA_DEVICE, &g45_display),
> -	INTEL_PNV_IDS(INTEL_VGA_DEVICE, &pnv_display),
> -	INTEL_ILK_D_IDS(INTEL_VGA_DEVICE, &ilk_d_display),
> -	INTEL_ILK_M_IDS(INTEL_VGA_DEVICE, &ilk_m_display),
> -	INTEL_SNB_IDS(INTEL_VGA_DEVICE, &snb_display),
> -	INTEL_IVB_IDS(INTEL_VGA_DEVICE, &ivb_display),
> -	INTEL_HSW_IDS(INTEL_VGA_DEVICE, &hsw_display),
> -	INTEL_VLV_IDS(INTEL_VGA_DEVICE, &vlv_display),
> -	INTEL_BDW_IDS(INTEL_VGA_DEVICE, &bdw_display),
> -	INTEL_CHV_IDS(INTEL_VGA_DEVICE, &chv_display),
> -	INTEL_SKL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_BXT_IDS(INTEL_VGA_DEVICE, &bxt_display),
> -	INTEL_GLK_IDS(INTEL_VGA_DEVICE, &glk_display),
> -	INTEL_KBL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_CFL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_WHL_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_CML_IDS(INTEL_VGA_DEVICE, &skl_display),
> -	INTEL_ICL_IDS(INTEL_VGA_DEVICE, &icl_display),
> -	INTEL_EHL_IDS(INTEL_VGA_DEVICE, &jsl_ehl_display),
> -	INTEL_JSL_IDS(INTEL_VGA_DEVICE, &jsl_ehl_display),
> -	INTEL_TGL_IDS(INTEL_VGA_DEVICE, &tgl_display),
> -	INTEL_DG1_IDS(INTEL_VGA_DEVICE, &dg1_display),
> -	INTEL_RKL_IDS(INTEL_VGA_DEVICE, &rkl_display),
> -	INTEL_ADLS_IDS(INTEL_VGA_DEVICE, &adl_s_display),
> -	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, &adl_s_display),
> -	INTEL_ADLP_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, &xe_lpd_display),
> -	INTEL_DG2_IDS(INTEL_VGA_DEVICE, &xe_hpd_display),
> +	INTEL_I830_IDS(INTEL_DISPLAY_DEVICE, &i830_display),
> +	INTEL_I845G_IDS(INTEL_DISPLAY_DEVICE, &i845_display),
> +	INTEL_I85X_IDS(INTEL_DISPLAY_DEVICE, &i85x_display),
> +	INTEL_I865G_IDS(INTEL_DISPLAY_DEVICE, &i865g_display),
> +	INTEL_I915G_IDS(INTEL_DISPLAY_DEVICE, &i915g_display),
> +	INTEL_I915GM_IDS(INTEL_DISPLAY_DEVICE, &i915gm_display),
> +	INTEL_I945G_IDS(INTEL_DISPLAY_DEVICE, &i945g_display),
> +	INTEL_I945GM_IDS(INTEL_DISPLAY_DEVICE, &i945gm_display),
> +	INTEL_I965G_IDS(INTEL_DISPLAY_DEVICE, &i965g_display),
> +	INTEL_G33_IDS(INTEL_DISPLAY_DEVICE, &g33_display),
> +	INTEL_I965GM_IDS(INTEL_DISPLAY_DEVICE, &i965gm_display),
> +	INTEL_GM45_IDS(INTEL_DISPLAY_DEVICE, &gm45_display),
> +	INTEL_G45_IDS(INTEL_DISPLAY_DEVICE, &g45_display),
> +	INTEL_PNV_IDS(INTEL_DISPLAY_DEVICE, &pnv_display),
> +	INTEL_ILK_D_IDS(INTEL_DISPLAY_DEVICE, &ilk_d_display),
> +	INTEL_ILK_M_IDS(INTEL_DISPLAY_DEVICE, &ilk_m_display),
> +	INTEL_SNB_IDS(INTEL_DISPLAY_DEVICE, &snb_display),
> +	INTEL_IVB_IDS(INTEL_DISPLAY_DEVICE, &ivb_display),
> +	INTEL_HSW_IDS(INTEL_DISPLAY_DEVICE, &hsw_display),
> +	INTEL_VLV_IDS(INTEL_DISPLAY_DEVICE, &vlv_display),
> +	INTEL_BDW_IDS(INTEL_DISPLAY_DEVICE, &bdw_display),
> +	INTEL_CHV_IDS(INTEL_DISPLAY_DEVICE, &chv_display),
> +	INTEL_SKL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_BXT_IDS(INTEL_DISPLAY_DEVICE, &bxt_display),
> +	INTEL_GLK_IDS(INTEL_DISPLAY_DEVICE, &glk_display),
> +	INTEL_KBL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_CFL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_WHL_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_CML_IDS(INTEL_DISPLAY_DEVICE, &skl_display),
> +	INTEL_ICL_IDS(INTEL_DISPLAY_DEVICE, &icl_display),
> +	INTEL_EHL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> +	INTEL_JSL_IDS(INTEL_DISPLAY_DEVICE, &jsl_ehl_display),
> +	INTEL_TGL_IDS(INTEL_DISPLAY_DEVICE, &tgl_display),
> +	INTEL_DG1_IDS(INTEL_DISPLAY_DEVICE, &dg1_display),
> +	INTEL_RKL_IDS(INTEL_DISPLAY_DEVICE, &rkl_display),
> +	INTEL_ADLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> +	INTEL_RPLS_IDS(INTEL_DISPLAY_DEVICE, &adl_s_display),
> +	INTEL_ADLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_ADLN_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_RPLU_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_RPLP_IDS(INTEL_DISPLAY_DEVICE, &xe_lpd_display),
> +	INTEL_DG2_IDS(INTEL_DISPLAY_DEVICE, &xe_hpd_display),
>  
>  	/*
>  	 * Do not add any GMD_ID-based platforms to this list.  They will
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 82bb34416fb1..862f4b705227 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -127,81 +127,80 @@ void intel_device_info_print(const struct intel_device_info *info,
>  	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
>  }
>  
> -#undef INTEL_VGA_DEVICE
> -#define INTEL_VGA_DEVICE(id, info) (id)
> +#define ID(id) (id)
>  
>  static const u16 subplatform_ult_ids[] = {
> -	INTEL_HSW_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_HSW_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_HSW_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULT_RSVD_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULT_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULT_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULT_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CFL_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CFL_U_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_WHL_U_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_WHL_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_WHL_U_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CML_U_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_CML_U_GT2_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_HSW_ULT_GT1_IDS(ID),
> +	INTEL_HSW_ULT_GT2_IDS(ID),
> +	INTEL_HSW_ULT_GT3_IDS(ID),
> +	INTEL_BDW_ULT_GT1_IDS(ID),
> +	INTEL_BDW_ULT_GT2_IDS(ID),
> +	INTEL_BDW_ULT_GT3_IDS(ID),
> +	INTEL_BDW_ULT_RSVD_IDS(ID),
> +	INTEL_SKL_ULT_GT1_IDS(ID),
> +	INTEL_SKL_ULT_GT2_IDS(ID),
> +	INTEL_SKL_ULT_GT3_IDS(ID),
> +	INTEL_KBL_ULT_GT1_IDS(ID),
> +	INTEL_KBL_ULT_GT2_IDS(ID),
> +	INTEL_KBL_ULT_GT3_IDS(ID),
> +	INTEL_CFL_U_GT2_IDS(ID),
> +	INTEL_CFL_U_GT3_IDS(ID),
> +	INTEL_WHL_U_GT1_IDS(ID),
> +	INTEL_WHL_U_GT2_IDS(ID),
> +	INTEL_WHL_U_GT3_IDS(ID),
> +	INTEL_CML_U_GT1_IDS(ID),
> +	INTEL_CML_U_GT2_IDS(ID),
>  };
>  
>  static const u16 subplatform_ulx_ids[] = {
> -	INTEL_HSW_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_HSW_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_GT3_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_BDW_ULX_RSVD_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_SKL_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULX_GT1_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_KBL_ULX_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_AML_KBL_GT2_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_AML_CFL_GT2_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_HSW_ULX_GT1_IDS(ID),
> +	INTEL_HSW_ULX_GT2_IDS(ID),
> +	INTEL_BDW_ULX_GT1_IDS(ID),
> +	INTEL_BDW_ULX_GT2_IDS(ID),
> +	INTEL_BDW_ULX_GT3_IDS(ID),
> +	INTEL_BDW_ULX_RSVD_IDS(ID),
> +	INTEL_SKL_ULX_GT1_IDS(ID),
> +	INTEL_SKL_ULX_GT2_IDS(ID),
> +	INTEL_KBL_ULX_GT1_IDS(ID),
> +	INTEL_KBL_ULX_GT2_IDS(ID),
> +	INTEL_AML_KBL_GT2_IDS(ID),
> +	INTEL_AML_CFL_GT2_IDS(ID),
>  };
>  
>  static const u16 subplatform_portf_ids[] = {
> -	INTEL_ICL_PORT_F_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_ICL_PORT_F_IDS(ID),
>  };
>  
>  static const u16 subplatform_uy_ids[] = {
> -	INTEL_TGL_GT2_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_TGL_GT2_IDS(ID),
>  };
>  
>  static const u16 subplatform_n_ids[] = {
> -	INTEL_ADLN_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_ADLN_IDS(ID),
>  };
>  
>  static const u16 subplatform_rpl_ids[] = {
> -	INTEL_RPLS_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_RPLP_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_RPLS_IDS(ID),
> +	INTEL_RPLU_IDS(ID),
> +	INTEL_RPLP_IDS(ID),
>  };
>  
>  static const u16 subplatform_rplu_ids[] = {
> -	INTEL_RPLU_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_RPLU_IDS(ID),
>  };
>  
>  static const u16 subplatform_g10_ids[] = {
> -	INTEL_DG2_G10_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_ATS_M150_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_DG2_G10_IDS(ID),
> +	INTEL_ATS_M150_IDS(ID),
>  };
>  
>  static const u16 subplatform_g11_ids[] = {
> -	INTEL_DG2_G11_IDS(INTEL_VGA_DEVICE, 0),
> -	INTEL_ATS_M75_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_DG2_G11_IDS(ID),
> +	INTEL_ATS_M75_IDS(ID),
>  };
>  
>  static const u16 subplatform_g12_ids[] = {
> -	INTEL_DG2_G12_IDS(INTEL_VGA_DEVICE, 0),
> +	INTEL_DG2_G12_IDS(ID),
>  };
>  
>  static bool find_devid(u16 id, const u16 *p, unsigned int num)
> -- 
> 2.39.2
> 
