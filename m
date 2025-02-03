Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAF9A25F29
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 16:46:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB91510E4C8;
	Mon,  3 Feb 2025 15:46:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="USljoWex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8035510E4C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2025 15:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738597580; x=1770133580;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ENA/qEO7+N+YfRZxPFFB7Gwb9nq76cb6WEpuUVoRB4I=;
 b=USljoWexWdMWVqDOR1q0Vut88pmfmkxvsybVzo/rh3Y6jo7bhjSMSGZ+
 RL8zPJxOnL3zVhkN4ykzvmDTQ6/Oa7+IshOMAccavD2/vQ0O/Ax0GG0yt
 IT8cPLKWA9S8irmnE257Xvqzm3ulh68mqVZ0/HeVLfnGSwK+fxQLqD0Ou
 avqtF7TixS0d16J4NQc/xOYb63EkpVUpQ/41gVPB2sF/Vn1ZVR9lym2LA
 pXG48asB4EYuNB7xNuu85ZuIK3LeY0BmgK/lOY1RJwlpWRlHmsN1AH1Pw
 Cl87LXhgXxJMD/a5MDD5rp6BcjK5k30JXjnT0BcWvgmr1xcJdWj6B0TXl g==;
X-CSE-ConnectionGUID: dQLYxBUtR8WDaaSEu8IbFg==
X-CSE-MsgGUID: DbLfWwsfTHGim8u4DaAmng==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="42846241"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="42846241"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 07:46:19 -0800
X-CSE-ConnectionGUID: gMSOtcbtShSVf+OMh7X3+A==
X-CSE-MsgGUID: zpmAw91eTwGaJAzAVq5I6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="115354305"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 07:46:19 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 07:46:18 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 07:46:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 07:46:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GbaoW8tOOZsz81a7pMdkZvU5Qr+5ISdRcapaftNsf72C3MLyVpQWOonSofTIWk+9eq+aRWN1nBXecm6GBV+L+LLUC/jjSKb43pPl282SSt2zpdgJbDWrXb+AYQ7HEih1jLtECBOi9aSp3ShK4R/z2SCyYlJELu4n7RsGhu31tMHYpgN4fQF+dAoHoM6JhyO6Q3ecxtO8iBCD8NVPHrEuvla8+VSVidELMgRTxoF3ymNVjSwMIhMrs3SKEqOP1UL/ivpKUBMWvPebBZJ7t0nD6XpduNf3H/JD9Vgywl09i1k6GseERDhPCwkcD5vQJBE6FpkRHwX35F/sF7pFFS+PUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HIFQ6t4HbbYi9KMxNuId1nhRWg+JaoUWGdoJGHbL4kw=;
 b=nf92wz2qa0mp07r7ssj6kKEbf//ST7XFf+VKlatm5x1KuzIWvpYjQHpn4fYrQ0szGIMvNZSa9UJq3U6y2aF4rRWMsgFJtcJljXeFq2dIuZ71iz9sfWXuaj1TpJ9KXw1jQBIMPXv5D6iXNJexwWiU0u6h9b4xC4hHpdeEdLtLiD52vN46mxCSoJl6WzG7yEd66TpH1gQibfyJRB+f8kLAMDTWYL95fwVMSrFhUEJzYKrgBGOTVDtkCMqucE2Hjq9SY9RwnOOPwNZF0TTkpQX4Vd+gBUH7vFlbD8uN2gsVb3hIxeimu2GADYcevrELiWB6unQ1TN27CTLJ0eQRSiRReQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by MW4PR11MB6740.namprd11.prod.outlook.com (2603:10b6:303:209::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Mon, 3 Feb
 2025 15:46:01 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8398.025; Mon, 3 Feb 2025
 15:46:01 +0000
Date: Mon, 3 Feb 2025 10:45:58 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: Gustavo Sousa <gustavo.sousa@intel.com>, Mohammed Thasleem
 <mohammed.thasleem@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/dmc: Add debugfs for dc6 counter
Message-ID: <Z6DktvZQ-NzLnab9@intel.com>
References: <20250203085613.236340-1-mohammed.thasleem@intel.com>
 <Z6C5-qxVQTYB3LHc@ideak-desk.fi.intel.com>
 <173858999403.77773.2784787564938835855@intel.com>
 <Z6DSC6Z1q0nsd7MF@ideak-desk.fi.intel.com>
 <173859479977.77773.12623605896722676495@intel.com>
 <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z6DdQuYe1Q0Pu4Fg@ideak-desk.fi.intel.com>
