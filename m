Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72FA460635F
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Oct 2022 16:42:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 534F910E1D6;
	Thu, 20 Oct 2022 14:42:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0716610E1D6
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Oct 2022 14:42:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666276939; x=1697812939;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=deoJRxccAckl8tU8HIEEc/x5SwBCECE2BYZKJNEufJc=;
 b=HWd8U2FQnpSeHveNUay4wRcct16D5SkYF3/s4YH6w56lhyI5rkY4TCBL
 xS5uMHjoHhqNIt6p09k3MauVrcBQpNEbNY1VRPoumwECX+RJvYSEky3zB
 tjfFoME9jwyGmdG3ejrn6cGbhXbsr8jjvDYZCw63TQ1NHf/RdnAJ/Z9ZA
 aKW6RBh0zkpMFAT4pJRCqaYCznBKSO6DIEJuex2LneCAMLyu81/3U3vNu
 NiZHupWwq5dtLPoEK4hsZSdpJnicRL21vISP8Y9w7bvCaLh6UTK5RhqSP
 Uzt4Ykgsi98eKZ8OmnV43kJbS5ccuVxqWqX+YPkYBAvyrz4K6z+tHIXVe Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="287124757"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="287124757"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2022 07:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="804919969"
X-IronPort-AV: E=Sophos;i="5.95,198,1661842800"; d="scan'208";a="804919969"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 20 Oct 2022 07:42:17 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 20 Oct 2022 07:42:17 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 20 Oct 2022 07:42:17 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 20 Oct 2022 07:42:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DpKSdQww7pWYvtxESXDpkNjpyzvpdB0yrlM/QUMSpDMA20byDJpYdq8SZH2briXQl4+n9v1xZuhc7BvRKauyj/xyijiR/OYSQXe5werRfCWjnDOLSFTgnfknAMLJBfwU7CY/ldCOxfR7RMJYoc1GZ0d8/lDPGM4CBlhUIeWgxrOW+2vHhg0RrI3g6tD+Ixq+kE3lFXLuxVzFac8FZBZERDzjqJTb9EX1GSRLpmtLM4VNMaEdqANnq4ILU3QqynWhEV4jWVs30ArS97IkJRAUWkYnr98Hqts/MqNQACESJM7mYOkfUCcL+qddUZxWJumcY+BW8Spkr+rJ/blDUEgdXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bShSDhqs8F+A3jlEi103cpVDmQoBzPgBj779wfDJmkg=;
 b=Y/5dp8P8Z0JZFzdOKYDuLlc9IJMaaJv/GxOBIssJSuf3+dJgC9ok6OiBM3lwwIlv+9v0HDfv06LXvc6M6Bt0YoHjAheZswTNNdv8gCp3Ls8SE5hIzbRDmWJEmgFYGRTUBa0cNXwhWzFTMB2+U+OncjNmvsRrRMQ8kKA0y90lBrO5VKq/DX6nAUmcybVYj2JHl3lXhqxC3h9LLVF7TJ2gS7BuJY26EuRqe8KxKnHxNgRrsoCoBxmqDl8jifwpSPqBnbKcpNF4gjRRBRA00KeW2P7mlB6fPvRbmofdGYghnfo1RtzT2a0unfxjNs6WjrPt496hvKlRyyR9Tyz7Zz5iQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5723.34; Thu, 20 Oct
 2022 14:42:13 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5723.033; Thu, 20 Oct 2022
 14:42:12 +0000
