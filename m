Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC666F08B3
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 17:49:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF29810EB87;
	Thu, 27 Apr 2023 15:49:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC94A10EB87
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 15:49:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682610586; x=1714146586;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=6ctwTSKrnB7HMXxw0hENilzKOIcOY1H8P985UaALixk=;
 b=H2Oq2jHrJ84QQZf9k+qS007lUhScJDpX6jcYP8ZBkYnS0kk1JiB6NuT7
 yxFwjNTEWxGP8M2YWJLqFrFZI0+I8FDz76zgIM7W0SWtrqw9/0lUpPqzt
 1xsyliVREYTQo2ttLBz3NOFB2pBLplvI8+FMAZrAwDBYVewpnsUdx2Hxz
 dEAkQpGuv6NUiR3IXeTP0fYFlbFs1FpRE//4G0rvgGT+/oDEPj3BcwJZZ
 OO1su95abC5iFgsUiZn6t9sh89G2JbIVNqP45AMQn6LvmPWpW2dmAVxKc
 5DyFUyeTZBuVsP5VpjznghvisGn6tHWAFP3Vl0hrvNH5WqlJwuICT0mt+ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="433769635"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="433769635"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2023 08:49:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="868773088"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="868773088"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 27 Apr 2023 08:49:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 08:49:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 27 Apr 2023 08:49:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 27 Apr 2023 08:49:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 27 Apr 2023 08:49:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m9DH0H7ubm7YfZkZkvn8hw3VyqkLHt950QnxVwH3VkdNkvFPkZ8swzSbl2meGGDijRGR6AjfWb7ir9hZ9UJfOHhXjNjGZCNc8diDAukWoN3dJSohlCfO1zf+gZmwCgVbNQ8s36FNstCFj/Pv4YcFj7pISlUjK4XK47ykovchiIk7Ip0493Xm+ovGW6tWwjIBHYLTNFe2cTSUEOvhD8ao7xkOu30NHXDPKwTnohdegKZqSQ09OcAB4tp6H0V5+FjwMwOD/pF1JprsMpxrLPg646vwEZ7uBEKy7o3llqfZpe6pHg5DO+1CnsOYxWN7zER1s6LL9Qd1ady9qQzLF6WmcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XDFHS5vJ20Umr6Vd/oDB9+8L6zma4sP2ZcFFyS45/sI=;
 b=PSVVG0C08YS6cRMCI7xW/vA/BWe48YXo3qpxufZQ4xyD47p3TgIaAaVZSGQ1vcQep77hy8H0GCmVEvIQbSBpW8k4y8xYn6jo5T+QhCAcf6ts+HiUnveJreWjXj+6rsh16j2njSHwmJv+ex0MTmZn5uvmtOFLvP2viKWUVVLFxjar0BlArJ2vhlGt92lWkF2xBYtHJnMaGXdwsH934a8J/pampWkNZrqNud8OD6oO3Pnfkrbjr1OXjTSVhuNMMuh474a3K20mWwDDtKLC8+m/uIgqc2J6xNVF2El8GOzlg0l9irbqKZj0a9Gce/E22Rzju3J4mOLrB9yQeMd3qkWtdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN0PR11MB5711.namprd11.prod.outlook.com (2603:10b6:408:167::22)
 by CH3PR11MB8137.namprd11.prod.outlook.com (2603:10b6:610:15c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.22; Thu, 27 Apr
 2023 15:49:43 +0000
Received: from BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::1aaf:fb37:1851:2008]) by BN0PR11MB5711.namprd11.prod.outlook.com
 ([fe80::1aaf:fb37:1851:2008%5]) with mapi id 15.20.6340.022; Thu, 27 Apr 2023
 15:49:43 +0000
