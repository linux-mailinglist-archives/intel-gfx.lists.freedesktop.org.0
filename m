Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A5EA46FA2
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 00:46:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331E010E9F5;
	Wed, 26 Feb 2025 23:46:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="moQtHL17";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6ADD810E9F4;
 Wed, 26 Feb 2025 23:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740613593; x=1772149593;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OHs9Xb/9sGIv6AYObOfqTIKXUKsNk9BDfbFeO/bOnC8=;
 b=moQtHL17lKp+wJwxWCZ2FUXK7+YBQXg0HgxSlkIiMhjXlUQ5wR4vAC4Z
 FiL8kQD2/lPWyk8dY++8l3opY/nazEDSj78jkHKPO3UrHID4xx0PtDHIw
 0AUeKDTYzrowwE4sHrNaRy5MmK5VdxRNdT2VDHxLB0kXIutuW+rq8NlgN
 28ssak+KyLkUT85QvUqS5WO2nEwQCfa0bSZHZLONhlE+f0qfF3y0NzsCx
 xkZmpoc3Q16EPwRufe8NeCxSSFYUPVXTWfO1Ja8yU1t/UuorrjsZHvp7P
 7MhqwOgJvYLqvSLe5Rx3ZoMbOO22tETzpLxVacCfewI0H3CH5PpXTJuWY g==;
X-CSE-ConnectionGUID: a8VUQ9kdQWCBld1ppt0QPQ==
X-CSE-MsgGUID: 4tN95vX4QHWorl9bn4hRwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="66859873"
X-IronPort-AV: E=Sophos;i="6.13,318,1732608000"; d="scan'208";a="66859873"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 15:46:31 -0800
X-CSE-ConnectionGUID: mrFIxKthTQy2eXG+dDNNkg==
X-CSE-MsgGUID: 9uAIamMFQy+xnncrpoAPPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,318,1732608000"; d="scan'208";a="116633504"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 15:46:31 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Feb 2025 15:46:30 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 15:46:30 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 15:46:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bEnSALToZzvKqEFk1L0l/G7+6N4NpD4UUB6tDdGb1St0x/GWQkxBMfMDsxVi3MEPDSeDJu6gFPbjaaXXFc8zsGqYfzXYdlAKZxgrVhN32+Algz/JbYyMhyuFS3GwyB4ddIXesZI0RwyEKRXK6IMckq9kysnnCIykfN24En85Oznp7R9eGS5SmFOcJZc3FYbWED3IkJYR+ZTWABwVUfuABqqHRRXgn3UVEq+9CaiTlCeS20NkXiJNZ2Fn8G8Gc//8cw47CYWmMljxO4c3VQnL1XGVjNpn1NYkpRMWAnNjenQvyVBGWPhVlHGTxhjIgw1zPeowoXtuootop2Om6eyboA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZEsIw0ROYMn0fSdj58XpPGPu82mcwHvxHFvke0Qm12c=;
 b=GfPiBtI+02MHMV9iQTD37BxBwViPnXMkWCrSR8Yq9Q+Ap+oPygjnCTkaGDZeRoLYP8sCdfR/iV79g5T7B6iZEEwrRbDoj1C2BaqIG/EE+MWrsmcaiIRD5LVXGMsKq4z9/rALqI3gHD9mNj68WyxUf3lnLkvoVMRnkUYCb5zASSJwf1kAqXhSQTF+ulHIgMW57sxU93HaGKgDTxWc1VyY7B902abkbuuoBj1yqPFna38UesQm0Maz2Ua559Z5xpd7/OUG9H0vMZgZ5Rnyd50TjeX2/xNaIW9HdlPunkGDipjwygBbiJkpNebfJK/8f9sRQ/Y/YBbJbZC2aw7FvP3Qhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 23:46:13 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8466.016; Wed, 26 Feb 2025
 23:46:13 +0000
Date: Wed, 26 Feb 2025 15:46:11 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 6/8] drm/i915/reset: move gt related stuff out of
 display reset
