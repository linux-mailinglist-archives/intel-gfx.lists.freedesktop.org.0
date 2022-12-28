Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB74657595
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Dec 2022 12:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CED610E1B3;
	Wed, 28 Dec 2022 11:03:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5616D10E1B3
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Dec 2022 11:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672225422; x=1703761422;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=vkPMWg9C/gJYZnxcWvbsV26dpZP3NBuW5cr0ErQX1zI=;
 b=Q+09rDYwHFuhqHLcgRnX+8v7t+9HK72iBk2e7ZRxVvw2X6z0URIPWWUt
 ZHGxQmEZDoDwgjMWbQ4/G8UieP+isTaDEhz1DyFYkYBRFkBCZsnGZHSoo
 lbbExPhWXPfH3r7eICb71sIEvzzd4Bepd8rdJW/mPuRxGmGnzSYlpw/gX
 L/7E3xd0fvxgdVyR/cE1PGHK1aO8QA02IwLIxv+XxHPJlbsM+mdbbXcIC
 Nrt74pGKKaMjhtvol7rkN271LpDe32ONPXmE7X4JNVZm02KpiSHyS8b1X
 ioqY/Qr1t+vIATETVE/Xo2PyK/0juiGEnN8i04RpVZ1balxMv6BVPubDM A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="322085209"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="322085209"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2022 03:03:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10573"; a="646694656"
X-IronPort-AV: E=Sophos;i="5.96,280,1665471600"; d="scan'208";a="646694656"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 28 Dec 2022 03:03:41 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 28 Dec 2022 03:03:41 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 28 Dec 2022 03:03:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 28 Dec 2022 03:03:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I4XetF0FSKEcq0TAfk/5ZgZRR9bsKndvwptllg4wZxriVUINaXZu+epVocL5zwd72ETIVPVLjJ8zaAxuD232Qnejy4zlgD8/nQjjDg+k3WyQFigpeboCkICOaXGVPTpzzJAXd91YNNZfjKcO7ijPdhF2/fQ2j1WIVUMtTTbu/Vy7L16czIPmQ2Tss5W+MPNQahmsTZ8NjfQINYbqYpZtrph6QtQeaJ1BEqYIDGWakybK4X0Clrd+o9QeUSx7qL+MWZA31ToWALKtfTTYd6tZ5VOIdCXp7ukUD52SfGOlZv+ebuws5KAwCLls8Bljyfa/kBpfVSAfYZCV4x3E3Aq4Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mfJYgjQpIAIxtCYSYi1pc2d3ww9jdmEzUVTQONWZq/o=;
 b=FvAbo6pYV1bK3OH4uduFxbgD32TswRul17qI7ODbyRSK2V9KzmItzYzdaZ8lh4npy//7id9guIBvsuXyYpvXNxW/7gMxyYMcOdR6cby0l7AjlZim3S0ZECMyn2pd5QZ3DN1iZfkzkKESrbTjgfuZmNopNE7YUxfa1GZ7X22/7a/AYP1lrZ679mFzIUbJW5U7wFjQhjWvk81SItr8CZMo50Y8/xB9ASUCcaNGsmDOazfiEidf002OXLpjZ2myiytKTN0GvCqKdhaUQk6oKvTPvI4fU9atx93jCvfWLINXKddSKadHB1EGIomybFW7T+BvSZvIGDHkZno5U4dJ2SLgzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DS0PR11MB7406.namprd11.prod.outlook.com (2603:10b6:8:136::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.16; Wed, 28 Dec
 2022 11:03:37 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%9]) with mapi id 15.20.5944.013; Wed, 28 Dec 2022
 11:03:37 +0000
