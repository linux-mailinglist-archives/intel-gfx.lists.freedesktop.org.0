Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20810A08069
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 20:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1587010EF0B;
	Thu,  9 Jan 2025 19:04:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="khvjXtYo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 809E710EF12
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 19:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736449497; x=1767985497;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rcW1T0BBkQC7q4x/SiURSLMro2Sh+Om1DwreqeF+Smg=;
 b=khvjXtYocDwRj++YrMf/gWopCR8XKUANqX4V4ZPypp63CPsMd2z9U6cz
 Dg4OZxvGbEiZhgnFpg3rf2O6+qxLj0N2mDNHn4R8eeWeJMcqND7yJEY+T
 a6N5XUcOlvLDpK/kvniW5xsRGFvlDp9KfsKwudIqoXcdX8JeWQ8pdPpPX
 tnQAZS13O3oXlb8Tz7SOVSyUR0TVvEsUgHaTjNPW42geEpapc3v9WmE+D
 QiIG1SzZihbHrN8rOroODpSiOMSlCA0TWOedHMsYmUmB+qlCqC1z7E3Bq
 c+gpKEusHnztX1HXmaudXk6t2YrZNWRAt/alyj6bY/CDH8iA3qS/eVxdA Q==;
X-CSE-ConnectionGUID: JQ3XIRtmQeWv7zhhIEKkgg==
X-CSE-MsgGUID: csPhEjmJTX27wde+wh+Fig==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36839676"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="36839676"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 11:04:57 -0800
X-CSE-ConnectionGUID: EUrdT6LmRr2d2MfeVcpTHA==
X-CSE-MsgGUID: vhJflqqNR7Ozlv2PLQaubg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104017314"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 11:04:56 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 11:04:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 11:04:56 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 11:04:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iMfRNnriTOn9hA9RfXcTeluMs8MydkE6a367AZEHsP+lTllLUaiAHWzgdg8qmITcj8lilIXZR+KFT3WY6rsiAQT5F2ycuXFZrScKDJhy55oYMjakz4KXaxP7YICpgMDRJDnx6DmmktFetPpwnJWVYXvzf7e7/esTgMqbWLv1iprp0y2LD0he0fpv7YkksxKkFJVvCfi+5avPPT74MSCNzN0GjQ3m8DkdSf/8qpZ/urVZhmMCqTyXThhYHHoaTyOiAFx1xtzVE4rrkfuzealKHp1yRJJxvORnLWghAioQxjbYAxscSP32BXQmCtNlL1BQeHquN3CeKsABe25l5jqmMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wwwE6kFcjRWpKB/C9G2eDHrrlGRAG2++kC5GD86/kYI=;
 b=J1THHVWjDwcNzN64llztxw2Zp68Jnu+jikLByO8Ih6CuW+UtWEzzBhWw+oT/Zcs9o4dTMPSd1HKSBtulEPntPZrfYhDAeiRF1Rkv33ahafZH95UMv1yJVNlTagohlHoB4lfAhmWyvDVCFdp9I4+kT2UB3tk4LcVBIeQ+KeQok5OpkvakTnz+qmxCouGZCccoa7q5BcK99gdfc6MuEj1MPl3iNiY0ehCiu8Bxg/FeJrIXurFbqbXJxq3Yt5rHkFGB2pquPV7FuypenUeHoJq7mPsWW6fDXBoxi6cC2SAnDS+Y9QRb+UFe/kB7qNZRAcqjcSk9DQi+V+YCHd+1JYX9RQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB8290.namprd11.prod.outlook.com (2603:10b6:303:20f::21)
 by SA2PR11MB4892.namprd11.prod.outlook.com (2603:10b6:806:f9::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.11; Thu, 9 Jan
 2025 19:04:26 +0000
Received: from MW4PR11MB8290.namprd11.prod.outlook.com
 ([fe80::4a98:509:3b05:29b4]) by MW4PR11MB8290.namprd11.prod.outlook.com
 ([fe80::4a98:509:3b05:29b4%5]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 19:04:26 +0000
Date: Thu, 9 Jan 2025 14:04:23 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <andi.shyti@linux.intel.com>,
 <anshuman.gupta@intel.com>
Subject: Re: [PATCH v1] drm/i915/selftest: Change throttle criteria for rps
Message-ID: <Z4Adt6x8eWJUphdb@intel.com>
References: <20250102110618.174415-1-raag.jadav@intel.com>
 <Z35FT4hkqGibrYaB@black.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z35FT4hkqGibrYaB@black.fi.intel.com>
X-ClientProxiedBy: MW4PR04CA0337.namprd04.prod.outlook.com
 (2603:10b6:303:8a::12) To MW4PR11MB8290.namprd11.prod.outlook.com
 (2603:10b6:303:20f::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB8290:EE_|SA2PR11MB4892:EE_
X-MS-Office365-Filtering-Correlation-Id: 7200caed-16bc-40f3-c1d7-08dd30e06fe6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+6OrQ4Ta/hm9OcIbHia8EvBNAsI28I6CuaTQnExZlR0Oy66hYuiSTG5zqPnY?=
 =?us-ascii?Q?fY2rqsFXp2djmFPVZAX0HkxKikiUQ7qpHOXslsDBObQYCmhYLXX+waitbBra?=
 =?us-ascii?Q?lWUN9G45+Eonh8bAK+kHx8ops7E8zr4fNPodb8lu1Ovdp5rpYJ4FqBzsRPPY?=
 =?us-ascii?Q?X9apMOMcZZyvVGBpPcGuVZeRm21JywgY9O2l5yBwFm7DnlZ7ufUJ0jH8fnm1?=
 =?us-ascii?Q?Kv9JSQ2+UnLgY5Mq7y6ZSYmry4Vv6tVsmCdqNgGh0ay3VP5RhdytUtLpcHum?=
 =?us-ascii?Q?DiG5NyvO357Nn0E25Q/2tX/4pQzmmOc81dvgKmCrTUAx++KRBE9iRsjrJuT0?=
 =?us-ascii?Q?IUNqv6VUeLgldgH4hz/HjlZAcawxeAZ/uv+ZTvumrkiizQzfuo5/6BUDwtKc?=
 =?us-ascii?Q?TCA1R63xk3KANOpxInkaO3ghKJlCrRQ6mOAgxLXBolB5/2mRSpfIGXmP0Rg1?=
 =?us-ascii?Q?WqubE9VdjPwOxpKM3ucUzAbAbOUXQEwpzZGCOcfXu0NuGR7NdO1oslNFPTyc?=
 =?us-ascii?Q?O2qg/yMNtzqfvDoelKLSMR4nU1Dem6QXklBGHcerjV/WtCnqewLz+CZgxUQF?=
 =?us-ascii?Q?CNJkAzwQT+mg0fwM9ZWLYSvUBwQjh0I4bx+YfmcV48XafddnH306mTetG71k?=
 =?us-ascii?Q?t4r1FF8t0Ap1dp4QcOMZ9CGCBupEJZ0oFvpGGjMvBO5oMQVHDS7cZQEuWeru?=
 =?us-ascii?Q?7+uiFC0+uGhM9fFewuz6C+5iGiMoqItIb2BncYzDnZSIyviYtw/8Pn6eZvxl?=
 =?us-ascii?Q?ki9QfxE+lCurQVSksRBhXnpAXA9nRs3+V087Qe/fzSFa0csLiEdsHsujW1sn?=
 =?us-ascii?Q?92GIm+JcFJjA7QMll2WNm2VVZpF7Hb359qfmRT7yXBoSrSjEN4hbYP+4rKuE?=
 =?us-ascii?Q?dNhe7S7owo4PqSAQFc7DdwP43kJdqrJiM9x/BXA6NxnRmcPx6go0ZT+dnHQu?=
 =?us-ascii?Q?QT+w/a1uJkykWEf4TceHIgpiz9IphZ5G5bxOFZL6agLWeEV8csC6dpgpA6/c?=
 =?us-ascii?Q?s0Ac51Z5xsLykdk6DS+QnBjDDHmnVYmXbBdwz/+FqTufO0CBssSBhSbU+v9D?=
 =?us-ascii?Q?hfUgfPcUuShME7HdoFJK+JRRVdKFjw890pg2/83kCH8NyBW88cfQjsFMQVpt?=
 =?us-ascii?Q?LtLgAf2GiN9mhW7Bp7GOn6rBTOi7qk7PkxnNIu360tyY5vXSpzkpZwchO4Ae?=
 =?us-ascii?Q?RTIz7r40CswzDB4Z+X0Jr2vnVZj5Kx9AA45D6wAULOvidBw4kDZ6bxZE/UfA?=
 =?us-ascii?Q?hnFbJflABL+c71FlDsiozrxbWWwweCnYUPtEpiBSr68RKEZ9jHELwu5S8Lv0?=
 =?us-ascii?Q?GbtZ8gx8yYJBOtlVWVzyj02X1Mz/7O5JQmxZfAcvuuStTL4pUTJz/0IWuC1J?=
 =?us-ascii?Q?yvpMf5CwYzEbeYlk4qlmtaOptOfu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB8290.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0udGdpnLxp29y1fZKIqGCyCUsNby2Dro8yjbZ3nFDm+Qf3DSG80whyiGeC9y?=
 =?us-ascii?Q?M+J6FchMP07ncKayYy44AEAzbX/eZ2et4HC/rx9H3qqLogL//ZMtPnLvTz7e?=
 =?us-ascii?Q?jW7X08ZDNnw4C/SOap718ygGatDyXijnYB1GOMBgI6r4ABG0hEVSVNBD4F/P?=
 =?us-ascii?Q?/fvgmUpk6JNXIRhJgEJfFBfDcUaCzOSYPVEdDDanNRGceYRXmABClnR3gopj?=
 =?us-ascii?Q?4kcm4sZhiR+fKAiBOSvOBuBJRBO8gD36PVxyOf5JkcoJrcctNhb0C1w3q00L?=
 =?us-ascii?Q?RD3/lJ1kNYtt8fPlI4ZDdtHLJGxQDbUwYPlNev81JFgaHwtvdqK821+I5J6j?=
 =?us-ascii?Q?QU5SMtPPsTCn43Yves1Mblia7VnYClzF58FIePxGYtyTjGgZM6XBHnvonjBn?=
 =?us-ascii?Q?eg0duWDvyjs/kCuv60qgpueeOUo3fYI7BUHNVV0xO4mixnEU7L0o482vyGYV?=
 =?us-ascii?Q?QPxymkAFOG21jI5RjNsD55dIBodNYtzsA2fzoDuKv/pLgmSMyyW7l+3nk0H9?=
 =?us-ascii?Q?YxkPJIemdCwb0/gbGfEf9+C7swFbRjTpXbRkzmpiU+g92GliSBTTgTFNztRp?=
 =?us-ascii?Q?RusyBgIJXpQle+dXYatRXBkTeAMCMHsfCcab9IWot05+DrugOHqiZkUsUt6o?=
 =?us-ascii?Q?5R+5UUVUHR4bNsG8JLBXD+ZTsLYZ8jGV74mehM8xMxfz9MwePGKO9DO9FW9Q?=
 =?us-ascii?Q?sUDJzMiXea50CO7/X6oLQWw7UpC6pTV43A8LvdS0jgQqPh/Mr/+im9FflH9T?=
 =?us-ascii?Q?G9u3mQNdzUM+d9t3xhsui1zLouZ8/QyknXQ8Hb7dKbLKkml+W5nGl0/iARVQ?=
 =?us-ascii?Q?TG7E9OHknORO7emaFAsAJX7dOXlbNiH0Xq+jcZlIyCiZdLx61bi5CiUiyxIp?=
 =?us-ascii?Q?PVoYFsLe8Fk56WQb0CVmjkbRdDpPGFaU6VKHDdm/TIHzC8f4EqoZhfoV7dgg?=
 =?us-ascii?Q?+1iTvlaecdcb5XDBVgjs+N9561xB8TwJp/m6KDw+pgEh3+qQ2cl5JZSTcpxn?=
 =?us-ascii?Q?7GcA0LWRmQlxR6nAIbGMbt479dCUjwftvOj29ecWJqbILShAC8FFlqS9CF/K?=
 =?us-ascii?Q?9bttXO6NL47CANLSDk4HdZjN9pZYTfRwmIemxEZeYCDJD8aKXpYU5eZOxtwe?=
 =?us-ascii?Q?0WIdAw0W71Zfwmz841OeleeGuQfrCfc9zcuPCz6yX5M/WozY4d+kVzTDOcnk?=
 =?us-ascii?Q?MOqrEi1kMLF7NcKYObUSh80H/RCLqFEuEE/L+v5v3uUzjuLfpjXSPmWlzTT7?=
 =?us-ascii?Q?m+rqd76hE6DA8Eq7++dNZJoiRSzw9i05AHeoh2iLin8epkik1OXzX016aZ8w?=
 =?us-ascii?Q?0SIjIoZI/j9kTwzqWE2kCwhLzuSKmuYeTMTQ0rI6ylONpB8Sv2iIoJWfQpVv?=
 =?us-ascii?Q?zFLkvQMLKpaBXWbFojkAHb0NMRN/gSGcId1wFDrjiqXwg2JEkcMsxrknNbgD?=
 =?us-ascii?Q?srTHc9OeOkiPpguXcm849mxPeCYCep37Di99Dc0VYDqPSeTbkxYC1LaQYcpR?=
 =?us-ascii?Q?q4gxOPh148bUc+oTfbz1UIeJv5NZ31DYOGnEQebrkxoo7qE38+SEVOP/KIIw?=
 =?us-ascii?Q?ZeMtULfAwoohA+65Xi1Xe/FlQKvDq49oS+cvJ0zo2jrEbR4KVxNaMU2fYLEQ?=
 =?us-ascii?Q?VA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7200caed-16bc-40f3-c1d7-08dd30e06fe6
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB8290.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 19:04:26.6864 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pX5rQGnWIM1j4D6wtupSDt+/nT1Z/Gzpdw7YWYnWjsLQgZc56J59TKMnju/VXAbTFyjeInSz+Up3oStfrJ5mFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4892
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

On Wed, Jan 08, 2025 at 11:28:47AM +0200, Raag Jadav wrote:
> On Thu, Jan 02, 2025 at 04:36:18PM +0530, Raag Jadav wrote:
> > Current live_rps_control() implementation errors out on throttling.
> > This was done with the assumption that throttling to minimum frequency
> > is a catastrophic failure, which is incorrect. Throttling can happen
> > due to variety of reasons and often times out of our control. Also,
> > the resulting frequency can be at any given point below the maximum
> > allowed. Change throttle criteria to reflect this logic and drop the
> > error, as it doesn't necessarily mean selftest failure.
> > 
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > ---
> 
> Rodrigo, does this look okay?

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Raag
> 
> >  drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
> >  1 file changed, 6 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > index dcef8d498919..7aac90c1679e 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > @@ -477,12 +477,13 @@ int live_rps_control(void *arg)
> >  			limit, intel_gpu_freq(rps, limit),
> >  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
> >  
> > -		if (limit == rps->min_freq) {
> > -			pr_err("%s: GPU throttled to minimum!\n",
> > -			       engine->name);
> > +		if (limit != rps->max_freq) {
> > +			u32 throttle = intel_uncore_read(gt->uncore,
> > +							 intel_gt_perf_limit_reasons_reg(gt));
> > +
> > +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> > +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> >  			show_pstate_limits(rps);
> > -			err = -ENODEV;
> > -			break;
> >  		}
> >  
> >  		if (igt_flush_test(gt->i915)) {
> > -- 
> > 2.34.1
> > 
