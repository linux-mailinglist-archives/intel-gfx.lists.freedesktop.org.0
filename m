Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B44AFC0AE
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 04:15:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9832610E0F5;
	Tue,  8 Jul 2025 02:15:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JDQN4Fo/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA73D10E0F5
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Jul 2025 02:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751940901; x=1783476901;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eZ3eH9uXZ9In2M2YHpVd/k6d8w4gL8T3yV2jbE0vpuI=;
 b=JDQN4Fo/7pEclIl0uTrB+Som9xt77CqA25ldi8+fu9KVtvG8ZkhVRQoE
 O2ZfUTFaD6nHgO4nq/GK2/jg0s2lZ4PlI1DzYV9ZLFpTvmBN6hePHNcp8
 nsqUzsGie5oB9qZSvlX9rwQbrrSPAT4wOg5xa4YhQtH3MmFyM858ufTD8
 R1Hv8Hb0svAidVvo9Vg4IQyiu/Wn8DDag8Qlc7fng8KP/5CcOMAzudMbk
 N2cfSqKxWO2spfgm4XiUc11PZfMXeqbJtjwfYMw0cEvdtRTvDYGDAJ6Vr
 YA/Lgz0Rtz6AONX8hoRM1AI/KS6OLkATqeXcp4ZMD0kVHyOtsVxBx9nsJ w==;
X-CSE-ConnectionGUID: aSvuZdQzTX66kWrKpD+0QQ==
X-CSE-MsgGUID: WseJMyDRRmG5Y2bgiIBzKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54311530"
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="54311530"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 19:14:59 -0700
X-CSE-ConnectionGUID: Q0fUdL8LQmyZlQENeZ/reA==
X-CSE-MsgGUID: lCnH50DtQ9WFvx0oaqJ7mQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,296,1744095600"; d="scan'208";a="155951555"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 19:14:58 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 19:14:58 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 19:14:58 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (40.107.100.40)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 19:14:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xpMvn7phIyFhUU+p1L1RP3Skh/y7miY6u40aM91Gq0ieI3tr8D6I7sgklYtL+evVrQ2W40XaDjdBhKwoCteWSfa6Kouz2F3qHqHDuWoG+T3c8IRF+FuEoyk5x44M66GXX8G4Xk5RWf3QNXe9MRESFh1E6mV0YbjIV3Yn+fZTEjFTFVVaZS7NIu1LwC3sK7BgNgdz3BlW/bicRkDUXnAqfO835LAgj74k/ihq4/ZDBYbBgRlPWw9YJjv2Yt+sZwj9SBDCZkZduVtuTFT5tIodPW28wfilfHcUsIlBCV3tYRMjNOL437mD6U/dp+X/tZubKqQqDxENtCXT2DxQQNq0+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aoICYqsBA7IjNz+hNRHEcWPYrcpkhtzxLXRGXghbkJE=;
 b=jjGwLmNZbXujjn0VyRsCNhJrNVqzVsRP1igNrNC/JK6LMNv78zxkb+5eRRk6Ju2N4LL529XaQ+7gEPG665Ea1TBBaO2283jG6DnIWzS0guoSU1sZUsU2zqvm1ECqgJPz9BQZdcGvrquYiXu6z9eBLvqGxbbQjT2WnzKI1uRnFUaLw8+YnQpSMbiOlT2CwiBXc5N6LQYLtJJXDg84OJEvCcMRQo0JplDEecpAtJiTPNdjNz6hHWEpF08YrwXeSp91cyqUm5vmHPyQjVvxROgxAJZpXMktLJEu+M6xn5JFXHbIR+ScQn/ZLjC/tHYVYom40G4btlaFxv3bIDIdmyfImA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by IA3PR11MB9208.namprd11.prod.outlook.com (2603:10b6:208:57c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8880.31; Tue, 8 Jul
 2025 02:14:50 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%5]) with mapi id 15.20.8901.018; Tue, 8 Jul 2025
 02:14:50 +0000