X-ClientProxiedBy: MW4PR03CA0185.namprd03.prod.outlook.com
 (2603:10b6:303:b8::10) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|MW4PR11MB6740:EE_
X-MS-Office365-Filtering-Correlation-Id: b0f6fc9d-17ad-44b0-85bb-08dd4469dc0a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?UMcqoV2PCyfEZHL4NBdcuwOAiHB8rhMj/NiCaQ19Kg7benS4t8ZoQ+LfPHb2?=
 =?us-ascii?Q?PNa5t49arRy78X3h1+vRcKK30c2ksUicnVyn3f4oc6mkX3EjpBm3ATiIAY6b?=
 =?us-ascii?Q?NnXGV3dNoG1ePVuLrXmL2ddLYXEZVsyLdp5cqf84/GMVxLWhXIdZ51MiIF45?=
 =?us-ascii?Q?uL/RUQIKzzLmpXbgv/sMPyJkxVMgjJ57Dx5do+Ocnpono6Uluw9xA/1FHWtC?=
 =?us-ascii?Q?7nBabfUhagXa3GckihQz7v2o5U++eQWBFYjTVjMFvlg5dqGJJ7BT0F8BReeE?=
 =?us-ascii?Q?ed+kT/ZvnHmklIm0sFwDyiECPoLzqfoEiNKSyFt4LL5YOa0jGfKzqS64ed9M?=
 =?us-ascii?Q?BfT8dSI0Xkbt7VT9TBGQ4LQ33dj2/DkzJcbVR3xj9JQUJGwH81oXvqmhww9Z?=
 =?us-ascii?Q?nsiobDNCDtodf7fyKXE7Rl/8q63kyjfPdoTMWqfC9pPHn+PwRdI6PisPG4Z0?=
 =?us-ascii?Q?FiHnr7meyNQTB2pSTsclvjWrI82M/C+Otu+qk7/LJOGXcZdPdG0Z10x1sbHU?=
 =?us-ascii?Q?eAm62vuOEB3IlDzmtZfIPloHFwPLS6ElFhzXWwvbY6Nc9AYmqs8aFfTDyMue?=
 =?us-ascii?Q?2gPwnIYjymvtqOQQ+KNkQhzon+0FlyF21w/ZrHe57DdX0UcfybK4t4EwQ1aq?=
 =?us-ascii?Q?UB11PxYfcT2t5/OddiKPoDgFLqvWy0j9J48ZzIbdTwXjtAsY/AYuaQIr6/EZ?=
 =?us-ascii?Q?8ZoXaUS1m3e7jQETACyLFuv3hvTltiy6qwyGB6gqptbzLpV6UVywhjw7jbeU?=
 =?us-ascii?Q?Gj/Rd+jJ/5gUwl8CZYaaDH4E9xcaUQKqF2+VzSQ0cC6EGxxI9nLJ51sJOh+V?=
 =?us-ascii?Q?OVAugSLSeNZAcA2PKFfQmhokX6lHj+ntMvMDcYo5lU8rjnB07j1eHAu/xCyZ?=
 =?us-ascii?Q?WimrEs5wI1OGdHyCq50nvXHCl27Xk47g/mv3TMK09BWnhaSsIM1GRLxDmEzo?=
 =?us-ascii?Q?dr/+QVbChO0bJy+TmrKngWhaP3UeBSdTlEyAu5OT5o9CBoJ+5yiLP44oXm5t?=
 =?us-ascii?Q?4p3Oql5NKPqAnvV11VUKwRWJ75T2njMs62G5lDx/cKMCi98rKUY4+nXiZJDw?=
 =?us-ascii?Q?x0Uvx6yBa8ZbmywJKjgZE+HDwmzppRgCsOggnyQxZbLO1y4Y71yMeAQvjOfD?=
 =?us-ascii?Q?F555mAycUTh6eocpzCkpV1RtO6JTtS/wjWv3sFJFFUTWq7HL6eFjj8IcllLZ?=
 =?us-ascii?Q?YjI0shaqSGlJXg4+jdPTa/+8XHKvfRWluyfE+30kiwSthdvpTiqlTw8tG3Jc?=
 =?us-ascii?Q?gT1KOqXPOXCafmPbYUEL+61CEsV9fdgWbqNg9MCPDGG5yDtuAhzPmEoLucrj?=
 =?us-ascii?Q?rva4ki1LSV10FS8Ah7ZemLkW7sjIhUXMl3XLMyvoZktqp/VHwuryF6hMtoWf?=
 =?us-ascii?Q?sXqMwk9aAeoOmL/u9Lhq8f8qWA2a?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FduGeFQEs1gnH0VXpjueb2qyr1/VC9iyk6Vkr5lqh2vq7EMJlMhM1B2KUdfU?=
 =?us-ascii?Q?QvFoXSWnxXMMLkoYKTZfAEakBSr26pLwcNqf+T057uQ7vjWZjRh2fNycCOmp?=
 =?us-ascii?Q?I9Z132ilQFMkLL6PLzxO2Nrwz40Fj5utOTDHQuxnTlI4K56dF6OlHgJoqCZv?=
 =?us-ascii?Q?rVEaUTRJFG5wgeI9OTRm3ZIH9TDRscVdVIPB3TeZnzVhP9Xr5yb8lm8kL4Fk?=
 =?us-ascii?Q?/aJhvvWXcs0F574AyE77gPPKdBV8ByVGlaiTjDOP9h8bj+vMe5pO8Fx7d8V0?=
 =?us-ascii?Q?/fORf+r3PfmYnfmcOXBisa0R4cCj04yZWuP60ErtQotU4IX7a0VvIbWXddyn?=
 =?us-ascii?Q?R3Px9/QO6GTivm8CEjL92G30ACCCRsw8RfQYQv0CUVJV0SE7ssD5BjcWHmBB?=
 =?us-ascii?Q?Tsd1i4G3pB3JyD8w/4YRy8sCKVPa/sLC+9jdfEGmyAUJ9RadouWnXDyeiWgz?=
 =?us-ascii?Q?flmrDNa1ayNvV3augNzsP5dduN011fjYXhFv2f696f83r5s0PBtnpmJWi4tr?=
 =?us-ascii?Q?bXNWg0IW6Qzoh2jjsPF9AQLYGk0fZHwW+78/jvEdBIjEWMlGdnt0X44cR6E8?=
 =?us-ascii?Q?fvv056PM0cdOqN5ekGAzL7HXIyfciOfopD17omQwxD3BFswBfCvtE3zDvG4s?=
 =?us-ascii?Q?015OgM3gomirLxbnTwtQCs74ff/6A7zIOmD5ck/2pMhk2CNwdLlEJDuiOlqv?=
 =?us-ascii?Q?nGTlSXUlRiCLWhb4xkqpOVGo5y/XNStltVGJrMwrVusphzysWFZzD5CXi1kF?=
 =?us-ascii?Q?vKTu/3/Q3kqxAoDxgEJgpwdxh1OwUjFczL0zKfgChKYrlO94NpekRuYhKL+Q?=
 =?us-ascii?Q?p34Bawxh7uPBQQJ1DEd00WJ0xwOamT1rcFgh+o3JE6Ye26QMJlxBzE8pLdmP?=
 =?us-ascii?Q?aYGAQDOiq1GH3qei7eIMweLtLyRLeqQ+937s0gTu/mMNRaTh4BeSacGp9PlM?=
 =?us-ascii?Q?Rh3HfRHjegaTp8kUAxwCxzo50wM9Uycb03XpI89kpzpoeM17TvyRet1Py9sl?=
 =?us-ascii?Q?PUj/AbDQ5nVs2BprZn0PiMt3TRJSuTKN4lVmNPqz+C3WaQX6PJSvTFOqngH3?=
 =?us-ascii?Q?YYtJR84Y19ZUM13lPgf95owmkpYrpgQMDvykR/pH0MuK5xxh6/5vj4fMoxXt?=
 =?us-ascii?Q?b3p2TrdMVs19Ly2JwqxFdAEUVXPjpEuWJ4hYyjkhN5vHpvEjpOrXqgSPl8St?=
 =?us-ascii?Q?lEroRk7TnfDvthutI2J6gGYuU5YfT43dKt7iVrt1GQDnFOCP//fpp1ksxTcu?=
 =?us-ascii?Q?IJJFf6nuMnzdHY5ZNSdV9R7p5Ut1ld9Gpyysm7z154HlOqo6H5joeDUslqwQ?=
 =?us-ascii?Q?e8xK6tXnZZugdp5NoQS461WasT9GhgvyQAQejtF+Kavke9EB0g94kcEYQ7ut?=
 =?us-ascii?Q?kxdxpsPwHZku8jdnxbZVoXO7COn0SeTDZxQ95jt/alD/AcJdTeLwZthJBm2y?=
 =?us-ascii?Q?Na7gHMSwBl8rMhvi+nOqvGU3zl6MKqyo2xJu9EKjWm6V//UhMxd4wodTVpY2?=
 =?us-ascii?Q?MzYa/IG7HvRBzA+RX8b2gOifSBq8zu4aH7sZnumW6K6LMDrF2BvlSe1qbmIU?=
 =?us-ascii?Q?5f+4mm5trC1QuFhVyRdZk48L8PQR9sm5jzZfZRMmssgTjZjua9k2rdcP59LO?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b0f6fc9d-17ad-44b0-85bb-08dd4469dc0a
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 15:46:01.2899 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q3riwtKROAKI+S/eGKGmLGUJZ0k81AYvqiTLtCbZ1p5oYVg3cefxxmUn7KKpuHuuStnfSwHiqKn6tM81/yGK4Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6740
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

