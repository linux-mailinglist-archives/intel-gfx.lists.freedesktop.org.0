Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50269A06624
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Jan 2025 21:30:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294B010E0A9;
	Wed,  8 Jan 2025 20:30:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nT/ZCC9n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88BE910E0A9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Jan 2025 20:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736368212; x=1767904212;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=luLEfmbJsau1bvdGtgIX2d6AfAP0/P5iVr3iErUS31U=;
 b=nT/ZCC9n7+DvZse42wQVpP8JR3AfU58yNuO75zFyS220mITEmf/aOz1w
 pPyAPGfzQtES5p3p7oQh1d4qe2zsCgwBTqjuUkeZz60Mr6ctp6rktR2/u
 oVvx5bUeVZrmhWOs7F4dPqSURG8krIvhwz1VCHF9FhPKrb633CxPkkcgW
 FZhOLWw5KqmekzuNX07SMjUQXc+Zb1ZHxJ/g+Kx2e7X053ep320Z2kzw+
 yxQ5Oce7hFLYSpOULcWtfpeTs8OrPQN6NgritGYhpNx5UpyrbdWqG8yi2
 jxGrDr9sAj3CcJ+pYXdUHMHOAMv4B/qRHpZVgFqQB5nABLr75kc0HwHlp Q==;
X-CSE-ConnectionGUID: QilOx6bGTx6URAJqBoGQTQ==
X-CSE-MsgGUID: KNKjhjkGQnS9ebm0+qDqPA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="47599673"
X-IronPort-AV: E=Sophos;i="6.12,299,1728975600"; d="scan'208";a="47599673"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 12:30:11 -0800
X-CSE-ConnectionGUID: rsKL6ewQQNqJrXAlRj1u7g==
X-CSE-MsgGUID: aLMEkmJwQMSMfg//trzUMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108307913"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2025 12:30:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 8 Jan 2025 12:30:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 8 Jan 2025 12:30:10 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 8 Jan 2025 12:30:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qI3zogOrTn1VLHjisPT8Ix7qSn5gApmY4zBD3Z/HlCqe311va1XuVPlb6qn38DTEkj/f/SGMkDWPPPzutw8/c667ZBF8I+kk7El6CTUCyjxUtXY2VmkaahXjpDQMkgghLK7A0y516LXOXMNQJVr2cZltbhUaCAgoyjNyrAnAhZdTs1IGDQ/78Qus7dh9QJ2yy6K+yf+taXNnq1XMq2u9jk8BWFDGDBkSvlWrYK9e0TWLDXdEnkrfBI45BmS/tjM+6ODCIbBFtQ448yO59U4O3QuSY3yBalSz4QJI5V7li/d3z3+3jbDvjQ4CW+edTTSIKCJWPLQFKfiI7kGeMC26vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ue/neYM/34F657mnAwEZ3/EjjHUk4JJHunKsX8VgVfI=;
 b=bYKqrs9ljrxZ3F8r0arcmjmN7DlS3zuNVOyFg3gJQZ6WKlYuqyo84Ey6FAyYXJDbq+3X3UhaWlsRMCaVb3qOMHCWI7P2F5BasR86Y75nvsTAk+ytDrYvn5kVzAoCKAvSAGDsceiSCPfXMwvBZ4JHoTW9IhZLst3oDebRuwnjrJKiJ68AkHf3CqL8Z9rRrqyfboC3AdsPmLdXLHf6yPf99QNuxtMxwU4HYLxgn4th49Vj6/Kz8HnbD7Op83kY+B4fGPJI0oZkRPovYAZroOsSFN/Axo6Hc3QxAVtgkDpnNdvZ/BY2x/XZN7i0tEIIT4LNbXK2t91WJ15kP4GfZX9HFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ2PR11MB8298.namprd11.prod.outlook.com (2603:10b6:a03:545::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Wed, 8 Jan
 2025 20:29:40 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8335.011; Wed, 8 Jan 2025
 20:29:40 +0000
Date: Wed, 8 Jan 2025 12:29:37 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <balasubramani.vivekanandan@intel.com>, 
 <lucas.demarchi@intel.com>, <gustavo.sousa@intel.com>,
 <clinton.a.taylor@intel.com>, <matthew.s.atwood@intel.com>,
 <dnyaneshwar.bhadane@intel.com>, <haridhar.kalvala@intel.com>,
 <shekhar.chauhan@intel.com>
Subject: Re: [PATCH v3] drm/i915/display: Don't update
 DBUF_TRACKER_STATE_SERVICE
Message-ID: <20250108202937.GF3224633@mdroper-desk1.amr.corp.intel.com>
References: <20250108200210.1815229-1-ravi.kumar.vodapalli@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250108200210.1815229-1-ravi.kumar.vodapalli@intel.com>
X-ClientProxiedBy: SJ0PR05CA0013.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::18) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ2PR11MB8298:EE_
X-MS-Office365-Filtering-Correlation-Id: 91c985c3-fbf9-4579-4b49-08dd30232d43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pPgXvtbNzucVLHd8tGwdjcCB8Low/g32zNspuhwN0tuIifk93tzbfTb6jQfZ?=
 =?us-ascii?Q?K9+VQk7M3QV9gffKN/aLRaRP3qB7CvDWtg2yVzNDLWvpsz/pSoIYLpsO9so7?=
 =?us-ascii?Q?e9i1ZCsBuf6y6gr+gg5iylsv4T1h/zdz7bV0N3/LhxrZGBKxuJvgQUySpR7Y?=
 =?us-ascii?Q?NeY4sInk7hO4cvrQnEyj+b4WI6IBVHDhghr3fO9CItwkG4GDjBdHW+J35tJK?=
 =?us-ascii?Q?oFP51qt2q8t69myDmf9d3Rr3vBh5AOgTF711V8SkZNnG33AnKJ1D4V6+zgPl?=
 =?us-ascii?Q?1W0H/jwyqXgTeHOqYsx9w7xl/ADpqEMlRHDGRqGyOZWPbtSPa2+ynIXEuRZg?=
 =?us-ascii?Q?mcKmUip9T8LYhJq1QhrAYFGBfkRM9L+6MdRDpRJcx+fwZgbheXc3zWzS48UV?=
 =?us-ascii?Q?HobxFxMZ69GbiaVvJFJrxCHjrKCqBqRiDmgc1sdQpHZlaGag7HsxAwYIUQWK?=
 =?us-ascii?Q?hLHgjeXTSsZHuWPDS59u0x6wHMO7jvlTAzv672rhpaR5q50bLCWJ1k5S5uMj?=
 =?us-ascii?Q?my4DYqUOqwpF61MfrDQ3fA6VwlsImvo1xa3WTQJeAWrgNpadtb4hXvM+mnwd?=
 =?us-ascii?Q?Rknb9e7mqGO3wIVAAUxDoFfCb1xO2ffJyCykvhmeTSTRwEbvdXU47vV9rVmf?=
 =?us-ascii?Q?HrVMecjBhXUREL3LGJq7c3LJIrxRWDa8azB064Z7RlO+bA7SVqytovZQV1rl?=
 =?us-ascii?Q?SOeB7raA1IXoH0iMXAmaom+7BHZHWbS77fagd70iTTCczOn7gk5euJ8ZL2Oa?=
 =?us-ascii?Q?184nRfEtfePVyBUqOqsNBG8uMr+0WVPcPIKpNon5YKarE0AFFs/Vkn0bhbX0?=
 =?us-ascii?Q?Rdsx7/YO3m0E7FYTij7IyVcuGSHPDA6jcP9q+eUQXKnYr78/gLzJxczDo5hg?=
 =?us-ascii?Q?Z8wjx18EsM094DjVFoEJZnCWUJTyjsWxF9CCCbjNBsS6f36Mz7tE0o3IIJRH?=
 =?us-ascii?Q?ZrTAppeNIFOKolExMzVLjc1Xb/7/4dmESadTS8ZlthRUBuyLspihCIttTJq8?=
 =?us-ascii?Q?VcVgFMiS4h301880KMyo/CfhH6ymVPWCI0uzGjkIFr9456uUeaqeLtGTuJHo?=
 =?us-ascii?Q?gk9osRLVzz4bW/UQ4EOzxaGFhaVJfFE5dSvOqc/dOxSvEI0O9EdmxH6uOnOj?=
 =?us-ascii?Q?m8wjmkkVIBaiPL6JsZ9PP2TMhH9mhOO49St3VO92M6id1F1JjlqAe8TvbXNj?=
 =?us-ascii?Q?5Syn64zbW5b49omQloa7xktL3Ol7HdGdAwe77pqiN9qvjUuKhHBPZ9FqwkIB?=
 =?us-ascii?Q?WVFoVKpbcNk/CJd4YKLqt5NJvt8eUkllPHRvt5gJSNs1i4QbRHnNVJr95PAc?=
 =?us-ascii?Q?R5uUEyqdrRA8ThhRT1nEJIno79CpxhTEBNcMwQI73Yxo/mOKLKiaj9aVWEbg?=
 =?us-ascii?Q?NX0BZFEatCf9X8fChHpwqSH5uD5o?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kcWj/ZFl6KTCB1OMYVPgLGFi5oYZtX51xOsW9jZXgnIEImczzvRP14uXfb3c?=
 =?us-ascii?Q?ccdNhFRyNI8eq3s9iwdzrc/g2Qfh7akd+OBJBm/0Js1thHphx/VRGuMAs2bp?=
 =?us-ascii?Q?wT7FzmrRt9s+1RYK2uCcuEP2puIbMngLFkcErBT66F8gXOSUpZg2B4VadqK9?=
 =?us-ascii?Q?w4mqYFW6HmGwW/pR1yLHXNCv01aMXBasQ603QWC0W8M1Iv1vllJd/MTSoCjt?=
 =?us-ascii?Q?kejwJxF6nX/Z+DvNDOHRFQStAl+ZtV7S0Vv4FuYShJdwA3h14eckFyTgc8CL?=
 =?us-ascii?Q?HhlOqHBEQc0XPtGdRycbkEntFDYRnK9u4hiupQedUnolJXLhzC8F77bkbkTV?=
 =?us-ascii?Q?9J6mDNZCHQykyNGRDs9x+uqsylJO1dxmpQcAbtLdrorx2ZZ/pWHG+RJhK+N/?=
 =?us-ascii?Q?5Amtk+oi6GiHWUWa4yggQgGNLPovqWNOmQzrGU6Uouuw1IztzHZQOSnA4/zM?=
 =?us-ascii?Q?XiKQGiuzm9qofu0ZdsaEhX4/hIRCUghv4t3jnJSQ4LlK3gflMZCkWxTuvhRU?=
 =?us-ascii?Q?458cdWTJgeetWdbCJImwP95yIXEw3VvPakg0Wx0G4HO4rHaj72gyKvHH8mSc?=
 =?us-ascii?Q?GC46wkRj39e6UMH/IigghGgWXdirpiLZ16F7wvB/DyHS+kII8zWaak4HIUqR?=
 =?us-ascii?Q?18nd7o9QtnYq1H/1v7CMoLN1P7B3x3OjpO0reFZgfvAdHmwh72WKMMTPwTmB?=
 =?us-ascii?Q?jAOX9jOijxAPWgfSQviZnQRR2U9S3E7sDp8Z8nstSSpvyPAciJd/uwTqYRoB?=
 =?us-ascii?Q?aDMs5NKg5Xz7p8BeCJELTEq/1MqyEybQqmUKu+p4siPD75p7+va+t0cfsm0u?=
 =?us-ascii?Q?pVEn1Oru0a597HZxt+JVwUC31LFbdgtAuoK2iH9ixP/BXOPaav/9kAoxpDkF?=
 =?us-ascii?Q?1Wz+s8ef6Yn4pf0809N9Gpd3ZzObn2Esc0yLAhUhtQCG5Nd7NACy79l92q03?=
 =?us-ascii?Q?+qJkCvZBHpI5wL0z0RRYfaYMyNma4/o4OEaAtlDSzBO7jKdkuskXDjZHn9/+?=
 =?us-ascii?Q?yY4e9VGIR78AC+VrHJAIyMXuIWlk4hZRftPhNOcDC781WdTlhao2fkVgHkIp?=
 =?us-ascii?Q?NH+5O2ldQwJB3oKrwAlgBtyFc1pu76RzAtmwiVWhfRtvurpXDINYaqn4ZPv9?=
 =?us-ascii?Q?I1GelV4wMaI3gSbrvdHT/u6xZmR6ZsbszBwSnTBz37Cldytp3krToQFoCbie?=
 =?us-ascii?Q?HGHUC2JCUCq10Y9hqDtpPf7eINM1kZsQJu1Z19vVxldJi/iYSuneUNqZX5bU?=
 =?us-ascii?Q?4zpR6c1cB3TjegZc7oiN8orRmi9AwyQZ64vs77d9RM2hBjxgkhKNnxizvn0g?=
 =?us-ascii?Q?G4AangUfbIJK0j5fEeLnVZ6QavcaI5tWl3JUDZ67CZ3k4Qa1eVJIg10oXh/c?=
 =?us-ascii?Q?tHH33O6PeIt2KpdlK0yDzDa00b1b3JnIbMUDAtsTgH6toXcAG7WdmnyK94ZK?=
 =?us-ascii?Q?97L832sTqWkD2d9WYXq01K58O6Ac3mZSBdZxwmo2nGa5QH/yixCRDB1MoyI3?=
 =?us-ascii?Q?wuAKlmTmMJ692DuiJ7e0QbqgIQ4C4Kg7Wpzt/YL+8G7GkpOSVNSmT/t+bnOA?=
 =?us-ascii?Q?33EFvR0PeqhpEfDTF81D+1g+dO7eMk7Gu3fmzqXWXqbBB8rufO5nRXySvoap?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91c985c3-fbf9-4579-4b49-08dd30232d43
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2025 20:29:39.9123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 32sof1fnhXuVPBr+pNhE8GjFG6ybpHXXrJrtzDeW8LIcBrxpShee7D6xr1gcMM8SyrEYFDaNm9GvIEFYtGZWB/VdQPZkvxrFVJ61vyZMJQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8298
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

