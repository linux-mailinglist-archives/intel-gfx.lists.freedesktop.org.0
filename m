Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED96789B65F
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 05:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDA3710FF8D;
	Mon,  8 Apr 2024 03:22:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WLXiQp4D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3AF7D10FF8D;
 Mon,  8 Apr 2024 03:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712546535; x=1744082535;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=y9k9EhL0AyI8tnJmjgGfxruNGVZH1sQ6On9T8DeHqX8=;
 b=WLXiQp4D1IS+C5kefj8B6SIRynvtEVycVaR6tBrOr1D4jniwkefE4liM
 CXec57sTwxJd8vKsbk2DleI6YE/7K6ofQwel9aMvL78bVd2YoVKBMVOKc
 vGnRwjyWwI8DvvLhbnlMFeGrBZBIIB1/6XyA6ACwLqOqyVQE78+BfF/s8
 PNUsLbvk3ABvBf/HI7GTBTwO4VjHVP1ZqrtV0JbYYf81Ynv0skRjIwsRj
 9+TwjVoTr+Uvoxeksk33wffC7ND6VxvxJBYdHJ6JsMqfZiBHkcvMTKoCl
 DoNIMbiEWkdsWTOGQ9qRW4aOKnEvFxZd7TSAe4Q+tD6jmof0lxknqM6e+ Q==;
X-CSE-ConnectionGUID: 3aE9iSXOSIShEanhWO+xLw==
X-CSE-MsgGUID: 2zm7sy09Sji1CbqyfBh4KQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11037"; a="18949212"
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="18949212"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2024 20:22:14 -0700
X-CSE-ConnectionGUID: z2RvpVxtR0u9O5UrBPZTFA==
X-CSE-MsgGUID: PeK+brbpQy2Aw1ugPDKsRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,186,1708416000"; d="scan'208";a="24515352"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Apr 2024 20:22:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Apr 2024 20:22:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Apr 2024 20:22:13 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Apr 2024 20:22:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W14S1v512GbYtG6BNfOFmV5mlVdURv+m3/Iv6dL3Fy7yQrVQGXtYF/s51RPECvWORcgSTOaHCKLAp03dKKOw8Lt2uCP72o7k8nWhxPMMw5a+eYXZCGf3AmMSUrBWJrvv0qwTHkEZyVwojCnjYWUktN3+bTffAW8H149YmCeMkj3MaoCBBDd45tKlslx+YnAjj/KysLrBbbTkVyAiK5iSblSh0BkWxKtEJY25+m0R4xObQrOB6rrEQMvo4GekptGt2kTe4q6VgllMpskmgISPNiMNudbySgaucF9FL1Xod4YHe59hYEFtbGRpAliOzrbxUGf08uEHUhuumTLC3P0wNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6QWNTLIbuwmO67++cZlodZG2uAAYkYUTjm6tVdbWgVM=;
 b=MIKFmy+CLVVQtvyUAOg1E/OQEG50y8N0liRYviQqR0OsaJA6gMujx1ZxZ7tPgLxDru1wYRX0aDqlk9aGlwbIZBsDt05HEXzVn2u9Hy+cvpSKjssd5gkcvGbE8aqI5YboM5s59mN0AObUy9ofMqWvMJImS2aw+3YKh6eNUxf4KoT5aQ6vaECUtVTsvPDGQCQ77ONhD9+3wcGRiAYPHCgBVssqz3JrR5+rxjbsrr20C3MBWptwlWBRT1PfMD+/LB+X5F51ymbboPsWWVIqb6+IwRQaclb8l7nVv6BBzUreRN8Ci4DzlglsqM7mLShp8sFZP+y8rFg1HKYWM/6P1OZj3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from LV8PR11MB8607.namprd11.prod.outlook.com (2603:10b6:408:1ec::18)
 by SJ0PR11MB5008.namprd11.prod.outlook.com (2603:10b6:a03:2d5::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Mon, 8 Apr
 2024 03:22:11 +0000
Received: from LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::cea4:315b:52ce:11f2]) by LV8PR11MB8607.namprd11.prod.outlook.com
 ([fe80::cea4:315b:52ce:11f2%3]) with mapi id 15.20.7452.019; Mon, 8 Apr 2024
 03:22:11 +0000
