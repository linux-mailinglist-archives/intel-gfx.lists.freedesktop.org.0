Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E12BC6151
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 18:53:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4429E10E865;
	Wed,  8 Oct 2025 16:53:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gxc0WAw7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7734E10E865
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Oct 2025 16:53:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759942419; x=1791478419;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=YRzhCPL9xzeVq8Su7FW3kRYKOSm7I6CfwA9ciDNZHUM=;
 b=gxc0WAw7H1rUClMda+nA+ayJOAs38YOn9PfuNdx/31Onaj3BGl1uf8IS
 d9qiXu5lYQ3ji5tIbQe6huyR+HPXRWVUS7H/D+NpgfjG1ZDj/9793br61
 hNsJmIlEA0kmnCOHrrqhGmc9K+TfF9yioCwYLKe6ndwYYr/rZS3o7QTw/
 5yP4uwMY4Yc4gKi0+L7lbigjbC0DXrgnwIPEcpeIte40IKXrYLCmh+cma
 BZQV3uH67XE75dMjkP6EHRiDZ2tdrkAC+dCWgjOZ2UsC96naU6lrQxMTe
 47s/UJFRYzJUJKAWK4Q+Mjm67ruSzN6spvYy/PSG+ul0zdzhjOu2Sw2dj g==;
X-CSE-ConnectionGUID: lVgc4CkORs+SBLpGIkIOxg==
X-CSE-MsgGUID: RoSgSB58QrOT/bkmzz23UA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="64759933"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="64759933"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:53:39 -0700
X-CSE-ConnectionGUID: dJJD5TGiQLa4OlXDVY2avg==
X-CSE-MsgGUID: VjMK0zwkQTCgCIlPpDAO2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="179747925"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 09:53:39 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 09:53:38 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 09:53:38 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 09:53:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WLUm7LfXzTDU6D1stmN9/fKvIjp0mrJOnhf/NC1ihWeJ8HezgfnOjtH97X4nf4AzAke7BwVV68uESt3C44Hs1eHn3Br5ufELgkMDuWhBtZkETPbhz/DmL5GRb0Y3J/8MPpQQKSamUb1vOxJLJNCPqBhGApJxkvy7JdRg4LoOm1InOjJ7i5bEfe8JJt03/8oqoCVU0IF+W3kqec+xKDBp6GMXI3r3y7cIIvkrr7exUIK5jhd+XoieF1lEBYIMT/dJ6KOyEZ/LN5noqnMe8ckt+XuctOBYXPzZPTfFW3jxLe3qeE01/nfftAd4WqPIo7w1aduBJP25B6u4LanD8NdkPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3YfKW+jxAQwn+I843EUqGhJsetady68D7/lHV+gS1I4=;
 b=d2r6yHUDzL1zZ54/zx6CY7/fS2j2T8KCZ+UGCoc43amaGBSt34PCFL4hDoB4cYbSc7izUhjhpEsIugKHug0Dr8RHOZtitZdcf/8XDFQlRFQoNIVlPbgk9SM+MN0sHsPciJL8Rj16vn+opctMqyHIhMWDdYWImKgI37uXHHt80PfFF6JiHSYm76voobiZiaOE5rJtYRr6bxqCzZ9kfFoLGQhYbqmx1a/+sIj7o9vYE9hCLCDfjdNMtYHV/i8GmLniFVYnZ3f6iSU6WFD/laIyLfrnLMffChfdJt8tiIIbzbGBXjSzrOJ4mAB731zGxmyDOVwazhYfXPZMN6sm2UDRPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB8110.namprd11.prod.outlook.com (2603:10b6:806:2e1::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Wed, 8 Oct
 2025 16:53:36 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 16:53:36 +0000
Date: Wed, 8 Oct 2025 09:53:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/i915:move and rename reg_in_range_table
Message-ID: <20251008165334.GA1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251007212447.941389-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251007212447.941389-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY5PR04CA0011.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB8110:EE_
X-MS-Office365-Filtering-Correlation-Id: 3288115b-3372-40be-263b-08de068b3932
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?g/CSvePxvhyeYPKaid9PgBJ+nQnRjr1tSUCqQb5EAwZeIj/q99JmMDl0Sd?=
 =?iso-8859-1?Q?cIB7/Ooezi2OPhs4wakMz5z5dtoVIZAr6n2dxe9skqWSPChUs2MHnCQ1Fp?=
 =?iso-8859-1?Q?k1lmanL9YThUmUtOMHzn0v359CunrTIQjdbStlPwMWnxbOnPi2ONKGOP2i?=
 =?iso-8859-1?Q?NoXYukli7HS4aX0I1vz4GHjWcRhAtpUgzx3/Nyrrml6ehziU1+PLmJQQmd?=
 =?iso-8859-1?Q?UQUne2fQIN/2g3RkdC4JyLMI76KGCTiIZLSf3ZdZKGbV59WVZYSM4JQwX1?=
 =?iso-8859-1?Q?PQL5UlrEyZCOVRFZIXGg2rS9pouwxz629ZyYN6uX8/fVlzxuOGfRDKEXmV?=
 =?iso-8859-1?Q?sNGYafNylpj4JmtGlrhWADHAOvMnBvdn5OqLQdyilQvxs2cKi9v1khrSm2?=
 =?iso-8859-1?Q?gptWnH54cP2ByoAG+QNakzpmvKZEBU4ahx+dVarSt/N2TskQBSB/w+56vp?=
 =?iso-8859-1?Q?fkqOoQIh377ynbJCM49abAy4kQzKXUBW8aq2FbwAUOjX1J8/qFcdUd1U9Y?=
 =?iso-8859-1?Q?4kil9sslYu15v8GIUXEpMOoDZ97K3oCBeVS5oYV2XR+ghu6L8uvAHAH4rW?=
 =?iso-8859-1?Q?Vtc/eLIccUlBL06VUDmj44fEz61pyLQla8+16I5zBKl9/xeEhva5Gsh95S?=
 =?iso-8859-1?Q?Lbn/eWmQRgfjWw24DecxwSbC60+Mu+WUK8KeB64zbTo2sVMfjdK22r+WvL?=
 =?iso-8859-1?Q?VFmk/X2mTbkFx0R8QISpmh3Fj515qgO7Lb+QTfB5BbJgM/CwbZcqIKRVCu?=
 =?iso-8859-1?Q?/igCC9eccAAoKLyWQ2FZ9cdW6PbBQsVU07+obDhN/YZ/3QmNKIyDGy3Ebe?=
 =?iso-8859-1?Q?BXzJZNys37QnQ8IXe2OdAj5hqBfT8kwkBXVMJZw1E4n/is5EnXnb+QrVkx?=
 =?iso-8859-1?Q?Yhj2am+Y+giSqdyq3GyYr2/x4BPH4nGiU4K+tVIZvrmOoErI2on0hAH/1d?=
 =?iso-8859-1?Q?5/uwtEGUzTxG+HsWae69zKB6WOpuI8JqquKT4Snv1VZyzVGkeWNuyP0zg4?=
 =?iso-8859-1?Q?qfFTkMhAgKCEd5qPUj/jC1UE2fpIud0fGv9GB958XhSmNd/cA8kVMlKeOI?=
 =?iso-8859-1?Q?NGXrfR7o0jx14Bktc9IkBrHSmI8sTfgf1x76TaEhsJEMHXW4Bh73fxr6ET?=
 =?iso-8859-1?Q?+Vnd7hvpJ15v9965RDhhfa363Ym23LyclREfmx3Yr4n8oAZ9U/u3jeeKnn?=
 =?iso-8859-1?Q?U8hnxP3IAVXiCZRQ74RiOmBC8nBZke44pkCex6jHWBtum2YTOYDx2jypVn?=
 =?iso-8859-1?Q?TApqU1xSZJi2/GXjW7e8eJvMg885bSnz961oAasu/6nGZu0VZ0iWzfVDW1?=
 =?iso-8859-1?Q?rWHkzubzWMBD41Aa4SVO7anVmv0tDpK5Ne7rghJDef0N3uMdP+ekcKryR5?=
 =?iso-8859-1?Q?zcfT4E5UCTMdm67DDyS/PwXpZgkcIrO2dxiSqf8k0/M5vMVCX4uqCanin8?=
 =?iso-8859-1?Q?ceAbC0rTB5/0RCPyia3jEIVn1EC0iccvNaV650XYqixdZAEB8Rncd5/BxP?=
 =?iso-8859-1?Q?qYMfvBnb+Wt5EKvEm1hb/g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?t7dYAq2yla9wAB3KPNiaJEh3i8VQ8/qIoy80JL6yTtlxq6aAIH1nSt/xll?=
 =?iso-8859-1?Q?J58wPbdlyAGB+ZJGxlNVs/U3HPLFJ+7KAbHewOOfZIXZW/QOLd5j/kE1Cm?=
 =?iso-8859-1?Q?T+irTQbwlESASgqbbLDZ47F8hpxkSDjgR7/+O/g/7reYmw/OFtLYb5XFi2?=
 =?iso-8859-1?Q?TG6IRNkdjkkbtFlFstm5EK5o61ihFs5OJOSWD5NG0xXXFuX6tVo29GaiCr?=
 =?iso-8859-1?Q?EOfqWeqOE817mTbX2MOrRXcvu64h+ew+JLtwm/sBuL2i1SzFfCzm4YR487?=
 =?iso-8859-1?Q?GIsgLjSEmiLD7fKrR/YmQMiOPUo1/lClF5twCm841rLjj85GYd9EYwHQcW?=
 =?iso-8859-1?Q?c5uEDeNwOXwGUWI9dMMyGYEAj51NhYBAcvsjH2uwePwEPxlpirnCqj5niv?=
 =?iso-8859-1?Q?Q8Ooz7YzYoeMwAbnP55HFCVWbBjic3TYRbTbUunI6mMXctvWzXekN0REOC?=
 =?iso-8859-1?Q?CvSYxi+ZvAJ+R9+M2OcLUEZz6cOZtDGRL6xAjhY9yMdA85j16iZSGqdv0j?=
 =?iso-8859-1?Q?UNDZVe0zeaDjvTG5wyQyxVKGRSEVfItuaLA7rIwvUCivQWIpm4YwmDyoYw?=
 =?iso-8859-1?Q?WV1DMlsEzPb3QE/XXkg9wBv4+M2eCtIGLNJIPrCMvSsoB7NUB+XNsiOT4U?=
 =?iso-8859-1?Q?yPYnnkRE0t6yIzQkeEslZ/fjmIxYBQP2NSKCo6ZXkJbm8RYgfCtSjq5Nuf?=
 =?iso-8859-1?Q?QZqXed/gcPbwk9f+tbpUmhaa4mxcg49MILfgDU+YlF0WFE7GeQUfRjeNCu?=
 =?iso-8859-1?Q?fH0gOmhgzh/+oiPM+XZN5RkBMnty4Ca92kUcMkHQ3TA/QwlYROKCJR+RY1?=
 =?iso-8859-1?Q?0VWK6TyP7z6mTlI/8rS7jOhFmoIGCMRHdnRW9mT+NY29YVBaaWvXKbcm3J?=
 =?iso-8859-1?Q?aVNaFRr23z9iDQm7cRlXfE/oDzwcScKOhdpypGTQHEZqV7viqFnf8hJosa?=
 =?iso-8859-1?Q?EruwU5Ahcwx7jG6znWAykhWuyEhDxTBcboSIGwYxsek3UljgVjEzb8bCmY?=
 =?iso-8859-1?Q?DCCig2gK/S64k8IumRODovrDGXTTEzNsKp9Nup+XXpS9DZ5RQopkXZ9WRx?=
 =?iso-8859-1?Q?gabnqj4e9R982WzhNQsPPHkKDKngigyqGQUjIGqmOHtn+LOe/AsTPgUec5?=
 =?iso-8859-1?Q?nf8vr+1P9+1SyP2Tkac68qNLYGqyqPnAwezlfeSwYjTI/CRlKHU9V0Ij5D?=
 =?iso-8859-1?Q?n/Uc9/OS86G9jlLaoglvRPtcsSfmQ1Gvg9AGfG1jqBf/WbC7Diugcghf1d?=
 =?iso-8859-1?Q?1PA9Ii7CK16GpRnA/ExfYPhzHvNpOJchzsBSJMiNxE0hAaBEzSTm98x7yv?=
 =?iso-8859-1?Q?6QOlhLXGZhUDHg9+/StH3QII4U2UEjA713Th5eRogaSebEQ4Gc4kGvKO+E?=
 =?iso-8859-1?Q?bnYnVAtbvyj9Ax0fLqgBOfOX/okN84TLGmaJc7iroVUO86lpRJ21r+PZ6Z?=
 =?iso-8859-1?Q?0eZLQhYFZTZHFYFcugTbrSTcBDVOsXCEswaEVZhLruKnokWD2p0TMmfoE8?=
 =?iso-8859-1?Q?ZC1z5C6DaHXQhavhFeK+Y8eh283JjWRl2Qo8YVnL/QIY5cUs+G7OdYaxHM?=
 =?iso-8859-1?Q?eMK+jKSnV5Z+ZqQg8Ddat45zZjO65iVJDJQgI9dGvxy+t0HDNACPkBv5uN?=
 =?iso-8859-1?Q?omJ0ABnEIV9rN6rqDXQJa84AkS/vRLP/h3aSCHcuGiN/V3CX+cMQjuUw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3288115b-3372-40be-263b-08de068b3932
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 16:53:36.5059 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0u2Sx1YFQtEnqk4SUqYolbvCwrkvddDfixbh1y8tSiL58RflKYculbmWVg1v5970mH2Jd3dCYk7taWleL70Q0adtadT8Ep4Drrg1Wh7x12I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8110
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

On Tue, Oct 07, 2025 at 02:23:36PM -0700, Matt Atwood wrote:
> reg_in_range_table is a useful function that is used in multiple places,
> and will be needed for WA_BB implementation later.
> 
> Let's move this function and i915_range struct to its own file, as we are
> trying to move away from i915_utils files.

It looks like this is a new revision of this patch from a couple years
ago, right?

        https://lore.kernel.org/all/20231129205122.3464299-1-matthew.s.atwood@intel.com/

Even though it's been a long time, it would still be a good idea to
include a patch changelog so that it's clear what's been changed and
what review feedback was/wasn't incorporated.

I'm also wondering if we should be thinking about moving i915 to use
'struct regmap_range' and existing functions like regmap_reg_in_ranges()
rather than maintaining our own i915-specific versions of the logic.
regmap in general does a bunch of other stuff that isn't relevant to
i915, but it seems like we might be able to re-use the type definitions
and basic lookups to avoid reinventing the wheel.

> 
> Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile               |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c |  1 +
>  drivers/gpu/drm/i915/i915_mmio_range.c      | 18 +++++++++
>  drivers/gpu/drm/i915/i915_mmio_range.h      | 19 +++++++++
>  drivers/gpu/drm/i915/i915_perf.c            | 45 ++++++++-------------
>  drivers/gpu/drm/i915/intel_uncore.c         |  1 +
>  drivers/gpu/drm/i915/intel_uncore.h         |  6 ---
>  7 files changed, 57 insertions(+), 34 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.c
>  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 78a45a6681df..e5819c4320bf 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -26,6 +26,7 @@ i915-y += \
>  	i915_ioctl.o \
>  	i915_irq.o \
>  	i915_mitigations.o \
> +	i915_mmio_range.o \
>  	i915_module.o \
>  	i915_params.o \
>  	i915_pci.o \
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 7d486dfa2fc1..a3c08bde9b2e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -5,6 +5,7 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_mmio_range.h"
>  #include "intel_context.h"
>  #include "intel_engine_pm.h"
>  #include "intel_engine_regs.h"
> diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
> new file mode 100644
> index 000000000000..c5484b16e28a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_mmio_range.c
> @@ -0,0 +1,18 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#include "i915_mmio_range.h"
> +
> +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table)

