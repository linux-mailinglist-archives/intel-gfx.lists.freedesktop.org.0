Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD3493EB1B5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Aug 2021 09:41:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A1356E544;
	Fri, 13 Aug 2021 07:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88BAC6E544
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Aug 2021 07:41:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="279258795"
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="279258795"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2021 00:41:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,318,1620716400"; d="scan'208";a="677245509"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga005.fm.intel.com with ESMTP; 13 Aug 2021 00:41:02 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 00:41:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Fri, 13 Aug 2021 00:41:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Fri, 13 Aug 2021 00:41:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Fri, 13 Aug 2021 00:41:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TfFcLWq6Jfb+VZXM+YKOM43Gqb14g6X108Vo2Roxmu3nA83aLGdSOkhFVFcVLVDbHSvSezvT1vsARoG1mk2D7ixAgSb+VDz3F1k+ObOv+Z7UK6IHDqJxvN1yG3lsL6LvKSaHmdMexu3ot13YURntXUEnNfmBAxgtHMQh7zr/Zp+HZnbpspGiY/xzhy1z+Q1UFPOMsMnJl1/BnzTcjAqlwmWDth4jW990O2EZVXS30e5LE6JbpH0inT7lwDq/C88cGnZgUZJCLWLmiDIThK2iBYIzJH7CrN+3jaSyQP3cqrGPGoq3hDaT6izxo9JeHdvk5uVEOr33EuQ1lpdaQWFsNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0X3PVXrPiNX976wj2w+DeycDvIA4nPvRzko0KRafSyE=;
 b=jjmllM/OQ+ym7quxv4kbMdC1ZrnguJpI7ULS1ywqmnsiSQBpRN9uUVr6eoSxguT7ofaWqMr15zUrm9zWOpKDJLtgVrs8fT42VQWM97NwanMnQlkliVZbULCf/hkGs5LRet2u6seQz3dtXJdJqPPtJRye7VItATFm+cCoPTzeexNzfCwmff6UWB0PRGUTjo0ECBiE96f1Qmq9Xa1F/84x05ru6CwSy0E1rhjD77IlldrWB/fJiQywbUR44kyHtldzEp+1kcvII5yklVR7fNEDwM4f1ic7I4ExEWUaHKcG6LadRZWGog3sDAkFAEZkX74pjtWFfThhhvuayq2Lf9Np8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0X3PVXrPiNX976wj2w+DeycDvIA4nPvRzko0KRafSyE=;
 b=VIX0abMsVY794SwJ5Ld8L99WXrbdshVFDza5ArToLJNFMWXnbQsShVuSgq1T2axGcB+PKMz5US18iXKNffxh5vUsXa0cLg50jLgm+0ZGFV9WXmUbq9sta4XsBys9iUpFO1nnUb0iTxNCRLyQmXPu8/TJREmCPd2SQ0GOE4n1z5M=
Authentication-Results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4232.namprd11.prod.outlook.com (2603:10b6:610:39::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.19; Fri, 13 Aug
 2021 07:40:58 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::93a:f79b:bd76:277a%6]) with mapi id 15.20.4415.019; Fri, 13 Aug 2021
 07:40:58 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210731001019.150373-1-jose.souza@intel.com>
 <20210731001019.150373-2-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <d17f70fb-2dcf-b602-c451-31e3c6962eef@intel.com>
