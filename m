Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D13D9617AAB
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 11:15:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B925510E5CC;
	Thu,  3 Nov 2022 10:15:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4DD10E269
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 10:15:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667470501; x=1699006501;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=83NIdTmPWlex25G2MuvbIWY4XVUFhplBExFQN3thnPA=;
 b=DXaIyQwRV+8mKJ4xeDiVCOaQR1UYHdNbZdc2bm6AgbGTpluMa5qVYUpo
 o9GDOAoSkNF23n0EbgZokdLCJV/5YodPqJBJ4EpGwtZrMZt4t9h5tDPeZ
 lBWnJfvLXhqrwQtSd7C/kibkhlBvEG+jOEsM7WrVdSOZ6vFIaUkbfL8fD
 DLW4d0Z4QAQRUCAyf4gzBDU712KwYLijsprH4zfFI/aZ+bsI2s/aOH71P
 59JVh+AAZRko55aXGjfU7kuOCxSvAgDmhFj8zNUfRapNb/a3leZUpHUKf
 lQTxi+9tA8g113xFZZ4GWBIpUQ24QleS/qxp7iRptk5OrMTTRgoje6L78 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395948099"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="395948099"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2022 03:15:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879828244"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="879828244"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 03 Nov 2022 03:15:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 3 Nov 2022 03:15:00 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 3 Nov 2022 03:14:59 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 3 Nov 2022 03:14:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JBmOyHgV8n1rX2x6b0eTEXnxDxv1NnRpUYnli1/sZWEdXxz0yjfKh0dAugSiaWD0PI3DcFYcTwocxok5TkR+htGzOfDMhVrPqxg2OE1cTbuYbExphLIRxdk1R4i68ihQYdS+48jhvNJj339lvj81hOSbIxyxdAm3GSb+405x0gHgj0klD7ZomkfU+D4QwEVPS8z7YFj1d17pkbYrHYwYEVmk3RuJEvwrKYfWnvPKO3heYqoVhptbeytYlYnsU5yRR/ht3Z5HVjFJSeTzzc0RnhgU3io6ivup2iwJf1whtNXK+qy1ywqUNXuVzJs7ZirfM9sXvWvA5aKvK6cz9VH3TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=C1sXGcKPKBbBkV2cZ/Fu0Sh/YoAVHl75mt4DUh0ybQY=;
 b=Kqw49c+hkQO1gHCQ4b/SxG7i4MlAY3AvdBOqRNBdkXHUC1wplfNM+O6jPUpONShqB1fP8jc7iO5g+GCExnSGNDz+OT56U4WJh+SkSJCM2IHW5yrHbsUNAE1kJRRNFBkaIJBUMPd+HHPKxYHYekj+qBwOqa/OW0aNV/T9v7HwfCqdNsq7p2f7JVi/a1vtk+E1wn1IGsIXYiL26inF/ERYnm3J8Sc8+/jrEfF3eth/uropfxRMlm6DaXOkX9T0p+j/Q6ohM8q3NZhBnQJ5PrTJ20u4Xf2cJzTPyaQ9H+5pIzsDYjI50HOiLCnAxJBtDJGtBoPA3sDNgGc3hTRVn4ek9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6534.namprd11.prod.outlook.com (2603:10b6:930:42::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.19; Thu, 3 Nov
 2022 10:14:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 10:14:57 +0000
Message-ID: <de470fa7-115e-c3aa-0ccc-a04f558a51e8@intel.com>
Date: Thu, 3 Nov 2022 15:44:48 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-10-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0235.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6534:EE_
X-MS-Office365-Filtering-Correlation-Id: acb0b6ad-d1fa-4270-07be-08dabd844248
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jcKAoxcfjC8EBkz4Yh8nYSFg0MuHWi0PBhuO45ky2WBdvXOx395SCi5SgXY6c40Gqv71mtxJYiCUxLgB7RCni2zQhyanrP6Q81JsG+4PEq/27f0i7G3fuaFfSPdfm6idIpoehT28JLQwfzoJgd5ga17L7L1tqudwYPn1WlgPscQhNWOYlw/cVwPHrLXJSeL7wTBjNigSp9UQpHH/0RXB7w5fTTLZsVTrTHtSQsR8WPOYL3NF7So+KJFFrZ+S5iWyrfvMLq4JOAABri2Syfkk1U5346dMZogdKrRNgSJwXFrS/ojWif4AkU6+QiUOY1bOvAgfnlcCgy+RVLIfUsq1eKiX5S5VZVFEIlxbS2gHhJ2UKxVBrDIIU/3qU2+O7/Ld3k7ozwD/LN0D7P7GDFvh3BL21b4yXSTusmuz20M/xAxyAwQZ1RVhnvtOjmDmsbUrQbiyY9pjDZzquKPCOR/DtzbdyVPGTp97UPEIsd0bWkgfNh2cqx4snuf6DZjhrCUkyZI50dDL2FnVrr9tgDtSB2qSEufcnQmtsNEN8shxLlUAgovk7zfsbTN8t9j2joZTvbkPNRU+6iYs9ETxRc2VuLgM6339rUIekSs02WwZuuMWvagbZEv2LZ1BI0edE7Mbpm/ofLFg6WMcpcz2nhFW3sCeaioV4PfRApXIA5Au1e3aAtV22Ck/eUd1/BQ9Rm5lza1Jfa9hDVu3P0gsUQocbTGOit0SG18iWYvXELmL/QcGxBOTTEkuhm7KVfGTSRqxLbkQgBeHxe7bhPIsKJ56nHJVCdXGFUswOWwADBybZCE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(6029001)(376002)(396003)(366004)(346002)(136003)(39860400002)(451199015)(38100700002)(66556008)(26005)(66476007)(66946007)(36756003)(186003)(6512007)(83380400001)(2906002)(8936002)(2616005)(41300700001)(31686004)(316002)(5660300002)(6666004)(53546011)(82960400001)(6506007)(55236004)(6486002)(478600001)(86362001)(8676002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WmsvUGVLU3kvMXVCeTlLRnFyWTJodENYQlg3eWxOY2gxVG9CODN6bXRZWmE2?=
 =?utf-8?B?MHRteXhxMFllUHoxOWRaVS95aWxYR0hYa1N4WGdZN2hrVmV2VXpFVDJ2UmU5?=
 =?utf-8?B?c2dNVFZJUjZpMVdLSmlwajBvclFwS1BUQ05aT3RNYUpvQ2JDVGZHMUFSZlBr?=
 =?utf-8?B?ZlB6OWlWN1M1NjJockdsQXBCaEl1bE5MbVRSdGF0aEtOcHBuazlETVBsdEYy?=
 =?utf-8?B?c0ZFcy85TitXaURVZERxZDYza085R0FNTmVqNDNsMW5Rek1VNmhiV09MY2FX?=
 =?utf-8?B?THlsVCtxVjhINDhEanAyWURoK0xWZWdjSyt6dUVCZ2RTcVdOQ0l2OGJWZTZ3?=
 =?utf-8?B?Z2NwdTNMMHN5ejB0YlVOVGJ2Wk5JVUtiYXE0WnF0eHFiYmk1TTNuand5NElm?=
 =?utf-8?B?dUdNTmFoOVRFcXl2QlVCRkhpQzg5ZHlGTU9FaXpWV05WaC93OVlITk01b1F5?=
 =?utf-8?B?N2RxTFpHMENkYUZXb2tIQ1VsZ0FWSmlndk95Z2xDbFpuOGFCTys4YXp1REs0?=
 =?utf-8?B?L2hwZTFWbktvRGlYWlhid1Q3WXg0aFdaMFlFdmpJbHhPUys4SGFmWjlmTWV2?=
 =?utf-8?B?SU92SlkyTlhvYmtKU2R6dk96TWd5VjZxZTBnRXUzSng4MWh2RUFOc2YxZmk0?=
 =?utf-8?B?QWxaTDlOaWJXN05KdHlJUkxEUnNYeWZJSGxxQktaWkMxZUFpK0FCWnoyYkw2?=
 =?utf-8?B?aHZrc3Z5QjV0aVVXYjhjQksrRDdmd0l2WWt0TCsveExIa1UvVlFhUXZZOFNZ?=
 =?utf-8?B?NWc1YisxQmxWN1ZkMzVRUUpwanFMS3hnaWY1L01wak10YmdDUm1JNmdYWHNa?=
 =?utf-8?B?cjk2K1RzVHJjUkdNYnV2aHFUZEYySnRncGJ6V3hZbTIrQkJ3Q1grczhrOVlj?=
 =?utf-8?B?cWJuVkp6NGNtSmpqc3hqMTZwWE1UMi9nQkZCSWNRbzRYK29sdDFnQ0kxcmVE?=
 =?utf-8?B?WEp1L2psMTlnZUN5dE9wNlYwRlNWUTZRZkd4TjVtQVlSdFBPRFoveTVDTERV?=
 =?utf-8?B?QlVsM0hobnBSaFhaTys0Ym1SR0prbkRnRTVRemFQZWtEeWVraFpDbVNQaGdW?=
 =?utf-8?B?a080d2I2RVY2enltY0dTaEVWSzBXQnBZeGpIdHBJTDNQQkEzSWtpOWpaRy9P?=
 =?utf-8?B?TC9BQmc2QlRXenBaTlVnS2FsZE4rcjNsK21jYnYvVWZmNURNVHVhS21UYTRQ?=
 =?utf-8?B?cFN4UXl6VVdDQXpoN1VFRTN2dGdZeHVjTnVTSWozYjB5bW1KUnJVdm1xOVhq?=
 =?utf-8?B?MFdFUEwyckY0YWRueC9NQWNOZjhScjNjVGpwdXhDSmxQUUVvY3pWSER0ZW1G?=
 =?utf-8?B?aEhjOE9neXhWUEcvdTFoSEZpRXR2NkF0R0pZcy9xU2RYTzRma1NRR21pcFZG?=
 =?utf-8?B?SWRpamFtQW1yY0tCMzM2SERzMTkwZzV4VkRpK09FRllTYU9HVE5oc2cxSEN5?=
 =?utf-8?B?amZzcUY1ZWhvMUUzTDR0bmJoaG9SclRYSUx5cVFSS3NHSE1oYktzTzRnQXZE?=
 =?utf-8?B?WVoyemoxbkZwVm5uSW1ZYXBDWDdWSnRGRm5qK01SdE5IZFBEeWg3RkxnanRl?=
 =?utf-8?B?VFZNYk9WK2ExTEpJSWl4YkE1TUsvclU0Q3lZTERXRTU5alpWQnd0TEo4NWR5?=
 =?utf-8?B?QnZrV2NRZThhTjNJclZwRDlBQUpVR3pneHJKRjdpWk1rYzUxQ1gxUE16OVc2?=
 =?utf-8?B?MFozbjFjVkhLa015MVQvVURVRlZ5c3hDelFWeTdCSWxOYWwrNDNFbE4zcjZN?=
 =?utf-8?B?c2Nsc0ZvZFpubEMyazdXV2tweEh4N3FxNFRiVXdXdlhJNG1aT1VmM1NPYmtT?=
 =?utf-8?B?Y3A3Qk1hb1U5eUlDL0ZITGJ0NVFwYTNYWUZNbXBiMk9RQ0x3R2V1NnVCZmNB?=
 =?utf-8?B?c3dubTBTTVN3c1hiNUVoQjBqeVg5MWVDM1NHaktxRytsMGpRb2RsKzJuMWZr?=
 =?utf-8?B?R3NFaGVvYVpJcTJ3VlU5YlJLVWt3VXEyeGtIc01hUnhKRyszQlc5d0pHaXdC?=
 =?utf-8?B?WGpQY0JBK3I1VkREZFBaR2p5U25HVWpuS2o3OWhlemdBcENVd2RVcFE3NHM4?=
 =?utf-8?B?bThkNnRINzhJVWdyMkRWZ1d0b3Fic3pQL2ZEVkZCQi80S3VGYS8zY0ZzMlUy?=
 =?utf-8?B?bUcwbVE5amxuZWpBbzZ3Wmh1c0l5L1BsdythVFgxRW9jZDl0eUNaQW1uZ3dV?=
 =?utf-8?B?aUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: acb0b6ad-d1fa-4270-07be-08dabd844248
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 10:14:57.5301 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A3+aBU6gMd7/u1iKYTgyhS6RFhtD+8p0+UdNklrQREcfkibJ5dRiWz4SnFGu2UxfVNKWPYk9tKYHiA4Fr7hjMkQFrimlif7BEemGUJfSU3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6534
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/11] drm/i915: Reject YCbCr output with
 degamma+gamma on pre-icl
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 10/26/2022 5:09 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Since the pipe CSC sits between the degamma and gamma LUTs there
> is no way to make us it for RGB->YCbCr conversion when both LUTs
> are also active. Simply reject such combos.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 18 ++++++++++++++++--
>   1 file changed, 16 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 435394cad359..926784f266f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -1556,7 +1556,14 @@ static int ivb_color_check(struct intel_crtc_state *crtc_state)
>   	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
>   	    crtc_state->hw.ctm) {
>   		drm_dbg_kms(&i915->drm,
> -			    "YCBCR and CTM together are not possible\n");
> +			    "YCbCr and CTM together are not possible\n");
> +		return -EINVAL;
> +	}
> +
> +	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
> +	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
> +		drm_dbg_kms(&i915->drm,
> +			    "YCbCr and degamma+gamma together are not possible\n");
>   		return -EINVAL;
>   	}
>   
> @@ -1622,7 +1629,14 @@ static int glk_color_check(struct intel_crtc_state *crtc_state)
>   	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
>   	    crtc_state->hw.ctm) {
>   		drm_dbg_kms(&i915->drm,
> -			    "YCBCR and CTM together are not possible\n");
> +			    "YCbCr and CTM together are not possible\n");
> +		return -EINVAL;
> +	}
> +
> +	if (crtc_state->output_format != INTEL_OUTPUT_FORMAT_RGB &&
> +	    crtc_state->hw.degamma_lut && crtc_state->hw.gamma_lut) {
> +		drm_dbg_kms(&i915->drm,
> +			    "YCbCr and degamma+gamma together are not possible\n");
>   		return -EINVAL;
>   	}
>   