I think some of the feedback about function naming from the previous
version was overlooked.  If we have a file i915_foo.c, then the general
expectation is that the non-static function names should be
i915_foo_*().  In this case, it means that functions you expose here
should probably start with an "i915_mmio_range_" prefix.  So maybe
something like "i915_mmio_range_table_contains()" would be a better
choice.

Our existing code isn't entirely consistent about following this rule
(especially for i915 which has a lot of historical baggage), but we try
to follow it when writing new code.


Matt

> +{
> +	while (table->start || table->end) {
> +		if (addr >= table->start && addr <= table->end)
> +			return true;
> +
> +		table++;
> +	}
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/i915_mmio_range.h b/drivers/gpu/drm/i915/i915_mmio_range.h
> new file mode 100644
> index 000000000000..c3c477a8a0c1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_mmio_range.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#ifndef __I915_MMIO_RANGE_H__
> +#define __I915_MMIO_RANGE_H__
> +
> +#include <linux/types.h>
> +
> +/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> +struct i915_range {
> +	u32 start;
> +	u32 end;
> +};
> +
> +bool reg_in_i915_range_table(u32 addr, const struct i915_range *table);
> +
> +#endif /* __I915_MMIO_RANGE_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 1658f1246c6f..b319398d7df1 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -219,6 +219,7 @@
>  #include "i915_perf.h"
>  #include "i915_perf_oa_regs.h"
>  #include "i915_reg.h"
> +#include "i915_mmio_range.h"
>  
>  /* HW requires this to be a power of two, between 128k and 16M, though driver
>   * is currently generally designed assuming the largest 16M size is used such
> @@ -4320,18 +4321,6 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
>  	return false;
>  }
>  
> -static bool reg_in_range_table(u32 addr, const struct i915_range *table)
> -{
> -	while (table->start || table->end) {
> -		if (addr >= table->start && addr <= table->end)
> -			return true;
> -
> -		table++;
> -	}
> -
> -	return false;
> -}
> -
>  #define REG_EQUAL(addr, mmio) \
>  	((addr) == i915_mmio_reg_offset(mmio))
>  
> @@ -4421,61 +4410,61 @@ static const struct i915_range mtl_oa_mux_regs[] = {
>  
>  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, gen7_oa_b_counters);
> +	return reg_in_i915_range_table(addr, gen7_oa_b_counters);
>  }
>  
>  static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> -		reg_in_range_table(addr, gen8_oa_mux_regs);
> +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> +		reg_in_i915_range_table(addr, gen8_oa_mux_regs);
>  }
>  
>  static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> -		reg_in_range_table(addr, gen8_oa_mux_regs) ||
> -		reg_in_range_table(addr, gen11_oa_mux_regs);
> +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> +		reg_in_i915_range_table(addr, gen8_oa_mux_regs) ||
> +		reg_in_i915_range_table(addr, gen11_oa_mux_regs);
>  }
>  
>  static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> -		reg_in_range_table(addr, hsw_oa_mux_regs);
> +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> +		reg_in_i915_range_table(addr, hsw_oa_mux_regs);
>  }
>  
>  static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> -		reg_in_range_table(addr, chv_oa_mux_regs);
> +	return reg_in_i915_range_table(addr, gen7_oa_mux_regs) ||
> +		reg_in_i915_range_table(addr, chv_oa_mux_regs);
>  }
>  
>  static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, gen12_oa_b_counters);
> +	return reg_in_i915_range_table(addr, gen12_oa_b_counters);
>  }
>  
>  static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
>  {
>  	if (HAS_OAM(perf->i915) &&
>  	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> -		return reg_in_range_table(addr, mtl_oam_b_counters);
> +		return reg_in_i915_range_table(addr, mtl_oam_b_counters);
>  
>  	return false;
>  }
>  
>  static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
>  {
> -	return reg_in_range_table(addr, xehp_oa_b_counters) ||
> -		reg_in_range_table(addr, gen12_oa_b_counters) ||
> +	return reg_in_i915_range_table(addr, xehp_oa_b_counters) ||
> +		reg_in_i915_range_table(addr, gen12_oa_b_counters) ||
>  		mtl_is_valid_oam_b_counter_addr(perf, addr);
>  }
>  
>  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
>  {
>  	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> -		return reg_in_range_table(addr, mtl_oa_mux_regs);
> +		return reg_in_i915_range_table(addr, mtl_oa_mux_regs);
>  	else
> -		return reg_in_range_table(addr, gen12_oa_mux_regs);
> +		return reg_in_i915_range_table(addr, gen12_oa_mux_regs);
>  }
>  
>  static u32 mask_reg_value(u32 reg, u32 val)
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 8cb59f8d1f4c..aea81e41d6dd 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -35,6 +35,7 @@
>  #include "i915_reg.h"
>  #include "i915_vgpu.h"
>  #include "i915_wait_util.h"
> +#include "i915_mmio_range.h"
>  #include "intel_uncore_trace.h"
>  
>  #define FORCEWAKE_ACK_TIMEOUT_MS 50
> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> index 6048b99b96cb..6df624afab30 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.h
> +++ b/drivers/gpu/drm/i915/intel_uncore.h
> @@ -123,12 +123,6 @@ struct intel_forcewake_range {
>  	enum forcewake_domains domains;
>  };
>  
> -/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> -struct i915_range {
> -	u32 start;
> -	u32 end;
> -};
> -
>  struct intel_uncore {
>  	void __iomem *regs;
>  
> -- 
> 2.51.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
