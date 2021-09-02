Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 780B03FF09E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 17:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 811856E5C0;
	Thu,  2 Sep 2021 15:58:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 485D86E5C0
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 15:58:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="280176133"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="280176133"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 08:58:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="691543841"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 02 Sep 2021 08:58:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 08:58:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 08:58:11 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 08:58:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 08:58:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KnOfXm6rJs3x9Kdms2iNnhJ9sPJUhnQ0F+OZAqHEHTE335C3Ph3i7OlR+V7AMi83H1mYZ8wfVyqAmg1ayj9aciBVyJhBXZrqd3Q2hiluoXRVjrDLM8M7MEb6g3Gtt49xag3QTqfe6ll1kCEM4bJcKMsBcGRF5mIWU83yRBAxP6YCExA2OZrXVi9dvmjPAXvtDgvvaH77IWS1eC9hForup0neVBuoM7IjpkpjYE6kzs2cPMuY9sHYOQiPVhLfkSJU1C6Sy/xPKz6Mzrb4kWQJav50ZOxpuvj8f5lW8s7Le1R5NfZipKu9ZrKEKj8udK3il/dbmQwBGs72Aw70WKP4+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=kmGpk+WlEQ+PXV4+tfjzJxVTCBMZhXY+sDZ9GbCxje0=;
 b=Xms3iWNcMbsQFWVTLh0hjatZ2px1M62sgUZHb/bTl6yVwWN7Lc3sghgL3oHPrdjDEPGFy+hLt57dfSEw5BddReqp3fCeC7GxGgm9/lReOaaYNfSE6MLEq3zQ+cm4t9gxP/jB1LWGyr60OtOSntkUT5EP/APHa/hnlJXsujx+xHM4TmcEgURk3ffQs7hc1N06kMpgnl+SIeNrWM+a34IKEenv3wtpOHZYxetHNAFpkv91uCLiK6PrfSzKMtKs2pbQT59boiS8Kunta+k3/0u5PdBDswOaI8CAZkaIfVInrsQxHcGnpALvbUvL3dG9z50Au/JplKGKftDQsAe7+4fC9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kmGpk+WlEQ+PXV4+tfjzJxVTCBMZhXY+sDZ9GbCxje0=;
 b=mLEzK+BWp9zf/75Xh4aToLgj56VYbA7DHTLRpJ7Mdeg9PmVjs56uGSCwNS6wxFKnhqNqGIq4xNx1ozx2yY/PK4NYBYpCelAyK/uPv7A+gZdSPEyNUNXQWtoAb1+ADUA/EZpWFFrWaD23/cPmiI9KIefLh4AoNCH0AwP8VQbUGnk=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH0PR11MB5756.namprd11.prod.outlook.com (2603:10b6:610:104::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4478.22; Thu, 2 Sep
 2021 15:58:08 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%7]) with mapi id 15.20.4478.022; Thu, 2 Sep 2021
 15:58:08 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210825005840.170796-1-jose.souza@intel.com>
 <20210825005840.170796-6-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <35c7c5af-27aa-9e52-fbb0-5c48bac5feab@intel.com>
