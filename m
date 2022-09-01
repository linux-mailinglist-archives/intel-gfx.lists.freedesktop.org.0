Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5065A9BBB
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Sep 2022 17:32:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12ADB10E045;
	Thu,  1 Sep 2022 15:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3743C10E045
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Sep 2022 15:31:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662046309; x=1693582309;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rqCbRmgxIwy9hvPmItW0K4BPaFoxz13hYVBhgAFaNrQ=;
 b=Pm8VPXX88YFUtMkOv0wYL+kEwEhdD4Ka8l2bWIV/nvVgql2ovAUyYbyq
 G2X7sKe9Zh22G6QdmWkDpO6zGvs3+4PoCRIxJ9k7g0Mcf5svuXeQCM9SL
 Ym3GlNdTE3DXG4qh9cDJ4bK2Ma7ygI/gpBRwXl1QsHm0m+dsW3yUY5LBP
 KXg5upcUPqf0nQmH4RRaPFOK9JvTgr9f1RsN48FSasuxCixcu0OeRA79k
 /xn6mxesAM0ZPwO6BbULF5bAKnsvwZyRD0N94V908qYa65rMs5eogicNV
 3BR6pyvP/oE/Z1XopDng6t/xaUqwEuJcjlTC/ffS5GL0TPkUHwKxId9tY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="382041922"
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="382041922"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2022 08:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,281,1654585200"; d="scan'208";a="857884709"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 01 Sep 2022 08:31:44 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 1 Sep 2022 08:31:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 1 Sep 2022 08:31:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 1 Sep 2022 08:31:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iUcXi6KmoM8pCfkSxvpff4PxchOWfBScJvgtA0d/OWm8AqPhQKRgFf6mPavXrU+Nzrc+fvRQtFocdDNw6UABO6xo+Q5IvjWMbraua77QVEoAdMHQU8GFJQo6dntUBO+n348z8l0/oVRqFbmZcx1vcT+K2+jxUo2IosXZ9AYAFlHHsEYvGmWroXTycfpWiQA+vpQKN0qbggPqaDq27MmDW5cHtRyeB6v2PCtuHhwf/lw14pofqmPiV2+GJOtS8r07kF6LuR+lsocoRdXtmy4GEslJkpnnLka+zjkBd5Dnt4pNY6I9dE9V6UtzjWX589SApQidsLrUJB3ny2m0hW053g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kkik8e7tbDdCH3fQ6mIyC6+8nTtI5cC92UiyDhcA5OA=;
 b=fTgv+GSQqbQWMC1z6tX5kFEwpF/4s9RHsI2xv5jNo+fbxpSf7tcctJKB0nqLudmS+Q8uXTRX2TyBNVTrEgu5yWEYgLiwoIiKnI1QXBLhloA+zO/kbpN1R2uQjz43ivqK9XK1kryIKBfk9TwZJICDmHAnBj3tG94xhPV9crluxIruHrilQMW6gxTKtx4ddxBnvPVN2NNBYiboCooIGUlMjqyTA2m8AmYQd9wr4Zy3BwP0Z50QmO1DXfs/cbfji3AoMsIMPJ2A+VZxu48WpAkc0LJiPeR4EyFGgTZlkZBhUY9FzbFd1EqUQ64FmG3iFlVAnEvEsI1vnxLe8BqUjBodAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR1101MB2156.namprd11.prod.outlook.com (2603:10b6:4:51::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.19; Thu, 1 Sep 2022 15:31:42 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%9]) with mapi id 15.20.5588.012; Thu, 1 Sep 2022
 15:31:42 +0000