Message-ID: <57406e43-57f9-85cd-999c-43f9bf970b38@intel.com>
Date: Thu, 27 Apr 2023 08:49:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.9.0
To: <intel-gfx@lists.freedesktop.org>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-14-mika.kahola@intel.com>
Content-Language: en-US
From: Clint Taylor <Clinton.A.Taylor@intel.com>
In-Reply-To: <20230420124050.3617608-14-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR01CA0025.prod.exchangelabs.com (2603:10b6:a02:80::38)
 To BN0PR11MB5711.namprd11.prod.outlook.com
 (2603:10b6:408:167::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN0PR11MB5711:EE_|CH3PR11MB8137:EE_
X-MS-Office365-Filtering-Correlation-Id: b54b5d96-f08a-405d-7040-08db473704a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TYB10nbYQVTLgfx7cxjsvWO5OSOuDLTOBVBG6yE4vMMqOPAiFkV3se09UXQt4lYWD0SWGnSuMctuixT8ug5OAhN3VV4l0/VG5OtKml2MBaL6AMdMQ+kUKDnlNT6Kxzw5QRb69P9EpHhpxoStFQ4u2HzJUjdymn4kxt5qK85yS3ItzMVFphGF+dxEW4w1xkHZLpYXjRlXDKoFY3NyIH1WktFgaFi7yGq+5okYz1MmXy/VXxOqQoMia2Xh0dHQ9xw17hiOFg3bcFzw9zxzFmW4z5tgifgNquyxCl/4JXsBhLAH1NmHMemRWz+BEKez6c7Hsp8E3k31ZiflMQCEk+F4ZktDvHNKqDctpXv9xJKYq6+FUkYVJQac+li9Z/inWJb80wYdmPwn7JENlWl5fT2CLVpV5mgTAgK/sP3jVRj73GKJbTLgMmoI0GEgvWsgu0Pq2PmgHs9MR7jz/+LyIhgdYhVSnHw6YCR4xFiiDfIVf8/xB17g8tswZwk/TL955TUgDzaxLgy7b8e3BorEHswWeBD0g1pn4Xrrd42KJrJLk1rbLzqYxE8HN79y3O1mAd3DZQJVb9dPU1ky4CxLRxdlRJzTTeohQphbHAv9dkiFRpaRf7jNzDHhu6vFHGErIJXNS53IX+nFgx8z0uVoBtVrvQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN0PR11MB5711.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(376002)(346002)(396003)(39860400002)(451199021)(6666004)(82960400001)(31686004)(478600001)(83380400001)(6486002)(186003)(38100700002)(2616005)(66946007)(316002)(66556008)(66476007)(6916009)(41300700001)(6512007)(6506007)(26005)(53546011)(86362001)(36756003)(8676002)(8936002)(31696002)(2906002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0pSNlZGYTd6MlFPWmxFVWNnVGtRK2dsTTk2ZFV6TzNWZGgwV29MN09aY1dG?=
 =?utf-8?B?dFJuZ2ZuL3RENXlJTHZybklBSHZqVlNyQUp1RHZpRnlRZWRIZUhvU1lKZnBp?=
 =?utf-8?B?ODhsbE0wTlB3L2FLYWtlTWpFTEEzT3ZaemZ3anVEUlpYSFJOQlR1VXIrSFJn?=
 =?utf-8?B?Q2lJWVRISjB5eHVzbWJ0WDRmMUNmcUNGU2JTVDluVXNKTHN2UWgxVUlHU0Vt?=
 =?utf-8?B?NzM4d0VUVGhUc0xISUorY0NnaGdkVjZJbnB4aTNwUXNqZjI0NmpXVSt4ekVD?=
 =?utf-8?B?bmtCV3ArNk5GQWJDbjVhQkxxenJDTDR6Z1YxazhIL1ZWYmp3SkxIdUtnMWJk?=
 =?utf-8?B?aW52cjBheHZlOHBVNnlLd2tWVWhBSGdLd0VBaWF1akE0OGlaMThzazRKMjIy?=
 =?utf-8?B?dTV1RVlNdTQxQUVGWVJHNmZKWG1jN2ZJMy9IVCs4MVIzMDZZQVF1Nmd3SzdC?=
 =?utf-8?B?aGRDMG82TkVIaFk1VjdxK3J3NFlIekowbXZIcUxoZENjMTJ3cC9XQ09YMnlt?=
 =?utf-8?B?ZU0yOHlldlJSdi9CVDRTUjZselM1c1dDNlgyTURhL0VjTEQwM1BqK05PelpN?=
 =?utf-8?B?aFpHWGo4RkhsVDVKZU5iZXJSSDNRVlpkcm1WbC9OOFo0bWZLTFJ6bGFsZ2xR?=
 =?utf-8?B?MmpVcjN4bGc5UGpJbHQ3U2Zpa0t2UXdnQXl6eFYwRFFWMU9rRVpVVG54cXlC?=
 =?utf-8?B?aDFqTGhDcENVbHNPeWRsWmwxaVZqOVdRUnlSSnplU1NCRGFaWm9WTzNLbjhp?=
 =?utf-8?B?ZGhTemhOckJZdnZqZ3NLeTFobE1iZ1ZYSlJRZk15MUdLTTVCd1B2dVdBek9H?=
 =?utf-8?B?bloyOGVPTGxraXIxdGRIYzhRdzRLK2d2dXU4a05nT2p2K0lYSzlxUmRjL0pE?=
 =?utf-8?B?czA1UTQyVkxyNWlkbXJ3YStrWXlIdEU4ek10OGNIc2FDUzdYMTRFZmtnanJP?=
 =?utf-8?B?M0xOUGVFMlVBcDg2NWFVTmZhTi8zVEhRU1cyNDFkeWUyZCtxUUZoQkhVTjIw?=
 =?utf-8?B?OEVydk5RY2l4Q2U3WHMzZHpZWnlnMnNuYjRlRmVlSy9yeDQ1a1FBTkdkb21D?=
 =?utf-8?B?TjlYU0d4K0lzZmV6S2JtSTAraWJVODJWYVREY0VSOXI3RjFnU3oycE1OSTRh?=
 =?utf-8?B?MG1UR1luNzA2V3lPK0FBWmltMSsxS202cy9YYnYraHVDTDU3VzZCMW0vQkxW?=
 =?utf-8?B?YWlETUZRazdObHY1anhDNXRBS3RJaFVmVzhwcmNvei96WUdYRWVTWTNRVXc4?=
 =?utf-8?B?QlhHZ2NpUzZQWEtjS014VDVacHVkbVc1N3ZCSTJMdENWdTUyS1A4Zjd3Tlc5?=
 =?utf-8?B?cnVmMWQ3amw2ZzVNMisvaHhld1FFeHFZSHdYT1VqYmgvTnZoWnZVdVVkU1di?=
 =?utf-8?B?ZnBiTHVwZTZQTDBZbUdPSjYyaWdUWTljTUE5bDJiVU1nTlBhM2NPSUt0VEo0?=
 =?utf-8?B?Y1ZwVGVZck1LeFZadU5QRHplN2pydTBWMDE2T2wzcVlmTzlIL2ZlRGVHakZE?=
 =?utf-8?B?VmpsVWJ3S3lEeG0xbjdFUWhGRjQ1OG9WTUsrZTZ1OGZ3ZkhXejBKQVA0VU5V?=
 =?utf-8?B?NU9jNkQwZWFzSm1SaFRoMVNIY3NING9tWXJ6N3VtWDZIL2F2U1hiQkhuaWcx?=
 =?utf-8?B?Z29rUEFkYkl5WVN2OWVwakkyNmdiY3l6cXhidjM3U0lwSnV0QWZHTWdlYlhP?=
 =?utf-8?B?WXlUL1JjMkRsdFo0QUJORkRjb0tPaU5NU1dUeHhQWDZwNmlZckdyM3A4S3lC?=
 =?utf-8?B?Ni8vNnV3UHpWS3dEQmdoYTc1aThzd0F1SGxzREtXVHpYM0dyc3pUMld5YU8v?=
 =?utf-8?B?YjkvVXdsUmJWSCt6ZGs0Qko0WGJGQm9ZOGl5V1daYnJIOFFrR1haMEl0VFNs?=
 =?utf-8?B?SHB1TGR5dEkvd3ZSeTQxQVFuNlVTTXpzZXp3NCtKZ0QyWVpMK0lremtyR0c5?=
 =?utf-8?B?N2pKZEZlOG05WkRjTzU3WlFoU1VIdDNIbkdYdDFaMXlzQkQ2UllHaU9iMGVR?=
 =?utf-8?B?SmNha3o1djRnWTk2eVZrRnpMK1BBc1UrVUtqZm9oUzJjcEE0Q2l3Z05ibktP?=
 =?utf-8?B?MmIzZ3pTUEN0TnVvcmR1WWJFS0R2S0swdUdQNmdxTjIxWm5GWXpsZFZPRUN0?=
 =?utf-8?B?U2VrS2MrTlczbHJNN1Uwd3kxNU5hOVJKay9ubWVFUENxYXVSQjVOQjZrcGtv?=
 =?utf-8?B?dUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b54b5d96-f08a-405d-7040-08db473704a1
X-MS-Exchange-CrossTenant-AuthSource: BN0PR11MB5711.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 15:49:43.2576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dy5y4nsqMMRfsp3Rr95yXV5sfkeW6lNckaA3itXj8kQqhar66wDQn1Q5hguM1yNQjNr9i/xACMsvTc4DcxvGPxQCnxUzhSt6zmp4xe2xs9U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8137
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/13] drm/i915/mtl: Enable TC ports
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


On 4/20/23 05:40, Mika Kahola wrote:
> Finally, we can enable TC ports for Meteorlake.
>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
>   1 file changed, 4 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e70bdf0e06f3..dc777c3b1b1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -7587,9 +7587,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
>   		return;
>   
>   	if (IS_METEORLAKE(dev_priv)) {
> -		/* TODO: initialize TC ports as well */
>   		intel_ddi_init(dev_priv, PORT_A);
>   		intel_ddi_init(dev_priv, PORT_B);
> +		intel_ddi_init(dev_priv, PORT_TC1);
> +		intel_ddi_init(dev_priv, PORT_TC2);
> +		intel_ddi_init(dev_priv, PORT_TC3);
> +		intel_ddi_init(dev_priv, PORT_TC4);

Reviewed-by: Clint Taylor <Clinton.A.Taylor@intel.com>

-Clint

>   	} else if (IS_DG2(dev_priv)) {
>   		intel_ddi_init(dev_priv, PORT_A);
>   		intel_ddi_init(dev_priv, PORT_B);