On Thu, Jan 09, 2025 at 01:32:10AM +0530, Ravi Kumar Vodapalli wrote:
> The bspec only asks the driver to reprogram the DBUF_CTL's
> DBUF_TRACKER_STATE_SERVICE field to 0x8 on DG2 and platforms with
> display version 12. All other platforms should avoid reprogramming
> this register at driver init.
> 
> Although we've been accidentally reprogramming DBUF_CTL on platforms
> where the spec does not ask us to, that mistake has been harmless so
> far because the value being programmed by the driver happened to
> match the hardware's default settings.
> 
> So, update DBUF_TRACKER_STATE_SERVICE field to 0x8 only for
> 1. display version 12
> 2. DG2.
> Other platforms unless stated should use their default value.
> 
> Bspec: 49213
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>

I just noticed that the patch subject isn't quite right (it implies that
we aren't updating that field on _any_ platforms), but I can tweak that
while applying the patch; no need to re-send.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

And since the CI results on the previous version were clean (aside from
one false positive on a DG1 GEM test) and the only changes in this
version are to the commit message, applied to drm-intel-next.  Thanks
for the patch.


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 34465d56def0..9c20459053fe 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1126,9 +1126,6 @@ static void gen12_dbuf_slices_config(struct intel_display *display)
>  {
>  	enum dbuf_slice slice;
>  
> -	if (display->platform.alderlake_p)
> -		return;
> -
>  	for_each_dbuf_slice(display, slice)
>  		intel_de_rmw(display, DBUF_CTL_S(slice),
>  			     DBUF_TRACKER_STATE_SERVICE_MASK,
> @@ -1681,7 +1678,7 @@ static void icl_display_core_init(struct intel_display *display,
>  	/* 4. Enable CDCLK. */
>  	intel_cdclk_init_hw(display);
>  
> -	if (DISPLAY_VER(display) >= 12)
> +	if (DISPLAY_VER(display) == 12 || display->platform.dg2)
>  		gen12_dbuf_slices_config(display);
>  
>  	/* 5. Enable DBUF. */
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
