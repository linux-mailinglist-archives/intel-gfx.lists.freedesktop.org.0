Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7589DF227
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Nov 2024 18:09:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5993810E0EF;
	Sat, 30 Nov 2024 17:09:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K4inDRLn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B916D10E0EF;
 Sat, 30 Nov 2024 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732986594; x=1764522594;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=t7Q1d+hM3Q6FxX70fp15dfdGEY2yjiFS8z2JxCsIGJ4=;
 b=K4inDRLnY7a43jd3VhMehi7di0Aqd9cr0yWpA+esweHYvOSz1AZJ/s71
 OmD51IhvajZaDp8mT8dfjp9DSItv0LtOPYRXXtpUfR9EORd9BduC986nj
 Gilb/OwVbHe9gWWOBRePszxvUhacqJK9GJrnH/aRjHj3e47rS0CKr8fjA
 4KmvXKHudUCBdCKepmRjTTGIgpjfKc5M55VMKmJzIZFC+cnxGmWkYYWM9
 Xt9FlMN0Sp6I7D4eY/cEOBUQVgw06upAi6uXUGJgRluTF9l4Oh/7nbnM+
 I4UNCYIkEdadWj+qMZAvkL6vC/ffHpG1bFFJ7wCPtx8K/JIcz4Ff+vAF0 A==;