Date: Mon, 7 Jul 2025 19:16:32 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jeevaka.badrappan@intel.com>
Subject: Re: [PATCH v2] drm/i915/display: Fix dma_fence_wait_timeout() return
 value handling
Message-ID: <aGx/gHa+y6YM5tan@lstrano-desk.jf.intel.com>
References: <20250707054551.1940759-1-aakash.deep.sarkar@intel.com>
 <aGwO9RJ+o8lUmmqY@lstrano-desk.jf.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <aGwO9RJ+o8lUmmqY@lstrano-desk.jf.intel.com>
X-ClientProxiedBy: MW4PR04CA0324.namprd04.prod.outlook.com
 (2603:10b6:303:82::29) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|IA3PR11MB9208:EE_
X-MS-Office365-Filtering-Correlation-Id: f824d295-8b18-42a5-12e8-08ddbdc537ca
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?gYH5RrWChXVhLfNLeeafK/wlySc0VrsiHoEuVYfrMfIqtubC5lPvXklR6bda?=
 =?us-ascii?Q?CLDYdopP8PvDRlp6DiSgpqRaaYh/FY9x3ml6Ys4fPchmkXh1oOl5zO+WvIsB?=
 =?us-ascii?Q?4i/daEYOvts7NGELfxSR7dK8Pxt+NiMzn34b9SNsk4dyPPwRKEQyye6iiKeU?=
 =?us-ascii?Q?7WJv6OVk1em7zuEyPI7NimKaeYXt1Gy1kbwwXUzGo5ykpj+3xrLfS4fJsoFu?=
 =?us-ascii?Q?pm63uYneLDGbwu/qJ2FbAOp6XXaJoUKZ80ZwjmnmAyeAnntfwNFTsPPFDWOa?=
 =?us-ascii?Q?cseTDvEoSL8IvJUjR6chd+VmOrh2OPXcJ9NQdumP3ij5nuKTm9MnyEvEZZXp?=
 =?us-ascii?Q?LZiqjZ2X2Owh9IfYHoknQlV3f6nu3o9igsyGy7s86CnHkYc8I5nP02Lbffvt?=
 =?us-ascii?Q?xoeSR0m4mhQYH2cgPtl7gjXYh3tQ/afmBwMkw6r0r/U17Nz/EMMCzSHWtWF1?=
 =?us-ascii?Q?4yzhsZZHE4k4QIVp69sDd0c8DzWoGQ6PSHUMIj6Eiv7impSrwOn1eabhqUjH?=
 =?us-ascii?Q?yL5Yr+UEj8qdjDab2yCe/JSdETMAtceLlcsfrgq0v8wKH2NpOprA92wnA1/5?=
 =?us-ascii?Q?aGUh9CET5xYCM//sVw0bZMiLni9BY0zdGkUZ/RoQsFIJWNlCkChYfRlGwRuY?=
 =?us-ascii?Q?evaYCG3lrpXFfOzCRCHTcJxPgiLJD6N7VfzBJr+WumVDHSJo91nYkIJf4n1x?=
 =?us-ascii?Q?gBwQ+rqkTSwRhOWeR6cYeG8LBZ9566jWhuiBQZcbbpdstfDUBhGqeYJ5jijV?=
 =?us-ascii?Q?yJe4uSvSXGi3Pwg1MRcPOmoDR/lS0EyZiTc6+g0LkQXN9wtWWYT423d8fSIf?=
 =?us-ascii?Q?MdTtl1hrg9ef5XzdvZfk4xy8aaNJcA4Ae6czSYcfuJqjvPdr5Jt62L3QgMKc?=
 =?us-ascii?Q?49NjmSsPUSeCZXmcx7yuy4KdAqrSGggJqKFN+lXNFX0VUbqLYK93uEC0WDYx?=
 =?us-ascii?Q?h7EZhOSCjRWI3z8lMMQxE8D7lhiRS8743mOCR/dy6OTyBdEAFFaS+GytwrDP?=
 =?us-ascii?Q?8w8xXZKgIM+WcQ1tbs5KJZC2Jqywi9SmlQ/9Ek3AIYrEOYRW+KRDJ6hesYTj?=
 =?us-ascii?Q?gEpISCC10gy5nw+Q+hPO16wJUKmO6wGKUzI81//otHnaatd2HRyg42wdI1/q?=
 =?us-ascii?Q?yX/yO2Zu5klUH4CsekovCbjf5SShoDOO4GxxoDMdW9EkQAIgK2qnXA/VRW3/?=
 =?us-ascii?Q?HPLBkaTA70F3Vh01nuGvVM/ndAeWw7UxHgH9371Lcm6cJp3VCnHvJxodL5tM?=
 =?us-ascii?Q?D9K77wT3XOcfPBUavxr3HwnvUnkYmblduqzxupiHWY4e+2md/n8CHfCvCRO8?=
 =?us-ascii?Q?QDY9UttORjYYQXSdeH6x0jcwRJey6pV2Kc20/Y+6/6lT/RRvrN1jc+vz1pdp?=
 =?us-ascii?Q?FGAYMhzpyDxMx1zBCqZ1j2OQH+nHXUMHv95IwkCCLVknore3DObNF1fbU5Uj?=
 =?us-ascii?Q?i32D9fUVUos=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qepAWJNU/pgVlv/sEb7b4MnGXJ1SRzNBHgaozJroHnhfHIbVWiDGNhNslnl2?=
 =?us-ascii?Q?9rQ+mHUxMTlHLUcpEozSEFugVoLKEj/Ecw93puM+Py3BfYLtea4+uC4TnwDD?=
 =?us-ascii?Q?/5Kj8CwEeq9099bARsIh3ASWSip9On9RiXawS3v51AT8zYGZSUL2baa8mEdv?=
 =?us-ascii?Q?v1ltzTehmLOquMnSN6JM50LaiSoADsgRWm7kHEIlNfAwYmUUtACxSxM6AZEj?=
 =?us-ascii?Q?3dOhKRaAp8HGLoy+9E4jUjs0WkSCgA/9tCHE2+CzqDXmctQ9xBtyKKzfltuI?=
 =?us-ascii?Q?ORrVvlr4TB9C1kjsf9QF7k4x7eYRR1CLiZHbovgXUyoCwtLs2jH0leIk0REc?=
 =?us-ascii?Q?uqkZDJammwZk2LX4eKzaQLzcC92eczPpgrKKZCGPQH4OdSvYP4o6qspYTLTk?=
 =?us-ascii?Q?Ms1OWREdf0ykAJ2/pYo5wY7d99QxMZpE+Zv0Dk2J0UudsgpdEg4rbtLFpQ0W?=
 =?us-ascii?Q?wBh9dVH66l5dObIC/aJrA8VW4smmau88KhBybatQ4frm6bd93csDOX8kBgeE?=
 =?us-ascii?Q?kI5WylTaXuGBppcqxxCxMFYvEdPN2MgV7IIzNLitD4Q8/S9gF29NCpZdVi5K?=
 =?us-ascii?Q?LPYDrdP8j+MfUtx8qsdAGSj1d+/iyNA4f7KWHYeg08T2t5Ojt0MZKEAqDumO?=
 =?us-ascii?Q?LvkQqMTyPjB6dhXLIXuBxHq7+do0/2c2U6SCMFNPsIEQAEObEFpPAkZwu3TE?=
 =?us-ascii?Q?KzGa8EZY/kLa21VKq10x/yfjoZ3TStVjv5KhlgNyfkh3FUJEu1zSjDKOL8hC?=
 =?us-ascii?Q?DFKy3bnm25RqZ0J6xFn+oRJlH26s22XtRkAzyr+t7BTPsLO1YMJv/HgJcEB7?=
 =?us-ascii?Q?G8JBEXHkhMT6N5oXh/c+B8O0wmXWujHih5m4L6yBfVGTeN1ceeAbwBoGWXn+?=
 =?us-ascii?Q?H9elswMiQxlFKTXvwVrMgqNyHhozEQXPPVPDjs68xNqY5Jl+D3EPMLEbWigq?=
 =?us-ascii?Q?IM7oOiQIKrMi2d3mIXbiBbfIkpr7tMaBgGln4oYZE44JUTZ5o9Os5mUkF0IF?=
 =?us-ascii?Q?pCRpElo1wAOLjjAD3Hpc3+Gnh0hjA8g7nY8KrigF78815my41rl4SlBUVwjB?=
 =?us-ascii?Q?eFyWBIhwd29k23WQVAXaPtM7S/V4ffqCjVr60Ch//aVi1ZRLdo1pP3tynW4q?=
 =?us-ascii?Q?DZ1nC8SSl/VHpK3eUMKIaXgv95V7iWz0YAWTUqDuWfTMA5CgoOFD2RkkghAS?=
 =?us-ascii?Q?LRiYsFDakWs8fRIe1GrvAUGu5mJ0BbqgKZb7xv9nKtNbT3fUlxFjKdeSBZ9r?=
 =?us-ascii?Q?sOW966Yy5L9n4jps5n0syhG9Civtl8wKkQK9GD/JeEF1Gw8gU0jttSGwQSaN?=
 =?us-ascii?Q?BL1BNVYjGNHAMmTz7tQNO/4gw8Wx0oEdIcL0Yonpbxz6XnqidR3Hsq3LAMEs?=
 =?us-ascii?Q?WcRlACvuXz6YiOBwXB61LxT9Vau14a8NMdKROtb3r9wi+cXZw8xCU148Qb/t?=
 =?us-ascii?Q?+ki8GBWK+OvA+uMCKzrqMc/wlXSTItutLuYWQsG939DDVoUgBmZSM5ipIIJQ?=
 =?us-ascii?Q?DFhaLlmqdoUFQT/1po/grJ/B/gNBe844ppi3g1fP1ZZz1Ds4NgwdYzv+/O8j?=
 =?us-ascii?Q?7nNwrgfRSbRShJPje5ki/B9e9EPbMLgoMMCz/Y3y+AOt8+GXIgpqOcR1hLrX?=
 =?us-ascii?Q?Zg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f824d295-8b18-42a5-12e8-08ddbdc537ca
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jul 2025 02:14:50.0599 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: U0F8jEIJh1/CeN5Cb+kMl6fD3jUryX8xfgqLMwAzIXEmErJZAHaAGbKxWGo0jCH2Ega6EHEAQyq+q/tcYINDbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9208
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

