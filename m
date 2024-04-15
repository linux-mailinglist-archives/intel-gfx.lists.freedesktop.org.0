Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D0EF8A599A
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 20:14:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15648112767;
	Mon, 15 Apr 2024 18:14:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lYN5GimM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EBA410ECED;
 Mon, 15 Apr 2024 18:14:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713204879; x=1744740879;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=XfiNO4a88rhLbwUDr6CxGuTMjRLXnIR6kuouIEmuXMI=;
 b=lYN5GimMep7YCD6or1i4GOKUsRaNzr3YLHKghR7Rol4/U35YQuGmHjZ5
 pjFKOTkcpZP9iSTxZZQBkPbUh0XTIC8mKD0BdUSNZhr1uIFnX1xj29Mx8
 b2m9uBLBvfNVxz2hjJ2pro7QjzwQEohowaqA9l57uKrU7L3DLPbHfSys0
 hGbM/5OuscYzqLmTNszY36lfnaWAUQMQVOrGKvgX3AsmjnN91FF7v53Hq
 NelQRopwgY6uqpPh8VsEiVFkMgBEy39fM93qtCbKnQ7xMyUGW891GzLfI
 fC74w1FPPBZxn2uP3p8O8w2IbAr7Zbx8cSlAqL27ZgiaIZXdkZm5n0WyE Q==;
