Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5AE9867E7
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 22:59:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C14110EA75;
	Wed, 25 Sep 2024 20:59:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L9paZp+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286DD10EA6A;
 Wed, 25 Sep 2024 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727297993; x=1758833993;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zW1Wy8gYw9ijyDrNlwgQsPLBLTreeFCszZvRvez/360=;
 b=L9paZp+P708LILkucbcYSH2h0M0K0qfdkZM7uaysOuLXhgj3pFjlt2W0
 A6Q7NYXhJ2flgJ28s0aThfURRX0FR+j+uKaWQ4qCLf0WXlfN5LUnGR+kc
 dcG9UL1z3tgM5H9zyXGT1+AYuto2jNC8AImWXfRTx1NXUPbRLN2DQOMbU
 b9CffrSy+tiL3/kMweTszlcgGO3tKL8XO2wLOLYa3Rq9ATQZtE2iv3baj
 mnn/A1IJT4UJOBquSWcgNa7bLkFF5IWODhBeOuE+mT4H2EcVMD1bpKWEE
 1F01+Duq3/qRtiXe+lx29owMb03C6H1CoXPm/TmRpRDyYERMwB9XeISUg g==;
X-CSE-ConnectionGUID: WXV4KNAiQeGpvY+Y4Xl3Dw==
X-CSE-MsgGUID: zg3tw0CASAC7hkgyFezdZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="25846514"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="25846514"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 13:59:37 -0700
X-CSE-ConnectionGUID: Wsf3jMp7TdqN8O/Y1HXiXA==
X-CSE-MsgGUID: VaqMINOVS1mynjahnhduXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="76828711"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Sep 2024 13:59:37 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 25 Sep 2024 13:59:36 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 25 Sep 2024 13:59:36 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 25 Sep 2024 13:59:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GOdP0eA3vkQSrJ1mG3JtXdHGJO5wWt8eLPYlw9aUbrX8kgfXueMp9Pkv6/yHJjTHTIy/qE8+KWIUzjXirOyZlDaYWztaiFZoo75XBhoQP+IWeBPTehLf9pOLf0WqheHXZklOH3/XCOb4diJ5iCecNbBbdDeLPXAgHs7X+oN4E7xfmrpIwU4DAs5di+dixYesskfB51mR/Dyk7FBmHOoqc1Rf4vrJeAcNxX+uA2Cq94BV0KgMW3nzkgaYo3kuF2D5mmzHhUgsvGl3jSrduldDOrVh4y0cQzHk+kNmcX2Oyma6vOsWD+woAllwWA2UcOUo8Y7lUFRiI3452fA1pj6Neg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZ3lq3JXdfPGRL6JocGdcYgykpnQJJD9Z0920XVdRqI=;
 b=uxoFLMuA6+JIHTDjiThUZx8LBmdmr5+pLCApSONyvIqD6eXrKRpbu87yrlFItcPbsjtm5YeWDQFMmInNMBGdioDu1bUT5NdNa/ViCbt5XY3Fs82noWW9aTIAvwuD7zoTc+APefkLlfnIpY4HIIfFpqUS3nBFVJ16RvzsYmLI23fbHKd4WWFfGBDTuamjGwfO4FQc4Y3skMChZp1thcKutLxFwQWO9a0VVC+hXdGrUAEib3rCnhyoM0zMbI1XebfhlMwQBrea5kvt3DTi/54dt4EO5fo4ebUCchY3VCGNVKxC4nk8piPRjdLZOPA2iBoqYs6AIYWEibE3x8lruDzp1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8469.namprd11.prod.outlook.com (2603:10b6:a03:57b::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Wed, 25 Sep
 2024 20:59:34 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Wed, 25 Sep 2024
 20:59:34 +0000
Date: Wed, 25 Sep 2024 16:59:28 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>
Subject: Re: [PATCH 01/31] drm/i915: Remove vga and gmbus seq out of
 i915_restore_display
Message-ID: <ZvR5sAUY4OSQXhM4@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-2-rodrigo.vivi@intel.com>
 <87h6a42fw7.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87h6a42fw7.fsf@intel.com>
X-ClientProxiedBy: MW4P223CA0015.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::20) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8469:EE_
X-MS-Office365-Filtering-Correlation-Id: 37345774-d6cd-4660-ea85-08dcdda4f52c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7n33+FWnc60GJqBfrKq4l2aACmQAtCqDaDtoFF0onGzG2k7E+DBlmN4TiAyq?=
 =?us-ascii?Q?/vMSTWuEHyWLQkxNDyOgjRwEsygnmM5ZZhushqCVitbtQkQ9Rh+NsLhs52Cf?=
 =?us-ascii?Q?YC1enBE4SkSpQgoLqE+ZCPilSdAFpiMgn5RWMK6YRHaysXsj8hx7ZN8QXLkD?=
 =?us-ascii?Q?42nHg7s1KzcdoQUXWfTGONuogHI73FFUOQIYUU0eDL7yck4i1Yn85K3uMOtk?=
 =?us-ascii?Q?v/b4R4E4gNpmnP+wUxwlg6RvHr3BwKfU0beX5iFPNhdLFvRMqoXlpVZuI84U?=
 =?us-ascii?Q?BeB9uSsRbOR0fJbXVQN07VVvA0S3vTPilP4zuXZh4w23lH0IGEnkOd2vt17G?=
 =?us-ascii?Q?OddS8zxgsMpjR786Buo8U7vS7Wd+Gzxj/8qeJql5wlfYXetnOWV/4+uAHihv?=
 =?us-ascii?Q?eJOmDXZGqHDFeyBBSWV8m1qJsQfICS0fcDW7IB5Eu7zm6HTd1DaHIIw3vr4R?=
 =?us-ascii?Q?VmQp2GrSklD5TI28yGacX2hFXMjpGhgiZ76P6R0J8QipI39p1pi383pqpUYk?=
 =?us-ascii?Q?/7FUR22bQvL2Nel/hu3utzjQVwDtLHPMAZnDIl10PuhBKqiWq1+GnEf2sJcE?=
 =?us-ascii?Q?JEaIV2uZnAacHP6epxqsy2cMTgJaDeE+rW+QDTfMgjfmDah/12p+xQKcTA9h?=
 =?us-ascii?Q?rPSUgtzYV85GgK256WGqgQ/vs1unkjeTb6ixgu0rVh4XomWJJAtRGLVip1TL?=
 =?us-ascii?Q?HkkY4wEo/pzJX9snZRUKH/J3RKUwtEcY/onqpMoNgyhENni+XL9pkBa3STWD?=
 =?us-ascii?Q?1hX6i70U9LYrbZ6CvnmVraHi8sMwD95N4Y+uzTZJ+msjlUNCESp8TAKUdAAY?=
 =?us-ascii?Q?jSuT/lM0ol3pO6kW6eT/D9qiW3gGVzRvgkkT9I+W8m4mRcUmbMZaba5m9gbF?=
 =?us-ascii?Q?tyS9ifuuxf1iTyssoCWnZPtYIEKh/UMOgpuliMRcSai5sNmdwgzv4zZwR5YN?=
 =?us-ascii?Q?I3GXcuQV2bWUmz6+yfzK5Z3ZfbYUWFb70L+8fW0sz7eUIXgus7DDs/aFJhYy?=
 =?us-ascii?Q?94vu/3KbVYymxpwjJsvvpIqY32zPAdJyMMWul7hAah1Nzq9gM+7Yittn2FQN?=
 =?us-ascii?Q?4NsUIbLLKOqF1OOLc/7jiqV7hoyX3+ADnoPpBlIMLdbNKmc9wH/OpgTxW8K4?=
 =?us-ascii?Q?TVKxbuQUehcwlWazl0CNjbkuyn7pKjtictMk7IlB2K2oVB8Fu3BDNIESVUeY?=
 =?us-ascii?Q?65XWq2zBpviRpKrV+tdMDaWn9Z7b84jPhg/RfLDWVuk826p9v4RtZ3J8AKMK?=
 =?us-ascii?Q?De44rj8UdZlbMVLyAVM0f3Dx5MSLzDRJHnpOK8pgwjLt3yN6LDqnoCeaC0SW?=
 =?us-ascii?Q?ISGJFWAM2UhbUrIf9Wn2eO8N2Kjoft8VX8Z17qPiud6ixg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y3H1doGaDq1TSS569UNys26ge2DlEOBtA3nw5FBJEkxNbwDolegeKBd3lYTr?=
 =?us-ascii?Q?9nd/T1ZS6YRZpysWUcDTLb+lnJ/ktbEWVyzi6kl4lXF6IanlrCejlw/vv9sY?=
 =?us-ascii?Q?d/IHiHi0+r9lgw7/ZGrGpehLdxw511PXkLzJoN5tIgzjj+jrwkpqj0LC1j0w?=
 =?us-ascii?Q?coVS2A4aBf+02s2CN94CAGP5KrZ+ix7HZwbmIy4dDxewMnTZlw66+XUI0bbM?=
 =?us-ascii?Q?eeo4KnC/sn/y5vgWUrbaehhZbd7pltyZHWNk7TOu4f4Qy9KbOuNgaV741mVv?=
 =?us-ascii?Q?KCq33umo63CM2N/qWlB4ZeWpqNyJbEkMgy68Bu/2oc60m3/iFjTBB/BIFcoh?=
 =?us-ascii?Q?ahO7eSI0PhfGmaqAvofxJR6wuay4rYqDE+LjTfR1UKy1NvKCNLBNRePGHDzs?=
 =?us-ascii?Q?2MMWvlARBrimMMkMbX0eBZrAjbk33gqXi/P7oMVRk0h0A4/iWS9iEaubHpES?=
 =?us-ascii?Q?hqDzg7J7glWHHujC/k/fw07CEo8sl9ARYg8f7GkgSOT1k5dsoDtgoUwnDmBY?=
 =?us-ascii?Q?UVunSx1xQLxfKC8+FKOm5iPZ84TdaNjmvvEo6pXhnvvidDqIcDbiMmxaJBZ6?=
 =?us-ascii?Q?s5Ga/eGc7uEJq/OZVTAUizAr3jU0IkYV/u0pA8mhMzP3LJFehAkkvOFvxpYF?=
 =?us-ascii?Q?Nhb7v6YkPlWFxUO5Ni25Eq+bLZdA8WdIR6N64jZJ9Yg5pDZAT8S5qaGIUt2A?=
 =?us-ascii?Q?rIzJPlBE/BGmEjnN3C+R+eAg5JNLLFEifgCFPsRkZemAjmM01wUxYUneaLpE?=
 =?us-ascii?Q?k2MI2bbnitUYZPvuFky5/9OztNHwDmXvXqymBwgjeEk222Xy6GrkwRwA7qmf?=
 =?us-ascii?Q?sHL8LFeDUz0oeIq6WDRtESgvSbhL/sb1g+3ycGa+AbuGWXpNe7A2yGterKLS?=
 =?us-ascii?Q?8ZfDMQmAKkahp2Pres2g0mae+dyghEklu5vQ36p+uJl8eMTezwvk5bQnRVYd?=
 =?us-ascii?Q?rKy4dqnDQR7uXwQmUDwMVKX4emzR927FIJEHqeD/86s/cez6oFnAtFY6XxBt?=
 =?us-ascii?Q?nLwVc0k3z8gD69JYVWhydwmuUBUr8o/LznrlL/DdC/gT4ijOIu6SsEbeBcM0?=
 =?us-ascii?Q?XBJ3RLErswgNFZG4XnTbbs2IMPTNBfF4xWuU7z09dnUj6pBQnszR8XQ0GWH3?=
 =?us-ascii?Q?12wX4pXa7w6ywnQftA+vqiOM54/T4SMCUv+dUy8uavOCcait2IcBVwb+Y6K9?=
 =?us-ascii?Q?E1h929iWFJExQOJyORFw2VkQ/ESVLnpMEtHBzvsgZDiOb2Pih3Y2/rpT4aUi?=
 =?us-ascii?Q?bBkpXrZtqujgicTvBCvlqxRKPqinnISsyNVSWrMlzYUI4leTKwP61t3ZqUNe?=
 =?us-ascii?Q?E2RRduoVMqCj5ieaV8FxojOnjQZSR8jEVkCaQxxJCXtqYKacv1/ij2OIrGlg?=
 =?us-ascii?Q?e+iELQYzL5PQj758DMoYzcOF2qCa7WiiKAX2Po8k/UrjwfmkK7skCitYNKMR?=
 =?us-ascii?Q?wqJn8JN2wmgat3Bu2WUvy9RiNO9w5xQDv8dR1JC0nrG+Up+nExf4iAc0RNJq?=
 =?us-ascii?Q?wqesiQ7E+rwoZweaNNy6zNuJv5Uig6X520VDKo5Qjiwfv0wsrJq1SbceqVfo?=
 =?us-ascii?Q?7Su/ZPJVsfplMTk046Kobfzzl0OMTIJ4hBjm9S2TxXgtYtT5O184mf0vgaUQ?=
 =?us-ascii?Q?Hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 37345774-d6cd-4660-ea85-08dcdda4f52c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Sep 2024 20:59:33.9824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KXGPM6f9nGUHHnGugx31WgxSrn13fZrdKYv/8+6mJmcMNme3nBojs88cMWI8WdRcLllaiXHmI4MjJrP5KGBv2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8469
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