Date: Thu, 2 Sep 2021 18:57:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210825005840.170796-6-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2P251CA0021.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:10:230::24) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.139.80) by
 DU2P251CA0021.EURP251.PROD.OUTLOOK.COM (2603:10a6:10:230::24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.19 via Frontend Transport; Thu, 2 Sep 2021 15:58:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 743d5885-db87-447d-5171-08d96e2a751e
X-MS-TrafficTypeDiagnostic: CH0PR11MB5756:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH0PR11MB5756CEFC1B723F75D9848C49B8CE9@CH0PR11MB5756.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n6TLOMqq7ChvNUl3sCxvHri45ifoCq0hbuUzEX9LwXpf+/bdAQJGGPzkbJFSKJepNF3ZFUZJt4Sp0mPS6E6TXixw+NhPERHEeHoJxFpkMES9En0LVUCHwWYzx0Ypdd4A0mJOi7WsN3VZW/SGtjpTS1DCzCodt+nkoTOv60oiFYv3m7oTNX8En44y2dhwFp9P/y/5OnBI1+0/UeedWQ8m27dnvkl1mOezrd84D/GK2N8IuWqjmV3aDuL6I9g1131a3U+7ahrjBzTzr+A/hmtMC04pYQxUV/SyEmVDmXE+IkU038TkOqk6lpU0hm7RAkJxxsB0JZpKTmi4PBzpcmTui/eHDmuX4QhAWCUuIwePnTajjz1lAeu6+5nnvSbvJ6crksPbfPShAelPyO+SBCqZ8bK4tbE0pXLVGl8HLPS/uWu//XAYBRl7Crnx3iN13NnCSMfY9wrhtlOSfc/wBwXA9kjuyq02myvrvu/0ADPdmFRkTDT5N+x1pGLUIsidfLUb1gP8r0i4nwS4/R4N7xo0RhAUmqZnT6nYKGsH7vxRfIz4p//0HUoi+g+YY10Bi5WxfwXTgNJbw1M/dvn+kkl4SXcxbm+rDfxLk4qZr8n8IUC/gS9xNiT87Ve4aB2dOZDDsuBx8+6GT6pB6tDXSfiIqYXX0wCZAUAOaYzoFkgyzpkaZNOIzaUzG8zn698L8L6lAboL1RhsHXoKtkbGGOATq/thEYgWs71dSmooHOnnwco=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(396003)(346002)(376002)(39860400002)(136003)(66476007)(186003)(66556008)(316002)(66946007)(956004)(38100700002)(53546011)(478600001)(6486002)(5660300002)(16576012)(31696002)(26005)(6666004)(8936002)(8676002)(31686004)(86362001)(36756003)(2906002)(83380400001)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WkxPWDd3UHFMeUhtM0J2d2sxVm83VkZJWWFQQUxWcTh5R3dCQ1BEMEpTZi91?=
 =?utf-8?B?R1k2OWxhVkQ2QUx4N0hLdS8yK1VhQTlYUkh1U2ZwTW9Ra0hPUUFxZGI4WXk3?=
 =?utf-8?B?S2RKSlkzemk1aE1RYlZ2b2lib1JDeVlVMVE4OG5nZEx5TEVUaUhrMktXT3pB?=
 =?utf-8?B?RldhekVvN1FuWGpMSFlnTnJCTDRKeXdzUkNFa3g3UXZwZnFaMmFVYldHRlpH?=
 =?utf-8?B?bnJDOURRMk85cy9OZGM3cUE1ZUZ1RTlMUDFRSVFGVFhPeXVPZ05OVVpORGtm?=
 =?utf-8?B?eFRLUHJUMmxvYzlTYjZsMEZMM3IxKzdObk9EeDBiZkU3ZTVBRTlHb2Mzb0Y2?=
 =?utf-8?B?NXpWZzdYMnU0T21SZExpdlNFZ1VqbDhOYWI0ZDJzZFc1bFRzTDl6N0dPLzhw?=
 =?utf-8?B?RkpRNFVPamY0b21QY2pla3JZUmt2MklpdUQ3MGFuMThzci9nbzE0bmpJbnBO?=
 =?utf-8?B?YmFjcWpuVkFWSmc2TGZocFVXdGxVc3hDVU9ZblJjVEs1SVNPZDk5Mmh5M1ZX?=
 =?utf-8?B?U0M3WTRCSG1xYXZRZlZDV20vRzJsdEhOdy9yRHBKbGc4SitsLzhHUlB3VGEw?=
 =?utf-8?B?cHA1MW1yRS9rb0VlMFR5NnhZbGsxMi9tdDlpdDdUQTB0VWVzWkFrVXRGVFFN?=
 =?utf-8?B?ck5CSkNMYTlIQnFUdGVtR25NR1dwTko2QWZiRTNMMXRyYzlVV3FjakM1b0c5?=
 =?utf-8?B?RGMxNjM0OURhYzBpc0ExcGtnKzBEdXlFTThEV1h4Y0loNHZQam43dk9IVko5?=
 =?utf-8?B?QTRtelBsOHZXczBKWHdJcjJ1WEdoV2NScE5vMzc3bFVzR0VpQWx6RzNaYmRQ?=
 =?utf-8?B?YlFOd2FGRmhSRHpvbzdNMHJ6enhFV1BqMUdSc0ZHWlBVeVQ1ZlAwL0wvWVpU?=
 =?utf-8?B?MTVZMC9pRlFNZldmZ1VGZzVzQmpYZkdIQmZjT0VYbkc5U0Q2NXBtSGNWVHZr?=
 =?utf-8?B?K2thVS9XYzdVNGJsczdYQ05HNFF1clVTOWVnUmZnSWd6RkFDc3dWRHhXaWZF?=
 =?utf-8?B?UWdwcDJLemJvMVRwNVFOV0RreHVoeUtJTFdTbHV2RFcxNHQ3RU90N1pCbDZV?=
 =?utf-8?B?Q2poL2FvVnRyZUtBV1ZGbTFWY1d1dmRJVGk0QTVNWFdxazlHc1A0eHQxNEVT?=
 =?utf-8?B?QVY3VjBKeXFXYlhuQWsvN3FvUTc1K3VUQ1ZFeDZBS29tRjFwcDBQVm0xNis1?=
 =?utf-8?B?dlgwTlYrS0hsbEY5OWlxV0NKTmhXRloxTXlleExhUVk0WGNtT0w5d1pBbnhi?=
 =?utf-8?B?M0QxV3QwNWlGeGVCcEdmQWlJc2xTK29IMW5FeVh3L2NwK05QSlYxRDlZRDN5?=
 =?utf-8?B?cFhNbUNVbmEyTC9MOWJGQytyWWlNUi8yTjAyVGpPdDd3UElEQmdzeE9UVmFp?=
 =?utf-8?B?cXk3WnllcmNEN0dKaG9qM21qY0JEazZKclJ6VUlyVnFSVmF0M0tYdXJ0bm13?=
 =?utf-8?B?Qm1KVGtSWGw1bVRJRVNpZ3FuOGU4aURUQ2xyRXpDRE4zOWQ5dHBKTEVjaTMy?=
 =?utf-8?B?UkZqZXZNVkFZaTZxSWE2Z0kxams1NE5KaGxBNHppM3B6M0ZjVkhtd25peHdM?=
 =?utf-8?B?M2Ira3JMWUZpS3NUQ09MZ0NUdXcyL1VlV0Z0QnhTTW1nZDVPSDRrUENhRk45?=
 =?utf-8?B?dTZ6SEFPZW50ZTU5U3Z2dTk5anRjREVrcnFxWlMzSUYwVW1scTZZMm85b1pl?=
 =?utf-8?B?UHRqUnkxZWVjRVJBb0Rud1BIeWJEdUdIbThCMDE4UXFsWDd0bDFTUCt2TDZs?=
 =?utf-8?Q?gI1Zqmu638JAZOpvSOrYri69rL6hAkL9pNgpDc3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 743d5885-db87-447d-5171-08d96e2a751e
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 15:58:08.4897 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yXklJmIJcLhCCzhPms7yYzsIjU5mwBpsly4f8atcAU59esiX20UnaNhaV+DwMUYYMJhqlZHK0rQUZX0s+D4EtPYtWfjzduvzXjjlqarUiK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5756
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 5/8] drm/i915/display: Share code between
 intel_drrs_flush and intel_drrs_invalidate
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



