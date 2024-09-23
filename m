Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4CC97EBED
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 15:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5545810E260;
	Mon, 23 Sep 2024 13:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WduIdNCS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12A1E10E260;
 Mon, 23 Sep 2024 13:00:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727096401; x=1758632401;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QcOjC0xc82EwFhYpxQqMY5dL7eqHFcz4l1PXA1/4UJY=;
 b=WduIdNCSb0q5PNZGIXT7mMuvwyLw1zC91U6Z6uj3rkIz8F+tweWtM8M7
 qw7SJFphFZzimfx7OulislVjgh6pm0qDFq4JxGUFVXSech0Q+teKWTIxM
 663y62pdg/kig7pFfrdFHMkt6vrfzXwJyRkRDtGuQvoaNDzuYdDznMDPv
 71z0/wIC/gmf0WtfKsN3FiMeOhZ//BI8ZjBrebYyspgDaLTxSPtXcKQRS
 ixxZ/8gOGRicjZADFqhUEaGF3vfgOju6GpUOyPZvzJhijOO+sYzsM7yIr
 WbrhrDOmFZOejo/rE9afbInkeAoPnafIm3tp6fwj1IfBI1aiOHZXBYu68 A==;
X-CSE-ConnectionGUID: Y5OFDsyfRqSb7OtJRCceyg==
X-CSE-MsgGUID: OKeOYOIfRKSCm2kO7cZEUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="37409718"
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="37409718"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 06:00:01 -0700
X-CSE-ConnectionGUID: +80dZt73TzG1hGspTnPXpg==
X-CSE-MsgGUID: sKLVXmpARoyjmhTOZfftnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,251,1719903600"; d="scan'208";a="71332288"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Sep 2024 06:00:00 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 06:00:00 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 23 Sep 2024 05:59:59 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 23 Sep 2024 05:59:59 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 23 Sep 2024 05:59:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WItITzMcMegTj2woBcqgRMNjbuJbFFYGCkV0AeeiBTjh/DzNUpFIKOEs6wnYmQDDZkr8bHsJ2NrvAVMgc38wX4B8Q+cJH9Y84+kC5d0TKH3QNtEyfUgRCdtuypiMsyOuD5nvuBp7nOTQSDOMCGINvkdwnFqcQIar0WUhFZXCeBJS1d+VNQbQdvhvZ7tOM/C/iMJfr9aC4F7ompgd1E6fc+SujJ5sWxvTIrIwzcxADrAV5JErVIecrxCNjTeHcfWp/veq1kp26Sv0EDtworPrwXmeiGk+cRZSp5yJRNB0N36bfRakQIIF5e0AwTnlukGwCUiE5B54s/tUdBFrwgalsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gEFbSNziOn+f8KhtVRG4G2pP9JVRHz8vx3DCtXzw+y0=;
 b=kO8iqQ7KLImG+u5tMYTXeZMCyy75vifVcxORfkZSK5nZyl/gy4mL0h91bB32/W497nQVzzLCgSK8fwmIF7Ss+XOl+TeMCLeg7kIv2LQ8ekWjLNYYKEhqnaURZmhHC/aVh4NSc0mFTypLKruZQHq4F04YjGInb3Tmegfz42/Fver8V2GVaDlqXRyjlow7y97SoSZO0Z8/irL7cAfj9DLdvCqvOLoY/59Dxt3jVlsnw5ALv4fQlzXrP1j/WqNkO0KoHOQPQa2o+N3zn/mxy9aOKWE7EFmuKqvVP7Ov3gR9V6o60wNJx+8ASLvsVn63g919cJNcKkIDqpDataXsVYDVoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7828.namprd11.prod.outlook.com (2603:10b6:930:78::8)
 by CH3PR11MB7761.namprd11.prod.outlook.com (2603:10b6:610:148::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.25; Mon, 23 Sep
 2024 12:59:57 +0000
Received: from CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d]) by CY8PR11MB7828.namprd11.prod.outlook.com
 ([fe80::5461:fa8c:58b8:e10d%3]) with mapi id 15.20.7982.022; Mon, 23 Sep 2024
 12:59:57 +0000
