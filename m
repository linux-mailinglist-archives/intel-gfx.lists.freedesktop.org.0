Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF0E77DA9B
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Aug 2023 08:46:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5966D10E2E4;
	Wed, 16 Aug 2023 06:46:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CC1D10E2E4
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Aug 2023 06:46:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692168398; x=1723704398;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ymKZBf9FcpU3jeRsXE8X4qDaoNze0n2SitX3EfgUnJo=;
 b=fD614+2zF+lz0Lc2Ct8rjgDO0CCjNwM9NJFxHc0tKcbnMpUlmaKN7DQW
 AaMpDgW7/Wkg5vpPymn/CKR5MveMzMwhNY9drioANVEEB5uIYcsjU9fS4
 9w9JB7hFJn5SnLJ2l3jIDo3yAG0N6a8P7SMo05ggRHB9nT3k1KK20W0A4
 pDzpXyzlw7jZs/uxmgZfSc7yWcsF5fgeXTMoNEukwh7KTBsf0WozUPA9H
 qN6Sf7puVUC3GT3jgxAeREJNf6k5Glnr2LMVM3KxiwPdpdY9gTo/M0SOJ
 eC7zdZH3ihWx9i+zQymPYcRS/OW5Zfx0wNVgXtx17fL2NaBUD2e9NO7AK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="369927947"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="369927947"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 23:46:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="769077784"
X-IronPort-AV: E=Sophos;i="6.01,176,1684825200"; d="scan'208";a="769077784"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 15 Aug 2023 23:46:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 23:46:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 15 Aug 2023 23:46:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 15 Aug 2023 23:46:36 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 15 Aug 2023 23:46:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CUDVDq5hco39gVA2cvljmNa1Iegx7I2GDwp4EsWaGy1YYu54d79l8FzpS1/FqZBRElfYyz6eQeRYTa2M67ACrakNTB5S3wFMcF/V5B5NXmLtM5DVhra95dHoWiD3ninhAcQkk2HtLoX+WQsIbQqFsqDmDRJALlKvsWbIZJ3S5hm76nGsMwh45Fq/mSWcL8pisPil/PL0ajCy3AVohhPPf1QzGSgxJKuxTgNL3udstD6GJ8IyXyBdTtqz+67r01UmO265JqwhFjg0V+++lMt2OygmsWVCx6F78mrlwwCJjUxeB7H8dD4M5+C+iJkbJdGUKYQuCVn6ENd8f64ZMr08pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0TwznZCqq5PN3B8icjQMDmET5OXm7Ys1QpK4gh3UzC0=;
 b=fTNr50OmYW56jIp/n8y8ER8+/Ez/aNhos20h3+ulDOw5ype8ROKJ7iWy83eSvnFj4dZ9Re5hpGnJhpRGTl7DWMnzXTlGG9KKu4qu+3x1nlWxQ6MxRrLWeR45nffY6BRQESVQ4Gx0aqg3eD3Z4lrE8Krtk/pExr7EvLnUj7UIhkJrQUM/QLtmP8gueDj1atn8mE/5MOowJemyDEqn4/6NFJhFYCdkY/M91QZx93jDvgnEif+5EocKSCBvhVmDftG7ZU7bPgbd5TnL7ZXRCymSk6xTKVVVdrxifSVYutF9ikQp+gNmTNoaRq+0R3eEoKy3YYyZn2LbLdmnqy0HHLxXag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2907.namprd11.prod.outlook.com (2603:10b6:5:64::33) by
 MW4PR11MB6668.namprd11.prod.outlook.com (2603:10b6:303:1e9::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.29; Wed, 16 Aug
 2023 06:46:34 +0000
Received: from DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593]) by DM6PR11MB2907.namprd11.prod.outlook.com
 ([fe80::d6dc:40dc:3857:6593%7]) with mapi id 15.20.6678.025; Wed, 16 Aug 2023
 06:46:34 +0000
Message-ID: <b2a1b3b6-5d9f-d29f-86e2-f4fed6691f20@intel.com>
Date: Wed, 16 Aug 2023 12:16:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>
References: <20230810234618.3738870-3-matthew.d.roper@intel.com>
 <20230810234618.3738870-4-matthew.d.roper@intel.com>
