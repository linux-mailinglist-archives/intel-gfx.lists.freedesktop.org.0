Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 442699CD733
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 07:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB19310E3A1;
	Fri, 15 Nov 2024 06:39:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AAPzzND8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E94B10E3A1;
 Fri, 15 Nov 2024 06:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731652749; x=1763188749;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=pk/ruW6FUjwmjLCuHc0HeunmZG4Uqotguf7YKUwtnpk=;
 b=AAPzzND8Yr+wgYw4R9dFvGj36i1jPYbgzJaak11mDa/GrF7+eAgMH0eA
 v3V3+1UD+6MpGEce/5yb2+pf9nR+plhxYKDt49noZtjV7MR6P76VlJTAH
 8tqFy3htaiAfBCT0YBD1LnqKrpdoDXZxKdP8D3Rbd40euzz9sKqYOmkRe
 47HYVphRTwTMqIxA+KioyYFEF90KWOkzbdzEq3zHJp67v5wYTS8J7HQ/R
 hZuGtQackUTrExO8+XzAVZ8yJNnRIp5eKMkrcVeasyKj45vSZbNYJY08D
 w/WmXf2BfvxbjWoricExAeA45908sswe6alBuos65SLKPBdZ4Sjs6Q2Yh A==;
X-CSE-ConnectionGUID: QbCd5OewTsOjXhavOpI8ow==
X-CSE-MsgGUID: hsOIbmI5QoWtU2hfw7v3Og==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31389245"
X-IronPort-AV: E=Sophos;i="6.12,156,1728975600"; d="scan'208";a="31389245"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 14:15:24 -0800
X-CSE-ConnectionGUID: c0mB0gDRSCKuWRZOs/bthg==
X-CSE-MsgGUID: xg9NhctfSjuJWi45v/PBPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="87929186"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 14:15:23 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 14:15:22 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 14:15:22 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 14:15:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fgjIzxCcUMZJYLkx+9ojeX84Cp7xvCL1P34vmGs8klVRHn+JzhuRlc8PTAfR9G0o4/rSuraRlDK9lVldm23P4oIqOVU0723oG9WnW4PvHsnPWvlvxBTkrgRZ3EiRb+3wTUvGbw5ds/na4i+ehKLIdXxvTYXW3rtGMtNm6ixeMs91IFEru7J6OMIVFSfFwRTKwLFmxqBslo84WR1A/y5NUnwCa1iaxk4srj3Q2sNovJD3YfyDgWRr5ny53sRkoYtGeEttL3/edbP40CkcDfEGHzF/J0ZkIxOWg7p1yCV4sVT1aFV2Gz+t++oqugMXslX2zTNgFCBsom/5moeCi0HLCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXNExWjDyMLRnXfKB3VZiFhEd/wuYniqtMyfa1apYyg=;
 b=AbI3znLygzdd0imDlwyKY4noRGO3dQoSf4K8g60vVMbQDXN/Q38Rq+n+4Jh1If+lDMXpc4hrLC/NAA8iyG2X4I05bNVAZVrlqz+3fYeaBdEzAJHVfAwb2Lu0PPBaVzc395x1kX8/Po2qXxu4rVuZm8NDzAsFpN8zCGq5zspimlx4pD9rdFvdI08gkzaD4lHw9w6Fardtwh3IbrFTBhDQOLr+8dorAnhP3QllM40UWqCFsle74zHbOpp+FAl6p6gBuTNdPXJDunhKLV7Z19V+8wCoHJAzcK+01K5CKMiv5+/cJg0+xtgiDxrbGo6yV8QuvortilAA19DTyiXB931cPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY5PR11MB6391.namprd11.prod.outlook.com (2603:10b6:930:38::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.29; Thu, 14 Nov
 2024 22:15:18 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 22:15:17 +0000
Date: Thu, 14 Nov 2024 17:15:12 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 11/31] drm/{i915, xe}: Consolidate display resume functions
Message-ID: <ZzZ2cJIdLmp9bGSH@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-12-rodrigo.vivi@intel.com>
 <BL1PR11MB544519DEE1B3EEB7E5A5158FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <BL1PR11MB544519DEE1B3EEB7E5A5158FE57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
