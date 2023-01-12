Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A88E667CC7
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Jan 2023 18:40:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EE610E1A8;
	Thu, 12 Jan 2023 17:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F4410E1A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Jan 2023 17:40:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673545247; x=1705081247;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HIG+fwRmMOt9zfupy3shnlkchFoSLVnKwRqKY1nXmtA=;
 b=mABG5sst9OeuCeSlJXoWaSTJvJiuGKDjeyCeAbpTxSaa/Y2kfM9kww1W
 eLicQEUUBBQ7PpTU/TLAMk0tx8cUqK4fJdSSVozncVgc5CgSgVTnLBx4f
 2tmt6h9xoWETZLTGIHaZzq+OrbfPrqL48ZP7aadkdMYVPvfbtJAT0ML+0
 Tp89wGzTRBN45FcXLzP+h+wPyJCy3nf2WWNBRfbdMUViwuHd762mOEYgW
 4jxMUqSwPWBF2EpmjatTxFhD4UiJGNE5q96VcEdOsDdtOKcRb+ewYJ7oE
 K7YnQOxPPyT7FsfmziY3BHWVC1gI9r2z5CAhT94gmYOGnXW2v9lW8/vH2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="351002232"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="351002232"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2023 09:40:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="690210598"
X-IronPort-AV: E=Sophos;i="5.97,211,1669104000"; d="scan'208";a="690210598"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 12 Jan 2023 09:40:45 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 09:40:44 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 12 Jan 2023 09:40:44 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 12 Jan 2023 09:40:44 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 12 Jan 2023 09:40:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ff7/op2uZQNKg6f7r2RLCHYB08mvbnQ8blMwoissIf43neE4AjSLWNOW1b3AD4WY9etgi+GTcRu7XIDubDWIJ6UjWi/NHFeqDN4yYg2ui09UNBgG+BbiPy2zRed9HiPUO0BZCJPLKIYqcfreVxecVqjpAb88ckYXy+z0x0SAXkZEKV9lR9ORisXgYT9mXEp44nxyYPgK+9HVl2cSumsaO5XwVRFqXbus3u66RI68gyqzGIOgvFEJPJIeciGDdhY9fwlEihgRjkUZIl4rv5KRlRIqaCmForN/BTmvGy0NTL+H9O5HzPFc0Snbda1HdIqQtmf8Lxkd1x023LMqHoiWGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m0I7wKy+UReEqSvn+znNpMxzSkV9HsHSL1duEZf4RNw=;
 b=mAwWcy/BWPXJNqABBKQSMOFNewebOINTjGCo/Yqcrm8ejYMkvjcWVqKvU9qJR1tXNpqzBdZLWiGohW8yvPwkiiaiQ1f0bwCuBNWnYeHk3UGTeV1XrC9/LdCUWqg8wCBvm6fGO509YALPeL14AtOzUvn0JrR8liSU7WNY3w6IAyT/4yO1UeNjBAMxyfJaYI6QL1OfkXs9PW/DdxASp+3QFNjsPw+tKdLuKDShwtuN9RCSY3M6M+ZSBePfJNywc8eGG/ynpz5ysjkr/no7o42HVPia9zdXp8TazdWUz+VcP51Uxk24ZmrbfWDAYp0/PSGHg77V8DeC7UC3Y9Flz5Rgqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB6350.namprd11.prod.outlook.com (2603:10b6:8:cd::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5986.18; Thu, 12 Jan 2023 17:40:42 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Thu, 12 Jan 2023
 17:40:42 +0000
Date: Thu, 12 Jan 2023 09:40:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Message-ID: <Y8BGF+6ygAV3vH3Z@mdroper-desk1.amr.corp.intel.com>
References: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: SJ0PR03CA0168.namprd03.prod.outlook.com
 (2603:10b6:a03:338::23) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB6350:EE_
X-MS-Office365-Filtering-Correlation-Id: 84ec71a0-fbf1-427e-f5a1-08daf4c42050
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Aj4LhbrhMCutYQZ05d0alZSjY+ohDY06jMf8SDrCWHde0X9i+aNeeTndy4yEtxZErPLGE4DGmzYluiO3V3POPodeSPfbqamE1gQQAAWJvC1a4/UtxNEpwSGyp/34lHjtN6DiU+Eh8xCbEAvEDmfD6z1OuYq6S8fM78xU9YHwAeW4orMmFRZH6iPbKWmTIX6S8pUer3cViUnsgN+qRnhOJGz/OYzt5xtvke8XIsrGPbELPvdgz8nSp3+lvderrbg2253TNIi3w19QtO7DJDPKY9j155h6goOa32zrCQUPWN53vLadLTmVs3lIo9nvp2u/riczmNrWbXZpJed+oERL1709IeRg2Ycg1lGa9qesSNBpBBwVbqRfqmqKV2+mMXzXiF6BOjTlgNaWJ3hpbmTU3Ng8Ng8oOsPoDUy6Q1Nk113f1CGgfFUwWu//O7iqqv+xaclQF3nEq7E4JWy0bmhj7OMKWieR8j7bxUWkhncvFKfkLATJwLPXlhZfeHo5+mY1fFF0LXe2ZtWwaUhy0VVImw1RAnTBtXZyPV0HLo4t3veJOvSynjlxEqIpNVhUzJnlXsB2xy0ZNnYNang6WYS1zigpi7zTZlPoO8SU+xTVexfHGOcjY6iprp+eD4vuhCdNwPq04IAmAobFOcr8tpD3EpBVFpCANWmZfe1VDzJ8xkKU+kZRDZFNb7qrmfil1Wdc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(346002)(39860400002)(136003)(451199015)(6506007)(6486002)(26005)(6666004)(186003)(4326008)(66556008)(6512007)(316002)(66476007)(478600001)(6636002)(86362001)(82960400001)(38100700002)(83380400001)(41300700001)(66946007)(8676002)(5660300002)(6862004)(2906002)(8936002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zSBy7/sYy5AxK2AbLYwtI1jOHEAlc0ui/tBVWzQm6gu71by7Pq1VPcx2THkD?=
 =?us-ascii?Q?5GaaC3P+3OtiZO3oij2ubK9K82bh886jZQTe64OPpXEzqtdKpJJKA4wNBjZc?=
 =?us-ascii?Q?uLBU4IhWbU3aqU+11H+CobvelW7fQ5eETIV0jYCUteQYrq/qE+TjuwCQvqnM?=
 =?us-ascii?Q?pY/KHZoEc3XPZX/LddWDXteskSNIu3fB3t4bbAkCxxenbOrcEvxYBMH0zhOg?=
 =?us-ascii?Q?CjCC8gJsaOCQFbjmY8CL6f3fUUM3kuu/amBThrEY19g/8ngebHQLKmSJt9x+?=
 =?us-ascii?Q?C1OzwIFgqUL57UKAm1hQkHkZ3Bg4WpE+VC0/5Ds6mwK2LF/Krbiby0acX8Dq?=
 =?us-ascii?Q?LPyTEJouR6djoHTIZTFAcPJskD7RRNXe0sUAzN9qQlMZ2sg2h4elO/1y5da0?=
 =?us-ascii?Q?3TpUQK7Nd0bFn1lTvBPztv3/lIaCFLh+Tzkp8kbSRQygAwHutjV3slyXDh/V?=
 =?us-ascii?Q?OienEBiDwLAdLvk3k42XVqjr6zA8wpnDahiONwqe+3mpGIwVlOQT/ABWhnRV?=
 =?us-ascii?Q?6DuSeFkpAmnUNMPT87m4h2f5iPEiaazls2bf/h7KTe2KMZgiqVJozfPcz7eK?=
 =?us-ascii?Q?nDabHIHGVjWJdx755D0AlI93vmQ0gTXYpbCtE2/j3WhTC3Id7ivFrGrckKaj?=
 =?us-ascii?Q?LI6gysg6daVZVNVhqXaqhgJ/VSKeSh+mQpadi+tWwf7aMifcaxOmocsTC2G2?=
 =?us-ascii?Q?0n6f0Me2h9ukvp1G9ULbzKlgDja4SeIJB4V0WJeY2f6omBZy5+gRjKyvOpNz?=
 =?us-ascii?Q?w3xxTs7LZbXEV7wCL0WkMKyxOGd6e7WgfIzcrFXqAjqghK93hv1NJ2dUg2ac?=
 =?us-ascii?Q?14q/LCeHfPJjHtsKDV177L0rxg9VOFG2dyeMRR+grAornm/6Q+/4Aoz1PFPs?=
 =?us-ascii?Q?qivQLHC31TFWorqV4UR7HxLF6mOjntRM9fNznN2PVRAmZhPR03m4e/RKa4rP?=
 =?us-ascii?Q?Gjdr5351Y5fQduWmllG2729hbUBDko/ZaUYgs/wl7bYhEnd9xrPgcgBMB6ON?=
 =?us-ascii?Q?Wlx02eo+sJAQiBhfw6IADlrj0ElLEhy64PZEYOIO+YYIJ6ZqiRqzhN3Ic4S/?=
 =?us-ascii?Q?SZluHnWWJRfh0QLfaTPH6CTREDvm2uuf4r2GJx7VJuSfTjGrK7zVQjUkWks9?=
 =?us-ascii?Q?V+LbZoJDH1/GCLM8222uWD0pgQdKak/2at9ucYUgTjnIcgwLVJnauySyYUrZ?=
 =?us-ascii?Q?80e2LQUJUN6WLcvSOa3/jzfBKcOuAgAiPRtzKkWjaaiodsUbqO9kZwaMqX64?=
 =?us-ascii?Q?R9SwQHZTq9yDGFi6hiLDo53p6e4hYx2KBB2Idte6Cpl1BMfcBRFAUf7+FMSs?=
 =?us-ascii?Q?99yXIPdJxE/weMb6i2sE4kAB+GdZ0++z2w+6VU9kmDXchInRrJuV/sJuG7cG?=
 =?us-ascii?Q?u1d73mpF5qX6gtk2Q4PZFDWfp48WtW+jzIViY9wZZ9RYD03hb2jVEjC92rDp?=
 =?us-ascii?Q?EN5BXRq9KRwbaq8R/Waw6MY0L0JtY38zteyFPdjqSlJM5OTdPr9O2+syjD8l?=
 =?us-ascii?Q?8mUVyPrKkE3sHX3g+JcWpCPAwkcdu0P6dGxngUQugHMTcpfFnpvz0a4uyU++?=
 =?us-ascii?Q?onRfkpmWeDnmJR8eMgcXol3mo+l0SzTFlDKR7EeMgG6wu5sjF3YuGqj3Oc3E?=
 =?us-ascii?Q?1Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 84ec71a0-fbf1-427e-f5a1-08daf4c42050
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2023 17:40:42.0540 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: y5QcJS8GWws3W0Pbt/OLKxrANEC6Oz5jV+Di3PpwX53FReUwLV+ARI11SPVLtOtWntPbYBW1XgJz9e26dq49oErV88SkM8QFqEjagM15UUw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6350
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
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

On Thu, Jan 12, 2023 at 03:11:31PM +0530, Chaitanya Kumar Borah wrote:
> Fix typo for reference clock from 24400 to 24000
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Fixes: 626426ff9ce4 ("drm/i915/adl_p: Add cdclk support for ADL-P")
Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 0c107a38f9d0..7e16b655c833 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals adlp_cdclk_table[] = {
>  	{ .refclk = 24000, .cdclk = 192000, .divider = 2, .ratio = 16 },
>  	{ .refclk = 24000, .cdclk = 312000, .divider = 2, .ratio = 26 },
>  	{ .refclk = 24000, .cdclk = 552000, .divider = 2, .ratio = 46 },
> -	{ .refclk = 24400, .cdclk = 648000, .divider = 2, .ratio = 54 },
> +	{ .refclk = 24000, .cdclk = 648000, .divider = 2, .ratio = 54 },
>  
>  	{ .refclk = 38400, .cdclk = 179200, .divider = 3, .ratio = 14 },
>  	{ .refclk = 38400, .cdclk = 192000, .divider = 2, .ratio = 10 },
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