Date: Mon, 23 Sep 2024 14:59:42 +0200
From: Francois Dugast <francois.dugast@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
CC: Arun R Murthy <arun.r.murthy@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>, Srikanth V NagaVenkata
 <nagavenkata.srikanth.v@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/dp: use fsleep instead of usleep_rage for LT
Message-ID: <ZvFmM3FIdY4DS3AS@fdugast-desk>
References: <20240912050552.779356-1-arun.r.murthy@intel.com>
 <20240912050552.779356-2-arun.r.murthy@intel.com>
 <87tte6652c.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87tte6652c.fsf@intel.com>
Organization: Intel Corporation
X-ClientProxiedBy: MI2P293CA0008.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::19) To CY8PR11MB7828.namprd11.prod.outlook.com
 (2603:10b6:930:78::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7828:EE_|CH3PR11MB7761:EE_
X-MS-Office365-Filtering-Correlation-Id: 5eaa74a1-ad81-450e-3d2a-08dcdbcfa01f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8E9K4dIdP07PqiSlmDlcyROXYA6P8wrgvWUsKuhRivJTe5dcZXGRr2a2siwb?=
 =?us-ascii?Q?Xnc2FKrZ1CHQVfSqalvxKXnqluJkNi70we2pdTMZVA5/uNOgWtTpeyc0w+5C?=
 =?us-ascii?Q?7SGG7M+VkCpva9fXhKXWZOYDWR7xicvYVNO95Y885Z6XwtiLDXeYHUuITLFL?=
 =?us-ascii?Q?r3H2EhQn8TmwlMQ4mTOMtyejnoAFChJcaJM7CEax/iWJ6/wsjTDudZOVcNA7?=
 =?us-ascii?Q?z6sJF+Pkmr1wYq853c/TpTsp7IY2jkE/hozqYgxdJQ95ihZ9m41TFYtdjYw/?=
 =?us-ascii?Q?W9Fy4ZkXCYNkxes9LPdM28EG1P3WWeCtWO6z55TPRk//8z5v1ULegFkseZZB?=
 =?us-ascii?Q?VQbPjhdbrC232nDcTUZMOpFV6c1dN4AkhCE5vBuF4OV4Ij6gc//G2VYfRRYj?=
 =?us-ascii?Q?Ph/xkGvB87bRxexVUQwksIuEn4qJl2Xrf5JsZGj33G+4Y2vYRNXLnwJq62/L?=
 =?us-ascii?Q?GISB7qxYD8iIjNlVQseZP90+61kHrUtoiGqTo45XLFYERRmIOUAKjK9sza7p?=
 =?us-ascii?Q?Tym/Nms6klKZFpPJmunX1XpmnROtxI2rxfntTdyG3E4IPkXHYLnQWnykVWtY?=
 =?us-ascii?Q?R//DC5blT3sm4LEqHTXjqs9uM+vSP4xbmDvP3DaH4pT/9cs62np6UGTYBq6P?=
 =?us-ascii?Q?O/CWeOIrJf3du3hKch3+4GqLWAnHQ27CjdQ6U6jMn4abO4HkykMqTHg1JV30?=
 =?us-ascii?Q?EJ3pmpSMOZRc0i5nbSli7XCWNrQyt8fS0qZhPkNFBtiX02xkge40MxVJ9nSM?=
 =?us-ascii?Q?bR/MBkWG4+TAtgCmzVOpUipHK/ASUZZzrgBOVVwArTmriruTsbUvs//n2D3w?=
 =?us-ascii?Q?YislBzGhmcVZPONrdd+HZRlSoav234kXIGlORGx8G6IemLnckimgJobNyNdp?=
 =?us-ascii?Q?FJDg0W2QqK/UyI+GDqsdcSX+2Qp6Hemx0U+XKXcIcxtE/lMzUsEGQf9Nhg5O?=
 =?us-ascii?Q?vLdnUhvAomr+TxfHl4QEs2kKi+xotPJFGH9hheum15l1An3ATHUzdzDPx2ck?=
 =?us-ascii?Q?ZMA5FuLhcj0RYDojKtG5D/9iMUkxPwyGOEZ17CWyQrZ0PWBM3kimZjmlLzsH?=
 =?us-ascii?Q?tFCakrp5efQ7XK9aDzmgnkb9dceIZwf70zvCQQu0FQJYYgW6dhmDMlAXPoEW?=
 =?us-ascii?Q?ri0Vh2mAKRz2EWJ/2w4QclVsB/5GcKYiLAAzAfxUWBbJUvE77IjvTIf0BFAn?=
 =?us-ascii?Q?7iD0cBAmwQINdbpY/2wCBsoSGTM5N+bSAfP8HJ4VduY5eIAeI+eCjDpZg4K+?=
 =?us-ascii?Q?LlJl8wGm8Q0qBzKHwmRjhJsE69eHuc7T08m9gceyqXRC+k4MNrfqnl+pvlad?=
 =?us-ascii?Q?1YfnF4ytCq8X6ivAKgC4klNsxUueOYf0G6OGj+f8V4wfXQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7828.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/34sLjfo1eGkr7riyxMhR2mWg9ZZV/H/EYu0HRBfVKEx9zNhrEYrIF0911Ha?=
 =?us-ascii?Q?ZI2uhXKq+iEI76dBjKGUElVNJCRzw4/h43igTGzXy4qwpLtYUOM/T1SXiXB2?=
 =?us-ascii?Q?xv4XoaYNme+T0S08jEWGefEepXeyiPtedRnD2m5lH7SgsH3mlXSGiDK/FiPx?=
 =?us-ascii?Q?byJbeEmc/34VO9ofAYyyOzZbP153osRh9Nr+E/uTyFY5o8jcKpVM2vrtpBYl?=
 =?us-ascii?Q?2xMhDApPa0oP55T+eSHHVAI34E3S771Z5OAsJV6OmLLuE8fnv91exVqQA1rs?=
 =?us-ascii?Q?VhcV5ZSBBfy8aEHnFZAnhnFHHoY3zsBhnNWK7IfH3NqvmhqylrDo1EcjV+7V?=
 =?us-ascii?Q?/eWis2907BEsNM8bdOs3YqjWfP5qwj03WkCzPPugsRjjWGONROCvvqMZlOy7?=
 =?us-ascii?Q?cZW/fe2snhjsECM5OQxTKcu1m2/4UFG6bqCTSfQl7hJUjS419vK5T9Ix1h6O?=
 =?us-ascii?Q?Bv1w+wTN0tMsppnWi2gu3qa8D1XkVmOThBn/CV7mwxyMIkX5xw3WvzinAuh8?=
 =?us-ascii?Q?PXzNPhHTWetobDfptL50WUFNK0m4n7EnempTRwqrMLa3nyG3G5mcXmlMb/UE?=
 =?us-ascii?Q?iJoSKEHpJraT8H391CcuVIblBvrCrcZ5xqanZk3ji5SQU99qCDVnSeYLGwNi?=
 =?us-ascii?Q?FceXmhAaaTXD+BvSTmNroakT8E5Pevi8c/pGpoFfz/PDvk3U2eUicU5ZwnrZ?=
 =?us-ascii?Q?1EWaSDECSs4vEtb/fb6Z2WDX2xhBlATgHSozkPlA4v3lW7xofNTl5xv2+J8O?=
 =?us-ascii?Q?4mAT413bqnNg0T3vFeCuMPTV1fv5H2n9EvlgTuKugRWTmnHL+DsHHsWWN4nv?=
 =?us-ascii?Q?//mICDcciDNULvAnGwCjpvr6HGIIbLJ7s149iBz+GiOhyOsndlCO6Taci8h6?=
 =?us-ascii?Q?zOuCpbpJSEk2cCZcPxELBAvs1Hf0L15OEf76LopYNPgyNDs/F3NZexNT1/BF?=
 =?us-ascii?Q?H+0Y4iFJIEV1QkJNMDN409Hd7EaEtTf2ifNzBb796nfJP5j4DCG45SIiBNrh?=
 =?us-ascii?Q?LkSVj2LHwDlQXKG0QmhYvW1vfUU38gRCM6/41BC4eIZv4JdLHzoxEq8RtkL3?=
 =?us-ascii?Q?2lVIiiUmkEP/H4y4h6xOqVUCJMfMTw+Ml7GWTPerOMc7gtN/xPKAIHQ6FR26?=
 =?us-ascii?Q?v7prdX1VV01oqZLglEF7erleB/sPGwqFv/Is2KPUhHHwG0a0L4pbeotrJy4q?=
 =?us-ascii?Q?P7Sf3pLdFKAWFbHN15zzj4vR4mymUB97Cy8vvFNFgj9KEv7IkPsEpxrU+dd/?=
 =?us-ascii?Q?lYDXFj0Lk2r+nbHhap/0+J3VO5CX2xtloWT4hD7t3nh5wmJvU8q0XYDasapW?=
 =?us-ascii?Q?xnuJ1iXtyN2agnkEaTHMeS6ajwTYQHXcOe2tYqCTajfqfDR0TZM7gZG/iqyk?=
 =?us-ascii?Q?n6o6sMj4d2ImPyTggaHadA3hHCXa7du3Dt9S06DUDAxDi4e4i0WmwaJZp4/I?=
 =?us-ascii?Q?KEIQ7rvLQQxp5AjkkZMs/m5T4Kd8ji2TF3BRvlvQ8uLeEIw4Et/QKue7zlNN?=
 =?us-ascii?Q?9yCUoNxT+BVPoGrxnU+i/2E5Ef0b+/h516gExJNzhEG5ksZ234cvm4mvzqQc?=
 =?us-ascii?Q?lha2uXaO+8cFg2crnBFE415CJzXzlZhoJDV63t6RbkLv9Fg3ASt2rdMwTyzB?=
 =?us-ascii?Q?Yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5eaa74a1-ad81-450e-3d2a-08dcdbcfa01f
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7828.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Sep 2024 12:59:57.2032 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1pTxJwZOWo8A5Y70vaNmjMEAq5wffAQ446yYkgrNlNsK+aLZE5SSBvFvBdkJSV4L7133jfVnWKtucgixQVXhAHKpb0mNmagk1v8ogo1ZCSA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7761
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

On Mon, Sep 23, 2024 at 01:24:27PM +0300, Jani Nikula wrote:
> On Thu, 12 Sep 2024, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> > Aux RD Interval value depends on the value read from the dpcd register
> > which is updated from the sink device use flseep thereby we adhere to
> > the Documentation/timers/timers-howto.rst
> >
> > Signed-off-by: Srikanth V NagaVenkata <nagavenkata.srikanth.v@intel.com>
> > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> 
> With the commit message updated to explain why,

While at it, please also fix the typo s/usleep_rage/usleep_range/.

Francois

> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_link_training.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > index 397cc4ebae52..f41b69840ad9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > @@ -898,7 +898,7 @@ intel_dp_link_training_clock_recovery(struct intel_dp *intel_dp,
> >  
> >  	voltage_tries = 1;
> >  	for (cr_tries = 0; cr_tries < max_cr_tries; ++cr_tries) {
> > -		usleep_range(delay_us, 2 * delay_us);
> > +		fsleep(delay_us);
> >  
> >  		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
> >  						     link_status) < 0) {
> > @@ -1040,7 +1040,7 @@ intel_dp_link_training_channel_equalization(struct intel_dp *intel_dp,
> >  	}
> >  
> >  	for (tries = 0; tries < 5; tries++) {
> > -		usleep_range(delay_us, 2 * delay_us);
> > +		fsleep(delay_us);
> >  
> >  		if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, dp_phy,
> >  						     link_status) < 0) {
> > @@ -1417,7 +1417,7 @@ intel_dp_128b132b_lane_eq(struct intel_dp *intel_dp,
> >  	deadline = jiffies + msecs_to_jiffies_timeout(400);
> >  
> >  	for (try = 0; try < max_tries; try++) {
> > -		usleep_range(delay_us, 2 * delay_us);
> > +		fsleep(delay_us);
> >  
> >  		/*
> >  		 * The delay may get updated. The transmitter shall read the
> 
> -- 
> Jani Nikula, Intel