X-ClientProxiedBy: MW4PR04CA0157.namprd04.prod.outlook.com
 (2603:10b6:303:85::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY5PR11MB6391:EE_
X-MS-Office365-Filtering-Correlation-Id: c515d76f-985c-4bb6-4778-08dd04f9d1c7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?VNtNlROAavl+0v6s/FzLl5JtENmJbYfzwV099xNWr3fP6k0GurP6Re4xmTaA?=
 =?us-ascii?Q?3/QGXnkj0r/HQDufJjDi4bUIp7xAfIXfrX22p4oTu+zE8xvJkDQqXY/olxUG?=
 =?us-ascii?Q?FVdgO4xz0vSkDg61unsLnbFXtsYcBcrCxSZQU/ay9jNz4w5IA2mePV8mzgPJ?=
 =?us-ascii?Q?wQ5A2KTNU75BkC7VYtx1utWX+2crfraS4iT9NfIl20VDFqlUvQPhsQR75tyC?=
 =?us-ascii?Q?fTSNE4sWdGR1EdE9LtcLF5fcUNpBsn6gWHm+zOrg8rz4J6EFdjUpUlRn1aHp?=
 =?us-ascii?Q?Mc81UKJ8TzTV0FPYbezE05TE0fBYeQU5PeU1aHuxfivShx6Jyr0HociqcB/x?=
 =?us-ascii?Q?9jLPKWcAQ8QFbEQ6G0gU1frFT2IBMXgIcJXFvp2tVof8kvSZ7+5R6Da04coB?=
 =?us-ascii?Q?ckyCtNgn2IvHBvKdTeq6wogk1D2NKIZNyXwcRE7sDEblIdTqdhvLgaef/rMZ?=
 =?us-ascii?Q?2TczrkLvCWII3p38mwtgoFvKX//79QmHExg1/IBYpHA/Ljb+DK5u4Nw5VEqq?=
 =?us-ascii?Q?HKoGtMG9BYBscKyWxweOaBkVEsdtiM6bIZEtqW3EV6t/27cjYD0HcklCHPmW?=
 =?us-ascii?Q?+xCAv4huaiBY4mx0N+RaRKGnfKRKyHCJ30EG8aB9J3hc8m3gZo+oBPWkCj2Y?=
 =?us-ascii?Q?Pwvxt1Ox4D6TFl8eyDjUSby7yrHLpPUe9JFK/lC2PCuV60xp7+lhQVAenX9m?=
 =?us-ascii?Q?xlMT1W648OGSXUOtHdaZ2oyifZr5juuMpyoLvW7I39CokUUlIU7ddzr+AIAD?=
 =?us-ascii?Q?TCzwBkl1Z7pB9FOG+HiC/diJtgNaVmotjAPpVhEsfRbk/nYN/kYAOv+Gnbpq?=
 =?us-ascii?Q?Z7m2k3lDOi/RyJY+U5cmh87P7mbQBNNq9aD80x1J5L/RQ6qfmfyz1bkYdBew?=
 =?us-ascii?Q?Np9IvOWA623EQJ/P/Maud/mL7VAsl7gcmW85NwfGAka+Gb4wfhw+KYA7Hga9?=
 =?us-ascii?Q?NKNxGsQKd30/edWUbzzTYMp9CuRJ6oDoDsOxdZZiBm3vCR2wXWCqFGSTOsYn?=
 =?us-ascii?Q?h423jZ/S3ipoUReMFCQAoc7vjShF/WAQNQ1Yu7M8y86XPXRlx3M4L9R674Zh?=
 =?us-ascii?Q?52IkvyD3E3mnBYxS32a0qVSRAkk3KvRwi11aQ4yEUgvK4uuNLfD6glhuuUkE?=
 =?us-ascii?Q?egNzF9WDgugohGAUfRP2LVGKL8WNTPmXEMYdJOiiW7bk1/bfaX39ocxwzLrR?=
 =?us-ascii?Q?dhA/Jl1QHUKCORvewv89wR3OFn0l/TgKsWAWTgfPSqcIEePoyPCOQGDtgs8v?=
 =?us-ascii?Q?Zu+z1SmtUHxRpuz9ZfSKuCltYlHXalRpabDheHdUObKgXbhZeO7o5c2UjdSS?=
 =?us-ascii?Q?HU/SPD/ddDsnEeJ6aRLNWRc7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jyqsxl4+lSfhXfMWsV+4tZ9oe7Ac0LcI7lSNUw7L6C1dJZNKtKJTl7S78F+r?=
 =?us-ascii?Q?M6Qs5naloGPP6kF8DnM4ifiEeCUExc1W8CeBhrTDn6dqCZPXyZrCLu0PxX9U?=
 =?us-ascii?Q?lu80rF53x7QHAj4LBKbPBa6F/XKVjsTuDYY6ZkIAYyg84twD+KM+WWyYq2pV?=
 =?us-ascii?Q?XvnULum1pX3FxISzC57w1YBk9I7lwS5AraP+UEYbqvKbgDn5jVMUavOA3vQ1?=
 =?us-ascii?Q?90rWl7uRlqq+sfxKh6n8XjQfhzleGS2cn+qnpxL+YVrnvREb8RdW442avYCJ?=
 =?us-ascii?Q?z1BkMXi34KbFMv1I1YUsGBTNJMHOWspLROBz6JFbpf8e7MSUI5PpOvtVCr35?=
 =?us-ascii?Q?q5ec9LDe8SOJFBSLT81kscDcjqglM1h5JcqmPDk6FVjey9ijqy22yrbWbOoj?=
 =?us-ascii?Q?5s7H0l4rlRj6YK3FMwpSz9MZ5cahtgFDHJQvd8ZnPjF/LO1PSaMZNJri9FNG?=
 =?us-ascii?Q?dV6QpcfAR2vp6AYWStEYMTpECG+TblbhuuPCvf5cYlF94Hh25gMHHCiupSpf?=
 =?us-ascii?Q?EXsIoD4zlI6intLmY/ELveUqj1FRmSiC7xqzz3YON3CRI1CGUX8p9FdnikDC?=
 =?us-ascii?Q?rWto97gmc9o455kfjpzaQd3qgLEyZdCx0IZHTQUtjE/o08pC3Dc1OmitkNln?=
 =?us-ascii?Q?5cpRHrn+xynRqIwFg9IzAwj82U7+lIZXFAJJTYkN5fOUFLi/RM59YESbU+14?=
 =?us-ascii?Q?P2Xgf8NlenyznQesyUScNuAUph56BUxWJT2fyGQ+a5IM1PRb/bf6eRCHgTV2?=
 =?us-ascii?Q?nO2jFyb2gjkEk5OyHZj6yda09g9lKx1XXe8xcsHc0DQ3YHxnkQl1AQ3opBSn?=
 =?us-ascii?Q?2UBz/OGVLYZZUfYdlbybAZ7cbWo680kUYIf4p6ka8IncwVO6HQegpc1YIbAm?=
 =?us-ascii?Q?mtTnsrCXmqIj4vAieXh4bKuen6Gy6SylMPw3HRHBuiSFDhXFweghjCUjaIa0?=
 =?us-ascii?Q?GUXewfeXhlObfM0hUdVTKQiDhbKNHMBByH4OwtpMYkMeJOCxQ0ySaGckIEWZ?=
 =?us-ascii?Q?B8Snvc3QAQ7CHQEiQQh85T+ryHGwxNXQ+41Iw6QRAVYLoIZLSE5qsy0Oymz4?=
 =?us-ascii?Q?cCZ3iExHFpf51P/5QDIq+whZbcFXwxIHZq1JMx4yNCPkylVsR+cfclfVLjcq?=
 =?us-ascii?Q?6XQzHpnfYNQwDsYEfdEpWxzD/wu94RRTQIoyhJSpaP01HkeqYg+o2dSpPahh?=
 =?us-ascii?Q?g7huZwUNrojMj3cK0n3jwkyMVjakTxc1SssSl1zG2IdgVj1CUzHHPviMlFza?=
 =?us-ascii?Q?ZiZRG+iDQbfZEJ3RQFKVD9yBIu3pKGWjwu/Gi2FU1X4o67yEi+B4+bhRUPNV?=
 =?us-ascii?Q?O0y4jQ3nv/XRJDOyXbnhSjxrgiB1g8asg0y/J09OwxdVoN/THpnLsnuPOu1m?=
 =?us-ascii?Q?9eKJYuAaewu38CUzFdFMjt2rcjfbAgVf5shrLVa496YsK12e7NMT0+z39EtH?=
 =?us-ascii?Q?YJupnhCQ64i2kgdyUBBs9BvE65fjASwnIFj5HFbyj4HgU/OMGAonwKHNPvXa?=
 =?us-ascii?Q?PuFvaQhnR8Mp+ZVjzxTqdcNa7Wvvm5ijkZBIvDbznvLPNInVuVgkZmTmt//U?=
 =?us-ascii?Q?d88Ww6DhmuUyaUNvDc8vfF5dok1I6v+a0JUPXubT6szeHzrrlEU01oU8m1uY?=
 =?us-ascii?Q?og=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c515d76f-985c-4bb6-4778-08dd04f9d1c7
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 22:15:17.9041 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NnFzmXCa4obXYlMSfMbqY5I6xRWe/wZPY04LZZj6So1kk8B2z439jOm/t5GWdxqEQTfGRYbpESZL6YCTNEzzeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6391
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

On Mon, Oct 07, 2024 at 05:02:04PM -0400, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Rodrigo Vivi
> Sent: Tuesday, September 24, 2024 1:36 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Deak, Imre <imre.deak@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>
> Subject: [PATCH 11/31] drm/{i915,xe}: Consolidate display resume functions
> > 
> > Same sequences are currently executed by i915 and xe during
> > system resume. Consolidate them in the intel_display_driver
> > side.
> > 
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_driver.c    | 16 ++++++++++++++++
> >  drivers/gpu/drm/i915/i915_driver.c             | 17 -----------------
> >  drivers/gpu/drm/xe/display/xe_display.c        | 18 +-----------------
> >  3 files changed, 17 insertions(+), 34 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > index 42624bf80f91..86d6ebf0c82f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
> > @@ -752,6 +752,10 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
> >  	if (!HAS_DISPLAY(i915))
> >  		return;
> >  
> > +	intel_display_driver_resume_access(i915);
> > +
> > +	intel_hpd_init(i915);
> > +
> >  	/* MST sideband requires HPD interrupts enabled */
> >  	intel_dp_mst_resume(i915);
> >  
> > @@ -781,6 +785,18 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
> >  			"Restoring old state failed with %i\n", ret);
> >  	if (state)
> >  		drm_atomic_state_put(state);
> > +
> > +	intel_display_driver_enable_user_access(i915);
> > +
> > +	drm_kms_helper_poll_enable(&i915->drm);
> > +
> > +	intel_hpd_poll_disable(i915);
> > +
> > +	intel_opregion_resume(&i915->display);
> > +
> > +	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_RUNNING, false);
> > +
> > +	intel_power_domains_enable(i915);
> 
> Hmm... It looks like everything here is being gated by HAS_DISPLAY, when
> it wasn't before in i915_drm_resume or xe_display_pm_resume.  Is this
> correct behavior?