On Mon, Feb 03, 2025 at 05:14:10PM +0200, Imre Deak wrote:
> On Mon, Feb 03, 2025 at 11:59:59AM -0300, Gustavo Sousa wrote:
> > Quoting Imre Deak (2025-02-03 11:26:19-03:00)
> > >On Mon, Feb 03, 2025 at 10:39:54AM -0300, Gustavo Sousa wrote:
> > >> Quoting Imre Deak (2025-02-03 09:43:38-03:00)
> > >> >On Mon, Feb 03, 2025 at 02:26:13PM +0530, Mohammed Thasleem wrote:
> > >> >> Starting from MTl we don't have a platform agnostic way to validate DC6 state
> > >> >> due to dc6 counter has been removed to validate DC state.
> > >> >> Adding dc6_entry_counter at display dirver to validate dc6 state.
> > >> >> 
> > >> >> Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
> > >> >> ---
> > >> >>  drivers/gpu/drm/i915/display/intel_display_core.h       | 1 +
> > >> >>  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 ++
> > >> >>  drivers/gpu/drm/i915/display/intel_dmc.c                | 1 +
> > >> >>  3 files changed, 4 insertions(+)
> > >> >> 
> > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > >> >> index 554870d2494b..cc244617011f 100644
> > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > >> >> @@ -376,6 +376,7 @@ struct intel_display {
> > >> >>          struct {
> > >> >>                  struct intel_dmc *dmc;
> > >> >>                  intel_wakeref_t wakeref;
> > >> >> +                u32 dc6_entry_counter;
> > >> >>          } dmc;
> > >> >>  
> > >> >>          struct {
> > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> index f45a4f9ba23c..0eb178aa618d 100644
> > >> >> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > >> >> @@ -869,6 +869,8 @@ void skl_enable_dc6(struct intel_display *display)
> > >> >>          intel_dmc_wl_enable(display, DC_STATE_EN_UPTO_DC6);
> > >> >>  
> > >> >>          gen9_set_dc_state(display, DC_STATE_EN_UPTO_DC6);
> > >> >> +
> > >> >> +        display->dmc.dc6_entry_counter++;
> > >> >
> > >> >AFAIU the goal is to validate that the display HW can reach the DC6
> > >> >power state. There is no HW DC6 residency counter (and there wasn't such
> > >> >a counter earlier either), so an alternative way is required. According
> > >> >to the HW team the display driver has programmed everything correctly in
> > >> >order to allow the DC6 power state if the DC5 power state is reached
> > >> >(indicated by the HW DC5 residency counter incrementing) and DC6 is
> > >> >enabled by the driver.
> > >> 
> > >> Yep. That's what I learned as well when looking into this stuff a while
> > >> ago.
> > >> 
> > >> >Based on the above, we'd need a DC6 residency counter maintained by the
> > >> >driver which is incremented if the DC5 residency counter increments
> > 
> > By the way, the counter that we currently have in our driver is the one
> > incremented by the DMC. I was meaning to send a patch for the residency
> > counter maintained by the hardware, but have not yet... In theory, that
> > one should be more accurate, but would require us to enable and disable
> > that counter as the IGT test starts and finishes.
> > 
> > >> >while DC6 is enabled. The dc6_entry_counter in this patch is not enough
> > >> >for this, since it doesn't take into account the DC5 residency. While
> > >> >user space could check both dc6_entry_counter and the DC5 residency,
> > >> >that check would be racy wrt. the driver enabling/disabling the DC6
> > >> >state asynchronously.
> > >> 
> > >> I'm not sure doing a driver-maintained dc6 entry counter would be
> > >> something worth implementing. Even if we have successfully entered DC5
> > >> and, in theory, DC6 would follow if enabled, this would be a synthetic
> > >> counter and it could be masking some hardware bug that could be
> > >> preventing DC6.
> > >
> > >According to the HW team the DC5 residency counter incrementing while
> > >DC6 is enabled is a guarantee that the display is configured correctly
> > >to allow the HW entering DC6 at all times. IOW this is the HW team's
> > >suggestion to validate DC6 at the moment.
> > >
> > >> On the IGT side, we could just skip if we are on a platform that does
> > >> not support DC6 counters, at least while we do not have a reliable
> > >> alternative way of checking for DC6.
> > >
> > >I think IGT would need to validate DC6 in the above way suggested by the
> > >HW team.
> > 
> > I'm still inclined to think that we should defer DC6 checking for when
> > we actually have a way to verify it. The way suggested above sounds
> > like: *trust* that DC6 is reached when DC5 is reached with DC6 enabled.
> > 
> > In that case, just checking for DC5 should be enough for the time
> > being...
> 
> That's not the same as DC5 incrementing while DC6 is enabled.
> 
> > I won't object further if we do the other way though.
> > 
> > >
> > >> It would be good if we could detect that PG0 was in fact disabled, which
> > >> I believe is a stronger indication of DC6.
> > >
> > >It would be good to have a HW DC6 residency counter, but there isn't one
> > >at the moment. Other ways may have a dependency on other, non-display HW
> > >blocks, for instance in case of shared clock/voltage resources, the
> > >display functionality validation shouldn't be affected by these HW
> > >blocks.
> > 
> > As far as I understand by reading the docs, DC6 is DC5 with PG0
> > disabled. That's why my suggestion above.
> > 
> > --
> > Gustavo Sousa
> > 
> > >
> > >> --
> > >> Gustavo Sousa
> > >> 
> > >> >
> > >> >I suppose the driver could take a snapshot of the DC5 residency counter
> > >> >right after it enables DC6 (dc5_residency_start) and increment the SW
> > >> >DC6 residency counter right before it disables DC6 or when user space
> > >> >reads the DC6 counter. So the driver would update the counter at these
> > >> >two points in the following way:
> > >> >dc6_residency += dc5_residency_current - dc5_residency_start

Hmm I don't have a good feeling about this.

I prefer that we are clear to the userspace(IGT) that is an extra flag
and not to pretend that we have a residency counter.

So, we either are clear that we are counting the entries, or having
a flag that tells that we are allowing dc6. Which btw, could be done
by IGT checking DC6_EN bit directly, no?!

> > >> >
> > >> >The commit log would need a justification, something along the above
> > >> >lines.
> > >> >
> > >> >>  }
> > >> >>  
> > >> >>  void bxt_enable_dc9(struct intel_display *display)
> > >> >> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> > >> >> index 221d3abda791..f51bd8e6011d 100644
> > >> >> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> > >> >> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> > >> >> @@ -1293,6 +1293,7 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> > >> >>          if (i915_mmio_reg_valid(dc6_reg))
> > >> >>                  seq_printf(m, "DC5 -> DC6 count: %d\n",
> > >> >>                             intel_de_read(display, dc6_reg));
> > >> >> +        seq_printf(m, "DC6 entry count: %d\n", display->dmc.dc6_entry_counter);
> > >> >>  
> > >> >>          seq_printf(m, "program base: 0x%08x\n",
> > >> >>                     intel_de_read(display, DMC_PROGRAM(dmc->dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)));
> > >> >> -- 
> > >> >> 2.43.0
> > >> >>
