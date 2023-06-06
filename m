Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 240DA723C38
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 10:52:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED55F10E30F;
	Tue,  6 Jun 2023 08:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DB7310E30E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 08:52:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686041530; x=1717577530;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zpi7p0pj2Tj0kl3uQJD71OzjB15xqajtjOj9ONuzUnM=;
 b=mKGTLMNQSki36ekKCg6xazyF8tk4uO2lhPh3PWOmzfr4JaU0rbyLpvAl
 +K3+5pell3A0+WtsrUQNIIqNfnELdQsFd1I7D0M0WFQrvEruF5GuL5R1M
 PxT+AvVOx6A/o36sQ/nsS3/1BuaEaWRoak3QkPX928xnxMG3NIAcz3V9O
 OgequrF/RhhD1JnivEH9hUVPfU9uhaTygQRmi0kWfy+CgTSdSknE3UeUi
 LsTfF1PtAiJilnG4m5ldXmS41TqiphY3U4I0HIPpnzLZtY1XlYpFyTl1Z
 TvjbEST6btFVKiju/+l0TYLOE/0iGdeljePYWInb29WeykqmVLe7wP2MZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="359061869"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="359061869"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 01:52:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="742066578"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="742066578"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP; 06 Jun 2023 01:52:07 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 01:52:06 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 01:52:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 01:52:05 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 01:52:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ui+tkvmaCp8qODFUOoHkjKBJ+ItR3Vlm5VMa2zDFyZOleQMxMVwUE0lgO+/7kveVDC/+qIGkYb8ECZbS/3DizzIQmHsoI/YvfUZDhsxMLQ6rHOduuq9kOL2PZinhygx63AwMDr5QDMJtpYXsG074lEi5mMtubn2+9GHZG3YGf8cu6oe8wqRrRdmo3m0ltvECp/Cl/u6KLEhsB+hBuqkkzuFMb3XTxOPPYjFaPcyT4+TGmj9UTTG3kuoK0jDafjH1IP0tzORxJd+/h8eGFfbvUyZC3amSNNe4wb0ct22LnArQmJ2NVJTLFRtWR6W7dW56zMWzhd8ghDphffvToDtSmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LItsYEFu+v+DAg0EfFjDoHwzyTedDXJxu3nrXWPWoQw=;
 b=ff+yZAZko17fStHsu8kDbmmWPNEF0o8y3J6OF3nB6UINg4lpLSdChmwXyYjHmYFyLlHWtK8uZ5w/wYBGG0ai2hsm+fqAA3ZpA/PX3S8IC8Qvd0BXS7yPs+bzfvBXdxyxfMXu0T0Y83WI9JearbuGC/MvbUCqh/o4spndxtNtqbp08ViqWbZ5WbntwJepJqX0n1exFiHuWlg9Ep0445A0g9f/Mt4kn1+UrdA3ZbovUBFx7gjLd9FmhxhGXhIyw7ifgZ/G/kfipO9nftO4Fy0uwWvLeTPwLfU2+rY91EsFEHhdfjYQUHiWFgTvrIjUGqhv9i/fPZCCX3bxG1LkSW17/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2976.namprd11.prod.outlook.com (2603:10b6:805:d5::22)
 by SJ0PR11MB5920.namprd11.prod.outlook.com (2603:10b6:a03:42e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 08:51:59 +0000
Received: from SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::889b:837a:6d66:6975]) by SN6PR11MB2976.namprd11.prod.outlook.com
 ([fe80::889b:837a:6d66:6975%4]) with mapi id 15.20.6455.027; Tue, 6 Jun 2023
 08:51:59 +0000