On Wed, Sep 25, 2024 at 01:20:56PM +0300, Jani Nikula wrote:
> On Tue, 24 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > Restrict this function to only save and restore registers
> > functionality. Then, that can be moved out later to under
> > display with a proper name.
> >
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_driver.c  | 6 ++++++
> >  drivers/gpu/drm/i915/i915_suspend.c | 6 ------
> >  2 files changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 6dc0104a3e36..c5ffcf229f42 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -60,6 +60,7 @@
> >  #include "display/intel_pch_refclk.h"
> >  #include "display/intel_pps.h"
> >  #include "display/intel_sprite_uapi.h"
> > +#include "display/intel_vga.h"
> >  #include "display/skl_watermark.h"
> >  
> >  #include "gem/i915_gem_context.h"
> > @@ -1167,6 +1168,11 @@ static int i915_drm_resume(struct drm_device *dev)
> >  	intel_dmc_resume(display);
> >  
> >  	i915_restore_display(dev_priv);
> > +
> > +	intel_vga_redisable(display);
> > +
> > +	intel_gmbus_reset(dev_priv);
> > +
> 
> Hate to be nitpicky, but these are now called for !HAS_DISPLAY()
> too. Maybe the later patches fix it, but here it's not right.

no need for hate, this is what the reviews are for ;)
I totally agree and will fix on the next revision...