This is a very good question. I really dislike the sprinkled if HAS_DISPLAY s,
and I hope this is okay...

> 
> I'll trust your judgement on this.
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> -Jonathan Cavitt
> 
> >  }
> >  
> >  void intel_display_driver_shutdown(struct drm_i915_private *i915)
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index ac8bf00458b5..ce2dd03136d3 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -1165,25 +1165,8 @@ static int i915_drm_resume(struct drm_device *dev)
> >  
> >  	intel_clock_gating_init(dev_priv);
> >  
> > -	if (HAS_DISPLAY(dev_priv))
> > -		intel_display_driver_resume_access(dev_priv);
> > -
> > -	intel_hpd_init(dev_priv);
> > -
> >  	intel_display_driver_resume(dev_priv);
> >  
> > -	if (HAS_DISPLAY(dev_priv)) {
> > -		intel_display_driver_enable_user_access(dev_priv);
> > -		drm_kms_helper_poll_enable(dev);
> > -	}
> > -	intel_hpd_poll_disable(dev_priv);
> > -
> > -	intel_opregion_resume(display);
> > -
> > -	intel_fbdev_set_suspend(dev, FBINFO_STATE_RUNNING, false);
> > -
> > -	intel_power_domains_enable(dev_priv);
> > -
> >  	intel_gvt_resume(dev_priv);
> >  
> >  	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
> > diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> > index a4705a452adb..98ff603a1f84 100644
> > --- a/drivers/gpu/drm/xe/display/xe_display.c
> > +++ b/drivers/gpu/drm/xe/display/xe_display.c
> > @@ -447,23 +447,7 @@ void xe_display_pm_resume(struct xe_device *xe)
> >  
> >  	intel_display_driver_init_hw(xe);
> >  
> > -	if (has_display(xe))
> > -		intel_display_driver_resume_access(xe);
> > -
> > -	intel_hpd_init(xe);
> > -
> > -	if (has_display(xe)) {
> > -		intel_display_driver_resume(xe);
> > -		drm_kms_helper_poll_enable(&xe->drm);
> > -		intel_display_driver_enable_user_access(xe);
> > -		intel_hpd_poll_disable(xe);
> > -	}
> > -
> > -	intel_opregion_resume(display);
> > -
> > -	intel_fbdev_set_suspend(&xe->drm, FBINFO_STATE_RUNNING, false);
> > -
> > -	intel_power_domains_enable(xe);
> > +	intel_display_driver_resume(xe);
> >  }
> >  
> >  void xe_display_pm_runtime_resume(struct xe_device *xe)
> > -- 
> > 2.46.0
> > 
> > 