From: "Kalvala, Haridhar" <haridhar.kalvala@intel.com>
In-Reply-To: <20230810234618.3738870-4-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0059.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:99::13) To DM6PR11MB2907.namprd11.prod.outlook.com
 (2603:10b6:5:64::33)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2907:EE_|MW4PR11MB6668:EE_
X-MS-Office365-Filtering-Correlation-Id: ab0e86d9-b961-404d-3e6a-08db9e2487d6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vgcdcr54samwCInWR+uzEU8RVvbgW51a1sgyBlksYjNxUOI/tkBGvct1PK3FlBbFLnqLszlyq7Lx56BZHXE8Kj/lYSoVxK44MkitNcXh8eeJFc674r/OVuiP0VRj2YrMJfgSD0kATTgpEL0SmW6A8OmER5wO+zUAJtnUekbhGnvDw0vDxvxsW8SMMwascsiaa15O8w/bQJQGHDXn8Su6rAgzCSw6TvlqNIXZN6tXZknVogCn9HBL46Z2R3TBUKUvliYMKjmEnaYxqJVkDz8SqldLKD2QTErKd2nt+qp/NhnK4jtV30ofYmC3aU+NTRF1qFOkGmSmuYfPztySbFEJ6dXYilgu0kN6iM4XCT4VuHGZrQmrTZFuiYTwaAXJtvzSZie3f6xLvl3/g3bp603MUC11199JVM8TfXinzuMEDkkToj8sDqGJSgLI8MXJJWe5c42VTJDbSkpPidn2i+e+emP0JRZqU9Y5f1VVBmcOA0DfFqfZcox2gIulV0HmZz/nqU0mrOrzOhpipTCYGpkUwx4IoZgWHFG3Y2HAQDJYPzdeldTLcc+xYMevFuCJUNGIZlrRxoV1uJdy2+Rx4+DYMKLaVSNO2gPHoRqK5uxHH1jt9DgdwS+ndupbQyskHZLLcV7JWjZB3XzRlvTAvOSf1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2907.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(376002)(136003)(366004)(346002)(451199024)(1800799009)(186009)(478600001)(38100700002)(6486002)(6666004)(82960400001)(4326008)(6636002)(66476007)(66556008)(66946007)(41300700001)(316002)(37006003)(8936002)(8676002)(6862004)(5660300002)(2616005)(36756003)(31696002)(86362001)(2906002)(83380400001)(31686004)(53546011)(6506007)(6512007)(26005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QTFKcHJSWWZWOW1VbzhOVnlzRWx4VjBocHJPcnVoZVFWRHM2NVU4RXA5Tjlx?=
 =?utf-8?B?VkcxN3BoU3FWNnFmTS94Tk94TmIxWWlSRm94V2Q2azZLbHR2SUNlV3VNOHkv?=
 =?utf-8?B?TGRYdWt2VkNnM1BRWXhPSlgyT3FFbXZITWZwdCtHMUoybEpEVklqbFppdFBo?=
 =?utf-8?B?QXBSNWU1WGgxU3hmYURyWkRhSWp2b0szZ2s2ZE40YVN4eTdtRmlMMVJwOHdu?=
 =?utf-8?B?cDd4RHhpOENtZ1EveWZIeTVKelZaallpb01xMzkxRUVlN2sveUJNSnR2bWNn?=
 =?utf-8?B?WG5vSTFFRS9PbnMzME8ySjM1cTlmZnlPSGdZWjIvaWJMMXJaVGcyTzRMbHFj?=
 =?utf-8?B?T2c2MmV1QUhGckRmZVJEZ0k5bHR0MGRveXRLVjNrZW1wQmpRZGMzVENmbklV?=
 =?utf-8?B?ZVNsaEZ5bjlHM1BMdDFNY25pbVUvZE1xVGFJMkFJcm9ueS9qVDdBVW9iTkhZ?=
 =?utf-8?B?MU05Q1FqN2RnNzR6U0VLekFpWUl4Ri85YnNSVkl5M3hLc0ZaYTFJdjF2WkhO?=
 =?utf-8?B?czlWTjl0elR1UGk2R294WFoxQlNTL2p0V09TdVVZWDlWem1yeWhrdXNVbm5z?=
 =?utf-8?B?S0FSZUlwRCtCL3p2SHhqd25JMEk5ZDdqMHdScDNKVnR3cVlOa1pDYitGRUdF?=
 =?utf-8?B?WExvWkRVOWxhTmtTUkoyU0VCU0N1bjB5bm1hODR2VFRua21OTjVYZ1p0cXpk?=
 =?utf-8?B?MXhZZ3AvVDZHZWpQeUovR1JqRktNRnZzakg1eThFdE91VGN0UGRQUERlWnY5?=
 =?utf-8?B?ZVVhbk9JK2RablV5ZmtlMkZ0RzdCOEdkRlJJWDc2aFlyNTRGbGIxRTIzZGRn?=
 =?utf-8?B?OXdaMjBlUDdYeWJHYXdFa3hBNjE3K0dHNUZPRHVkRU0xbFRVREpoUjgwczNL?=
 =?utf-8?B?TWNpNXJzWFFQR242SnArOUIwYzhKN01aNVpNN3UraFYvZW1QeGpOcUlreDlq?=
 =?utf-8?B?WUtnc3RBaVFRY2o5TjcrYW56dUIrdFhvK0N3Z21ZeWdCWlluMzdyRzhFWHU2?=
 =?utf-8?B?Tk9CYXFDbndXOHhNQlhya2lpSjFOME1peVFtNkVQSlUyV3NQVWJGSW1hb05l?=
 =?utf-8?B?OHBSek1WWW5pOHBnVVF0NFhZaGtoVUF3c1R2ZlIvcXZ4eEZkb0xldnhYeEpw?=
 =?utf-8?B?SGg3cFBzdzhtWXY3ZU4xV3B4UVNlV2ZxWGZOSnVSZXpFdmVVdUY1cUdUY1RY?=
 =?utf-8?B?b1p6NkNyV1JHcDRaallDS21zYjB0ZGw4VFZiVWFuY2Y5a0tKa2RWMzNKUC9V?=
 =?utf-8?B?bHB4cE1qbC9lZ042YnFVeGxVRityNTJ0SmdaenNkYURvWm1ORHlzZC9SS1da?=
 =?utf-8?B?bjAvSDN6RzNSMitXNUJKMDVKbDZoWmJyOVF0MDE1MjY1T0xsbzNHV2QwS2Y2?=
 =?utf-8?B?U3ZUTGV5M1g0OVZ5ZUJ0RTFkWnN5R25qazJOSTdYWlB1SUYrenFVOXczTkR3?=
 =?utf-8?B?WGZDS0Irem1PVUdQakh3eUpRUEtMOXpGbEU1eDZtSGUzNVRKRFNvdjhMWTlT?=
 =?utf-8?B?VStJV05MM0ZINEF4RHJjY1g1UWIyZTZhMGd4b3hrbUV1T1EyY3I2clZ0eEp4?=
 =?utf-8?B?UXRoVytXbTYrOVB0WjJnR05aYWpER1IzRmZBcWRTdTcwQUVuZDYzZVFST2Jj?=
 =?utf-8?B?b1dsK2gvbXJ2YUNRSGphZGprazFNSHBucmIvNmVIWHZNSWVsbFYvK09hSHpD?=
 =?utf-8?B?MUxuWHMvb2JaeVZlU3ZkR2U4eHNTRzdOTTlmMjlxcWtUUVpNMEtUQlZQVFNw?=
 =?utf-8?B?OUxwOVV6a0xicXE5VkVjV0YvVWp1eDNLQkFiYkFTd0dMYXowemV0bFh2K3dn?=
 =?utf-8?B?QUFNSlFFQlZ2Z1ZHN0tIc0JDb3NGZnM1bkhZaEpNYkpmcVlSWGNPNkV6QkhX?=
 =?utf-8?B?UVkxZVV5eTVCZm5HVXBPb3JOM2h0RjJ1bTBFUnArcWUxNXNoMktFR0I0UkZr?=
 =?utf-8?B?ejVCRUo3bGJIYkNxOXFzWUVTSFYrQXV6OW9KbzJSMXhNdmtwWXdZa1JCM2tO?=
 =?utf-8?B?blF5NnpicUZtMWNPZmVWMXBCNWlHVy9reHZjS3VpZjhiSGl2d2tPNk1MZTFl?=
 =?utf-8?B?THkzbXlTU0J2bDk1U0pSTXlRd1lCTE9YaHpqWGVZVWl5cUxHOXd6WUVvWmRm?=
 =?utf-8?B?ZlJRRFprVnFHK3V0WU5rVndwa1Qxb0Z6YlBFWnMrVFJBano5MnoyMEFDcEVv?=
 =?utf-8?B?c3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab0e86d9-b961-404d-3e6a-08db9e2487d6
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2907.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Aug 2023 06:46:34.1702 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+nZrZout+glAJHuv3aS6GRISGj5pg4hpGtV/W+Ykt/VcS7IpjjxpfL3YMidPE9gbLYNC1Ppw5nLj/wa2s83Y1HduAZScZbPCl6TwN7Q/pc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6668
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Eliminate has_4tile feature
 flag
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/11/2023 5:16 AM, Matt Roper wrote:
> We don't really need a feature flag for has_4tile since there's a
> well-defined cutover point (DG2) at which all new platforms started
> using Tile4 as their Y-major tiling layout.  The GT side of the code
> already handles Tile4 vs legacy TileY with checks on the IP version
> rather than looking at the feature flag, and we can simplify the display
> code similarly (which will also make it more self-contained for re-use
> in the Xe driver).

Hi Matt,

Looks good to me.

> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
>   drivers/gpu/drm/i915/i915_drv.h                     | 1 -
>   drivers/gpu/drm/i915/i915_pci.c                     | 1 -
>   drivers/gpu/drm/i915/intel_device_info.h            | 1 -
>   4 files changed, 1 insertion(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 215e682bd8b7..eb630a946343 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -32,6 +32,7 @@ struct drm_printer;
>   	func(overlay_needs_physical); \
>   	func(supports_tv);
>   
> +#define HAS_4TILE(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
is this tab space aligned with below lines ?
>   #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>   #define HAS_CDCLK_CRAWL(i915)		(DISPLAY_INFO(i915)->has_cdclk_crawl)
>   #define HAS_CDCLK_SQUASH(i915)		(DISPLAY_INFO(i915)->has_cdclk_squash)
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 7a8ce7239bc9..4c6852f0a61c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -737,7 +737,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   #define CMDPARSER_USES_GGTT(i915) (GRAPHICS_VER(i915) == 7)
>   
>   #define HAS_LLC(i915)	(INTEL_INFO(i915)->has_llc)
> -#define HAS_4TILE(i915)	(INTEL_INFO(i915)->has_4tile)
>   #define HAS_SNOOP(i915)	(INTEL_INFO(i915)->has_snoop)
>   #define HAS_EDRAM(i915)	((i915)->edram_size_mb)
>   #define HAS_SECURE_BATCHES(i915) (GRAPHICS_VER(i915) < 6)
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index fcacdc21643c..df7c261410f7 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -713,7 +713,6 @@ static const struct intel_device_info adl_p_info = {
>   	.has_3d_pipeline = 1, \
>   	.has_64bit_reloc = 1, \
>   	.has_flat_ccs = 1, \
> -	.has_4tile = 1, \
>   	.has_global_mocs = 1, \
>   	.has_gt_uc = 1, \
>   	.has_llc = 1, \
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index dbfe6443457b..19d120728ff1 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -150,7 +150,6 @@ enum intel_ppgtt_type {
>   	func(gpu_reset_clobbers_display); \
>   	func(has_reset_engine); \
>   	func(has_3d_pipeline); \
> -	func(has_4tile); \
>   	func(has_flat_ccs); \
>   	func(has_global_mocs); \
>   	func(has_gmd_id); \

-- 
Regards,
Haridhar Kalvala