Message-ID: <20250226234611.GO4460@mdroper-desk1.amr.corp.intel.com>
References: <cover.1740481927.git.jani.nikula@intel.com>
 <3af6452fb882a17279018c1f1516545634136139.1740481927.git.jani.nikula@intel.com>
 <20250225203512.GK4460@mdroper-desk1.amr.corp.intel.com>
 <87seo13s9b.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87seo13s9b.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0177.namprd05.prod.outlook.com
 (2603:10b6:a03:339::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB4886:EE_
X-MS-Office365-Filtering-Correlation-Id: b4917566-a27a-4269-5efd-08dd56bfc12a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lLSvmSpEVOAGp2GQ77ISrwqKlRiQYvYtYStjvwadqZXVIimCXbFUlukEnYfW?=
 =?us-ascii?Q?rs8zGx7ygp97Fwjef9l0dFO6IjDNwZFBpgQlNVXZeks3zQJ08sO8tN3/LWMV?=
 =?us-ascii?Q?XfXHq7HLfYyiPWxml96RNOE5heZheDPqqdqeTZBi9Hk3Gn90PmOjtKSXSFsy?=
 =?us-ascii?Q?ze1h3Q6UQnj4d5CEa7mr3mYAvA2xTVPf8Yc2ulUjcKX2B898rHDpRO/8ETW2?=
 =?us-ascii?Q?RZqRXnU1jyJJchheilAWUegRf7AVWpWuFKWQzbHVk3+iYMiW8rHfELrSBeLR?=
 =?us-ascii?Q?JBas+6GxrOC6imwVZJbGnfE0zEOtVmol9Fmb4TDoD0ANVyWEUmc6qE5jjK+C?=
 =?us-ascii?Q?p6PMD+uQ4MfU+fd541Qtdfun0wSn6N2EokRRBgFDfClBvPgIXMcvjXUydheV?=
 =?us-ascii?Q?5nBY84cZWDlQKRgGtxjCOj758fnNNt6DbhOVB2VktlvQUrVfLaNnQzE4GTHD?=
 =?us-ascii?Q?CKWZPbQiomF3GvqdUDQ+X4QyPzmNNkySryJjyddvYPz4tmWn1mPKIi9aKHvI?=
 =?us-ascii?Q?d/Lfd/2Ql0XP+lGlDlJoXpVR/auFb1V5p26LIAhHdPhKIiVhwTLR9itgufFP?=
 =?us-ascii?Q?B//C4DzTQYjBa+DKXQPGwuFgrcyEFcn3Xs0bVVBUUWL6IpnT90KslQE9KSKY?=
 =?us-ascii?Q?s2sY3z3JwwgFcy2SFWTEfvm9AViUMoTH5iRVyc7PzHz15P8uyZBviv/2SaG4?=
 =?us-ascii?Q?nW9jRoM0xG7UCOi/VUTQE/x1qYYYcoS+hve9l0EU2RpElp83wtPtvMVwMXVz?=
 =?us-ascii?Q?ZD2jfHpemwqjrA8rxW40YU26cauhN2Fpp8zCb2OL/Ulbq7FjOgkwoFfVjlRG?=
 =?us-ascii?Q?h8hcqGgY/VRcvSCbZ0QZR4qwlFOzKeZ5zM4aEfpJgmqRKvc9gVGn4JV8PHnr?=
 =?us-ascii?Q?EdzY8mLpoZwRmnPcLF2W5BSK7R9bcNSXT1UdyPm/ql5gKbSwdD8IH/wMDlNT?=
 =?us-ascii?Q?KAS3thZrbqS3GWLHhWGDvrnpaLBP2lrgcEL4M8p6U+iWGh+Q3/iYEaCRl9Ei?=
 =?us-ascii?Q?KHFbJ+b1RwKZSxSLy9KC40YrtFDF8W3/cppY+LKXKGi2V+2LbvH1h0K+SiWF?=
 =?us-ascii?Q?xut5xESmCWv46kiXU8nlMd+X1yXPNVKd63QDgDHOgVdRiEonXY2DYCfTXwtn?=
 =?us-ascii?Q?2u0ipdYFZL0ammDxrFTEFm48PDNj9OCItB4LxH4tk5SPI9YC9Fe2Ln35AYbY?=
 =?us-ascii?Q?43dlM56LLpt5T+iZYqIsf4X4lraVxCJYBIHN4H5vLtLPbJuibK5Iv8O6j4yA?=
 =?us-ascii?Q?kPT6lk5mCVb/HD/0nJLisPURdMGk/8GMLZAFX9XKXwJW1wXryOA/1OnodFyA?=
 =?us-ascii?Q?S7avd5Rp9htr6JW5saOz2sngTEvMw+sTe1TVdhYdNq+qdVsi1wWyss1CNFtP?=
 =?us-ascii?Q?hZdYek0QQUZFiDEIFNeuj5uG3UAH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sGoP0+kLBoGQ9E1yqp7HJ2HdH0EITb/oaNalKMxk/1XKayqMGNahNjTYallq?=
 =?us-ascii?Q?1f56bZtLZqYc06ImKhzs28WKdRE4J/XNXXSsGBwJ8sTEx/NGdI3xuPa4XcL7?=
 =?us-ascii?Q?+lHKtZAY8J4FegD6LFuka8+s2L8lu9I1uDZTLbebvFiSAGaQUZP9vPeppI6V?=
 =?us-ascii?Q?cr7AttLOx3k0IrpAePV1Q3vBr5KG5mjXPtJTdVvh/BTOEzhefKy8q/x5AOWs?=
 =?us-ascii?Q?cu5HmiobMih4TYGHLLospNiwMkjd/ePss7+mJrutiyV227cYlXL+1BDLHuCu?=
 =?us-ascii?Q?mBLFtOgBWtjKFyOBYVvEl3SuWCjzbbyA3jY1A2Gny4Wu2wjxY4925HYaQP0W?=
 =?us-ascii?Q?NOxLogV+GIk3YyeTT1UXK7upq00pCoqnqbhxefiZwnLuPirKpBoDu7X0y2qN?=
 =?us-ascii?Q?FVXhU7pgU0HW+V7iA4i2Ih68Uvh6ueL0fGmRM7lzY7XMOBQuw8eDvcLdeA/s?=
 =?us-ascii?Q?gwGErMfv1qSp74cZ9usm5eM8+uC3jWVWldi8Ogs4JIfrLsXF8NQuM25FIpuE?=
 =?us-ascii?Q?/Uuu6/Nvy39VatM5Z7tBBWduii80LlBRXq77HTj2nF17FUFjuHZbuYWsXzhC?=
 =?us-ascii?Q?z6ZuRkTLSYLQijQ3IRLNCc/cqyF4OiEaEw+agsxVAJdZWm9BA7gEQzIOD+3J?=
 =?us-ascii?Q?A2RJTn6fshPFjE5kckZFKtDNLSESK66HulfsEbCXeWVmhqLDNXdP8zNs6paR?=
 =?us-ascii?Q?diYO9f6pUgtj/KMA385AvRXLygJqNWS+Rtbf9zViuWTpa7rpJZiRdT56Orst?=
 =?us-ascii?Q?cAA7q2+v6NKIn5oEw0KE9DcEIYBpN4GpEHYkmPuBCSp6zOIvbAEvJn3HXiUm?=
 =?us-ascii?Q?apqlvgE4u/nggKlWq3jelhPX0UgT6v2/A31GrymqbUdZ9LaKiJOOZjP9MGbQ?=
 =?us-ascii?Q?aBj26np/I9p8qBCjn4AYXYHSDScUdBUlJ9cZYcZx/ihtOG/9guNGM/IzEQew?=
 =?us-ascii?Q?FsyJDQHTD6jGrkhTjHthMl49M+GTJim4M2qC/mxXA3pA1yFVkYGHWN7qsDvQ?=
 =?us-ascii?Q?8IM2g4KWGLWNk7BmcGKdVKHJ7HXAOPrcddF3AKvjEjcGYZAnE6L8VNqAHM/E?=
 =?us-ascii?Q?nZjYPBmrb5C78NCpkkOJqfk8DLXKKREC3XvfGFVzrfuGLKDml90q67Ce/3eO?=
 =?us-ascii?Q?4gCehNxhtPviRoftTnUlGcsYJvV2UWn58h+nvx4xIV8WaPQmexgnWkcddiHV?=
 =?us-ascii?Q?12F2Wz0cTAoBx4W85UA/VQdNWsiv3dcSfrubeqjga22TLBnPm4/0Z6gFcB/r?=
 =?us-ascii?Q?VA1NTSimMbBDEPX8PZjTsvZdjYGC0QKAhJi5efW+XMv70LT2MwEO+nUob+Oz?=
 =?us-ascii?Q?EUYYPpcyvN6VxzDY7yBt5psq6jQ/qcgfdQ/1RR4FtUhoc9MY7xZk2hVQE1oP?=
 =?us-ascii?Q?R/x0OfzIc/9lkBVRATcJdUicC9hOclJlMCEUBlf6y07fFG2dOEdlOywi1A0a?=
 =?us-ascii?Q?rV4D2o+rJVuGHY8IiS78SRq69Z/floF2Mea5Db5nI/l/ly6ZHYiMt1Hs1tnF?=
 =?us-ascii?Q?xZ0AA+Th4zzSp/hwsu0pg6kR65wFWvC3mgDPj932Tes3uCW1vU3MWOrYVZap?=
 =?us-ascii?Q?nLWAjbSh6VP9e3NHouQ9uNzeMcnSaa7JTgEhKguEwgpCoIuWvWfD98iHgMLy?=
 =?us-ascii?Q?1g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b4917566-a27a-4269-5efd-08dd56bfc12a
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 23:46:13.7165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jqB0K+BbgOcW2pZ5d0vDVpOu8IoaWWQNFnT6GZ6HPAm1/iYC1B2W/6lkP1DLSTun1eI4YSBIxP0o9YtgsyTLyS/c8LwYCjdHlO128S/sT0s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4886
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

On Wed, Feb 26, 2025 at 12:38:40PM +0200, Jani Nikula wrote:
> On Tue, 25 Feb 2025, Matt Roper <matthew.d.roper@intel.com> wrote:
> > On Tue, Feb 25, 2025 at 01:14:20PM +0200, Jani Nikula wrote:
> >> Move the checks for whether display reset is needed as well as
> >> I915_RESET_MODESET flag handling to gt side of things.
> >> 
> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../drm/i915/display/intel_display_reset.c    | 15 --------------
> >>  drivers/gpu/drm/i915/gt/intel_reset.c         | 20 +++++++++++++++++++
> >>  2 files changed, 20 insertions(+), 15 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_reset.c b/drivers/gpu/drm/i915/display/intel_display_reset.c
> >> index b7962f90c21c..362436cd280f 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_reset.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_reset.c
> >> @@ -37,15 +37,6 @@ void intel_display_reset_prepare(struct intel_display *display)
> >>  	if (!HAS_DISPLAY(display))
> >>  		return;
> >>  
> >> -	/* reset doesn't touch the display */
> >> -	if (!intel_display_reset_test(display) &&
> >> -	    !gpu_reset_clobbers_display(display))
> >> -		return;
> >> -
> >> -	/* We have a modeset vs reset deadlock, defensively unbreak it. */
> >
> > Doesn't this comment more accurately apply to the 'if' condition below
> > rather than to the flag updates and wakeup we do before that?  Assuming
> > I'm understanding correctly, it seems like the comment should stay here
> > and not move to the other file --- saying "We have a ... deadlock" is
> > only true if we still have a pending pin after we've done that other
> > stuff.  The unbreaking part (by wedging) is still located here too.
> 
> I'm... not sure.
> 
> Commit d59cf7bb73f3 ("drm/i915/display: Use dma_fence interfaces instead
> of i915_sw_fence") seems relevant. We no longer have anyone waiting on
> I915_RESET_MODESET, and I think we could probably remove the bit from
> reset flags altogether, and handle this locally in
> intel_gt_reset_global(). Right?

Yeah, I believe you're right.


Matt

> 
> BR,
> Jani.
> 
> >
> >> -	set_bit(I915_RESET_MODESET, &to_gt(dev_priv)->reset.flags);
> >> -	smp_mb__after_atomic();
> >> -	wake_up_bit(&to_gt(dev_priv)->reset.flags, I915_RESET_MODESET);
> >>  	if (atomic_read(&display->restore.pending_fb_pin)) {
> >>  		drm_dbg_kms(display->drm,
> >>  			    "Modeset potentially stuck, unbreaking through wedging\n");
> >> @@ -99,10 +90,6 @@ void intel_display_reset_finish(struct intel_display *display)
> >>  	if (!HAS_DISPLAY(display))
> >>  		return;
> >>  
> >> -	/* reset doesn't touch the display */
> >> -	if (!test_bit(I915_RESET_MODESET, &to_gt(i915)->reset.flags))
> >> -		return;
> >> -
> >>  	state = fetch_and_zero(&display->restore.modeset_state);
> >>  	if (!state)
> >>  		goto unlock;
> >> @@ -140,6 +127,4 @@ void intel_display_reset_finish(struct intel_display *display)
> >>  	drm_modeset_drop_locks(ctx);
> >>  	drm_modeset_acquire_fini(ctx);
> >>  	mutex_unlock(&display->drm->mode_config.mutex);
> >> -
> >> -	clear_bit_unlock(I915_RESET_MODESET, &to_gt(i915)->reset.flags);
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> >> index d424ffb43aa7..62590ed91cf2 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> >> @@ -1400,11 +1400,25 @@ int intel_engine_reset(struct intel_engine_cs *engine, const char *msg)
> >>  	return err;
> >>  }
> >>  
> >> +static bool gt_reset_clobbers_display(struct intel_gt *gt)
> >> +{
> >> +	return intel_gt_gpu_reset_clobbers_display(gt) && intel_has_gpu_reset(gt);
> >> +}
> >> +
> >>  static void display_reset_prepare(struct intel_gt *gt)
> >>  {
> >>  	struct drm_i915_private *i915 = gt->i915;
> >>  	struct intel_display *display = &i915->display;
> >>  
> >> +	/* reset doesn't touch the display */
> >> +	if (!intel_display_reset_test(display) && !gt_reset_clobbers_display(gt))
> >> +		return;
> >> +
> >> +	/* We have a modeset vs reset deadlock, defensively unbreak it. */
> >
> > As noted above, this seems inaccurate.  We're just doing the stuff
> > necessary to check whether we have a deadlock here.
> >
> >
> > Matt
> >
> >> +	set_bit(I915_RESET_MODESET, &gt->reset.flags);
> >> +	smp_mb__after_atomic();
> >> +	wake_up_bit(&gt->reset.flags, I915_RESET_MODESET);
> >> +
> >>  	intel_display_reset_prepare(display);
> >>  }
> >>  
> >> @@ -1413,7 +1427,13 @@ static void display_reset_finish(struct intel_gt *gt)
> >>  	struct drm_i915_private *i915 = gt->i915;
> >>  	struct intel_display *display = &i915->display;
> >>  
> >> +	/* reset doesn't touch the display */
> >> +	if (!test_bit(I915_RESET_MODESET, &gt->reset.flags))
> >> +		return;
> >> +
> >>  	intel_display_reset_finish(display);
> >> +
> >> +	clear_bit_unlock(I915_RESET_MODESET, &gt->reset.flags);
> >>  }
> >>  
> >>  static void intel_gt_reset_global(struct intel_gt *gt,
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
