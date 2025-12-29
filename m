Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E89FCE7BA2
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 18:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C85CE10E5CC;
	Mon, 29 Dec 2025 17:23:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QtEgiz+G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DC1310E3E2;
 Mon, 29 Dec 2025 17:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767029006; x=1798565006;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=eR6hERobcHs1q2lHnZWQJGEsbjSooys+D6p69kAvK3c=;
 b=QtEgiz+GLxjnJL70UrdrZ5reBA+ouVWeGrBDJ/yDySOgVSz6f+akDRCU
 43EeyzilB5zY/AXW5tSG5WQ/SSW76FAkMLZqTU/OY5Ea3WoZ2oyTBBDhU
 PCpP4xATmm0yz6hzxBbmu1Q/8zyH/m2LvkXeT7DbVUt5z/P0yAXKmUwx9
 //OLIjerT4GmOG8QMFrQGHHGQ7fDSYFkceEfeWwmEDhV3NAZODSt/vhUH
 LVh6/RS++YmN1HGNO0ClusqWzaC7Za+rjF9oWXmzC7HhFldsei/tgGMIx
 64LO5SYjvA96YlUq+lcvBO9AS3jqn3iD2NDf4egigXc/bWviNLI7FVVEU w==;
X-CSE-ConnectionGUID: PceN4WysQYOggEuEUyloag==
X-CSE-MsgGUID: LhDi4VoeRfG53QNN95yqHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11656"; a="91292203"
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="91292203"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 09:23:25 -0800
X-CSE-ConnectionGUID: YUOUtt7iRT2nj64qgICAhw==
X-CSE-MsgGUID: FRPPD0kTS+q3H5SDNBCThA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,186,1763452800"; d="scan'208";a="200182278"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Dec 2025 09:23:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 09:23:25 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 29 Dec 2025 09:23:25 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.39) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 29 Dec 2025 09:23:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ithj8Tr6lk4RSnvtRN6U2EJQamngHqwpWDIXB7ry97nlEiMJXcaJho7Pl/WLXsUCkEsv1Imfe4YH4DmBA2EWx/T9stg8YZ7Ef0jRW1eqBtPk6DGsArmF8yFzAJknHZBIq9gA/ODmY89pvO28zY1W24WZxAS7XBvL8etIGkhvsaiiSgg4MyDjnRz75ALFuDjeaatP9tu43/E7ABjlnuaDe253mQj/iIFQ/7w2mqfl70H4dsPERR7CwnSS+yKoxTGHb1inwnhEr1H1wkvth0S7Zc3fzYp3Hp3HPc3f5InUoAPgWJTpv4dK/CO+AhtRY3joHOIO97YX7hQVa4t5wnqAeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EvccYrvb/x6grIdBWg46i3oInaxlJRwpqOv5Mydyjlo=;
 b=QPqpNc3v2C5ubpsgZS89gvF8fX73d4ounkvWu5KXtQPVRXWEHEc20c6L4A3haPyWMn1zdVaWgdAon0lwVU052YvBAV+lSQAHjewMIZfl3s/efsvMe6no9MZzbTb2Z1TbG3ZG0sf/i3wDzRXRIK5ngXKFtVZNrZU8vZ7iKFgXFMzVnPxuL/TZuwJagE9t5SbMU2Fv9+tUOyCdbr91fpQRsA+rTQFuArysv2SCMkzizRvKOJDhQfbG8x37ys/YPXkEGb4vI8iYCFTWhWUF01qPfeUgxbrecoSzhkWHZ4ClhiK6Dm5vwpphla6RhZtZophN5EQk5sHC6mjLfXPqukRk2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7996.namprd11.prod.outlook.com (2603:10b6:806:2e3::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 17:23:23 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 17:23:21 +0000
Date: Mon, 29 Dec 2025 09:23:18 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <rodrigo.vivi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 2/3] drm/xe: remove compat i915_drv.h and
 -Ddrm_i915_private=xe_device hack