> 
> I agree with the approach though.
> 
> >  	intel_pps_unlock_regs_wa(display);
> >  
> >  	intel_init_pch_refclk(dev_priv);
> > diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
> > index 9d3d9b983032..fb67b05cd864 100644
> > --- a/drivers/gpu/drm/i915/i915_suspend.c
> > +++ b/drivers/gpu/drm/i915/i915_suspend.c
> > @@ -26,7 +26,6 @@
> >  
> >  #include "display/intel_de.h"
> >  #include "display/intel_gmbus.h"
> > -#include "display/intel_vga.h"
> >  
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > @@ -118,7 +117,6 @@ void i915_save_display(struct drm_i915_private *dev_priv)
> >  
> >  void i915_restore_display(struct drm_i915_private *dev_priv)
> >  {
> > -	struct intel_display *display = &dev_priv->display;
> >  	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> >  
> >  	if (!HAS_DISPLAY(dev_priv))
> > @@ -134,8 +132,4 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
> >  	if (GRAPHICS_VER(dev_priv) <= 4)
> >  		intel_de_write(dev_priv, DSPARB(dev_priv),
> >  			       dev_priv->regfile.saveDSPARB);
> > -
> > -	intel_vga_redisable(display);
> > -
> > -	intel_gmbus_reset(dev_priv);
> >  }
> 
> -- 
> Jani Nikula, Intel