Message-ID: <0533e8a5-9719-ea26-8971-49d7c00d6ed9@intel.com>
Date: Tue, 6 Jun 2023 10:51:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Dan Carpenter <dan.carpenter@linaro.org>
References: <ZH7tHLRZ9oBjedjN@moroto>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <ZH7tHLRZ9oBjedjN@moroto>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0127.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:94::13) To SN6PR11MB2976.namprd11.prod.outlook.com
 (2603:10b6:805:d5::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2976:EE_|SJ0PR11MB5920:EE_
X-MS-Office365-Filtering-Correlation-Id: 51410c1a-b43d-469d-86ae-08db666b4996
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uCL3XKhjJdccn7hh/WuiEMx/uyWy73BzBO295dGrjcM/p+ey6njQnrTs9+dsPygWou8tGR/u4M5i378X6N41LP+GpdBDKJAAYgB4aELR4BtU3uyyLGVLFKWgwNhF5lSuVJSY3B/MuRFMtQB5+9qvvEL6MtUAxXhQ08VJ/nsyERLOpUQBlPqIZ1lgFlDjdAvN/9AGMpI+rXxiAwUwZaAhJfOSQhdoaSIxib1XuRYGO56NPFFbwU3OvZt1yHALaPp++sue6e5oSuxUkacNbVPr/CE3Qbc3TfZiNVqhe2F7i7JmhH93Fk/jijaK862pl8X8Q3MNs+AA2nD2YUAfbEoZKrIrnDkaipPr/JGyiUsEW8UlSq+CJozhVVWPWfqm2bT4lqIfXcfqvu4AnEy/P8BbjryNg/u1AfBRQJp2FUWcObHCxQHFPLabCzJF6pJDeedRnkoRf3GX3zQGVxFo3bD7PbWN724spS42+G3MmO0D3JZXZTXzLb+TxInHBrXC9fTaT87rrIgl25rV4veypU2NfTeYq6ROkNYu+DrAN1LSl538X1/KKLzYbfXEe1MPKTlPB3VDdEtht+uqIwc6H/frg40rrcBXOlKoQwXK94Ovd0XMbrKgULb6+vtlZtP5W0mw0WvhHfotbjuCZXVzQOMz2g==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2976.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(366004)(346002)(136003)(451199021)(44832011)(53546011)(26005)(6506007)(6512007)(31686004)(7416002)(83380400001)(31696002)(186003)(2906002)(36756003)(5660300002)(86362001)(316002)(8676002)(2616005)(8936002)(41300700001)(66946007)(6666004)(6916009)(66476007)(38100700002)(4326008)(82960400001)(54906003)(478600001)(66556008)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?amU3VWI5L2xIM2xwWDhSNFNVV0F6VndmS0JrcEJKa0lKSXNUUzdmSWVTVTZl?=
 =?utf-8?B?QitleEZEVDY2S0xRZkRZN0huYk1mNXQxSEVJNE5iRmo3Nis1aExyd3NEaHpH?=
 =?utf-8?B?Ym82VlVUU1FpaWd1QzRXVUtvbk8zTVlmZk1tb3FBaGI5VG90NzhyVU5lTU85?=
 =?utf-8?B?OHpQZHZLdXNwcmhNaEZrVXdqdmxFanpsT3BQcGFjNzVyQ3FGSDFyVWVLQnlk?=
 =?utf-8?B?WUllTHNJb2NkYlpFVURGK2pwUnpmNittb0ttaG45U3NBaWhBYlNYNEtpR29y?=
 =?utf-8?B?cFVSUFhsSUlkeVdGM3hyZHVzWm8zeU5WMXRWREJpYUFyZUp2M3l1RVJNczE0?=
 =?utf-8?B?SGVCamVxVUxrb0t6VjVjWFdIcTZZS2xVZlRFeEJXYThPNzFJRWpDSzRhTlpP?=
 =?utf-8?B?U1dhVlJBa2ZsY0UvL0hERGhpai8vU1BvUEpwTm1NZmhFNlIzZ3BRZUpoU2ls?=
 =?utf-8?B?UEdRYTRoWCtoZVpOTmxrQ1hBSVArUlhmM25jbHNZS21BUzI4c21YQkhQd0tG?=
 =?utf-8?B?QkxPUWJ4V3c0VU1YS0dET3IzRlBjMFA0U0NUcG9xUXh4cjAwbjREb1oyZW85?=
 =?utf-8?B?TUtXWWRqVndybmxOL0xFbDVFem56bUcyaThxYU1iaG1qWTJSLzBuN3QwYkNY?=
 =?utf-8?B?NzB2TnVhTTltMGlZUllxNUdiUnpueWpXZ0REaGNrOVkwZkZia2dUYlN2RDFs?=
 =?utf-8?B?NndDSkJhUytzV3Y0ZFo5bkVGL3FRYjEzdDBPMTdLQ1ZkUmpPWm5VQXFBbWhR?=
 =?utf-8?B?V25laTMxdEZUU2VaSTM1bXY1SW5HcTR1VTYxUGo5dG1KZEhKcHBtbDVyMFpD?=
 =?utf-8?B?VVo5QlRWQWVqSXc1enJWZkdPUWlMSmxWMks1UWsvcVQxRFBwcXlVMFN2NXhH?=
 =?utf-8?B?Tk0zNlBVK202aGt5N2tzakRmL21uSnBNWVhrK1M0UlhTMURMUVJJNm5JWkRW?=
 =?utf-8?B?a09lbEYyb0lHT3Z2YzdwcVYwUHhid0srWnhDNkt5UUtCdWcxNHpqVzBiWVJB?=
 =?utf-8?B?eEl3UCs0dTFvOXdCSFJzU2FBV2lHMEZJa1owWkhKRUdJTEx5cFlBWkQ0aTFr?=
 =?utf-8?B?bWdGWHljbmM4S1grelRrU21kNEoxdUlYNWYveHdjUzdjcTdzb0VMdDZiOWVN?=
 =?utf-8?B?ck0zWXRpcGFza2Y4UEZ0SmFSai9zZlVTZDBQTXRPdDkrYmxRdmFFZmMvdVZQ?=
 =?utf-8?B?NHduZUg2aFpvRlpaWjhja1kwVmNhZmxDcGY2L2Q3Mkk3Y2w1czVLQ1FseVFN?=
 =?utf-8?B?TWMxcWs1TU96NGVyNGhNT204cnR1aENXa3JkZkNhSWlNTmhXM3h3UmVoYVdv?=
 =?utf-8?B?K3JwT2RPVmsyK1B6S3lnaXNDTHhhak5ieUNnUWN4bFd6MnE2UlpSZ0ZORTY0?=
 =?utf-8?B?K3NkcDdpampIVE52K2NRVVdFYVE4MVBjZk5sRFFmNm4yMDlYWUNhSjhWalR1?=
 =?utf-8?B?cDcxUlE2VjA1bWMreStra0k0SFBsWmUwWjg0OE9PQUNTa0ZVd3JBT1Yxc0Zq?=
 =?utf-8?B?eVBkN3Y2WER0cUpWMzFYVm9lYjRHeU9hbkRxWkt4ZmYySkRDa1dEUTJySTAr?=
 =?utf-8?B?QnFnTXd2V3YxWG1ZQXQwZmp1b0p3S2pxcW16am5nWG01dGZncTBFbFI0UFp2?=
 =?utf-8?B?cUc5dEVHUENreEM2SWNCTFpGYjNEeEpZSGNON1BiZTBZQ3JTRGoxTzNWNVpD?=
 =?utf-8?B?SVR3ZWlWUTBaODExb3FoT25EZlVDZUtCNStPaEtQR1FOWW9oUU9yTUdGeXk4?=
 =?utf-8?B?aWdBSzNvUDJWTFhrUXVzbFBQYlo2ajhrQlRFdFhmeFN4eXBjZTJXY01acFFM?=
 =?utf-8?B?L3RLbFRjbFoxd1M2eGZPbjRlTHR6bG9kTGZCNTV2MldoVjJEMmpPWHdmTUhX?=
 =?utf-8?B?MmY2YXIxU01uMDNCRmhESDIweThiV2YxaHBsbHpUTlNlZTNqZTRJYlFtamN6?=
 =?utf-8?B?djhybW1qMVZuT09TWk4vT3B2OGViV0xBd0FKN0xTbVh0R0pLcFR5WThhc2px?=
 =?utf-8?B?VUhURElKWlU4WXZKaURiL282cWNDdFI4dmRaRTN5UnNNM2YvWStRb3lXTDZZ?=
 =?utf-8?B?WUZJR3hMNXZkUkhhOTJMZVc3VzViem9nUzBBYmJoTDdRdE1jSHNKTEZqK1Ru?=
 =?utf-8?Q?9/eLevZCLFDKOjrOBc5o2JCW+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51410c1a-b43d-469d-86ae-08db666b4996
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2976.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2023 08:51:58.8325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: o219jXqyMoAZf0W41j8Np/AjO2PwweZDxOE2HCvO28SIyDreFbzGGD3FKDKgshmKdPB9nGh01t8JPwZbiF9j+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5920
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a NULL vs IS_ERR() bug
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 6/6/2023 10:23 AM, Dan Carpenter wrote:
> The mmap_offset_attach() function returns error pointers, it doesn't
> return NULL.
>
> Fixes: eaee1c085863 ("drm/i915: Add a function to mmap framebuffer obj")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


Thanks,

Nirmoy

> ---
>   drivers/gpu/drm/i915/gem/i915_gem_mman.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> index 4e7a838ab7bd..aa4d842d4c5a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
> @@ -1085,8 +1085,8 @@ int i915_gem_fb_mmap(struct drm_i915_gem_object *obj, struct vm_area_struct *vma
>   		/* handle stolen and smem objects */
>   		mmap_type = i915_ggtt_has_aperture(ggtt) ? I915_MMAP_TYPE_GTT : I915_MMAP_TYPE_WC;
>   		mmo = mmap_offset_attach(obj, mmap_type, NULL);
> -		if (!mmo)
> -			return -ENODEV;
> +		if (IS_ERR(mmo))
> +			return PTR_ERR(mmo);
>   	}
>   
>   	/*
