Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 368B2A5E4DC
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 20:57:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61C6B10E165;
	Wed, 12 Mar 2025 19:57:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MJpwCxmn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5073F10E165;
 Wed, 12 Mar 2025 19:57:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741809464; x=1773345464;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/CGBZc0w5xqY6hEHD5gelpmyO5VP/rJt4H2bfc1I7o8=;
 b=MJpwCxmn7K0vDdQmVnrFTO5jV4K9mFbslYceWGdsTuPl0wVD7SlsAtjQ
 PNqdocxTXHSpA9iAfiWWTvNFktxoZPuq3OhKIKzHbNf6P9zniAMSrme87
 OIO0mdVjUrGetZxpd4URtgB31lVeKl40vik0NlOlC+Kx9DXaEFXmd3eiE
 Ka/loy3KnWunHCWc9MXQbgRj0PD9JxC/Fcn8J5URAGbRuWTvzjLxOCMiU
 vkJx30OIFr1XxXXsIeVbmkeyIo7pXKS8KTmBrI3U2LaiPnDnuHGl7hm98
 H0LJngOgwImepcB7773GpvqXlD+93L3lE3qZIy4c7yFttvWc/m0eJrmZc A==;
X-CSE-ConnectionGUID: jDn7/c0lSZ2XEu7NV4WZBA==
X-CSE-MsgGUID: S7Notd+kS3244W5kFwVKPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="60305311"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="60305311"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 12:57:44 -0700
X-CSE-ConnectionGUID: 1sNHIR3mRzSIbd596LJEgA==
X-CSE-MsgGUID: g7hnYsQlQuugNSw2qWsauQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="120542831"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Mar 2025 12:57:44 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Mar 2025 12:57:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 12 Mar 2025 12:57:43 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 12:57:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IjhAUDZWf37RnaB6oJKAbcUsdTp1MFdRamsG0PB3j3LxGgqAYdDfJm+3dwq2XEh8Nhb7BsvaJNc1cb3xYj9gQ9QKvRV/TGKjg7zwZlxwcQxFzFrHtEu65LgNkrSaqfmaBpD1POV5R7IjR3eXhT+YH4g5fQPYk4Ode2dZilbf871vQzu9+JL46F+rip4vONA2rPEVS7Hl1HxIkAOVddEDue9mzJBT/Ne2ZmEBw5uvbJO0kXnfMxXauBG8RVKs8Epgp3sbE6XVwTVuMh39ROD6Sflv4Vo5bSVNh1PqTEI+++e4WYLen7dgyPiiSRVyS90VnmE3GqulhOYcprUkOqiWbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=huVwa3rKqP4g29T1i3wjJEjQ4t5Ak43PsGJdI/v0skM=;
 b=KUdqGo8BBnkMaSZmyCcinaYbMu7xf16I06Aq6jhxxMkzbu8zM7WkOdSilAAsjoo0RmP4GdCSRvz5HmNddA9V4OBkrp/mYw15MljTsSgHl62dHuMVmSH4Z9KOnMGC7CG2MWqxPRZfMa+tK6FxemDTh98YSneWmuOkOqXziVhlig38AOCHWBrkbaAMWQhsmzwhECgCp4+TAC0U0VZcTUZEO/+NaBYrpHmMPczSwuUN3OGCmXuVrGnLjBFP4wvVX9tRFz+UjxsoeCoKIree1T3/MJ8dQfM7FQ0IdOmQdL9sX+H0bqXQOq4u6VwjqpAq8UqhhwYoPZwNeL/OuykkZe9p5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DM3PR11MB8715.namprd11.prod.outlook.com (2603:10b6:0:1e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8511.27; Wed, 12 Mar 2025 19:57:36 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%4]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 19:57:35 +0000
Date: Wed, 12 Mar 2025 15:57:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 4/6] drm/i915/display: convert to display runtime PM
 interfaces