On Mon, Jul 07, 2025 at 11:16:21AM -0700, Matthew Brost wrote:
> On Mon, Jul 07, 2025 at 05:45:51AM +0000, Aakash Deep Sarkar wrote:
> > dma_fence_wait_timeout returns a long type but the driver is
> > only using the lower 32 bits of the retval and discarding the
> > upper 32 bits.
> > 
> > This is particularly problematic if there are already signalled
> > or stub fences on some of the hw planes. In this case the
> > dma_fence_wait_timeout function will immediately return with
> > timeout value MAX_SCHEDULE_TIMEOUT (0x7fffffffffffffff) since
> > the fence is already signalled. If the driver only uses the lower
> > 32 bits of this return value then it'll interpret it as an error
> > code (0xFFFFFFFF or (-1)) and skip the wait on the remaining fences.
> > 
> > This issue was first observed in the xe driver with the Android
> > compositor where the GPU composited layer was not properly waited
> > on when there were stub fences in other overlay planes resulting in
> > visual artifacts.
> > 
> > Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
> 
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> 

Opps, missed this. You need a fixes tag so this is backported.

Techincally I guess you only need the tag for the patch that introduced
the Xe driver.

Matt

> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 456fc4b04cda..7035c1fc9033 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
> >  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
> >  	struct drm_plane *plane;
> >  	struct drm_plane_state *new_plane_state;
> > -	int ret, i;
> > +	long ret;
> > +	int i;
> >  
> >  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
> >  		if (new_plane_state->fence) {
> > -- 
> > 2.49.0
> > 