Message-ID: <6009c921-0133-f83b-fbce-1c5ee55cb733@intel.com>
Date: Thu, 1 Sep 2022 08:31:39 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Tomas Winkler <tomas.winkler@intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>
References: <20220806122636.43068-1-tomas.winkler@intel.com>
 <20220806122636.43068-6-tomas.winkler@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220806122636.43068-6-tomas.winkler@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0390.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::35) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 98c92f99-c899-44bb-a845-08da8c2f11b1
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2156:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OnVAkcNrgm+rFzBhoGsWMh3VfPTFfBJk113r3z1YciI62EQdItLMg0SKAK3us3moDUYrQPcBcLbsWbQS2etrBrqZwKxt+q4/1jk5pW/yBjOfD0ywiv8BG8UtBa85MkdCBvUUBO/ZYR9rSMVSn4UE2rdGacPeeax7DRF3MFTeXlg61RlkqbkQ4jk7m3eiiAJcYV374XR/+zJcPJDYF4/SOPWDI249EqbS5XWAOJSfuTsQKgwwHluHTt9ZkpC6iDrbOV0UFUW/1bWAhsFSTjkTMarD84tLSdKbb2aIIkNlYY7hrgoj2HYHwt5uc7UT+NdahQSMrj2im1Xakyt53ZUWUlZpCnDQB+P+6ev68FeYqZ4uz0G0TABJyR3fGZd5Voa3xq03IMERoH+eetAGo7Gpmk7uFhFeMW7B8DJSX+GdCa7G4W4KG/YCsI+PTbP1u0EMDPf4cT9xLAH43qv0mPYo8hdhgrMuuU6b4J3ia4vXk+wqe0M8UKgKtBAib0HJ/+RCNdJ8N8HKbYG8YfYOwqBvbjOV+C4PM5EP5Em/6donoxilwcW/GbxbWrwFWtVJUXxnoY6++OJkR42le7g1zsQ9noSH3kZmGYAbd+dOg6W8uL90l6sM3YDNAQNsoQG4M24gTSVcZA+ZNiXUu84Av9zzOPwDS3KhMczlD1C26+3rwzNLU9inx9OVyL7rxD4CGGYD/Nl0vDuB5lJTFdsINJkcDPyXNnCbpdIyysarvL9msbS+XDaUmRlqs/cgoT+FN+nMVKYQKOCbzm5kunEB9SHY2qyO2u8BaOI2i5vWTa/LlkQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(396003)(346002)(376002)(366004)(136003)(2906002)(8676002)(38100700002)(53546011)(6506007)(6666004)(26005)(107886003)(2616005)(83380400001)(6512007)(66946007)(31696002)(110136005)(4326008)(66476007)(6486002)(66556008)(316002)(31686004)(54906003)(186003)(86362001)(36756003)(8936002)(41300700001)(5660300002)(478600001)(82960400001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d1R3UjBVZ3ZuS3JQU1FnSHFtQy9TdldpLzlsNkZ0ZlFtTkVvbWc0VFc3NGhi?=
 =?utf-8?B?TlV4STdnMDdEakV3cHBHUlppVlkwemswZys0TFRPNEtHRDF5WE5lOGFTM3FI?=
 =?utf-8?B?R0F6bVYxcXd5dDg0cWMvekg1dWRnaFR6c1pIVTUxMmdEdGlGUlZkSW1uNjVm?=
 =?utf-8?B?aVo4dHVFNi8vZS80U3pYWjN0WHZVRHgyTGZiSUIwc0UvZGNsWE5nSFQ4UWh5?=
 =?utf-8?B?ZzRtK3ZpYWJLa3lsY2wxaUFISGhpT29lSHlZK09wR2cvTnU3d2FPM3Q0eDJx?=
 =?utf-8?B?d2ZyMFM2Z1JNL1RzYmw1Y09oRkN2ZEdnZnYyV2hjSDlxcHlLL3NpOFhQOE4w?=
 =?utf-8?B?b3RONjUvYXMyWVdTbFNhTkh5WnNqNW13SUVKRGllVjlIZnhDMTVHTys0Zm1C?=
 =?utf-8?B?OHlQSkN1NFozS2RXdm4yNXpocFdlcHR5c29vOU11M25XQUFEU1ljaFYvWFB3?=
 =?utf-8?B?REpnbzFJRlhCcG9CZ1pkTk55LzY4YU9GUXMvWlZzY01mVXpEczNDZjU1Kzk0?=
 =?utf-8?B?K29IYW9Ea2Q3UDhFYnJNWU1xdDVYdkdsM1pGZytlb3NzU1h6R054ajRqekFM?=
 =?utf-8?B?cGdNNVlNcUhQUXJPNnpHSlFnU09yYzZyeko2enNYeCs3Nk9QY0l6TVg0ajkx?=
 =?utf-8?B?NXZmcm1lUWVsRDJzMGxweGdMNENTNVNGNzNTR2VnRFNNOW5DOHZKeFVxb0w3?=
 =?utf-8?B?YXJJeE9uM2xKL2lwdXNiUWR3SHV2RWFlMUlIa05jUHd5NDBJdEdWbVB6QVFI?=
 =?utf-8?B?blYxME1xZUU5SnNKRUlJUmNoekRQUHQzT3JhRWx0ck13cFliQmV6WWpsdkgr?=
 =?utf-8?B?bkNJeTZyWmZDU1dRenlPZjNzRkN3NG1wcUR4RStNOWFod3ZLa1hxdzBKSVMw?=
 =?utf-8?B?a2tkdkZiV0JvNThQbFhLQmU0aUZQZU81QXJDSkt4SnpYWkFFQlRGRHlyVFBD?=
 =?utf-8?B?Q1VpczlqbDJ4NXdzTFhSNmh2NENYL0FDNW5ZTWRDaHpqTTFJTzV3UHUvczBl?=
 =?utf-8?B?c2xBOVI4clVnZm4zOUZSSG8vM1d2RGo5VWlONzB3V3owWkdnSTlyazZzanJG?=
 =?utf-8?B?TTNRbzlnYzBSY0dyVUxaUWRWdVJuN2JQcFZoK2MzaERLMVlxaXJuYzRrdDQv?=
 =?utf-8?B?MGs0VVloUFVxakhOTGFkeHo3Vzd0Vk13UjN5djI3TWljTk5VYnp2MTRZSlg4?=
 =?utf-8?B?cG9GQlhlc3p0RG9BMTFtTCtKTGsyUCs1Z0JWeml2cHRqcjVWYlBmdkdaYjA4?=
 =?utf-8?B?YkFCaVA1U0RYNkxWd0kxUzZNR1VuR0RWNWtLNitjWW90L1Irczk4N0Z0cThD?=
 =?utf-8?B?QUNzVzRmK25MMm1OcmZDTUxKVDAyaFBxMTNDWHBQRzM3d3U4K09wTG9kMXpC?=
 =?utf-8?B?emhrU1BSbUNySWJZU04wZzcwNDhnUG5nQ3dSVjRXSmJBUTVmQStIKzA0NFUv?=
 =?utf-8?B?b3ZPWW14dE1QZmpiaFdkdXExTUU5ZnE5UTNWcU5MRk03MDc0OG1RQVZtV3FQ?=
 =?utf-8?B?Rk54QnNqdzhJcGZQOE9mODkxV2xEVXZFMnViQXhOVEdtL0g2M0pid0RxeEhr?=
 =?utf-8?B?bTI0RWpqaVA4WFVCb2Uyd0RGSmxlcmNEN0tNaDBzVHRBcjluSkEyNlhnVUU5?=
 =?utf-8?B?dlhQeng3U0liaEVYdHRGQnY4VkZzTzhxRlZkMSt4WmJSbU4rVm00SUNWbm9D?=
 =?utf-8?B?VmxYcmZZZFpLOFN0QzlBWHJoLzFqdnZweHJ1TVVMNjNuQ1pzUmtNMklmcjFX?=
 =?utf-8?B?MllHejBvMjJBYW93WTlLT3pUbzY2TS9od1hFbkFnNngwM3ZoMEI1QXZnYVlp?=
 =?utf-8?B?Wkt0eVdVdHNOdEE5VlQrQ09mL0hyS2VuMG1BbUEyMHJ5ay9SNDJxZUZTNEdU?=
 =?utf-8?B?RGorTS9OTEUyZC9xKzJrK2VxanpySy93V0lheFBDcXZpT3J2VFFWYXVGWTZo?=
 =?utf-8?B?VTNscElHY1BENGdVOVowdTlUdjdsbXI1dXduUGtvYjJ3dW1nM291NzBZMVZn?=
 =?utf-8?B?L2FOM00yaW9GYTRXRS8vU2RaRWVFVWxpLzdqYWVyVEVZWG1IbXEzT21qOVFV?=
 =?utf-8?B?S0tLazg0Q2dDQXpMYkVZc2RhOTM3Q1hnb250N1lJYXdHaTJsMm9uSllmVGQ3?=
 =?utf-8?B?SEt0QzFEMEJsVy9pZ2tlQUc1TWgzbktEeER0YkpHZFVpMnNySk1aSG8wZkFv?=
 =?utf-8?Q?u6WLuhM2bSc+AL0fXFVN0HA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98c92f99-c899-44bb-a845-08da8c2f11b1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Sep 2022 15:31:41.9253 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yIoLlhbBYq1LPvnX8crxClVbQfxPjBS+FA3sSgCgmWsUcbg7cfNeSodguRRKSS7yb3z1KbHnsrEWFCdJNp70V23QCsSlQtMbPNgNk3GnH1k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2156
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 05/15] drm/i915/gsc: add GSC XeHP SDV
 platform definition
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
Cc: Vitaly Lubart <vitaly.lubart@intel.com>, intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 8/6/2022 5:26 AM, Tomas Winkler wrote:
> From: Alexander Usyskin <alexander.usyskin@intel.com>
>
> Define GSC on XeHP SDV (Intel(R) dGPU without display)
>
> XeHP SDV uses the same hardware settings as DG1, but uses polling
> instead of interrupts and runs the firmware in slow pace due to
> hardware limitations.
>
> Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>

Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Daniele