Date: Fri, 13 Aug 2021 10:40:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210731001019.150373-2-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB3PR06CA0017.eurprd06.prod.outlook.com (2603:10a6:8:1::30)
 To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [10.249.39.26] (134.134.137.88) by
 DB3PR06CA0017.eurprd06.prod.outlook.com (2603:10a6:8:1::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4415.13 via Frontend Transport; Fri, 13 Aug 2021 07:40:54 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4ab02f76-25a3-4f1a-6999-08d95e2db072
X-MS-TrafficTypeDiagnostic: CH2PR11MB4232:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB42323D42969AA67834FDC5DFB8FA9@CH2PR11MB4232.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3173;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Land5mmUkCfYBm+iC8z03yYI2s+6wDmzLFuqIeQERhFHbA4dICKEZp01RBQDNV54dl/pw7iUcSHlytpyIC7GAvDevvTckeYjvLy+uPfLv8VIMiSbXCadXeMEOYARjPx4E2w7PuM42c5s8R4kHI+ICJxCwFj/Ix5D7HloYgX0viVgBcatYAlILU24/vwmMwpF3g+pfFZauHpJphfruxhegvtfNjqu2sAxD+OdavsymeXqhD6I2/vYKLrhGkCAuOdd8AmijLtBhXr8ssluOjlJLinaEDt5l5n3NLZpQjb7RddDYTYv1ookJ5IpI3BuUqbI++PQAJJvHlTfl68j9FxGmm910hZx++5wdvL3Mq+J+vFH/CcJqn+HCpvotvYcoxnddRbNdY4b6YbDuTj2sWm8F2J4BohgH/pjtTeeKmreGKDLe4CjGzJJ5ju3NqhNe1KSHxd6npYlBaMKKk8gG8GVj3NWMJjp/oqhSQTY75Wk8f41Vy8NOsUudeE7wWqNtZiv5vU3MksfbBEyA9cbXrXfrPpWzMZp9MIqROXS6aIk7gPSq20d0stJlinIJtre+qtISzV11CFCva0fdi++DDTYVzNktvoztUPQ5ba24V69/l2TsfLi2mpcmPqbLfpDlpqwhfvVl1mao9yYtH+YPKix6Vvf5NqNwL74swtYPhub6VPTzGb4GUNSIAqOF3x9fN/1NZqMXDjQ8bytwhhdAWv4y0NGpsxYo1WwjYt5d17Ju9c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(86362001)(4326008)(26005)(186003)(8936002)(36756003)(956004)(31686004)(38100700002)(2616005)(2906002)(5660300002)(16576012)(508600001)(83380400001)(53546011)(31696002)(66556008)(66946007)(66476007)(316002)(6486002)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YndUQ3RLd2FnV3QrTUQvTmptSVpUYTIxMC9OMm1UMS9lWUt0Tit3Q1paWEtW?=
 =?utf-8?B?M3hRckt3SUc1d3JxZFROcklTcGFTTER1YWJGSWwveVFrZVl3M09CTFQvSFdS?=
 =?utf-8?B?TEtQZ2Z6OWhxblJDeU53VzlyRnRWazFqVUlhRWFzMllEWVozY2hJZm5PUUg0?=
 =?utf-8?B?RGk1blptK2JzeHlvMWZ2UjlkSmFMQldUYnhkcUNvS2NEVmVJdXVHN1pXUXdD?=
 =?utf-8?B?Y1pKV0llOC9oWVhBZWZlaHJEaTVxT3ZnL3oyWkluWHFxMjFvRHloNm1DaWpa?=
 =?utf-8?B?UDRnZnEvQ2NNNjNDSFpldGJneTd3cjNWT1Y5cnQvVU5sR05EK3k2Skl3dVNU?=
 =?utf-8?B?Q1dqUWdjUGIvY210cklhYlFUa1hheVFhNHYzUlJ0T0NuZWN2SVBJWEJRUjdV?=
 =?utf-8?B?VC9pTjNmMWNjRUxUSjFxVGVBendJdi9QRTFaSXdBUFRwQS9hVUVZZnRNSEhZ?=
 =?utf-8?B?R0dWejl0L3BRcWVranQ2SlpXVkhKU1N6eHhnVXo0OGZ2NTRNZDZqK3A5Z3lm?=
 =?utf-8?B?YnhYOVJMczhRVGM1dHltejVqV1B1blZHbEYwMzJ3TS9IZEJVbm9MYmFYYkVk?=
 =?utf-8?B?RXFhdDFML1B1U2praXpidFhnTHc5SnBiYmFUczNTWGtmSld4M0lZNm9CTnhh?=
 =?utf-8?B?Q2Z0THFrMTliTnppekNIdVF5T0RmaEdZTm1Hbi9wdFR4MnhOZDc0N2RGcjkw?=
 =?utf-8?B?NUtzNmVhWDZHMUlqZGN4b2luUzNIdysvN0NUUXdleDhyWnJyVWVZVEpqazN5?=
 =?utf-8?B?TWpwM0FRWVVHVi9qOWM5bS96eUVnblFlZGxHcFhTNDlmc0VQUWhDcnZIVktj?=
 =?utf-8?B?T3dCRkowYlhSWGUvbnYzT0Q3VlNWa0ZVeXF5Y0xWdW8yaWI3cUdkdVJuTnZ0?=
 =?utf-8?B?ZWxxdWFUUWpmTkxERXRSdStpZzVBQk1QeDU0WmZwMlFTZFBJMTZ2dGZ0ZlVH?=
 =?utf-8?B?ZHlqQ2lCcmF2ZHo4WWdYL1ZtQS9SNUQyYVljYnd0YWNzUHZZMkYvazdtM0l4?=
 =?utf-8?B?MFR1eGFGemtzckxia1lqNlNLTmtuRkZOMW1OVTBCdVdrTWtpdHArQy90UFNj?=
 =?utf-8?B?bVRZTmROUFp1bUFFRTFyMzFoajRjWE9yVUJ1dllhakc0RWV6Uld6cHRzd1R4?=
 =?utf-8?B?UzFFU0JQUmdwejRvNWZvMzUrQ21DQldpbDZQSmhKcHM0WnIzVkcrUXVHcVdG?=
 =?utf-8?B?WTZRYW1ZcU9MalhKbFFZeUxUeFl1eVZRTU4wbDA1Mzh5YkRPSEkzRlA4blFK?=
 =?utf-8?B?Um1ITEordXlxY2F2aUVSWmU5ajA2WGh2WDFFdCtxbnlVcDFCbWlQSnlkd2R2?=
 =?utf-8?B?MzcxTlc3a3VCL2tzUXVSNXhxa0lHcS9uQm5vSGJzZXZaeUtUaEhac2lyUzE0?=
 =?utf-8?B?TnZvSVgyempTTFErNG9leHBMSlROZVhJckNBZGpqNWdIYjhXWStmRlFlQjlX?=
 =?utf-8?B?RU1CRC8vSlRHU0RVZFlUYjJjdWZUbFhaL2MrSnMxU3VPd0puZjFUcndiR2Nx?=
 =?utf-8?B?TjhYS1ZJTEUwdnZOUU1zN3ZCQUhoTkNtaEkzTnp4T2hNREIwUnMyRXVkTkRP?=
 =?utf-8?B?bUFwU3RvbUNQZXFsaURkZWZzSzgrNk9Ed0JrRUx3U01mYzVEdUd2U1JUL0tF?=
 =?utf-8?B?VHRNVGRRZlFqWHpQcWFOZWJEVTV2UnFkbjNFa1RIU3UxcjNZYVl6VkpoQ09K?=
 =?utf-8?B?ajYyUmJFQUViOGlRN0VISDNqK2NuTTQzNHpmT2tTQWdKZjFXTVJVSlZGampR?=
 =?utf-8?Q?UT7504VRsIHe6LpYRkUjEdgjlKkZKcJZQYrKHWC?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ab02f76-25a3-4f1a-6999-08d95e2db072
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2021 07:40:58.1919 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iFp1ZtmvzBPDhtgwPfMia7B8oGz3fNfDrQMgv++dESVO9j0bxy5+hq2QHrIoBEJl2QPIla1v/ah2eo5FAVIbLCtLyR28yDhfJ6ol96h7/VY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4232
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/display: Fix sel fetch plane
 offset calculation
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

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

On 7/31/21 3:10 AM, José Roberto de Souza wrote:
> skl_calc_main_surface_offset() is used to calculate an aligned plane
> surface address considering the inner framebuffer x and y offset.
> It can not be used by selective fetch functions becase there is no
> PLANE_SEL_FETCH_SURF.
> So the PLANE_SEL_FETCH_OFFSET.y should only be PLANE_OFFSET.y +
> damaged_area_within_plane.y1.
> 
> This fixes glitches seen in fbcon caused by typing something in
> the terminal.
> 
> BSpec: 55229
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index caf92f414a6e7..894a2d35668a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1487,8 +1487,8 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>   	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>   	enum pipe pipe = plane->pipe;
>   	const struct drm_rect *clip;
> -	u32 val, offset;
> -	int ret, x, y;
> +	u32 val;
> +	int x, y;
>   
>   	if (!crtc_state->enable_psr2_sel_fetch)
>   		return;
> @@ -1508,10 +1508,6 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>   	/* TODO: consider auxiliary surfaces */
>   	x = plane_state->uapi.src.x1 >> 16;
>   	y = (plane_state->uapi.src.y1 >> 16) + clip->y1;
> -	ret = skl_calc_main_surface_offset(plane_state, &x, &y, &offset);
> -	if (ret)
> -		drm_warn_once(&dev_priv->drm, "skl_calc_main_surface_offset() returned %i\n",
> -			      ret);
>   	val = y << 16 | x;
>   	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_OFFSET(pipe, plane->id),
>   			  val);
> 