Message-ID: <20251229172318.GH1180203@mdroper-desk1.amr.corp.intel.com>
References: <cover.1767009044.git.jani.nikula@intel.com>
 <8d2da5404439ed334d7682922b599f36eeb60e9d.1767009044.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8d2da5404439ed334d7682922b599f36eeb60e9d.1767009044.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0094.namprd05.prod.outlook.com
 (2603:10b6:a03:334::9) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7996:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b9710a4-a2da-46de-5797-08de46fef706
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?1RU3zP0fk9LveavNHBiy2I1Zo4OsKzqaJSjw3em6diC6JCKdvMaLs7yArq?=
 =?iso-8859-1?Q?XHUJlhjk/DCd8oK91ioW+zHa0wa++rietPsv6FCNFS/dxOB1rzwy2zfb/n?=
 =?iso-8859-1?Q?1+isXXVGkImu9pDyFz6KlocluYQlQ6oJNcCum+so/2Jqvm7W/VSbv3PQs9?=
 =?iso-8859-1?Q?Jx1SDRPxjLq1+Hv7kuqdB+fqy9wEOJDG+2iZA71dmf/wvyHJGwkc0P+RWZ?=
 =?iso-8859-1?Q?i0HaM3BkPWave2EpOYmWCj28fjik6hLBDUFnl3tj+Z3dZIh0ro+EHe7F+/?=
 =?iso-8859-1?Q?EJ6P9mHMIyLvPAWFHWsbttMpiMbg8fO/lH2r+ZQvYnd6ugzdR78EK6J2C+?=
 =?iso-8859-1?Q?W6zeo0Cq9JOc84mfBrCtX1/0Q1AHlxAyMtigx9D9Xo+aYK1EYDLm9joEAs?=
 =?iso-8859-1?Q?814VtHY+bZ69hlWAe7r8JD4XVHt6l8L8na4x2WqlJG2h3DbQEan8TC88WV?=
 =?iso-8859-1?Q?nCjIpVKfgkw52itszgZnPn0XlDJgVEGhg0lV7Sl7V8NWa4LWZE0kBzdssQ?=
 =?iso-8859-1?Q?v0ZUonyAfjNOlhyVYbLO9LHbnkeWDbFSKi3tBmjjGAVBNkh89zj8/TOKVA?=
 =?iso-8859-1?Q?V08cNdOb0ZYJX4Y8tLTm1MRYw/pZaGVv44jHm8Vx6RR62BsIefRRXtQ9jM?=
 =?iso-8859-1?Q?etx3ex1Y+GKTIBeyBV14VV8ACtVWoYrZGqlb/iJxuyX9HlQButF9qA9Ljd?=
 =?iso-8859-1?Q?tp7NE6m6OoEJqMgOmuuSLYghJz0wSbBC3occQim3vhUwKnYUq21sDduHnX?=
 =?iso-8859-1?Q?5bZcNSKX1/X8q/1HhQCVIKFkvtb1Gv/bah570pd3kJ0TwXkp3pPe7sQuFa?=
 =?iso-8859-1?Q?5lZpKjGmilNVvmhaebaaMYTNH143UonE5nQ2aoUdCI75A48IxpDfI7C549?=
 =?iso-8859-1?Q?Mjlv/WyEquZTUGf4hK8Yd3k8JCyGkVhAeyo7T7/Od1SxGHIHm6aM9gKGP1?=
 =?iso-8859-1?Q?tXKXadFgTlEVxit92muXaQe1efBbSWW7Vt4WKI1PpWndCmoEZxCiWHwAz5?=
 =?iso-8859-1?Q?PQNCazgXRcytQD8DPkN1ljezCc6O1WKxHvMGocC3NnAo7J6AKXDpzJ1ldy?=
 =?iso-8859-1?Q?CZamv8m1vfnf80wRHRBglHlY4jqbXHKJ9INbSPib3MK8PpMCdw/U2++HPj?=
 =?iso-8859-1?Q?los+9ptDi5FlxqVTXoqYQ1wztDPMm+D+DQ4Sb7/tJOwOE4P3huA5UU2Sqw?=
 =?iso-8859-1?Q?pTrWKBWp55R62uq82PNEMdIxQbcruSPMPSc64yzVRCyPlSBfabJfFKuUaS?=
 =?iso-8859-1?Q?IjTz+4TVT8gvEZ5FF11IjgNRE92aLzyaGsCZ+lXZerw9NFy+4d4xdSG3sD?=
 =?iso-8859-1?Q?+2EzWavzqLy9nuhFsy0T2L2lt3xwLP3ZcGR6nOFQ46Hg+uO9KL8Llv8vQz?=
 =?iso-8859-1?Q?7mSqv2gjQZaB9SjQ3GptEwEg7ElTFwyLy37b+y25ZmYK+Eou0TewTDM+TX?=
 =?iso-8859-1?Q?Ms+YILdHlae/jBVOMB9GLEn/NTuishMKZ/qlL2m/r1aFBzrMOY9erwnvtY?=
 =?iso-8859-1?Q?qE28H7GKUN+ycQuKDOTYIz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?9N4orASas4yp8HMT1KICUL0jpbcGyTI1JTZVwnXrbwpW9emsGlAGSEmrpB?=
 =?iso-8859-1?Q?hbRmkY0DfvZe7rDJp2jfUCUxWAy1R+jNdrvXDeCAoNcBGuk9rd6YiQc3Gb?=
 =?iso-8859-1?Q?Rtp77BZgoKnfZmh2Vq9NPu2ccpMTVUp38sHwmCrCkrNsZKe6RLLcw8LJbP?=
 =?iso-8859-1?Q?o9Pd0ls4Nw1dxmE2/RNTlUbu5Xa8qwFM4cIIKwvj+ft0Et8VxLzPYr2qcV?=
 =?iso-8859-1?Q?VMfNB8viPKnrEjy61icvykA6PA5XwB+kJgmVwHy/Y7iIjJbBV8Fa5mLtAX?=
 =?iso-8859-1?Q?PvtRn+BpstZZ3RfROoWwbTrwKF3a0x4fySD1abN+gomJ/crny/PGlmH5n3?=
 =?iso-8859-1?Q?xNmESqez15wrzVtdcw91+8CDK+8M1UKUU2OLN2Z6me1yCFadHuNbkyI088?=
 =?iso-8859-1?Q?wZDwoFssis46+nayzqjhUI2J3SCZMkJwcR7+0qHnzbS8/VJZrJM9T5Vt/g?=
 =?iso-8859-1?Q?Uet1yUKd5rSfTfmxZ4YgYamNNyEoDqMo64JGickrbBQD3D1aCQW+iVwNSo?=
 =?iso-8859-1?Q?koEs19Ifdbkx5Pf2Rin1uPZSgJBQFalnLr9IR8b8kPw5uR3TyXhpAnW6kN?=
 =?iso-8859-1?Q?nM81qLGrSbIpYzTm0KjXJtGDmiuJN+JW+dyJxnlUbXCb/Fswz2C6CgeyUj?=
 =?iso-8859-1?Q?KUialiFwA6zyk3gM1uO2RZvrOlKzgDOGRbrjOE4cEJp3YGvc3cSWlIWtk8?=
 =?iso-8859-1?Q?dhnhekdasrlvaA9y+XT90QNNcMJm9aHqJX13VuiWJu8kWPF4EDQuDrOZFO?=
 =?iso-8859-1?Q?28TfNoXXa7iL68lhJw+507ZHi62z2Wo3614/IMVwY+cG3DPDkKBc8rzrwY?=
 =?iso-8859-1?Q?IMQfab69Izxr86hru86qp1OyTLoYe1QniZ6Gm9oJyTJ9hOg9LY2I1PqU8a?=
 =?iso-8859-1?Q?A7tNharXKITRSCIxk406+N/LWxBE0Ftlddd6YlSq8pcu+1e+cc5b1RdWRF?=
 =?iso-8859-1?Q?5tGXLg14nBS6oLEgxgZ2nqOAJEl2YoSxJA5/WDA9OaJ7e7wb4JXQseMhoM?=
 =?iso-8859-1?Q?lYdSwFUgIpoqNPJS68b3xhvqOMtCbigEoBCr5R0Q7YsY2U4DWjTY59Tpvh?=
 =?iso-8859-1?Q?W9n42yBwmsdZzECaih9pWqb5MmqPvZGS6gDMKZljtbxWV7XRhcnvBT/i5t?=
 =?iso-8859-1?Q?aQ6+fUXEpu6CefWFW5dT4f5cD1ll6QnKj7nyrqIWlJoRk2HLZm1FtSZScC?=
 =?iso-8859-1?Q?RMQ9wjylYxVFB69+zdbGb0NHgwXL/fGqCYJqPvfrLEY2YkChiSZfr/q9cT?=
 =?iso-8859-1?Q?OIacfd0f45CuzN/OG8fTgK8qQYVgt7iVWa5NVG3sZ11pKBPJtMNESLTcoj?=
 =?iso-8859-1?Q?AlT85n6fYhdeYseLtQLhM18y3Eb7BQb/yGydM95snVjq9jSAGarsOjSM1J?=
 =?iso-8859-1?Q?MQRzSPuManjlPGZhyUN6+sdNdvNAmr9fZAfOlWvfm/NyLvRuB/HhALabdJ?=
 =?iso-8859-1?Q?h/FRFAfz2ktZ9n6F7bvn4NBNM58ZG5fvKdpfY8FQZkG+caFSoct/0l04Cc?=
 =?iso-8859-1?Q?bX7ODklbMS84I3voP2yaTkLJcPiz1WXes/KAIPtbJ/1zo2PZhuGvQNPQOs?=
 =?iso-8859-1?Q?46ld41FOI1nAhNAMprYGPKY2XJtvo+2vlFOdwHyfhyL8Rwbi+lkImCHpia?=
 =?iso-8859-1?Q?JRsYQwdgsWrg8RJ5HohPx78lzscCfe7Eyz+f85HVh3ObnQikkxgN/P/Z8Q?=
 =?iso-8859-1?Q?4G/dJMHYUOeQR0dWRw8mHbF/GiG/1l+wI0s+zvkblRUFYDWR6RgTo0OYg5?=
 =?iso-8859-1?Q?2hfreFiX1jrEUioIFurQs7f1y6xKYTFEmDLBJLDX/Gw4rferaqVFjRkRBG?=
 =?iso-8859-1?Q?LRJkpaAj7kW6n+suHGBU9pETsdMupHE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b9710a4-a2da-46de-5797-08de46fef706
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 17:23:21.5573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fg1L6KF5pVLw1xNwl0GYIHvvIkHLqL3k3kxqqDAQjl4moPE8TEvPDNfrUAHFwbvAC9uqdyJjvAtplMiMqwCUlUcDpAUOPVZEqG+3U6jQFSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7996
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