> ---
>   drivers/gpu/drm/i915/gt/intel_gsc.c | 15 +++++++++++++++
>   1 file changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
> index 73498c2574c8..e1040c8f2fd3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
> @@ -56,6 +56,19 @@ static const struct gsc_def gsc_def_dg1[] = {
>   	}
>   };
>   
> +static const struct gsc_def gsc_def_xehpsdv[] = {
> +	{
> +		/* HECI1 not enabled on the device. */
> +	},
> +	{
> +		.name = "mei-gscfi",
> +		.bar = DG1_GSC_HECI2_BASE,
> +		.bar_size = GSC_BAR_LENGTH,
> +		.use_polling = true,
> +		.slow_firmware = true,
> +	}
> +};
> +
>   static const struct gsc_def gsc_def_dg2[] = {
>   	{
>   		.name = "mei-gsc",
> @@ -107,6 +120,8 @@ static void gsc_init_one(struct drm_i915_private *i915,
>   
>   	if (IS_DG1(i915)) {
>   		def = &gsc_def_dg1[intf_id];
> +	} else if (IS_XEHPSDV(i915)) {
> +		def = &gsc_def_xehpsdv[intf_id];
>   	} else if (IS_DG2(i915)) {
>   		def = &gsc_def_dg2[intf_id];
>   	} else {