Date: Thu, 20 Oct 2022 20:12:04 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1FePEl7ySsHWxBg@bala-ubuntu>
References: <20221013233223.103381-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221013233223.103381-1-anusha.srivatsa@intel.com>
X-ClientProxiedBy: PN3PR01CA0061.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::6) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|BN9PR11MB5257:EE_
X-MS-Office365-Filtering-Correlation-Id: f303d8ae-92c7-4a44-967a-08dab2a9465c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zQQPdUuQzbviSUcRbmge8vAS+bnq5MPcTKwqD9DO2105PJVG/46YKIDdBsSNhqjiOb7pBvbgbcYzGpYmWeLPUOMnFG3xSt66IZCJ6GJBmddxECAZTffW5HfbcaOMAWckb8CJ//Oia885eJNZKwS8H2BrQmXdGj4go/7xOUs6WSvnaIRkL9GxnoZFyjpnufNuDvAmKP/8dkcP+eAWhBZM4Upg5wsvWsYvB5M48xCEWE0a0xUn0/ASyKWoo7jfxEXrpO/r0Jbg6YszmTGu0a27OK5A0imina4WV9SWRkKnvf6R+IZqpU3o3uR4wEtlEWBRrp225U7mgkwqJgKTC2TST3R5f286MFY18+FwI/0cpItmYuznfffTP2t2zxmN4c2/NwsV+eHhu9dfm5qI0JsFt6DUyCPYBz0Vf84sNqFI6pL8O1HwMn3ERU/s4Z+gnwIG14ibPj7YdF+2OfnwoJ06oV+5ekJ8o3YWFwNvIozssxiTiUgBD7B0LJayRiRYJTBC4MlG7ZXRDKzlR2w7CFxu9QYcWX2N3U1/9vtgB6Ac0FDc0D+WG6mei2Z+II7OwN1/JNrfPdkIjvF6BPP8KsuzRVLY6x9cG9vd9Zk1X45qWYILP+XxlQw8j5pjDUQxWGan3/jOpdLuVZN+SziRdASXngxx75d08C/hWozw8k0wzTYgF9g0p5DpfMGtOj53JrDbFYz4NmrRSZvn4jzRdFvTDtUOiNdu+iLitCgTn08W+N3HLBpuDsD9xiTFlseLM+++
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(346002)(136003)(396003)(366004)(376002)(39860400002)(451199015)(6486002)(478600001)(186003)(66574015)(9686003)(26005)(316002)(6512007)(2906002)(66946007)(82960400001)(33716001)(66556008)(66476007)(6666004)(86362001)(83380400001)(53546011)(8676002)(8936002)(6506007)(44832011)(41300700001)(38100700002)(5660300002)(17423001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?azZnS0MvUm5SNnZjSWY0dFRGemRPeXNpaFVsMWE4VXRWdTgzZjVibjl6eFps?=
 =?utf-8?B?NlBCK1RUM1M0c01KcXMwdWZwS1VMdmpSTDhtTXlCRnRRMlkrTVFodzh6Mk9P?=
 =?utf-8?B?V3RkOGFhS0ZzTzdlY2R4aThzVlB6VHZHaFNOd0VkYVk2Q2VOWUdPOEtGdCtO?=
 =?utf-8?B?MXRvTDc1c2tkaEJuODhYTFlvUkR3RFcyc3RMWi9PTmtxV0pGanJWbHVvc283?=
 =?utf-8?B?Q2Vya1hoWjN6NHovUEN0anZzK2crdkNpTEJTelpSazllWVNXWFkvMFVJV2NM?=
 =?utf-8?B?Nkh6UUM1bmYrcVlxdTRQOXBYakZVQ2FmeENZaXVTTXZQN1g2bjBXdUk3Lzhs?=
 =?utf-8?B?Z0R3NWRLdER2NUFGWnpjZDhvSXpDc21zSFZHbmZtTSt1bFQ5Q3JNcko4d3NZ?=
 =?utf-8?B?RXk2WnlKekF2VUUvWTJGeFhYd0xvaElwOFdtNGdTbHRPdDYxN1BrUDEwRzRn?=
 =?utf-8?B?UWRTYlJpOUVpeXV1TWpFbVMrZEhLOUtJTkw5N2NlSWhWOC9TRTlKQjRvZ3hF?=
 =?utf-8?B?SGJkK0w1QytyNFdaZ3hsNUNaNjl2VUxwMXRQYzY2RmJmOGQrRUVIcGdiUTdX?=
 =?utf-8?B?aWR6Tm9CRlVaYi9vMGxPamRDMjdXNFZraEE4MGZNaDF5enJLc2RqN0MvMHNV?=
 =?utf-8?B?TnUyaW5WNnc5ZXJacHpPTGw1a1hlSXppcG1TUjVPVjJCaVA2WWVRcmlQZmFG?=
 =?utf-8?B?cy9jV2lROWNuTis1K3FMd1RuaXE4OTNHelZDRzZKc29QdWZ3aDg5b1RON3Fu?=
 =?utf-8?B?NHdZQkRTNUt5dUlNWHdySEl0R0cvL1RSbWlIU3BIK0JmSWNYSCs3ODZOYmNV?=
 =?utf-8?B?aXZKNEpFZHBSOTNSanNBbFNkWWtMK3NnUHN2YmdwMFB2eC8vcU5reFRLb1Bh?=
 =?utf-8?B?NklRUkovblZtSC8wYTA5RlRqRGZnSWFZMTdSNGYxcHA4Z3V4SkJPYUhkNVN6?=
 =?utf-8?B?L044WUx3MVlLMFV6NmxSNHc3R0wvMkg2MzQ0SWxrZlVzWE4yZEVFRkNqb0JG?=
 =?utf-8?B?TytocFZEV3JUNm5yQW03dXR5RUFzeG1uQkppSlFIV2tzeFdWeWVtM29qRlVu?=
 =?utf-8?B?NkJGN2R4MGNOSWhqcmhJZDdoZUIxUVkxdVk3NTJwQ2FnaS95aTU0bGYyeG5F?=
 =?utf-8?B?RTdHUzBNcDV3d1dFZ1duWm9HNnhNTFFtN3M5OFowOEJsbXRoNGhDTER6SUdj?=
 =?utf-8?B?OUd3dWZlVFJnRGJnQW84emxZR2FpNyt2aU9JYVdwZ040b3BOTXdKT3phdS9O?=
 =?utf-8?B?OHF4SUVTUXRPY1VjazFXNWJ2MGthL2dyTjFmREhhZjVhYVZlZkJMMU40VWQ4?=
 =?utf-8?B?dTVrM3NFNmRLekFBSHhTUXVaM1dpdG1RTmNKd1ZFRmhpT1p1RFJUci9BTlE2?=
 =?utf-8?B?ZWdFL2ZNZFhmQTU3bUQrQmdKSVpCdEpGQm4yRzNVblVvclhZQTdRWU5ENXVM?=
 =?utf-8?B?RFpZRkxhUnozbit0RXJjMGk0ZmMyaTYyVnZKNmpKakt0SWE1bzdXNEpycHB1?=
 =?utf-8?B?TjNEZVc0WXpIQ3oyT2R5OS9aOUh4TzAyY3hYb0xIdmU3blJrRjRibEhOU3V5?=
 =?utf-8?B?REJxRmZnVlNXVllJV2o2RXZPdS9BcXV4YXh1L0pRU0M5NWxRVVJtV1IvRld1?=
 =?utf-8?B?bWxPNm1US1pFNWNEVldNZExJQm94TWRwTFBwZlpEbnhMaktpajJvZERNR3JU?=
 =?utf-8?B?WDhoeFpEZmRZVTFOSUg4M1krMitlbk1YdCtSbCtPSUpLWU1NVXhGR0xEUlQ3?=
 =?utf-8?B?U2hlTitqRVMwNDk0UzZxNDZLRUwwSm1sT2VUMHZLRThzc3E4a2xSNEVtT1Uw?=
 =?utf-8?B?dzR5MlUydnVZck9nNDcyLzE2akdzMy9icDcvMi9nSk1Kd0F1WjdxT0xreEdI?=
 =?utf-8?B?eWk3d1d6NFBzb2p3YTVzSExjV0hadFlyYlZpQmd6TUlUQXJxcWNvTUNsQm9S?=
 =?utf-8?B?cDVmTnhVckhWUWJaZlp3WlNsVGJiYzEybmEvKzRtREpCbk4rN0s4NUhEeFVk?=
 =?utf-8?B?QjhIZFJHRzhlSDZuZFN0V3dvWE5PUXlVM2pxWjExZjcyZFltVDRKdlRiRG5s?=
 =?utf-8?B?ak4vSFNxQ2RHSGtPU3Z1UklhVFdJU08yYW50bUlmUFBxNWZLTktZOHNJTmp5?=
 =?utf-8?B?ZnFtUGlWUkJ2bDFHRWx4VnJMam1ISjBrbWlWeW1YNStaYm42QWVBMkNzV21l?=
 =?utf-8?Q?mLOg4snKy48Qjh98SWCkjF4=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f303d8ae-92c7-4a44-967a-08dab2a9465c
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2022 14:42:12.8223 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r+6mkxZYWi7VX1zduag7/aP6YMeBOgTjpjquB2Z0Zentl1hcKXDaWilRY2x1D45yDIBJCIkZPuCjGQi+Xx+ckdYjQ7yGtZtARv7MMEYAdJkBJOA33x0AVhLo+vo2phNt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Do both crawl and
 squash when changing cdclk
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

On 13.10.2022 16:32, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construtc a mid cdclk config.
> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk
> 
> v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> change via modeset for platforms that support squash_crawl sequences(Ville)
> 
> v3: Add checks for:
> - scenario where only slow clock is used and
> cdclk is actually 0 (bringing up display).
> - PLLs are on before looking up the waveform.
> - Squash and crawl capability checks.(Ville)
> 
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Please add the Bspec number.

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 157 +++++++++++++++++----
>  1 file changed, 128 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index ad401357ab66..430b4cb0a8ab 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1675,7 +1675,7 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
>  	const struct intel_cdclk_vals *table = dev_priv->display.cdclk.table;
>  	int i;
>  
> -	if (cdclk == dev_priv->display.cdclk.hw.bypass)
> +	if (cdclk == dev_priv->display.cdclk.hw.bypass || cdclk == 0)
>  		return 0;
>  
>  	for (i = 0; table[i].refclk; i++)
> @@ -1689,37 +1689,72 @@ static u32 cdclk_squash_waveform(struct drm_i915_private *dev_priv,
>  	return 0xffff;
>  }
>  
> -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe)
> +static int cdclk_squash_divider(u16 waveform)
> +{
> +	return hweight16(waveform ?: 0xffff);
> +}
> +
> +static bool cdclk_crawl_and_squash(struct drm_i915_private *i915,
> +				   const struct intel_cdclk_config *old_cdclk_config,
> +				   const struct intel_cdclk_config *new_cdclk_config,
> +				   struct intel_cdclk_config *mid_cdclk_config)
> +{

I was thinking of asking to rename this function to a more descriptive
one, but then I myself was not able to come up with one.
For a fresh eyes, it is difficult to make out what this function is
actually doing.  Can you please add a summary as a comment above this
function pointing out what is mid_cdclk and whats the meaning of its
return value.

> +	u16 old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	u16 new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +	u16 mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	/* Return if both Squash and Crawl are not present */
> +	if (!HAS_CDCLK_CRAWL(i915) || !has_cdclk_squasher(i915))
> +		return false;

Can cdclk_squasher feature availability be also made a part of
device_info structure like cdclk_crawl and create a macro similar to
HAS_CDCLK_CRAWL?
Like Ville said it looks bit weird. Also we would avoid adding platform
checks inside has_cdclk_squasher() function like it is done now in your
second patch.

> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||
> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)
> +		return false;
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/* If moving to a higher cdclk(squash) the mid cdclk config
> +	 * should have the new (squash) waveform.
> +	 * If moving to a lower cdclk (crawl) the mid cdclk config
> +	 * should have the new vco.
> +	 */
> +
> +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> +		mid_cdclk_config->vco = old_cdclk_config->vco;
> +		mid_waveform = new_waveform;
> +	} else {
> +		mid_cdclk_config->vco = new_cdclk_config->vco;
> +		mid_waveform = old_waveform;
> +	}
> +
> +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> +						    mid_cdclk_config->vco, size * div);
> +
> +	/* make sure the mid clock came out sane */
> +
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> +		    i915->display.cdclk.max_cdclk_freq);
> +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> +		    mid_waveform);
> +
> +	return true;
> +}
> +
> +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			   const struct intel_cdclk_config *cdclk_config,
> +			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
> -	int ret;
> -
> -	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> -	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> -			ret, cdclk);
> -		return;
> -	}
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0) {
>  		if (dev_priv->display.cdclk.hw.vco != vco)
> @@ -1772,6 +1807,44 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> +}
> +
> +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe)
> +{

bxt_set_cdclk() is now bloated as it is reused for new platforms with
new features resulting in too many condition checks. I see it is now
time to switch to a new set_cdclk() function. I would prefer a new
function for platforms starting from which supports squash/crawl feature
and add this new crawl_and_squash feature implementation to the same
function. But definitely I dislike using bxt_set_cdclk for MTL.

> +	struct intel_cdclk_config mid_cdclk_config;
> +	int cdclk = cdclk_config->cdclk;
> +	int ret;
> +
> +	/* Inform power controller of upcoming frequency change. */
> +	if (DISPLAY_VER(dev_priv) >= 11)
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	else
> +		/*
> +		 * BSpec requires us to wait up to 150usec, but that leads to
> +		 * timeouts; the 2ms used here is based on experiment.
> +		 */
> +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> +					      0x80000000, 150, 2);
> +	if (ret) {
> +		drm_err(&dev_priv->drm,
> +			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> +			ret, cdclk);
> +		return;
> +	}
> +
> +	if (cdclk_crawl_and_squash(dev_priv, &dev_priv->display.cdclk.hw,
> +				   cdclk_config, &mid_cdclk_config)) {
> +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	} else {
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 11) {
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> @@ -1944,6 +2017,27 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> +					     const struct intel_cdclk_config *a,
> +					     const struct intel_cdclk_config *b)
> +{
> +	u16 old_waveform;
> +	u16 new_waveform;
> +
> +	if (a->vco == 0 || b->vco == 0)
> +		return false;
> +
> +	if (HAS_CDCLK_CRAWL(i915) && has_cdclk_squasher(i915)) {
> +		old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> +		new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> +	} else {
> +		return false;
> +	}
> +
> +	return a->vco != b->vco &&
> +	       old_waveform != new_waveform;
> +}
> +
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
> @@ -2750,9 +2844,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> +					     &old_cdclk_state->actual,
> +					     &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawler and squasher\n");
> +	} else if (intel_cdclk_can_squash(dev_priv,
> +					&old_cdclk_state->actual,
> +					&new_cdclk_state->actual)) {

In the bxt_set_cdclk(), we perform crawl_and_squash only if neither crawl
and squash alone can't accomplish cdclk change. So move the
intel_cdclk_can_crawl_and_squash() check to after the checks for crawl
and squash individually.
This would just make sure the logs reflect how actually the cdclk is
changed.

Regards,
Bala

>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squasher\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1
> 
