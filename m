Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B243741C5A4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 15:29:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D90966EA6E;
	Wed, 29 Sep 2021 13:29:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E83F36EA6E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 13:29:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="212195112"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="212195112"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 06:29:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="563297773"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 29 Sep 2021 06:29:38 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 06:29:38 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 29 Sep 2021 06:29:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 29 Sep 2021 06:29:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 29 Sep 2021 06:29:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jWRrOFPOB3OkIWEQN9L6n8gCee2zm1MG1FaTUnaKvzzUAmI/UbxfReLZPfEZ6NQMjp0nQxormrHKn/460vz88r3ziLk2N888QGgZVM3g18DqUwmDQiVQoSDqGGI/kYHh8p7xHBrZdvoCopGJKPHcQr16Cyuipe8pY78PFZGHgE0VXnktIuXgVHbsxYGsXX2T7ZnI6zTcDk4sJYXcL2mDCG9D6hl26Xjkn9yAzyMGDQjG8TtwK4I4skN7avbrXcQBbQw8hsq2EfqsBDpRYWcSeMqZa/yn5l8khTIAV2dpw1MZEHmvJBpwXRcUkQTc6yAa1amyAY76EbM+FJSAat25og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=151tzYKopUw4yy/lz/00EZFcWSXOiXTooOKnUfXGUe0=;
 b=aBha/t76Tm5/uPscC0J6TD+fLpjMWhCmRcDnisWPUsQhG2M8DNgALuC6yEkiKgGVd2R1Osk4+ZRiAvrVU60MBvFXuy9/4uf9g/U447XQCmYkavxGV+fJxKQSLcDFzFARn5kcpd1dVQC49Q7o1ApQdS3Ar1zNVAsaS0+v1irxRs48TcUh9uIVD7mLRWBevuvHFXXwkBPneABDM2hA0ayoZgyTND1O6T3yfQSx2CMelUOexHIwASotGbNyevTFCHmhtv30GRdsPQJS1En7dw6bARUpgYl5rUf3VDFvEGAoLVpiy3a9/6PW0tF3jwM2yHwp4jrSRAOlupkUAzMQT/5kXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=151tzYKopUw4yy/lz/00EZFcWSXOiXTooOKnUfXGUe0=;
 b=JlqgNxikm1KPWJreX23SLguzFT8jG8XbF5sphTvHD2HG7wdA6jrFiy+sFB0uXE5XrQ8ep0+Ftk24VpTaZECabqIVBkxI4q1AQZ+kaQu0E+lg5k2H3NBWKKGTYaotK7/0YgS3wio61A231KbFt5SWNfdahWSweVkz9CrjWcVzqJA=
Authentication-Results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5424.namprd11.prod.outlook.com (2603:10b6:5:39c::8) by
 DM4PR11MB5263.namprd11.prod.outlook.com (2603:10b6:5:38a::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.13; Wed, 29 Sep 2021 13:29:36 +0000
Received: from DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f]) by DM4PR11MB5424.namprd11.prod.outlook.com
 ([fe80::d5e2:ceac:b53e:351f%4]) with mapi id 15.20.4544.022; Wed, 29 Sep 2021
 13:29:36 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-6-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <86e400b7-2d8c-a055-2724-b78967b13188@intel.com>
Date: Wed, 29 Sep 2021 16:29:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210923194617.69136-6-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0201CA0030.eurprd02.prod.outlook.com
 (2603:10a6:4:3f::40) To DM4PR11MB5424.namprd11.prod.outlook.com
 (2603:10b6:5:39c::8)