Message-ID: <Z9HnLPyGAtz6Z0G6@intel.com>
References: <cover.1741694400.git.jani.nikula@intel.com>
 <9888586a1e2b479ddef6519818bdb170f7b037d2.1741694400.git.jani.nikula@intel.com>
 <Z9CghEcsFEmCPipt@intel.com> <87msdqfs0x.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87msdqfs0x.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0066.namprd03.prod.outlook.com
 (2603:10b6:303:b6::11) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DM3PR11MB8715:EE_
X-MS-Office365-Filtering-Correlation-Id: 7e8a003b-d3bb-45bb-d31f-08dd61a02264
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WasLXrXAz+nazeHjRe1EYTXAbNrKyqri+Si4t4AerU+iZvtjhPxnW+4ilNJ/?=
 =?us-ascii?Q?trs6//ki9xwzL99lB391qMhMzwbuLpOMuknmCq4HZx6wOuwrn1K8+3F3mStw?=
 =?us-ascii?Q?BeUFkMqoFdiyFP4qhMpwTCp7yEwMCvLtC6ffdtsSBX/+FLf+Grc5er+HUC2q?=
 =?us-ascii?Q?P6FHN208c0HuIFbzxe46n5aGElRemBnR6lUC5mGkyk0+QDH6PLEJCFhUd1c/?=
 =?us-ascii?Q?l48ZfK4hE3W2VyVoT+y1i4Cf6he8oMmdopI8R4NTR3hIGoQb6qu0dkJq03W+?=
 =?us-ascii?Q?oqc4/IVuxacEp1OxrulRpCLQ9GjPxC/nBTwVr6pINTanpdQDlrLYnmVHisHP?=
 =?us-ascii?Q?2wIEH05wEWsxQWgOZjQT35d4C2/PtE0FJkdhErhobOv+ulqgngWA5uyKZ0/c?=
 =?us-ascii?Q?37W/Ae4l/0pNwIIJ86Fo5sjpzu1+drgUZKLYhTfqPRVJ2rVlwApFnFNtlmuG?=
 =?us-ascii?Q?vFNkMbTLxhSpDeThtWBNapB4VwxRD5QKtXbWUyytcexqHCgCheMv/lldB+DH?=
 =?us-ascii?Q?2ovexI53/xQU5ie72FxWCkaO5f8okIxvjpcjtF2eYeBacIWqvSWnOvHywSFD?=
 =?us-ascii?Q?v/mFQVT0zlmN1DKZOzCiom8XrOhsmInMFoslSF7psRf/ep/uudKzkeGecTMk?=
 =?us-ascii?Q?qJgAsJ+wEHNsJjnFdRvb+4M31TDnWGufTcffi1eaEV2wVCBm7PRY/+h4OfjI?=
 =?us-ascii?Q?DtcGGrAyivxUnUDXDGMqk7kkxa2MAwoMgoAd6ikVj/lWXHVHhvykc9qbfCIl?=
 =?us-ascii?Q?q8s63/2KKJmx/o2+CriyNfz3HvTgzkdVcM7Vm6azCKHWU7hUOgMlIK10X24s?=
 =?us-ascii?Q?M+JsEdchyfP+bueA2IczGvHcjrR/WFz27KqA3BCZkVtPgGjthn+moAZmTqzF?=
 =?us-ascii?Q?14psMpc5nEbIZ/rzU7SR+XcQLj89hlyYn6fmao8bmSut2ivf0F9kPk4TSyfJ?=
 =?us-ascii?Q?Ry515dwR7xfslwE3GKDo3xTr5O/NLek22IynywU3jTuRQ6KrYPZbD3badR4D?=
 =?us-ascii?Q?2tFYr1FwdEfORy5u40fxDhVntGcYYqQEBUd9Hj1yDMAO66uYALUa/GaVqEjn?=
 =?us-ascii?Q?WGboj1G9NrzPbESmWYnTJrSK9q4gi3BwjtXfPdeGCdgFWcwp7iArsqhOjQLE?=
 =?us-ascii?Q?0yB9C0xDZOQFpq3TdHa2qcr3l8JX4RChc2j0ajYFLPcEPJ+4Fc9v6Qcp2D95?=
 =?us-ascii?Q?N66lR8/bKu0O85DH7Di9HgxZDT+jyjDgHvOKQ3kkgMrcI10kY4zkpq/FWs79?=
 =?us-ascii?Q?dqK54SBIi50LY2rL0UJPFvp2TtpIFv5V/dgUJmzLD2maLqOI+DAsRNPoa/pO?=
 =?us-ascii?Q?c8GFYnznGMNvlqPl/IfoiKRCP8BXb6tm4n3PLU13lQIFR0iDajNcnA/GznI4?=
 =?us-ascii?Q?kxIBvHeRgyqv4bb5ovCPr/5A5D8n?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7J9jteP9cwop/hUJqYRfFVflE+f48KG9jp/j1AQfPi7r06g88JuovNAeZfcr?=
 =?us-ascii?Q?TCwLh1+sOd6uLArVwGe1+PfQrppwGpVPTMfdHnzlPGhi8Cd3nS1ZewI2vPVJ?=
 =?us-ascii?Q?emGR2Z40sKaTyQuRKl65G9SqG/Cv79nsyiYn1zGJ9Jfed7KK//gLLVAxfH0Y?=
 =?us-ascii?Q?XVLsC6emk91UNagJitYE9iv0Eg1x5VaPK3YhsACT8zD2szY//+s6dSsnGDqz?=
 =?us-ascii?Q?Ho2QDb/1MH5kphgzLU4qhZ8pI0OvcI7Ctzpc8/aJdy5TOPcSZTkvcP6TV6i6?=
 =?us-ascii?Q?H6Lmcw3z4pA3GALVuJ14T/BBpajWyuxaL/QfG2FPmpdjLzlD8YhrYsaWMBnX?=
 =?us-ascii?Q?kqyhQUXs+F62klY6th6Cu9z1qnjPS0zQzAbWiR/b3yTYQTmnWYA2eZCQVNSr?=
 =?us-ascii?Q?HKtCijq9LoRniEyELxnIo4rw3ll3DGdV1dorCr4BiXi8ylHgGB2uNtF8dAuw?=
 =?us-ascii?Q?yy89BsK8Pdwf6WlQq6i+ioumBkNEVQUuQUuTOLRTW8o4CqOEhca5H56XEiMs?=
 =?us-ascii?Q?CoJZ0UzO2F3Yd2xci96fG7mlMlrUWNvR48Xsxj4YQrUki2j4lwZ9xinXg3gR?=
 =?us-ascii?Q?C4nm7BwtYj/fLdO2M/m6XWjEdRwTs1swB9dVMtUebuIdtMT+frRsWJ5mEGkM?=
 =?us-ascii?Q?y6q/K3HI3BGPaDaCdRQ4FVSfNhgj3bgwsTLMbi48sosQZEfv4qAhzBSmFFTZ?=
 =?us-ascii?Q?AUY6LWPLRFKMPUATCQBcXxdBgWH/hP1cmOw983sPCk9ji5mKjUgFPpvS7W5D?=
 =?us-ascii?Q?5FRbYeVaELBqewqyCfKvxBW3EnTrtlFYmSIKnzyUC1CXpdZBzcvnyQEIxcc3?=
 =?us-ascii?Q?lAWh1flwL5kZ9/pxcV6c+NpYQOjr970Nqps9n2A0gMMUU8e7Wo0Ou3SI2psM?=
 =?us-ascii?Q?8Y3p6dhoNSWSrDusTlIGVGApo3hSF0MXsVhD5ribTyOzvUE5uEfFYyQB+WYT?=
 =?us-ascii?Q?mCUlaWy8j8GkU766Edd35Hk9vlsDCxWZpbL+lniKbOV065DO73UQN748aM/t?=
 =?us-ascii?Q?WqQwaPwFrShEp66mclor6vjGctH7R0F3k0xCJ4BujF2N/VHNbnKKtaq9TPWe?=
 =?us-ascii?Q?IYlzLpxWspq0FEEW+nvDgUXBRZA7d0HFSej7YaEvGNZBlJWSNBN/7o7hr6Da?=
 =?us-ascii?Q?+nZ1v9pjgTNUsrnGhA1x1Uxp9UfOhU3U+OO19WgUVYcG1e8Ut9J9wAO60+ar?=
 =?us-ascii?Q?5CzOpLsZaDlPWVCR1T8u4QMk+oce4hr8+ePqBQTYUQOqjRJZKibyyFgTPIGm?=
 =?us-ascii?Q?HcASd/IWSsGKRN/fTC2queAhjysyrOkMEhfsDcgo2M39qXwbmpFXTMHIpys8?=
 =?us-ascii?Q?l5CxqcDac9hHQV4Rr0DJaQGsuy15Qxlr9VBoysqXdnoJCz2qT7D2edW9w55L?=
 =?us-ascii?Q?GTgPX0gm1drCeghOipaVuGT8FRuHPsuxeMoBvcsRXD/hIDP48g+XJ33d4T7w?=
 =?us-ascii?Q?dx4rZZJ7oywChesiwY04o3PJP1p1b3/rHL7f3lLZ3jng7BMkeSi5Y7IRVOsm?=
 =?us-ascii?Q?NtRaQLc8eQ4x6jr3PcxY3Teq2o4alPVsP/o++CjhRwDJTvNsNrU+2iFiTKow?=
 =?us-ascii?Q?x8jT5CpY2hGcpuA+vMaJUCbJVUnP6OUWCSsX6UiX78KN4T69uAoEVBLjcSxv?=
 =?us-ascii?Q?kg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e8a003b-d3bb-45bb-d31f-08dd61a02264
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 19:57:35.8859 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fPW0K5SkOXxS8gSXGuWrodWpdZKwzpegGsE4OXMub44eiTZtIVILiYr+9IAubZNmgXN2Sl52lEk/RSm/9STjDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8715
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

