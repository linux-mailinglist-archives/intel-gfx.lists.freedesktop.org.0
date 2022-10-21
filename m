Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C1B6070B3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 09:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5524110E2D6;
	Fri, 21 Oct 2022 07:08:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FAF10E2D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 07:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666336112; x=1697872112;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=XTfy9ZrnuhKFKQ+rGBmFnOABpNPa9PiShxMQqptmLeI=;
 b=AF4MVNCrg7wUCMdtTeNrtzFRZjjVNMrcn0cAzykwdLB+p89O4/TnYDY8
 Kq7auEsWe+1T2G6ddrroidV3CK+yEjp1eTDSkgTCyI7RI6JvYSCdwtzWV
 9GPeOIvb0ZzTHBmaJsrdGxAW88crkVyQyXhu3mcTiEj/hf4k9t7z7Fw25
 v16Whsy9WjEoP8VwRPwrjkuBNvGArPO4ZIWn9r9+tVvxZfzhYkh5X6gcI
 3jxAqNsPvgmgIJ1b6ou2LpHBnLL/jT7VHI2lW82eulpEtBpNE0G7dcD1K
 XnZ5TVEzXFz1WDnYaAKTK4j54IWFlqpBfEqLL9Y+AW73mlSh6irjoyM2/ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="305670021"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="305670021"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 00:08:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="699181162"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="699181162"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2022 00:08:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 00:08:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 00:08:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 00:08:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 00:08:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U3ZrwbmkuAGY+AG1yvartdHo3JU5WjQJ12pSC2M4blAjKDYd/79oncCGILbpzew84l2gzCEqDjRMFFNQgTXCNaxkpB1um8QN+/hRfupJvmoVhLaU+jO8GPIMR5Ojg+yaGm+Pt4v5TyTAiRf31AXQuoWDJA+YkUXHRNDgOMBxxJISpqifc1RUT/xcYJ9sGJpw32FWx23fAWx1MNP09wTbBBAz0dvr9G097wHUBU5TMEcEfsaEvcFgE+k7ZO6j6SO/XGttMh1hoargQy2pzCggAjbJ6TF959A7CvXg54uM4lQrBngGL1F3U/jm/eotk11nmwtc3zvQ9ENFo+cADcoxlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r7HR0ouENKWtCQvDKEsvENHRTUvPqmMk4mbtDPDSzIA=;
 b=cibeZtoYnscDGw+YfN5tgH4UuWYB8XoxTbJc/7WOJGkWWzQbuGkjmy7o0XEfxOYVW2JYIbFVbqC01zqJGgs4yHvcsoDR0bXs2ZWeCF2ADjVlmSPY6uTJ0AoJBZqp/Ba4fSxXhOv4omFZ6b6x9524ZTOj8zZq63zT0Leb4/wCan7L75I5pgNwuz9pyP/fQLnYmOiNVISTrBKItIQTgL4Qbj/5zDtaAYcQoivJGhnAG8212YJ0uOHm9MjPK2zye26VbLsXgELi+/UDqbcTl+xBS9TAdi+JPXTFNgY7xmwYcXeK0i7OvCMJCGx8YD2wpIdHrrbaH4y/N2ZfJSdhLw+B3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 SA2PR11MB5033.namprd11.prod.outlook.com (2603:10b6:806:115::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.33; Fri, 21 Oct
 2022 07:08:06 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5723.033; Fri, 21 Oct 2022
 07:08:06 +0000
Date: Fri, 21 Oct 2022 12:37:56 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1JFTJsfRLKA6usV@bala-ubuntu>
References: <20221021002024.390052-1-anusha.srivatsa@intel.com>
 <20221021002024.390052-5-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221021002024.390052-5-anusha.srivatsa@intel.com>
X-ClientProxiedBy: PN2PR01CA0202.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::10) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|SA2PR11MB5033:EE_
X-MS-Office365-Filtering-Correlation-Id: 9af2e94b-6a02-4b99-51e6-08dab3330064
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eDCQpNs84IbCyz4xALfN7RRpA8EJHGvVEBQqh4Wl91qvatPkz46u8tAUfkHOmtA3SAa5AQBsreBnPzgZSWlbcx0/ACWIq5twZER0SRa2Unpq3ZjIJokIQKn7Lm2O5gRlJoyhcXeidFfLcR57ULJFD8DIrLzNDv+NDcYhn08APGmZH0Nl8aKklGNCsOoAzhyAS/rxOVVHS4AOkVdoCehA3f8wWHgAE+W2RXMHVIV9NFNlA6kE3SgTVmxefxF5QI8GYT9qYhG+phsStSidpKSOtz7msi1IL/v7OJO68iOaTc2uM8OHpENlwD6T1U90Fs1ygSSWdBFJDVeBNAU7xTjm9SV6qSJH26LPt16gQTszsq8+K/t+9cnm4F6TkZDzlEyX97n1+vhz65fvy9C7fhfsy/2b4Az1euy+mOhyr8Awh/eHvLzuGXyEdbHjoSzomVpYH7N7FZK8BBQLhqnAZzyM7rp5WJwrwzDOc3Iqu3+4e64Wo1bOy9wH0JIBkyWj/z/zEql64zKSNWbXw5cXNhLD20MxnlXswjcHFXW85ayHJK2ksGrsj73tFSucXUNFiO5BUdLXhKMYaZ4L3gWtt539gG6oZ5+d8xaCGaMEiVyfOI9kFPQae5gqIG6yMSHNik/U9DEV25Rpu2QkyvbzBcdCFjG1/K+I/JeKBb0bdqQRKIbehFT6gyVf2QkiwWN3Q/o+hj+8rpFc+ilcjcJkXBy38A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199015)(316002)(186003)(2906002)(6512007)(9686003)(83380400001)(41300700001)(26005)(44832011)(5660300002)(8936002)(86362001)(53546011)(4326008)(8676002)(6666004)(66556008)(66476007)(66946007)(6506007)(6486002)(478600001)(38100700002)(82960400001)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QThaMWNhSUNoSjJyT0sxbkVLREZ0MHpWN2ZwM2U0blFoUXRJa3gwbi9CaEJ4?=
 =?utf-8?B?VjR2aS9KU1RZaDMrb05NN29DdVpPNU1PN3RFOGU5MjZySU84Wjk5TUpEWklR?=
 =?utf-8?B?ck9EVWd3bnFzcVNhY2ZpQ0xyd09GV3gvQURaSmFWdU9tYXExQUMyaFJJUlVa?=
 =?utf-8?B?SEw4czJObHhCb1dURWxPNXRRZFRDZEgwbkNZaWxTa0tqVXVnUHMxd0cwVVds?=
 =?utf-8?B?VTlKSCtacitza2h3UG4vRWRTNVc4NjYrMlF1Y3R6ZlZFR2x4V2hnT1pMdXJq?=
 =?utf-8?B?SEpINXJBZWdDMG1ORURSZmNSd0xZQ3QxZmNTLzIrWkdyVG9SaGdwemJJM1ha?=
 =?utf-8?B?UFpxcFVFUTdMU2tldS9zNFFBVkNkbUswcW1xd2ErUWNhQVlUOUJ2NXJCYmxY?=
 =?utf-8?B?ODN5cldjVzJieitVSXZ0ZGMxUTF0OWNkcGVEV3BjaGp4NnpuWW90RjVaY0Mx?=
 =?utf-8?B?TGxoVlYvZjlhZHFQNkIxRUFPcytZVXhJaUxmNmxrOFk2QmEvWlBCeWg0aHJH?=
 =?utf-8?B?NFpGc0NJZFQxRFNDUmR1cFl5am9sTTJ0dGRmV0s0VlJzUEtqTjhza1lIV0tP?=
 =?utf-8?B?bWlNTWdRRVdqYXl3K3h4TmlKd1RweVRUenozcksycGNHQTZjWE9LV2IwVFQv?=
 =?utf-8?B?a1pBaFNTT3A1anZuSWg0UkpidWxGTUdnVEdDcFM5aG1ad1BUVE5WZi8xbGdn?=
 =?utf-8?B?Vk5IQWJDc1RZZEtPRE1GWTNzM2Y0SWVUeDh6QlR1VVpMNzh1L2pNRlQ0Z2l0?=
 =?utf-8?B?M1UxaGNpdG94UjdneTFnU05HL1NZM0QzYnVqVCtsb3M2UDJ0OGY3RjJ5K3Mx?=
 =?utf-8?B?NHFsYVBVeXIyRHJReW1ZVDFDbDZacWxwNW9RbUQ0RlVJSU9ncS9Yb2tkWSty?=
 =?utf-8?B?eTFnckxMcmprdHEzRUNrcXZ6UGNHa2VxODZrUUVJQnljTm1pZjVDdURZS0ti?=
 =?utf-8?B?MDdjK1B5ZC9PT2ZpMnNzMTByZHhqQ3ZCaXRCZWJwTVRIZWJ1cFJYQXlLVXY1?=
 =?utf-8?B?WDF1b3FycVM1RVFXcHJ3N0NrTm9rNnorUU1wemZJMFhBWjloU1R2Ym5uNW5D?=
 =?utf-8?B?YjRGeVNQRENyamtCbmJLKzVubWljRHRmVWhueUFGOUphQjJUVWdyM2xWWUdt?=
 =?utf-8?B?cWREV3RDVUpwNGQzZlhOOXpWYXlqUTArTXgwbVhHVzdnMzVEYzhnVHdYUXJW?=
 =?utf-8?B?Vk5zTmJUdHVwcXc2YVhFQzRwRE4xbWwzNXVTUFZkL2cxOXhzbXYrN2tYMnNO?=
 =?utf-8?B?eXZpNUE5MEhXVG9pcFRzZytac28yUzFVZGFOTnRVOGRsYkhscWRvRUhkYlhw?=
 =?utf-8?B?RDNsVGNoRVpoRGhXa1g0VWxnbGh4c1BKUXFaakFiZ2p1YzJYZ3EzYmprOFlk?=
 =?utf-8?B?OFo4aXc2TmlqRUJadHhMNWZpaWhEeFNmTjJlQTlhTnVPV3d1am8yMUhUc0Rn?=
 =?utf-8?B?VlFlMnNMbzFIK0JQVUdEblVibCtGWS8xMkZQRG1ndHRaUkRCSUtEK0Y2UmdU?=
 =?utf-8?B?NlY3ZWZOZ1hkMWlsN1B0TGNxeFF5d1RzUko5VWNqOUk3cGs2NTd1dlpjQkJl?=
 =?utf-8?B?bWxseGVKNlF6a0p2bHZkandEb2tDM2d5L1lDNHRDbGRsZ3MvODRKWTZ5ZitF?=
 =?utf-8?B?SlUrSjlZMzJBQ1FBRDVpdk1JaUhrdEtTdUVSWnphMHZqNkJTbUJ1SFpZR2Uy?=
 =?utf-8?B?Z1lwdlUzZjFtd1dJV2g4L3htM3JwWmxEQVV4VEhNcmNzcXNrM1RudUt4Z3lm?=
 =?utf-8?B?amF6Uml0T3RRVThJSmd0WHJ6TWxPV2ZRYTlmNE40Q0ZCb3M4S0tiMGpXQ0lM?=
 =?utf-8?B?Z1NzeEtsc2RMcXczWk1vZlFveXdreU45NENRSWlUbW9tYnRNN3k1clpBQUln?=
 =?utf-8?B?T1d3eDlwY0s3MEpodHRpZnhEa1ZFODJRd0lKRVlrL1F0OVdmb2Y5SEZjZmZI?=
 =?utf-8?B?b0FrMXJKQUxkNlJrTE50ZjdCQXlXNGxMb2JrTEdoVnpIZm9NbjdWUXlueHNy?=
 =?utf-8?B?cFFzNEpkL09hZkNrZ1VpemtEeWhOUlBRNkxhUEhvaTRjRWRKM3Y4LzNhZDNi?=
 =?utf-8?B?a3B1M2plWUhlZmdqNTBLczByaGhiMmFQOEhpWEx6T1lkaWoyZ3BtTTg1L0Zw?=
 =?utf-8?B?dHF2dVlabVlQNGdhdFpYd3lObVY3VElwL2RFZ3ozZ0hGbFVSU0Q5RUQwblJ0?=
 =?utf-8?Q?/INJJCHF4qjviLk5m6LcAzMP9cOTr9SnMreX6/LqxOgN?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9af2e94b-6a02-4b99-51e6-08dab3330064
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Oct 2022 07:08:05.9343 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yMdGF3a6us1u4wkCNNSXYVqsxMj7kaHhOM3kyHHi5Vu1IVaUNvDAUX161+v0Bt7hPYoZ139ld94/3ew5rbcf+dJuAgKPpil/WwmLk6okjem9Pvoqr7ET8v86OuCMsA08
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Move squash_ctl
 register programming to its own function
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