X-CSE-ConnectionGUID: sjSKvL7CT4iWKTrXq3wByA==
X-CSE-MsgGUID: 6Jd/3mZXQdyUyLm6CDRjcw==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="20002357"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="20002357"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 11:14:38 -0700
X-CSE-ConnectionGUID: VEmaD1r3Q2ONDrKrQly50w==
X-CSE-MsgGUID: Hg6Rp3VYQHe1+1TLr7efbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22075506"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 11:14:38 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 11:14:37 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 11:14:37 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 11:14:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h1Sk2v5cVW6UbC4q3TEhLxAgGXogLkgWb0eNuEqVzrAeSgUoxjT/gY091qD7WQyLLIxRj8JWDFDBemWihGYrS/5ecpeTz2htFzwaOXi5UgQEWXMZl4wycUAVGew9TckB/zjB7kOhQvm4+3s70h7g/dHhL6k7g2C+Mu6is+t0qevyTypMdJXNvS/9NAn1d6vK41tdUp5ypVysFrUj+MscU6SYb9uPPAd8Mbi/Py1uC6NQx3aQvdcXVp3BlpANibwbrPqt4NrjrS+WSTTXI6sBexBA22ZmIg6cOW3xcEZWtbjbCd2FP1dLGr+WJ6BbB/7QXRJo/l2KKKVBscf4M/6KzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kcWSQ0fx2i3g/glvzC2xmaW8Ucqj3QmFxIJqgctwCII=;
 b=nPo6Y7ypVJLA+QTn8wlMkVJIdpwdGlBikAr0n2v85nYq7uupduWaydLuk1Ty1Ppqbe4x5nxfiEffyWhHglMRsnS6jb1O6PmTu4zsiO+CfucUUZv8e/jxmbe47j6WfSoQ293+O0jzTXJ8KeY7YDGMph87ftK7w5Ovmag5ciqlOqNl9ynGoDtQnFUZ0B1s0oKWDzzr5GJ57V3TvTUc+jjcnBwKI71yVSC3XSZml3Wy68+sFQsbDaw6d8l9eJG9BDhWby0ndOu523He4kCqTJkpG3iw0yK9UkSFQXZAR4Kkzf+8cJcbvayP49yTYu2mKW94uxaqfx2+595n3qVXjlytMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB8247.namprd11.prod.outlook.com (2603:10b6:208:449::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.25; Mon, 15 Apr
 2024 18:14:35 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 18:14:35 +0000
Date: Mon, 15 Apr 2024 11:14:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Lucas De Marchi" <lucas.demarchi@intel.com>, Matthew Auld
 <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Subject: Re: [PATCH v3 20/21] drm/i915/display: perform transient flush
Message-ID: <20240415181432.GA2948065@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-21-balasubramani.vivekanandan@intel.com>
 <20240415170732.GJ6571@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240415170732.GJ6571@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: BYAPR11CA0085.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB8247:EE_
X-MS-Office365-Filtering-Correlation-Id: cb434738-a553-492b-3961-08dc5d77e7da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nyeV/4XOHp6zIjht2yeGNj0sacfOhfgHPVHTzdFcV73bunMc0G1Bw23JeVIamxDp8Zp1Y077QkIWOA7hQyI4G7p42GN5iAsVzMyftfImOmGYwzLp9eA7rHCskdhPZIUpHG+A6deMeVP5FhTQ3vJwTMHHFwJvnFCfuKZOILXXgmam5Aqsi7XRXUf9IOpWyL1NjaqoPYViIrYNK3H3aBG/xxg2N2alnG5DqfPtL/0jj0jk/Fyzg/k43YIVOww8Mcuu8a3Y2sjt1XU7+dtxj4KWDJcVCB0dWSL6N28GzLNTNopjBBgpfFwuw5W5murZZrmiooGTjRN9w/BhoKKAxfLPrzd2QqvXhnhpxkQoXS3fT7nfTjAEihIvKCjCxanxRxuDpbc+yAcobvJSZHxEJFZXrikMZKkeVJVM/AK+6uEzO+lZrcSWUNfjXIptQPi6bpdag2+Pimk3dqFmLA1YIbixcpzcmPAvH/lzoB0ywkR2WEAmbi9Q9MvjMo3SxDBZYwghwTESclr1mboyzfofoq7FmKTSmnZChbqdKLjRAu6uUFAPOh404t8uNT2KYd6B6B+XrKtL/JnkqQH8szHdjjaP2RP75NVi8O4KRpIqu6d6/Q3888Z+7JhwGhrZsRELc1xaQBeZfpp4GYJ36lVpkUuIi6xZTwihicYHxQQvLI7PrR0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?gbVhX75z8TFLcv4R44i7DNxf58DcIRZqCkw7JYpIWRJwQFm9CgapyEn9vq?=
 =?iso-8859-1?Q?LNQo6S3jaORgH6DWKzTHAqLFTj0W7jsEzoxAUFBqkM3Pq1t2ZNTHfrDvXt?=
 =?iso-8859-1?Q?UGMaurKM2m1/DNmOE4IfpCpolJGDkZJj3ax64FMQtoe7NmxEZnWycjT6yM?=
 =?iso-8859-1?Q?V2zJhxl50oZY2czu6jO/lwwLk28r72rMAxYfWQ9L8UqXV3orpBkJr8XxvB?=
 =?iso-8859-1?Q?E5wh6CfmoarErFCHDq52vXxWkNXjlXkXc540+aHLh+Ey9mag6WsgBidzXz?=
 =?iso-8859-1?Q?XNRRD6K1yuBXWxpYI0yCaUPofQenTScxKCVXyMO2JErZIseLa1LWCUZhe7?=
 =?iso-8859-1?Q?5ImFY/UmqK8/ta5MIuipCFkUKL/MkVJvww+uT4a0hWwwwAWF92u5WB5KXC?=
 =?iso-8859-1?Q?XdZJjVoDcru0Flcv/ALOxGAttRHShPa4k0ZBAc5s4jRIZMDEIvuiKOviY3?=
 =?iso-8859-1?Q?EnENOESyvbF/hjZ4ZGvnwo75CpT1sR52DLsG7VtEhyD0u0lRfdE0Q62Iww?=
 =?iso-8859-1?Q?0qleWyYiHp5wynEOgPbtdjW1ugxrfAAWjoAK1bu1yL8CY4mHU/xOHe3yla?=
 =?iso-8859-1?Q?rHy4oa+Ph+IAlXsZ2/Lw316cbAN79JM5aWoTH0cf9n9ybjkeYnKRvas48u?=
 =?iso-8859-1?Q?iXNt3Ro+i0OscFKM3XcfLmghLB55Hw72HAz8RGBWqXGgJHpsqxiIW/ybOn?=
 =?iso-8859-1?Q?nXzYtriBGpnAD9P2UlkL7rgxfwaseCbYKRHFsBxkJQuwoLsR5sLhd9sQBZ?=
 =?iso-8859-1?Q?yrLBwnGP+t/hf8PVkRN8JuJVmAEQTwHg9mEAQqhmXPF7/tHkKBRWJ0mBwU?=
 =?iso-8859-1?Q?kN5dz9eYMlm5vrlx6YJoUHJS9Zlz5+lGBJs0wAP6gd/T/yu5cW8Un1bpbj?=
 =?iso-8859-1?Q?H3CyP1Y2rCulgwX/iFNpvUuePN9K9Qj+eEY4/CrVkoSv415sPPZsz1TD+c?=
 =?iso-8859-1?Q?nTUJ9/eer59De4mGVrsg8UI7oUKAbieCtUgP0Gr2umAyrLoy9bVl16dmGA?=
 =?iso-8859-1?Q?pOWtUTluUILH0xwHgA3X3A3a0SR/SEQtigvzIXwKeWSaCfDUhjYuqcY3gG?=
 =?iso-8859-1?Q?5cehH5oTKwebPbaTxZhjINT8VPdiYr1E79LUr00WUVOrjHkxSXygUK/4ba?=
 =?iso-8859-1?Q?0CzFkKwXh8y1NDJIqcEk1Gtn3Kf5AeDSHdvRkXk5i7Mp3LzhlNquNJw1i8?=
 =?iso-8859-1?Q?8Xc9IiD0WKT2D2o1FjLP+9XGv1unHFwlvxOSM4N/Z9F6MiWQrRsyam5YQ4?=
 =?iso-8859-1?Q?t1OyrT8IXmNq81nvI+gg5tQqnf7RZC5A5XwbsdAPGXE4CUuBH6sKkFB5ff?=
 =?iso-8859-1?Q?HT3+a0D58UALfE/zdEmM3bDAKD8Z4ifbld9FDdXAxkuOmh4jwgAGYGEt2o?=
 =?iso-8859-1?Q?1jBykBeYlSLOSpwrIJ/2pOVfO2Z/+82QkfWUBZLNGS2XGw7IfdbSkADk43?=
 =?iso-8859-1?Q?+J2m0SbZF+rxWx7vqH48UItWLXIkDmbGylrAGZXn4IpL26wcFrUWfeyKL4?=
 =?iso-8859-1?Q?cq3tjgtBXlPrE1qGPxb3z9vWpEpZXU6gFWJhfDykD3CcRVkBX6P5BVC7ew?=
 =?iso-8859-1?Q?iLj23i7DxFEJu5/0nGcN/Rgt/czLQmqjjJQkHM7bXia77nhZSR8Cvawosj?=
 =?iso-8859-1?Q?vCcwzHK9XKEfkg+McemEZaSjiMSY0Y1LD2344JxQrGrg+6UUBMeTLNEQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb434738-a553-492b-3961-08dc5d77e7da
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 18:14:35.3481 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FBXz/UEg55M77DI/XERWxQ+Gd5vR7gJhlVIgSI7YxWR8m9T+dVqftj47yskTOYWeVu1gLwLmMjbq9XuLquC0nO5bENmYz/cbxuViRLrjQtk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8247
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

On Mon, Apr 15, 2024 at 10:07:32AM -0700, Matt Roper wrote:
> On Mon, Apr 15, 2024 at 01:44:22PM +0530, Balasubramani Vivekanandan wrote:
> > From: Matthew Auld <matthew.auld@intel.com>
> > 
> > Perform manual transient cache flush prior to flip and at the end of
> > frontbuffer_flush. This is needed to ensure display engine doesn't see
> > garbage if the surface is L3:XD dirty.
> > 
> > Testcase: igt@xe-pat@display-vs-wb-transient
> 
> Has the IGT patch for this been sent yet?  If not, we should probably
> make sure that happens soon, and then use the CI Test-with: thing if
> there winds up being another revision of this series so that this will
> be included in the CI results.

Oh, it looks like this test already landed back in early March; I just
didn't look back far enough in the git history originally.  You can
ignore this comment.


Matt

> 
> Anyway, the changes here look good to me,
> 
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> > Acked-by: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  3 +++
> >  .../gpu/drm/i915/display/intel_frontbuffer.c  |  2 ++
> >  drivers/gpu/drm/i915/display/intel_tdf.h      | 25 +++++++++++++++++++
> >  drivers/gpu/drm/xe/Makefile                   |  3 ++-
> >  drivers/gpu/drm/xe/display/xe_tdf.c           | 13 ++++++++++
> >  5 files changed, 45 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/gpu/drm/i915/display/intel_tdf.h
> >  create mode 100644 drivers/gpu/drm/xe/display/xe_tdf.c
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 67697d9a559c..4fc46edcb4ad 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -110,6 +110,7 @@
> >  #include "intel_sdvo.h"
> >  #include "intel_snps_phy.h"
> >  #include "intel_tc.h"
> > +#include "intel_tdf.h"
> >  #include "intel_tv.h"
> >  #include "intel_vblank.h"
> >  #include "intel_vdsc.h"
> > @@ -7242,6 +7243,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> >  
> >  	intel_atomic_commit_fence_wait(state);
> >  
> > +	intel_td_flush(dev_priv);
> > +
> >  	drm_atomic_helper_wait_for_dependencies(&state->base);
> >  	drm_dp_mst_atomic_wait_for_dependencies(&state->base);
> >  	intel_atomic_global_state_wait_for_dependencies(state);
> > diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> > index 2ea37c0414a9..4923c340a0b6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> > +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> > @@ -65,6 +65,7 @@
> >  #include "intel_fbc.h"
> >  #include "intel_frontbuffer.h"
> >  #include "intel_psr.h"
> > +#include "intel_tdf.h"
> >  
> >  /**
> >   * frontbuffer_flush - flush frontbuffer
> > @@ -93,6 +94,7 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
> >  	trace_intel_frontbuffer_flush(i915, frontbuffer_bits, origin);
> >  
> >  	might_sleep();
> > +	intel_td_flush(i915);
> >  	intel_drrs_flush(i915, frontbuffer_bits);
> >  	intel_psr_flush(i915, frontbuffer_bits, origin);
> >  	intel_fbc_flush(i915, frontbuffer_bits, origin);
> > diff --git a/drivers/gpu/drm/i915/display/intel_tdf.h b/drivers/gpu/drm/i915/display/intel_tdf.h
> > new file mode 100644
> > index 000000000000..353cde21f6c2
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/display/intel_tdf.h
> > @@ -0,0 +1,25 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2024 Intel Corporation
> > + */
> > +
> > +#ifndef __INTEL_TDF_H__
> > +#define __INTEL_TDF_H__
> > +
> > +/*
> > + * TDF (Transient-Data-Flush) is needed for Xe2+ where special L3:XD caching can
> > + * be enabled through various PAT index modes. Idea is to use this caching mode
> > + * when for example rendering onto the display surface, with the promise that
> > + * KMD will ensure transient cache entries are always flushed by the time we do
> > + * the display flip, since display engine is never coherent with CPU/GPU caches.
> > + */
> > +
> > +struct drm_i915_private;
> > +
> > +#ifdef I915
> > +static inline void intel_td_flush(struct drm_i915_private *i915) {}
> > +#else
> > +void intel_td_flush(struct drm_i915_private *i915);
> > +#endif
> > +
> > +#endif
> > diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> > index 6015c9e41f24..97a8674cdd76 100644
> > --- a/drivers/gpu/drm/xe/Makefile
> > +++ b/drivers/gpu/drm/xe/Makefile
> > @@ -198,7 +198,8 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
> >  	display/xe_dsb_buffer.o \
> >  	display/xe_fb_pin.o \
> >  	display/xe_hdcp_gsc.o \
> > -	display/xe_plane_initial.o
> > +	display/xe_plane_initial.o \
> > +	display/xe_tdf.o
> >  
> >  # SOC code shared with i915
> >  xe-$(CONFIG_DRM_XE_DISPLAY) += \
> > diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
> > new file mode 100644
> > index 000000000000..2c0d4e144e09
> > --- /dev/null
> > +++ b/drivers/gpu/drm/xe/display/xe_tdf.c
> > @@ -0,0 +1,13 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2024 Intel Corporation
> > + */
> > +
> > +#include "xe_device.h"
> > +#include "intel_display_types.h"
> > +#include "intel_tdf.h"
> > +
> > +void intel_td_flush(struct drm_i915_private *i915)
> > +{
> > +	xe_device_td_flush(i915);
> > +}
> > -- 
> > 2.25.1
> > 
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