MIME-Version: 1.0
Received: from [10.237.72.199] (134.134.137.86) by
 DB6PR0201CA0030.eurprd02.prod.outlook.com (2603:10a6:4:3f::40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4566.14 via Frontend Transport; Wed, 29 Sep 2021 13:29:32 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0731112c-9147-43ef-b016-08d9834d2dce
X-MS-TrafficTypeDiagnostic: DM4PR11MB5263:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM4PR11MB52631F95A48B3997AB01C913B8A99@DM4PR11MB5263.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zD0UqVYzJwzG7w6iN20FnRkUcywRvKnIt/2CwSxrG78mms8fzIJLjglXCX+L8q8GVvIz9zSX+BaWaN/F+3ntahauy3BkrGJpiBIFaAkMksAO9q3tY3iaWbhA5BQ6YqdPAU4FJHkofRvFiHW0yh5XSmKq1sKBf150b3rJx5jQV7YtZBG6hYhfLJviE1pdverevCLFkZiCGM94uofWpmNFRDTuyFLwqcRnC3GCLcRiMh9loo3dIR86kRD5pReR50KnhUnn82hlNsPv5nX26b+ftJgbiS36aMcBfbhE/xb3yln25UOrgPhV9IlfoKgCxF1hL5mYFImTLNaJ+HkuzF4deUSM8e8Aac0lnoXMszX8yHOAgUGubKCuL2dEJxaD9bfCTyPnC+IR4U5IGerWpjHzZJx/Ck0W91i9KQjgWpUn2iDu/nJf5PWq7LX/ZuW0tuT/IEd+H8P1zFh+JJahCoOjb5Isqpw7sBnkQLtqGm3cpigLdESDtu6LVhW9LUCPX9Au32DNJlW4QPxqJ3ThKnVwokb9GGYG7N+iV91sFbUi4FIcLDD2paiUpSbHFgxLr8GqqTWod5e+ZAiCO0HZ8aXJOIb/ohjuft3+BEHQDUwQ/GVI7RdPz1d4nj0Z13q27YCsGVLExEQ0QdGCmhT8bqlErHfsblDYOMclGExpH3Ww7J7Oyj9VTN/b8hmUn5xKuLWmTyFQYvSvxnCMdVWgMCy2fSlK5srjZCqXvJVr4acGWXc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(5660300002)(66946007)(508600001)(86362001)(2906002)(6486002)(31696002)(36756003)(6666004)(66556008)(66476007)(2616005)(316002)(16576012)(8936002)(8676002)(53546011)(38100700002)(83380400001)(186003)(956004)(31686004)(26005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?REVwNFlxajZYYmhwOFJsNlhwbzNjUDNOd21LTTNxZXZlbi9PWjlQNGl2MlRZ?=
 =?utf-8?B?azJHMFlQdm01TkkrbFVvK3FONGNVcFFqZ1VYSkwvOEIxd0xDMTdjSHY5cFdh?=
 =?utf-8?B?aE0zbmt2ZWVqemMzUlgzdHBaTjAvYnAwTU1LaVhReCsvWEJQdFgyamZyWnpn?=
 =?utf-8?B?MFlwMkhSRnVpTjBKWTFBMFc2b3o5NU50M3piVGhoRVh4OEM2SWhjRkV2RmIv?=
 =?utf-8?B?N05NMnp6ekFIVHNsbWtUWGtNRXQyZ1l2amNvZ1RPRGF6UWdlWkNmdFhGRDBE?=
 =?utf-8?B?MnhMYWF1d3VPSWt5eDNkWExNWEJYVjZmcllFVHJ0c25rODF1Nk54ajY3Ui9W?=
 =?utf-8?B?UmFiQUloM1c1N2h4ekNFbFFyWEdwTjg2YzBxK3FCMFdQWHlQelNwSEF1RHYr?=
 =?utf-8?B?R2pZV0RucWcwTmVRUHROcWZuTE5HSlprdkkvL0RJbEhJNU5ESHYwZG94eTJT?=
 =?utf-8?B?cFBWSnRyUGpsYXZCeDJ5RXFYemtmME9IZFp1enVuYTVqeTJhRkRSV3VxTHZY?=
 =?utf-8?B?Y0hQbncxMFRma2lPTmxkeTdPY2tpK1FnRFRHQlI4Z3d5eU0wS0gyTEpaZ0RG?=
 =?utf-8?B?MzFESkN2Tm43R3RGekttYUY3citKM2NqTklrUnQwL2dHSi9GSm1nKy85eStp?=
 =?utf-8?B?emYrL3UyWnR2TDBCWGhVUTdQci8rZjV3T0QyMDVYYjB0QWxWM3hWL3Btc2ln?=
 =?utf-8?B?bHNzZGVtdHd3TTduekV1N0VGWk14ZTk1MWdsT2VFVkd5ODFYN05sZzFWUk9R?=
 =?utf-8?B?Vi9yN3Irbmp5VzZGODErb3hzaDk0Y0JsUEEzbW5LSmttK1F5bVRqVGoxUUVp?=
 =?utf-8?B?NHZjTHBLcVJTenBBL2RSNVF1cDg0cmFlaHNxaDdjOEh2R0FQWStkTkVzeERR?=
 =?utf-8?B?aDM2QkFJcHpBZ3JLTndTVjdwNStrYXpORjcya0R3dlFqKzc3S3M4aXVvazQ0?=
 =?utf-8?B?aWhHZWZ3T0FCeGpFNnFRVStFcVNFaFBVcVBpZFM5bmd3QTJwYVlibFRlY2d0?=
 =?utf-8?B?NGtrZmtEQ0I0MEhlcHlWTnFYdWdmd2sxeVIvN25sKy81dGVLTFgveFBqVTE5?=
 =?utf-8?B?Z0tFRVo4Ujh4N1lyd28rUFF0dlhxalRaWTJQSjhIZXRpK1Z4bzFjN093NnNk?=
 =?utf-8?B?OU9IMWNCejUyc3A0dHFzM0VnZ01FYm4vb08yNVBKK2cxVXBVektUVi9TRWFi?=
 =?utf-8?B?YitMSUlRWlc3UEQ3NWErM1lIcUJ4MXdYRjgwbTViT21PRHBPaFJrWEU2RWow?=
 =?utf-8?B?LzYybXRRTDFjYVNGTzlveGw5Szc5NFgzOHZPNmNkNGZDcSszQzEvNUNLdHh3?=
 =?utf-8?B?UXMvWEhsTWNDRzlXS1d1TnlGZGNDOWRNYW5RbTE0RE50dFlXTkVTRFY4NUNn?=
 =?utf-8?B?ek0xdjduMGNjcGowVWR3d3ZQellqbFhucWNsVER6WGQ5bjMyczBJMVJIenNi?=
 =?utf-8?B?WlNJRFRJL3BuanM1MmM2Vy9MNVRZRWpRV2tyaTFSK0lXU0NyNlg4ZUUveVFP?=
 =?utf-8?B?dGNOamxNeVBkaFJoaG4yeDFYcFVnbU0xSC9nRFJrMkVselNuZ1MyaVBsbXhU?=
 =?utf-8?B?N2hiUUM2VjRhVWF6d0lWNkxJc0E0Q0c3aGxjRVZ1TEtIVlRkMnQrR2xNR2R5?=
 =?utf-8?B?ckFjMEtNZ3BTMW9iZFJyanpGYmx2N1FuaElOVnN2cW1nN1FyOG5aOVIvSnJ1?=
 =?utf-8?B?MGx0MlU3Y21PSFl6aHdSMXFrdXZmQlhWUUF4WGorSW1BSnpqbnZkQzdxKzg4?=
 =?utf-8?Q?CHqaWe1V8Xd0hxsf0uUGN79CGox99aGc2Xzb10u?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0731112c-9147-43ef-b016-08d9834d2dce
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Sep 2021 13:29:36.1682 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I2YVzw32uJqDgr8MM504siZquzTKlhHUWV8T4OyGJaZ/qX2FkbiSbv50/WvNneYUWzwrAanzlmk4hYHjbKOnXqBBW56BFnW1hPC2PTZQg74=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5263
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915/display/adlp: Allow PSR2 to be
 enabled
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

On 9/23/21 10:46 PM, José Roberto de Souza wrote:
> With all the recent fixes PSR2 is properly working in Alderlake-P but
> due to some issues that don't have software workarounds it will not be
> supported in display steppings older than B0.
> 
> Even with this patch PSR2 will no be enabled by default in ADL-P, it
> still requires enable_psr2_sel_fetch to be set to true, what some
> of our tests does.
> 
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_psr.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 001d81f128989..37727ff2b2ec9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -830,12 +830,8 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>   		return false;
>   	}
>   
> -	/*
> -	 * We are missing the implementation of some workarounds to enabled PSR2
> -	 * in Alderlake_P, until ready PSR2 should be kept disabled.
> -	 */
> -	if (IS_ALDERLAKE_P(dev_priv)) {
> -		drm_dbg_kms(&dev_priv->drm, "PSR2 is missing the implementation of workarounds\n");
> +	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) {
> +		drm_dbg_kms(&dev_priv->drm, "PSR2 not completely functional in this stepping\n");
>   		return false;
>   	}
>   
> 