On 20.10.2022 17:20, Anusha Srivatsa wrote:
> No functional change. Introduce dg2_cdclk_squash_programming and
> move squash_ctl register programming bits to this.
> 
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++++---------
>  1 file changed, 14 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 8701796788e3..b692186c8f02 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1705,6 +1705,18 @@ static void bxt_cdclk_pll(struct drm_i915_private *i915, int vco)
>  
>  }
>  
> +static void dg2_cdclk_squash_programming(struct drm_i915_private *i915,
> +					 u16 waveform)
> +{
> +	u32 squash_ctl = 0;
> +
> +	if (waveform)
> +		squash_ctl = CDCLK_SQUASH_ENABLE |
> +			     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> +
> +	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
> +}
> +
>  static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
> @@ -1752,15 +1764,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	else
>  		clock = cdclk;
>  
> -	if (HAS_CDCLK_SQUASH(dev_priv)) {
> -		u32 squash_ctl = 0;
> -
> -		if (waveform)
> -			squash_ctl = CDCLK_SQUASH_ENABLE |
> -				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> -
> -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> -	}
> +	if (HAS_CDCLK_SQUASH(dev_priv))
> +		dg2_cdclk_squash_programming(dev_priv, waveform);

Is it possible to move also the function cdclk_squash_waveform() inside
dg2_cdclk_squash_programming()?

Regards,
Bala

>  
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
> -- 
> 2.25.1
> 