On Mon, Dec 29, 2025 at 01:54:44PM +0200, Jani Nikula wrote:
> The xe display build no longer needs the compat i915_drv.h or the ugly
> -Ddrm_i915_private=xe_device hack. Remove them, with great pleasure.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

There's still a comment referring to this aliasing in xe_device_types.h
(above the intel_uncore substruct) that should probably be removed too
now that the alias is gone.  Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Great cleanup to close out the year!


Side question that I stumbled over by accident while reviewing this ---
did we really never implement DPT for Xe?  And everything is still
working?  It looks like even the chicken bits to disable use of DPT have
been removed in modern platforms, so I'm surprised that things aren't
blowing up if we aren't following the bspec's requirement that all tiled
framebuffers use DPT.  Am I overlooking something here?


Matt

> ---
>  drivers/gpu/drm/xe/Makefile                   |  3 +--
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h | 22 -------------------
>  2 files changed, 1 insertion(+), 24 deletions(-)
>  delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> 
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 3315f93a35b2..2b20c79d7ec9 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -200,8 +200,7 @@ endif
>  # i915 Display compat #defines and #includes
>  subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
>  	-I$(src)/compat-i915-headers \
> -	-I$(srctree)/drivers/gpu/drm/i915/display/ \
> -	-Ddrm_i915_private=xe_device
> +	-I$(srctree)/drivers/gpu/drm/i915/display/
>  
>  # Rule to build display code shared with i915
>  $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> deleted file mode 100644
> index 04d1925f9a19..000000000000
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ /dev/null
> @@ -1,22 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright © 2023 Intel Corporation
> - */
> -#ifndef _XE_I915_DRV_H_
> -#define _XE_I915_DRV_H_
> -
> -/*
> - * "Adaptation header" to allow i915 display to also build for xe driver.
> - * TODO: refactor i915 and xe so this can cease to exist
> - */
> -
> -#include <drm/drm_drv.h>
> -
> -#include "xe_device_types.h"
> -
> -static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
> -{
> -	return container_of(dev, struct drm_i915_private, drm);
> -}
> -
> -#endif
> -- 
> 2.47.3
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