Message-ID: <686eb984-5463-41be-9268-73fbc0437426@intel.com>
Date: Mon, 8 Apr 2024 08:52:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 21/25] drm/i915/xe2hpd: Set maximum DP rate to UHBR13.5
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Matt Roper <matthew.d.roper@intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-22-balasubramani.vivekanandan@intel.com>
Content-Language: en-US
From: "Chauhan, Shekhar" <shekhar.chauhan@intel.com>
In-Reply-To: <20240403112253.1432390-22-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BMXP287CA0018.INDP287.PROD.OUTLOOK.COM
 (2603:1096:b00:2c::34) To LV8PR11MB8607.namprd11.prod.outlook.com
 (2603:10b6:408:1ec::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: LV8PR11MB8607:EE_|SJ0PR11MB5008:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dbTEUXqUHXC4tg/SGB6DChT0l7/CyCDPdGk391vtt7tsHKmP1Q3WSAqIDZ5Tl4ofRsz5rjcaJkdLdcqdx/UBYCMeMHVYiP1rWT4TEZy1+q37rShS8Lypt3MOqsnT5NHtLGVIWoLbFJWRyo5RTlVcdtvL4LRJ1PKr9sDNtm3jw5a2G+eg9OwgHFJ9cTlJTwdQYGiVglg6HC5avxc+S0RNvUQYmLkC2UHJjoHSt8o/+MOfo/4qnKVzzGNE/HnBdk63xOOgG8pe9zqF4f4/x/qZQcjmCaCEPg4+Wqocfp5KDplTcX8RqAGiSCe9GqmaQscYtqxsj9X82BWTwrf5KjLocaNLmZpnKxI86WwusaGAYx5WaZtPB2NUXs4YhsDO0NjnKHK/yX0KlNg3zuQjYc+6kAMuMH0N3+nmhPHFqoY/Je+hTVJUtsY/YkKuKi0Ta2Cbjp8SlnD777fgR0l6ceA2p8VqGHI9SdRAsW4MZoKZWvjXaHOGoEIlOMmwpzedNu4s18a1IoOH241Lw3qv34Gj/uoUgvg07/1ec3HPk3H023kRPjbd4IvEUrUkuhOBVP5q2F9GAb5xOEcE9vjSF9bad6OpsOvoP+LAxOYKXWmgrfaB9KM11dVtKB4aIcK6haAqgHIYlzz5jf0n/aef9YBlWrtINMSBsSpU6grevJmRrmE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:LV8PR11MB8607.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OW40cVZ0WEFvU1JBdU5vU0Jjb0VXdE9zNWJlQ3J0WGZzQ3Bkd1ppZ2s1LzEw?=
 =?utf-8?B?ZWVaejZ3RWc0YWZwWkhtVnpMeENZem44bTZXUnRJUUlqdHlYYjBGZHc4akNi?=
 =?utf-8?B?Y2E1bUh1aE51Y2xaN2Iwd0R5bVJoSGdNd0JOcyszaWRmUS9yWERVRDg3OXh1?=
 =?utf-8?B?KzZ3cklkKytBWGRQOFo0Qk8wVVRENDNGRlg0d2JqL3h0OGtCTzhEZHhvbThC?=
 =?utf-8?B?Qjd0WWNZL2VQTmsxOGFOc2ZTVEU2dGZRTzFoNzVKcS9qWFFydmo3VlZVN0R2?=
 =?utf-8?B?cDl4QS9LSUlmREUydG1qZ3VWQjlCOUdtZHlVK1RseTFjLzNvTUY4eUVJSXpy?=
 =?utf-8?B?RENKWU0vY2JqMnRPTWY4MDV0NkovTC9yc1M2TGRqZXFRNTk3L1RQRStybkp4?=
 =?utf-8?B?Q2N5bWtaY04xeGNBWG9wRkUzOEtscnhtZUprY1VyMlJMMXlwSVZzaWlGSzh2?=
 =?utf-8?B?ekNzdFE5UmRWL1IrUE0wcUZnQW1raGdEWmFJSk1lbWY2c2swKzFvZ3B3Niti?=
 =?utf-8?B?SGZiUDQ3RXpuYW44aGxoZTVvbUZTUnRaNENidWpmNjh6RXcrS1YyQ1FwK29R?=
 =?utf-8?B?MWpJSllxV3pESjZYOXIvakM4dG14bFVIcm9Ob0RGYWNMNEhsaDJBSi9HN3Z2?=
 =?utf-8?B?T3VPVld4ZjkwU1VGR1Q0cDJ2bjdaRzB5WGxrdWNkZ0t2VGNMcDB6ZGo2eVBQ?=
 =?utf-8?B?RHVRWFFJMGkvQUVUemVqazhoZFFhY24reDdaaFBkdnMyT1UzcEpJUHN1MzhX?=
 =?utf-8?B?YWRrdHR3S00vUzlHUldBVTQxNnRvUU8xeS9vbkNZNWFNK3VxV2FBdWF5dFlI?=
 =?utf-8?B?ODRILzJLbGZKNzhJanFVUXNGdTlTSDFlWFdUMjFlb0dFMzkwN1AwakRqN2dM?=
 =?utf-8?B?c1gzMmw2Z3BSN0tMRS9MSFErbExtbnd4emcvRys0YStrSGpmeE8rV1NmTi85?=
 =?utf-8?B?ODhjRjBRTVpBdEIxSE1XREsyai95eGQ3NHY1bHk0Zzd5cVBHdUZZamM5aTMx?=
 =?utf-8?B?YXZGa3c3Um56TFRmODNYL3BsTTRtMXBtUVRtaWtRdURTbDBEaEE2Zng5cGVJ?=
 =?utf-8?B?cGh3ZStkL2J2a3pPbEVoZnNkQVpJMU05d2pyMVJ2c1VUSEdPS2Ivc3ZPZEY1?=
 =?utf-8?B?S1BvRUo0TWJwQlFndWxOMmNFTHlHTmc1Y3lsR3UvWHlicmFnZmNTeDd0dElV?=
 =?utf-8?B?MXZsMTlCSnJuKytiTGIrd3hnQnZXQzNXaHVBRUs2N0svM0M0RVROMWdXNFRy?=
 =?utf-8?B?T2F1VVI4d0pxcXVvYy9JcEE5Z0FsZ0xuVTFXU1c4N1RsYk5KL1JFaGVBT2RN?=
 =?utf-8?B?Q0c4Z1NuUm9WcGlKRC9GSTNGN2llRXpYRWFwRSs1YnFlbEFaU3RYTURzcmhW?=
 =?utf-8?B?alN3TGlkMjJUNmxlYkxhQVo0M2YzcjljaTFYR2pWSjlmNHFwai8vWDhYQWFD?=
 =?utf-8?B?MExIM1JoRmFKRmhJVmw1R0pOZVlzODF3SkgxZzl0Q3JmSERtUk8rOXRBUS9v?=
 =?utf-8?B?cjBqeGNxcVpsSUlNVzZ4NnZENHVKTDNjaVF5UmRqK3NFNk1qM2VjQTVjb3Vw?=
 =?utf-8?B?SHYzMlkvajh4ditobVpvckJiL1BOY0wzaE5aMUxWc2crdG4zSE9ERXFCR0pn?=
 =?utf-8?B?UEtzU2tvTW83R3FZOHpuY2trS0xCYTlSZ25kejBiZmFTcE1wNFFPUWZCN3VN?=
 =?utf-8?B?a1kva1lyTWNkL290ajZZait5VXVyWGtiaUV1MHBBSXdiWGxIWE5wRXB0QzY3?=
 =?utf-8?B?Rzd0ZElJamkxSDNvaG5jRk5mR0pLNDVoZmJjelphclFiTWUxYWJOVGY1M2t1?=
 =?utf-8?B?Wm9VMG9YWTQ1UW1uV1RuTVVpbzF4SjBpdnVXRjFIWGNiQ3ZvRkJoZU9NZ0RU?=
 =?utf-8?B?b1N4eTZtdXZkODBNRlZnVGl6eFc5SDlYTFh4eGF6ODRiT0pIbXJ0cVh3eVpt?=
 =?utf-8?B?UWgyUExtK1RDbktrREM0ZVBCQ0ZtQ0pkekNjb1pBZm0zcjI2eTd5MjkydFpH?=
 =?utf-8?B?b3RPb1NaTW9kak1CRU4zMWlQbFdUbFozVENBNnE4YWhaOGJ1bE9TUzBKNjRH?=
 =?utf-8?B?Wmd4RGxSNUlVRThQMldCSjFYeFVLVVV4MEpvSlhybVpPRTQxVjBuS1p0bVhV?=
 =?utf-8?B?K29tbzArWDFzQ3dXSU1OdTZzVWV4SmVqYlQxbDdKY29KbGc4MlJUVy8yVU5a?=
 =?utf-8?B?V2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e2ce00c-4920-452f-73ec-08dc577b143e
X-MS-Exchange-CrossTenant-AuthSource: LV8PR11MB8607.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2024 03:22:11.4642 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q68DJ7t3jcOG6Ad3ysOb+wMnMXheKt7cuSiYDIgcN5MxUatSSfRL3Tofd7bB2Q46FuPSI5xYwBaBqj3zvawig2drVuzsSQiWOi5VMSk/orc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5008
X-OriginatorOrg: intel.com
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


On 4/3/2024 16:52, Balasubramani Vivekanandan wrote:
> Max supported speed by xe2hpd is UHBR13.5. Limit the max DP source rate
> to it.
>
> Bspec: 67066
>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Reviewed-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index b393ddbb7b35..d9d37f4971dd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -466,6 +466,9 @@ static int mtl_max_source_rate(struct intel_dp *intel_dp)
>   	if (intel_encoder_is_c10phy(encoder))
>   		return 810000;
>   
> +	if (DISPLAY_VER_FULL(to_i915(encoder->base.dev)) == IP_VER(14, 1))
> +		return 1350000;
> +
>   	return 2000000;
>   }
>   

-- 
-shekhar