On 8/25/21 3:58 AM, José Roberto de Souza wrote:
> Both functions are pretty much equal, with minor changes that can be
> handled by a single parameter.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_drrs.c | 82 +++++++++--------------
>   1 file changed, 32 insertions(+), 50 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
> index 5eb5033242575..8583da4e82434 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -312,18 +312,9 @@ static void intel_drrs_downclock_work(struct work_struct *work)
>   	mutex_unlock(&dev_priv->drrs.mutex);
>   }
>   
> -/**
> - * intel_drrs_invalidate - Disable Idleness DRRS
> - * @dev_priv: i915 device
> - * @frontbuffer_bits: frontbuffer plane tracking bits
> - *
> - * This function gets called everytime rendering on the given planes start.
> - * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
> - *
> - * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
> - */
> -void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
> -			   unsigned int frontbuffer_bits)
> +static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
> +					  unsigned int frontbuffer_bits,
> +					  bool invalidate)
>   {
>   	struct intel_dp *intel_dp;
>   	struct drm_crtc *crtc;
> @@ -346,16 +337,42 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>   	pipe = to_intel_crtc(crtc)->pipe;
>   
>   	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
> -	dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
> +	if (invalidate)
> +		dev_priv->drrs.busy_frontbuffer_bits |= frontbuffer_bits;
> +	else
> +		dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
>   
> -	/* invalidate means busy screen hence upclock */
> +	/* flush/invalidate means busy screen hence upclock */
>   	if (frontbuffer_bits)
>   		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
>   				     DRRS_HIGH_RR);
>   
> +	/*
> +	 * flush also means no more activity hence schedule downclock, if all
> +	 * other fbs are quiescent too
> +	 */
> +	if (!dev_priv->drrs.busy_frontbuffer_bits)
> +		schedule_delayed_work(&dev_priv->drrs.work,
> +				      msecs_to_jiffies(1000));
This line of code was previously only used in the intel_drrs_flush() 
function,
In the case of the intel_drrs_invalidate() call scenario, it is not 
confirmed whether dev_priv->drrs.busy_frontbuffer_bits is always true to 
me. If it's not always true, it looks like you also need to check for 
"not invalidate".
Please ignore this comment if I'm wrong.