X-CSE-ConnectionGUID: UTo9d/DbQGikzjJ5mMxxEA==
X-CSE-MsgGUID: FirkY5qnRTadb/mc39o9IA==
X-IronPort-AV: E=McAfee;i="6700,10204,11272"; a="37121013"
X-IronPort-AV: E=Sophos;i="6.12,198,1728975600"; d="scan'208";a="37121013"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2024 09:09:53 -0800
X-CSE-ConnectionGUID: 0Z/ocno0RHqU5eU1k3JQng==
X-CSE-MsgGUID: 2DDcOKuqSlOGhs0O5ZM5XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,198,1728975600"; d="scan'208";a="93037515"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Nov 2024 09:09:53 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sat, 30 Nov 2024 09:09:52 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sat, 30 Nov 2024 09:09:52 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sat, 30 Nov 2024 09:09:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=e52ot4x+P1zw9u2ultbQpqebACVP8pMdUXkp/4RgDJz5oz5tC5DclvFuBnavtjTSC6GKbRO189TijXX1mpqQ6nFUbtzyWdOx0dZxdPOhLL3jciAC72rrmURlzh3brdJMId+cKMLkSkxNthc1p4xgkP5ggwECDS4B/rcdamxPYA3+hT7jORWwOBGILNiRtwMZCKZ55imXrzoWkoIjuUyOL42vhDXZUwLlo1ziapUG2c78/wlIo/xcAjo/yARkFHMz2iPrdPH/WT9oTGiyekfO1LPBMe8gYY3LzMfK7qnj0cjUNRg1bV+tvFl6xgBecF/ZQKvHdoelzovQ0GrVP7Ozng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AqzVcozEkZY8LM6asaEv34WM2KJYc/NQr90C4pavtLg=;
 b=IXvPAMJNsM4PJdVUd+23P4FjK2soMZcGhyMwpFAeEypvgebrBtbAiu+u2F5SvshLMKWF0xyF4cW43g7vNb3+N8FRo6A1PhcpUFYxHleyCfDE/LFnMv/nI7JTXCpcvykSQyRMNOrkL0oPg3MojW03kmSaDW0EB+aP85Eu7SgtgjEZZ6dYc+J7/rjdYZ1GDvuFKDQJycnWMWYByiNfs9pnVfp3+54+AsTzuEWaK3ShXAV2SB3R0vdcasb3tV2JMWzllsDM2+g1Z78pXLj6ZhoRPEG0OIAwV3OWVikRSnyg7cLFt7e/AevJq9YUcPjd3J8IMp3jA6bkz9ImgNgqknVUDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA1PR11MB8544.namprd11.prod.outlook.com (2603:10b6:806:3a3::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.17; Sat, 30 Nov
 2024 17:09:49 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8207.014; Sat, 30 Nov 2024
 17:09:47 +0000
Date: Sat, 30 Nov 2024 12:09:41 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Luca
 Coelho" <luciano.coelho@intel.com>
Subject: Re: [PATCH v2 1/3] drm/i915/dmc_wl: Extract
 intel_dmc_wl_flush_release_work()
Message-ID: <Z0tG1SeHGzDvoEGy@intel.com>
References: <20241129164010.29887-1-gustavo.sousa@intel.com>
 <20241129164010.29887-2-gustavo.sousa@intel.com>
 <Z0oHCjw8ElDRLLai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z0oHCjw8ElDRLLai@intel.com>
X-ClientProxiedBy: MW4PR04CA0251.namprd04.prod.outlook.com
 (2603:10b6:303:88::16) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA1PR11MB8544:EE_
X-MS-Office365-Filtering-Correlation-Id: ffdf1304-280d-4710-ff35-08dd1161ca93
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7xfoc9e/+L7mQBpAbQcFXHoVKkcVBshLnvu+AqcYoh+u6EaIKhKn38FBkK5n?=
 =?us-ascii?Q?wBMKyytUNBya1qln8QA6qNA7qpfRgG3wZ7l/2NhXnotq0agMjIdGp03w+g/i?=
 =?us-ascii?Q?hG+ewk2jTQE+xHBI3jTtnjTqLQG21C8ZftmwiWfBFc0jhpy7p8Z7eKF2RrQS?=
 =?us-ascii?Q?hgWFQKGo+0W9+zYvnjEjp8uQU4h9g7o5+8TpZt9k2ef+AJ0AyjlGeHEMfPT1?=
 =?us-ascii?Q?EmYj/kK0c0IrKBAirpl93Md0Rw9wOklaznMiszW2/VjkzK8EnocxuMMPEvWQ?=
 =?us-ascii?Q?tLuzep1SchOJDOWu+4d9T0HfKi7TTuLvk0qPwrhwgpgwJWqWfdFMOQWAEDSD?=
 =?us-ascii?Q?enMddcP4QNpAhhfO+qqzOkjZ7GF5RNi0zx89wyBFquljjZTdnzzsyTJdxikF?=
 =?us-ascii?Q?K9vWnsMjfU5TQa1lnARClFzBuli7fMpt9MN8dL7kpY/HF/bRAPJJGdDPIXXU?=
 =?us-ascii?Q?+bn3kOAvwHfzaUFfMYweijgQ+xThn0JtiWH7e8ffV64IWJifkAGwxXdiVpTm?=
 =?us-ascii?Q?UH8GoQAJg9gzSUxwKHeGa4nXe55hUtCuhSLw1dhzl2L2ZQNdP2G+KoQxWX00?=
 =?us-ascii?Q?AaC92izLtk/YELO/fxrHfBkTh+ufm+ATxk3gZQnPI4u74F4EkthZUp9dFRFP?=
 =?us-ascii?Q?kYqHTGC/NSZQWi1LRjbxwRNST6s/NPFympIW8O2FpAoc0FNmBAEes3rYw7M2?=
 =?us-ascii?Q?jm4P04uYxziaDt0QaMda7fRpeDdPQlPfqBruLDxRi238WQP9I72D5qyfgI9u?=
 =?us-ascii?Q?1Z4jQZfQQ8ExiHBZVvL5kwf0zWi9NnNkaOIz7auCIG94QutNLeDW9i8UitEu?=
 =?us-ascii?Q?eKggS9bpIp+lFXHAjudMbUIsFMgR7oTD0OV5AXEuaKr+qG4ZbdQ9gAK1/rej?=
 =?us-ascii?Q?iQMorVh97b80XBXa5QrbTrukOjx3eGO0lRhKdwiOrn1BrjVCbHBComn4+9k+?=
 =?us-ascii?Q?FRt3rZggj8xrSm+tsjCveSGuiR4d0P4eoY2EXXlXPThhL4NsloIzG5PrBo8k?=
 =?us-ascii?Q?Fvx8dwSSK+Y0aW29Ikbad7Zd0fXgDciSmw9kkI1nK9sinvAdZvVs2mKuh9IH?=
 =?us-ascii?Q?MtkkyBcL8GMLRYttZF3n8dTBBE5tr1YMG26RPOIl/c1ATVoGiQgwGH/RV9s9?=
 =?us-ascii?Q?QZ1JB38WmUCItdGPj1rrjrSG10dEaks0xQZCTNH/HfiYobVH4GkAHwAoNyEZ?=
 =?us-ascii?Q?ZYTJB9rJPIFPhDqn8cKhRAHyeb6DDwGr3n2TMgqLwC+vHu/5a9QkKSlRobo0?=
 =?us-ascii?Q?XYuwc6AfMEJF0M3T4RBe/Jc6asEWzeEdktcB15MgCB3T9jGpaoPVVA1nVQxH?=
 =?us-ascii?Q?Wc/qkVdKJOwP5COjm0ScCrK2d3MhaCSHS44Z29fJBhp6Hw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hXf3ATpPFYIZ4sgd8viRWjrMa8D3IlO4LIg7hZ7BJ7+WAp7BxIVN2YSvBVsb?=
 =?us-ascii?Q?6A4HhKgvy2j4kMX9rOvyZWBoVvqTXzl7n65ueSGGcjBSl/rGN+mFWySy3Ti2?=
 =?us-ascii?Q?JYCA6Gkz3DoTIiPDndr3kQZTa/7C6hi7JobRLL5V9hTvCKudYIonb2JHvwut?=
 =?us-ascii?Q?CoPa8pjeT6KUf6TEOC5xYIDwvhZeM2I2j9iBIeENodpGQomARlZiABbi65rO?=
 =?us-ascii?Q?PE7M2nROKxRpbM+eoRfqeoy8P6noI6T4YzoFeuq1D55cABLStZLZNtQMLE7d?=
 =?us-ascii?Q?IQcnJTkDN27e8p/O0G2qiT342x7FM2DjLFT+CCN3dFx3m/HC3A+8AD812NX6?=
 =?us-ascii?Q?4KZYh8olCXtswwL5xkcxV07t1wPCJptg11V0U7cZr5X1iK4QuF+KeiKMds34?=
 =?us-ascii?Q?AdsX60BoU7LQU3kJEEt89yMJTxYXtUAfNCafZspCInsWf2GQX88+3i6FX40u?=
 =?us-ascii?Q?sJokcTxmgZBH7N+Z9aTzpnkMobYOMWJ3z64t4uQugPF2NEMPF++IhMnAyTIv?=
 =?us-ascii?Q?vLTFJYRO3Frd4d6ga7PXbBXqi6NCj6tconGXzrVnN1PZ9WAKdRgubQeqRphx?=
 =?us-ascii?Q?b6RhBYHSVU9M3J2g1dkBRpYPrOtGcMX57f9XFBD7osW83JhE+YVlgG+/qOhm?=
 =?us-ascii?Q?gQzAqhOUFRzK2+mIq9ORzAW8ve8IN434WMjK1ZE+D1VJ4+wSVbwJ1AwZ6uzN?=
 =?us-ascii?Q?gN7ItobR+DwTFY2R5v240cAWcXaQB/wZUjoy3+nCWqwAu3FJ+5C6J3pwaxky?=
 =?us-ascii?Q?+cpKo0QIg4/Vr6E2hj1zUXz7XW22GiaGq2u098MyRIoC0Mjs5yui5FXlb5wL?=
 =?us-ascii?Q?53MU9P0+EZHfv/FRK5oH/7HMFC44WCE1/QbSAJFzOWmIxu/pnEwJqCEMcixt?=
 =?us-ascii?Q?7XyUxAq1rbFPdHfvdtCo+d0l3sUOVHr7jVL/mrqgNfS35A+2/lf8WgpUaNkY?=
 =?us-ascii?Q?tlsijzKQ0cx2bEfO/WeEaFMohwSWbQaOp21mlGc2XgXIN3UkE/Lc01ROD37v?=
 =?us-ascii?Q?EFvykVKEiND1eVIeJXsNnTe04hOMrv+qbgYn5pWAZFjdJoW+gapyAGkPXonW?=
 =?us-ascii?Q?AAWpMr++/7E3EpaJ5PFYIVncRHufmGAxCmw5K7op5CWulk8goPBrYx2IhXGI?=
 =?us-ascii?Q?E84I2jMsahfGokJXCvYk7tp0UxDjAkKqvPHMRi8PIY6q0xBpnmwImmtZxnbg?=
 =?us-ascii?Q?zcQPM0W5lH1AFqpHw0UsVfwN+sdqm21z3nAmmOZ6XPiENKMPvRqMEQMVJ4C1?=
 =?us-ascii?Q?dO34dGNDljWSNRjKotYhDcrHKAxMaVu2CePkKKCQ+lwxdzKea7LCxx9xL40y?=
 =?us-ascii?Q?tNR40DfCjrt8mz186Nm5yw7h76jpGfjD7kQNfDLq+fujQ2HEHAcqvYfLLdx9?=
 =?us-ascii?Q?cC+YTf06VNGL6asEaD7ga4e8aEnYVa/53yy7ZnXRrGpVJqGhMYgG+VvwecUQ?=
 =?us-ascii?Q?XMg2URHJtvYY9APdKLzxQEW5aZETjXBebr40+1gVg1PRrSFcU7lmbeQEJJq0?=
 =?us-ascii?Q?s0qNFhydEsRtETTKZ1ghmHojPhvZcV4AznNtCOgYrJZmZJtrZYes8ysGg4B4?=
 =?us-ascii?Q?4NZp9AkwiVB44MhTTuru5qSnRGIfNbQ3ZcU0JyVuRX0pFwSomkJaJfq7+8jY?=
 =?us-ascii?Q?uA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ffdf1304-280d-4710-ff35-08dd1161ca93
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Nov 2024 17:09:47.2504 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: L+Pool/DwRypzuwPk49vrzI+3ndk/DYZesRoAq4X8jEuKSq7hsYPFVnhqlceQ5oOzTKrTAk8bVmFUoFFZPfGBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8544
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

On Fri, Nov 29, 2024 at 01:25:14PM -0500, Rodrigo Vivi wrote:
> On Fri, Nov 29, 2024 at 01:37:54PM -0300, Gustavo Sousa wrote:
> > We will need to flush the release work from outside in an upcoming
> > change. Let's put that into a public interface and call it
> > intel_dmc_wl_flush_release_work().
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

I just pushed to drm-intel-next since there's this patch here that would
conflict there in in drm-xe-next and also, the whole display-pm-reconcile
I'm targeting here in drm-intel-next as well and that touches a lot
xe/xe_display files.

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 12 +++++++++++-
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.h |  1 +
> >  2 files changed, 12 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > index 853d75610489..09075830c12f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > @@ -349,7 +349,7 @@ void intel_dmc_wl_disable(struct intel_display *display)
> >  	if (!__intel_dmc_wl_supported(display))
> >  		return;
> >  
> > -	flush_delayed_work(&wl->work);
> > +	intel_dmc_wl_flush_release_work(display);
> >  
> >  	spin_lock_irqsave(&wl->lock, flags);
> >  
> > @@ -377,6 +377,16 @@ void intel_dmc_wl_disable(struct intel_display *display)
> >  	spin_unlock_irqrestore(&wl->lock, flags);
> >  }
> >  
> > +void intel_dmc_wl_flush_release_work(struct intel_display *display)
> > +{
> > +	struct intel_dmc_wl *wl = &display->wl;
> > +
> > +	if (!__intel_dmc_wl_supported(display))
> > +		return;
> > +
> > +	flush_delayed_work(&wl->work);
> > +}
> > +
> >  void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
> >  {
> >  	struct intel_dmc_wl *wl = &display->wl;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> > index 147eeb4d8432..5488fbdf29b8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> > @@ -32,6 +32,7 @@ struct intel_dmc_wl {
> >  void intel_dmc_wl_init(struct intel_display *display);
> >  void intel_dmc_wl_enable(struct intel_display *display, u32 dc_state);
> >  void intel_dmc_wl_disable(struct intel_display *display);
> > +void intel_dmc_wl_flush_release_work(struct intel_display *display);
> >  void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg);
> >  void intel_dmc_wl_put(struct intel_display *display, i915_reg_t reg);
> >  void intel_dmc_wl_get_noreg(struct intel_display *display);
> > -- 
> > 2.47.0
> > 