Date: Wed, 28 Dec 2022 06:03:34 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <Y6wihpYj3NJiZ5fj@intel.com>
References: <20221228104712.995922-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221228104712.995922-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0044.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DS0PR11MB7406:EE_
X-MS-Office365-Filtering-Correlation-Id: 4948eb8a-cb40-4d9c-4900-08dae8c32b95
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: srG8OzWcsafzZq9g3FYqSy/cWns3dyTNFU6AzCpKc25Kvz+qBUmqnek/oy8KSLCS9qna3kAgtGoOaQ1cM/vmEbUkr53QkcgHtCTdbDZEA42ETe8Kd7cNwauljDozIInVAKEMyb1qy55av28CJE2rf2TJ0zJ9ZX6t0NWqV6kGbHjqWUXrjiIp6ZqhCTCRJrYJ4vrZdKw3a9SaTle8/YL/oFSFfInCJRSc2XRQvG5xGuIzwJdWY8shVTG6Bl+vlJwiVGbXVb0fkSFdHlNtnkTTKlR6Hk9TdHQpYXP0X/+3YkzPBbmNTkWGDiM7mPn777nzjD4ldnu6fQEZ82U8nRqAZZZ9cb9oCQb7mA2Y8Ui6JtmFgK3aLUdujcajUNH7SFygR8tHXKLTRGn4zOVx4JYVSYVHE67Uzr76dWNw7os1LgU35i0K07t6YXUnApb04Jl5trER9aDQQoWccMKISMXZALD7lHzJIUCwjBkvRsUVfDNS3lBh92ZEx2PuBZsmqVnrHMRyXEkIoQwf24Itl0W0CXNc2ilw28Wg+tOkGu9bfCi/wEALG7GqAfmF33/5FrC/ve/JkfiVbJgThaqIndROBh8510mHNnVXhsWctR/ZjHn1cZfqq6OVcA/9cj77ROswcdhYs/xyBHxQjY4d5ROUWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(39860400002)(396003)(346002)(376002)(136003)(451199015)(316002)(26005)(6512007)(186003)(6486002)(36756003)(6916009)(478600001)(6506007)(86362001)(2906002)(83380400001)(8936002)(44832011)(6666004)(5660300002)(41300700001)(66556008)(66946007)(82960400001)(38100700002)(2616005)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iD42B2ppqvVI77arfepbSy49A4ejx6eDK6x6M17GN9x6+GYUl7lq7nQdWLO2?=
 =?us-ascii?Q?ZgSTVvZrLGu0BXDSLsKNjVWsRxZfEG04qp8CjkeBiz8JN5lQTpKyy5u2/GjF?=
 =?us-ascii?Q?AzTGUY7mwF5QodQYAvjNN5n123i0v59ZVHhCwjcrZJR6Vh28l8qA5i+J4Bg4?=
 =?us-ascii?Q?ccdMLK4nfAq7IS8nq3cQODKD/pv8dT2acvtJUsvb+WXFVwjFnqgTb9k+1qPU?=
 =?us-ascii?Q?HJBXq8xez3lQFaVoL5tM2HXm0eD1vYShTi44MpZmZl7A/T/hAJ0wIwB7WLqI?=
 =?us-ascii?Q?a4sU0GjghAPtpBre0ISayFJSAGg7ruP8f+MM1awjRW/alqsh8g6r/Sjk0o6U?=
 =?us-ascii?Q?MRjnDgp/iH+BdSR2IoBgVBtuKdNS8Z4WR9S7o0gQYwl1cASL5QJv+FXdqSQ9?=
 =?us-ascii?Q?BGhbai/xbI7BIE9jvAzURtECpqzYJU7vfw0SKmeVD6Asm7Ywa7UBvlGw/Guj?=
 =?us-ascii?Q?Db4mh9ZW08V3Y9WnMDFFTq3rtsrC33bInnGnx0ippmuXqiLxUNGlqsB1yBrr?=
 =?us-ascii?Q?rIwlsDB5PlGdFLkuVTZ92mwJ30xPWx0dJbXJYojAvwc76s7kDG6DxCKTorDK?=
 =?us-ascii?Q?B02gPAfpdNERv3mUZeOkINp0BnHzrhkqiP8XW0nhrTHc8xP8j5CqY8E4s8cT?=
 =?us-ascii?Q?0cFNsO9ZDN3sSeOmxQ+0YXaZ54Lt+kQw0QbV9zJw8tfo5zAfEcbLZUlhnx8J?=
 =?us-ascii?Q?JQ6NK2O/RrNpxIjh9guH8DpXv4j71yKBttt8qatPa01NvZCqdJKGIzrgJGlI?=
 =?us-ascii?Q?kPTzKDegwJF/z39778J826QdPEtO3Q7MC4eRyvDPXPfnnJccKVF+Izxgpggc?=
 =?us-ascii?Q?P/HqcFyna8pcM6QILqp7xrYjokAbTUipG4+VsTLCwtCZWeTZk3bKAJuDoqW/?=
 =?us-ascii?Q?ot8TwZdJ3j9GlgWIux7XYpXu41n50lj6agpCYQvypsnxSlHb7UfcPLafjt0o?=
 =?us-ascii?Q?1tW1YUhAE6ra7XHTOrtFd+hdRbdVIZm7vbOugsQpi2xXczfdOyPwHY/WAxp0?=
 =?us-ascii?Q?WsvMzfkusi9x4n0Up/EUgnmRzRu3YiTW6P3nTZt0Nc4P+JT9f9KcPsvBy3xo?=
 =?us-ascii?Q?WyNM4i2njhDRzJbgpIDMfHrEM4gTZqL2vjCfI0P+PoVyJ8ivrH43c24afbW2?=
 =?us-ascii?Q?FdfR+xB8YRTeKRHJX2GaR0XU6XR4fHfIEWJKr9wAPOlrz3ae0kkRQc9aFG81?=
 =?us-ascii?Q?4AYhTjnVmtRGqMY2GQgAo06Y0zktWKPI/FFWM1bFSWM7APH2w69717fiXNQT?=
 =?us-ascii?Q?MxXdQwEqDyogjrMEyvD1bzKJA9fX2iyfj9ujkBNSEg32ixLX4eeDgAo1dyPW?=
 =?us-ascii?Q?jEbTj3cUcmWl6IpIfmpyjiBgQOgS3TpQ6GG7Ym5nj2AWhVvHx3jgUwxWDyRw?=
 =?us-ascii?Q?Z4b3dTaGEs67hUI41scH2gCTw8gUaH8ewYi5p2YOEPrm/04CVQktKoDFmnll?=
 =?us-ascii?Q?PasjXnX/zYwIYuvWq/zwrrRO2olMXNHJKXe0b/BuGoDVqSSe0pXjnOJyy28W?=
 =?us-ascii?Q?M2HeOTY+mBLpTfqyy2LndWJj9YC8QTA1BlGSIaZe+XUK5PrtUoGgymhZiC3Q?=
 =?us-ascii?Q?Id3fCgyQjP1BeWZ3bP7gD1bJLj2vt5d3SBGOOBrCKGXQrs1Y+bIk/GUYoek3?=
 =?us-ascii?Q?gQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4948eb8a-cb40-4d9c-4900-08dae8c32b95
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Dec 2022 11:03:37.6316 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3fB8mht2Ks5/cqT35Qa/040OWZUh0jJ39jQpVrpEGcnXnjG73bl8IPH0npyoT9oDwBngH4p5SFIZgpl5K2CUeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7406
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [[topic/core-for-CI]] Revert "perf/core: Avoid
 removing shared pmu_context on unregister"
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

On Wed, Dec 28, 2022 at 05:47:12AM -0500, Rodrigo Vivi wrote:
> There's a complete rewrite of the core context handling in
> v6.2-rc1. find_pmu_context function used in this commit doesn't
> exist anymore. Also, let's first trust the upstream component,
> then work with them to get the issue solved if still present,
> re-introduce this patch with the old function only if extremely
> needed.

This revert was an FYI only, since I have removed this patch
directly to get drm-tip compiling again.

> 
> This reverts commit 87b32477e514aa9030a405b168581ee11910ea83.
> ---
>  kernel/events/core.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/kernel/events/core.c b/kernel/events/core.c
> index 930c99e4d89a..c3762a371dc6 100644
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -11528,8 +11528,7 @@ void perf_pmu_unregister(struct pmu *pmu)
>  		device_del(pmu->dev);
>  		put_device(pmu->dev);
>  	}
> -	if (!find_pmu_context(pmu->task_ctx_nr))
> -		free_pmu_context(pmu);
> +	free_pmu_context(pmu);
>  	mutex_unlock(&pmus_lock);
>  }
>  EXPORT_SYMBOL_GPL(perf_pmu_unregister);
> -- 
> 2.38.1
> 