>   	mutex_unlock(&dev_priv->drrs.mutex);
>   }
>   
> +/**
> + * intel_drrs_invalidate - Disable Idleness DRRS
> + * @dev_priv: i915 device
> + * @frontbuffer_bits: frontbuffer plane tracking bits
> + *
> + * This function gets called everytime rendering on the given planes start.
> + * Hence DRRS needs to be Upclocked, i.e. (LOW_RR -> HIGH_RR).
> + *
> + * Dirty frontbuffers relevant to DRRS are tracked in busy_frontbuffer_bits.
> + */
> +void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
> +			   unsigned int frontbuffer_bits)
> +{
> +	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, true);
> +}
> +
>   /**
>    * intel_drrs_flush - Restart Idleness DRRS
>    * @dev_priv: i915 device
> @@ -371,42 +388,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev_priv,
>   void intel_drrs_flush(struct drm_i915_private *dev_priv,
>   		      unsigned int frontbuffer_bits)
>   {
> -	struct intel_dp *intel_dp;
> -	struct drm_crtc *crtc;
> -	enum pipe pipe;
> -
> -	if (dev_priv->drrs.type == DRRS_NOT_SUPPORTED)
> -		return;
> -
> -	cancel_delayed_work(&dev_priv->drrs.work);
> -
> -	mutex_lock(&dev_priv->drrs.mutex);
> -
> -	intel_dp = dev_priv->drrs.dp;
> -	if (!intel_dp) {
> -		mutex_unlock(&dev_priv->drrs.mutex);
> -		return;
> -	}
> -
> -	crtc = dp_to_dig_port(intel_dp)->base.base.crtc;
> -	pipe = to_intel_crtc(crtc)->pipe;
> -
> -	frontbuffer_bits &= INTEL_FRONTBUFFER_ALL_MASK(pipe);
> -	dev_priv->drrs.busy_frontbuffer_bits &= ~frontbuffer_bits;
> -
> -	/* flush means busy screen hence upclock */
> -	if (frontbuffer_bits)
> -		intel_drrs_set_state(dev_priv, to_intel_crtc(crtc)->config,
> -				     DRRS_HIGH_RR);
> -
> -	/*
> -	 * flush also means no more activity hence schedule downclock, if all
> -	 * other fbs are quiescent too
> -	 */
> -	if (!dev_priv->drrs.busy_frontbuffer_bits)
> -		schedule_delayed_work(&dev_priv->drrs.work,
> -				      msecs_to_jiffies(1000));
> -	mutex_unlock(&dev_priv->drrs.mutex);
> +	intel_drrs_frontbuffer_update(dev_priv, frontbuffer_bits, false);
>   }
>   
>   /**
> 