On Wed, Mar 12, 2025 at 12:43:42PM +0200, Jani Nikula wrote:
> On Tue, 11 Mar 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Tue, Mar 11, 2025 at 02:05:38PM +0200, Jani Nikula wrote:
> >> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
> >> -	is_enabled = intel_display_power_well_is_enabled(display,
> >> -							 power_well_id);
> >> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> >> +	with_intel_display_rpm(display)
> >> +		is_enabled = intel_display_power_well_is_enabled(display,
> >> +								 power_well_id);
> >>  
> >
> > looking this here... I really dislike the 'with_' macro...
> > I really prefer the explicit get and put, even with the ref_tracker
> > declaration.
> 
> We might consider defining our own guard classes for runtime PM and
> other things, and use scoped_guard() and guard() with them.
> 
> Something like:
> 
> DEFINE_GUARD(display_rpm, struct intel_display *, intel_display_rpm_get(_T), intel_display_rpm_put(_T))
> 
> And the above code would become:
> 
> 	scoped_guard(display_rpm, display) {
> 		// ...
> 	}
> 
> which is already gaining a lot of traction in kernel:
> 
> $ git grep scoped_guard | wc -l
> 527
> 
> It's still magic, but at least it's kernel common magic, not our own.

Indeed.
I mean, I'm still not in love with the idea of the scope_guard thing, but
at least it is a true kernel thing and getting more traction lately.

Well, in some sense we could also compare them with the for_each, since
they are "imported" concepts of python, rust and other languages right?!

For some reason I like the for_each :)

> 
> Additionally, you could use:
> 
> 	guard(display_rpm)(display);
> 
> which automatically releases the reference when going out of scope.
> 
> I'm not quite sure how to plug that into the ref_tracker, though, so
> need to give it some more thought.

yeap, one possibility is to try to slowly get rid of the ref_tracker? ;)

> 
> I sent an RFC about using guard() and scoped_guard() for HDCP mutexes
> [1] to demonstrate this with the pre-defined mutex guard class.
> 
> [1] https://lore.kernel.org/r/20250224101428.204519-1-jani.nikula@intel.com
> 
> > But well, not a blocker:
> >
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Thanks,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel
