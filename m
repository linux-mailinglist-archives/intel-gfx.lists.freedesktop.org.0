Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA7D6D923E
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 11:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 107AB10EB42;
	Thu,  6 Apr 2023 09:06:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4C1510EB42
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 09:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680771975; x=1712307975;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=kvPc3oEaaTK+XacOXzEEMnXydhe6umVuuRAWrVc5ZDE=;
 b=GAXNsggaJRJwJY2SFILOzMPK0iOsQztGWUFCGFM3tjeWxSGmzXv3vT1+
 q8aQXaA4O40XD8EProme5EwkKGljHBEG4NG+XtGD8dY7DMicuM9Q1noIJ
 VYnClkFnB47eGgEAlkZaZOetSEfsreB7CeaiTrgftE75Rx4Rk5PKJGqOa
 v7CSjROSLy1YVSRD9X+uauRZ/Teu0oIgYIyc0lem6MUkmDaCznBKFlMAP
 c07RBNazW17EtIfLgRWQ5tDrH4nPm6BbnfOf0lkcu58TNM6btcJZMxi0T
 IYIlddsmUp6On95OvLksneVKzM/BIfKYYI/M2KkOlMzzTxeAZaUf9OfMg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="322339494"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="322339494"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 02:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="810930672"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="810930672"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 06 Apr 2023 02:06:13 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:06:13 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 02:06:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 02:06:13 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 02:06:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VCwfuxo3F3FrjEUzTP9z/xALoNyd6Q2h8j524dwHiJ9XwYJ0ciYfqOsvUPZnRiEJejz2OMEm3MUenNzr2qjFGjwHRhZflTkM9pOBSfP8CI87yst2mGRR7zWY08LgPPoR7BG3NuzOUAjCjNyAs9AI11NJIBAyEv+EyGGnb+S3CtvWbc2ewiVqHtdnFw+b2URmLSchRU3dMtRbHSpES8kGEmuXVN9V8M6kuw4iEL/ODc9dIqlsiA5z3MDXYYA7hNPxjIdCfr5MCKc48kaTGbNAGaTP2+rx0G80FD5lWKci6t74+lPplfFUyhZaxAS1mH3P+cXBd1ahF0oXLWcQsIpa3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pm5z/cUHD9+Kd+S7xgE+jAKhiXtj6ROBxZdvwxIiK4c=;
 b=YonkBIE3NnRs+Lru/d0SyE9bbex+Flszu4+JzT+MYE81IBdBlW0w8KbgsRONlXdpop5HNiv60SQv5WbNsCFepBL1y95AydaT6/6OYZBFearzbQgDSDmUTQpvlc2gx1csktzcG2xRM1T1VxDC1NekMoQI2QzHKuWmERVSFV1wiP4WSVYqgWC+r7rf9lg9S8Fle/gaJJNtgWc+NsnTH0ugf4vpXvRzMXmWiaAu3Auy6EPuHWh/sid22CdsLT6qH2D7TmmBvKzNXTtL9McLRhwCjKVhsetTyFuG90mC9FQ+ovAG6eK4LbMyfKmn7NEzK5PtJRcWuuEzPuzIjDFxDhuhig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7426.namprd11.prod.outlook.com (2603:10b6:a03:4c2::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Thu, 6 Apr
 2023 09:06:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 09:06:05 +0000
Message-ID: <64678098-8db1-b6c3-eaed-afcb94e13d01@intel.com>
Date: Thu, 6 Apr 2023 14:35:56 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-5-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230329135002.3096-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0113.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::28) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7426:EE_
X-MS-Office365-Filtering-Correlation-Id: 3967ce64-fd6c-4916-bdb8-08db367e270e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hp43AuGJcldkovq7VtmSVV3HutS1onBZ2W00cOWqh9665tpCXO+LXCRLv218wU4gnup7iIkWxT30bzRg4CC1UaHtEzecDFPJrWOWo73r9kORWOreBJuscjUtcX6XH/BCFl4RK4U/fuhwgzwNktc+N7qLE1p0HorY4fvHB9Qf6+l5f59IExi1+1uiswT+0B2NQSTygjO2j5kBxl0dvsI1AB/dsUepT7shWxL0l1ddGOUKHpT7kLQC1AUSwacI+n6Ju/unzDt8+CtqpWYDikXHaDW9qVIDVXMMTsW7b8jHCnXbNpzaqTv+i52j6+36VNIpbp7GPqygOm0Mt3BP2wyW/ugD4kMqkwkVmWt0dYln9uYDXp9cpTq+fk1k3PQBUfGV7gKZvuCPaCzlrm79BndjjaABc5sjDzC7nEiyyDgIBcnvpG4BpDEXw68DJ5Huxrko0mDZ7SFQRZ/NoCEMiFnNjt703xJyT5c7Kk2S0oSw6V7U7w3lQdSthxhrVRSuPtDNjJphVjdOP6gnb7fPMS7P5LBRddA39kr3aZ6cQTmGlnvACVzsnctU705oYPK6kTu3X6Jzkk3EKoSJ7rbe8w3SwcG6itpmn7oD8tdinWlqaJSbVPhAe6tFXJvQLdEN/15Vhs8iL6tFBJbgB3NrmHDxbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199021)(55236004)(186003)(6512007)(53546011)(6506007)(26005)(6666004)(36756003)(31686004)(38100700002)(478600001)(66946007)(316002)(66556008)(82960400001)(8676002)(83380400001)(6916009)(31696002)(2906002)(41300700001)(66476007)(86362001)(5660300002)(6486002)(8936002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YVFyTmtUcDgxcVdvTHZvb2MrRE9qbmR1WWY2bWNhWGhUSWJEZml2Y2d1clJm?=
 =?utf-8?B?SXpSU2h3TExmNWplMTZiMjBnenJZS0R1QVlFcm8ya2JXUTlNdkx3MmlsSGdR?=
 =?utf-8?B?Q2MybHo4MHRBZXJtREtZbTZtOHgyRWxCdzJUeGxFYmZnVGY1a0xWcWRnN2dG?=
 =?utf-8?B?Slh5azRRTXNvTnZsc1RFRS9Vd3VaSUhQN1BVSzFuUWJob1FmWjFoZE9RZXlu?=
 =?utf-8?B?NFp3UkJUR1lVdGhpUUUxaHVXcFduR2RBNkwxWjI5eTEwbGNVdjJWRGNOSUFT?=
 =?utf-8?B?VlEraUd3ck1JeERtTGk3V1NLcUZ6VGsxdWNuWHJ5LzJIeUFwOGZkZVYxNFYw?=
 =?utf-8?B?ajg2YUpSV2VCUUdHTnJBNnlIcGg5VHRrRjU4ZW12QXpkTWcxTWs3R1Q3bkJr?=
 =?utf-8?B?WEdtc1JNU25vRkUybWVnaDYyL0hlWVFtUDBZcTNjMTV0cHVOVk5uNGowQzJU?=
 =?utf-8?B?VFZoMFZDRE5pK2VnZEhNd2srcm43WjZ2ZFV6UjRnTGRvTGJPSjBIL25Cb0Zo?=
 =?utf-8?B?aDRMVUUxNktZbzF1eUQyNUszS3NZZXhJclFTK2VGUldkdTI5SlZBMVNlZ25X?=
 =?utf-8?B?YUR0NWk1enlKQkxCMzV2Z1RTSVRMS0tOQ2RZRG5nOHQxNXFicFdlRXVubTQ4?=
 =?utf-8?B?T0FpNy9jb0dwYTlPS2dWQThHa2tObWh3YnVKTndaWU83TFBnbmpSY0J6NDQ1?=
 =?utf-8?B?cVdhWExOYTI0c3drS1JZSFpIQmFHUzN0RUhMUEtheVJYRVRLN2NYaWtHeU83?=
 =?utf-8?B?Qk5YekJ5NHBkWUZXV2t0NEMwZ3FNQ0Z0VVJMU2REeGNKaTZZMXNIbytJOXlL?=
 =?utf-8?B?d0pXNHBLamF4UlNXZlpFVkpJQ0U4OW1MdXdTaXdWNExuWjhvWG9iTGVvbGdx?=
 =?utf-8?B?eHc2a2dFc2pyNVU5VEhucG9lOWlLblVWTGZxb09nVjIyWVFTc2xQd1ZJd090?=
 =?utf-8?B?Q1ZLdGMvbndLWjBXZmIvdkJOOXl5eTE4Q1R4a1BpUzNkNUJSZmY4ejViU2N0?=
 =?utf-8?B?RlM0VXdyV3JCbXpkT1hsTDg4Y3NjVzBVQ2dSaStIMGRHZGNWQnFaMVRpN3p3?=
 =?utf-8?B?Nk9zUWdWb1FBWnJ4NFFxL2xFQy94c2dXVk1GK0ZWRXM0WU85RHh6RHdvdlVp?=
 =?utf-8?B?N04vNEE1cnlBL0wvZ2VFbjg1Z0toRVVNeTlPaGw1V2N6U2JRY1hmQXJkYnBx?=
 =?utf-8?B?QTJYbFJ3N0hYY3BnZXRSb3I3ODZyTEtLekowSVBWR0pQZVBmSnp5RXQ5blpi?=
 =?utf-8?B?ZGxrTXppNFZPQ29LNnI4YXFVa2hkbmxWVEV0ZVI0TjNBaFAybU45YzdQZFE3?=
 =?utf-8?B?Ykc3VWZBS2dDclJ1dzR5ZjVQUGNmN1Vjd1E0dW9Td0J5WkVDMmJNMlBVVmFu?=
 =?utf-8?B?eUFCamtNYmNVWHdLK29pYUNrWFlWZWRoeG5GM2FVWklkOWU5OVpGZ1oyUnZk?=
 =?utf-8?B?ZU9aL2pGdHlSUjVDcHJJQzN6eFJEZVRQcTZiTFZiUEJUekNIZXRZbVZoTlh2?=
 =?utf-8?B?YUVtVEs3dkdtWGI0Nk81VGFYcTZUcTVSZ1dsWEFMMTJwblZsdFdYUmZaRUpl?=
 =?utf-8?B?blVNMzQwcXE3U28xc0RDYmxDeTFSNGZaL0taVXQzdWlYQ29Sakt1TkpVZnJp?=
 =?utf-8?B?UWk2SG0zcjNBOFNmOG92OUh2VlZqNld3K3F0bnNjY0JpdjhPK2QrUjRxZHFh?=
 =?utf-8?B?TlA2ME9lL1ZScVdGeVpET3NBd0g0eDkvSEFMSEs0YnZLMjNOOGF2Z0Yzd1Rz?=
 =?utf-8?B?NTlmVndseFNpNkhIblZtQjFaTDVXWkF4ZUhKejVuN0xvR2JRdkNCODRHSWQr?=
 =?utf-8?B?Ty91bUlhNTAvTkUrZnQzZldNdUpHTERKYXJPR0RWOHRDVGRuZ3d1aEpPL2tO?=
 =?utf-8?B?Q3NGM2I5alEvWTJwZWYvaC9uSkQ3Z2hia1VqeTZhZkZ4ZHpFZEtJcGh6UVY3?=
 =?utf-8?B?S3I1ZGp6QTltTEhzVWZYWFVTU2tlVHovVUNYVVpwcC9CN2cvNlFIaTk4L0xC?=
 =?utf-8?B?TmNhRmhUby9MOUxZQXo4eTlGVnFHMStWY1BNMWo1aTlXWjlsZnAwOHdVOGVv?=
 =?utf-8?B?Z2t1NDZZWmY4NklDU05KRkZGcnFJT3hjRXo5Mld1VnRQczBsTWx6bzViYkFL?=
 =?utf-8?B?dnU1MUZUOUk2QUNFTzZJd0FoQ3o1OWZ0anNKSS9ZSjhvRW1PUjRaZEt2ZkNS?=
 =?utf-8?B?dnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3967ce64-fd6c-4916-bdb8-08db367e270e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 09:06:05.5839 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aF8U61Mg5igHsbBaFdXxCxz72fXvC8WakSr6EgLJBuavTpLm6ARaHpZeZZMGaPsPTSLKtDF8yQpyNJD4sdDF/6MRqSgrGKSi0VimQtIwclc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7426
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: Start using struct
 intel_csc_matrix for chv cgm csc
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


On 3/29/2023 7:19 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Convert chv_cgm_csc_convert_ctm() over to using the nee

nitpick: typo: new.

Otherwise LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> intel_csc_matrix structure. No pre/post offsets on this
> hardware so only the coefficients get filled out.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 24 +++++++++++-----------
>   1 file changed, 12 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 47af24e64a7e..a76cea4ab1ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -399,7 +399,7 @@ static void icl_load_csc_matrix(const struct intel_crtc_state *crtc_state)
>   	}
>   }
>   
> -static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
> +static void chv_cgm_csc_convert_ctm(struct intel_csc_matrix *csc,
>   				    const struct drm_property_blob *blob)
>   {
>   	const struct drm_color_ctm *ctm = blob->data;
> @@ -413,14 +413,14 @@ static void chv_cgm_csc_convert_ctm(u16 coeffs[9],
>   		/* Clamp to hardware limits. */
>   		abs_coeff = clamp_val(abs_coeff, 0, CTM_COEFF_8_0 - 1);
>   
> -		coeffs[i] = 0;
> +		csc->coeff[i] = 0;
>   
>   		/* Write coefficients in S3.12 format. */
>   		if (ctm->matrix[i] & (1ULL << 63))
> -			coeffs[i] |= 1 << 15;
> +			csc->coeff[i] |= 1 << 15;
>   
> -		coeffs[i] |= ((abs_coeff >> 32) & 7) << 12;
> -		coeffs[i] |= (abs_coeff >> 20) & 0xfff;
> +		csc->coeff[i] |= ((abs_coeff >> 32) & 7) << 12;
> +		csc->coeff[i] |= (abs_coeff >> 20) & 0xfff;
>   	}
>   }
>   
> @@ -429,20 +429,20 @@ static void chv_load_cgm_csc(struct intel_crtc *crtc,
>   {
>   	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>   	enum pipe pipe = crtc->pipe;
> -	u16 coeffs[9];
> +	struct intel_csc_matrix tmp;
>   
> -	chv_cgm_csc_convert_ctm(coeffs, blob);
> +	chv_cgm_csc_convert_ctm(&tmp, blob);
>   
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF01(pipe),
> -			  coeffs[1] << 16 | coeffs[0]);
> +			  tmp.coeff[1] << 16 | tmp.coeff[0]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF23(pipe),
> -			  coeffs[3] << 16 | coeffs[2]);
> +			  tmp.coeff[3] << 16 | tmp.coeff[2]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF45(pipe),
> -			  coeffs[5] << 16 | coeffs[4]);
> +			  tmp.coeff[5] << 16 | tmp.coeff[4]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF67(pipe),
> -			  coeffs[7] << 16 | coeffs[6]);
> +			  tmp.coeff[7] << 16 | tmp.coeff[6]);
>   	intel_de_write_fw(i915, CGM_PIPE_CSC_COEFF8(pipe),
> -			  coeffs[8]);
> +			  tmp.coeff[8]);
>   }
>   
>   /* convert hw value with given bit_precision to lut property val */
