Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD978B9B28
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:56:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8243E10F4CE;
	Thu,  2 May 2024 12:56:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z9VQTQMh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD7AF10F4CE
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714654591; x=1746190591;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ic6AMeTTL/prBhF6pTQMfAB88VrKvAhPWBv5efdVJQw=;
 b=Z9VQTQMhll0HyXwr0Dr3BDd3nKHPtvZV0BxdRBpKM2ICz89Yv/elvAaf
 VxfQetgIpeZCbm6Ton9XEQxz9tnyaMmcOxtp3ABpd8DO0fHtHuUQabirL
 p8c5HIiW123+AynrMIQXxTttM59hi3ns6qAgqdj2j5V9+8JD0xumsaj+N
 3dYDobLXw6Zdpcrwsgase1qiGGH1v7EbPsQ34N4wcs1HiQJNKWclYYvMm
 lHBNkXXiFaYwXaT6IEOP+qUyrthq7+QoGwcCbmlUxf3DmjWbCRt2sovLy
 fQzOfjVMgY1X29WxUkIQn68ZcymBMz0WPVRDkl0afCm9MBEesLQHHaidO w==;
X-CSE-ConnectionGUID: p7eMVRHbSeeWC3PUH7+HpQ==
X-CSE-MsgGUID: M2FLJQFYSqSB09xxe95/7g==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="27901688"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27901688"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:56:31 -0700
X-CSE-ConnectionGUID: 9ZboDQmyQ+6X75ocTleXPw==
X-CSE-MsgGUID: /Cjlnk3QSP+DhiPBh8+M8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27506437"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 05:56:30 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:56:30 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:56:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 05:56:30 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 05:56:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OFZq5Aat3DA5NKdiCK1TEVPr78mdl+FfmomGZXkmZX8rNjJunM+QRR06GF0/hYIGSDJn/KstLXyYJXNLHJ3S06WwJQIzOFOuNrwXiFE4mjkhd5pa1FAc/ccJmg0aeTchwltVpgqSnhBJ26d25yhQqEjUMzEy2yMChyCsBi7pDtceDGA7U4l99e8FlaB/gAS9gpJRMtCaKgZrnS80IJNKkypG+9tHevwMfalPHrzbTO9y/ptaMp/bKSHmWrTwkMM7fyv3xNEUQowGYSXhHMuTFcauCM6xLIJXUXDXNv8GxV/SYuF+lJ5D5zg0kl/1iOirk+MMS/iiGshcsM5EE2WUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I4ItmgjUFEOvaZN50DzS/lDkKw9IQcw7jYSl2DfDCng=;
 b=VaDy9V0bednZ8c6fV2oSDyU6Gh8Jg5sERXbxQA8nJGNasYWS2Z2jsr9q/q+/w9bOENn5u+D12bMb2+xERNILb9jHVYx0fcjc9wuGukfVCkzI+2cV/5R7YyhCOx/o8MdU19XDl4k438k42TyO06NFJkTZdeR8ZVDGZKRQ6vesYQ/Ssa63gfTvd0kllOI6rvZAOAnWe+s7GmultGCeW+6u0S9tcb4yPSwWO6XOYLoSVOC0BZeCt2LaoO81CGVfpgs9eW07Uyl7E52ZCoVzt69pkXAo7nAaCBxNgFDJuZvNKQaB8vh3slUfnLttowItknnz2ltZdbOt0a8CoYLZif0Nww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Thu, 2 May
 2024 12:56:27 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 12:56:27 +0000
Date: Thu, 2 May 2024 08:56:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 05/19] drm/i915: pass dev_priv explicitly to
 EDP_PSR_AUX_CTL
Message-ID: <ZjONdzJ2cu601TFI@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <66ec1f81be49c87cd9613ba052ce6fd50362d0e0.1714471597.git.jani.nikula@intel.com>
 <ZjGmcO2B--qp60n9@intel.com> <87edakpnpa.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87edakpnpa.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0280.namprd03.prod.outlook.com
 (2603:10b6:a03:39e::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB8287:EE_
X-MS-Office365-Filtering-Correlation-Id: 67a1e185-3466-4860-91a8-08dc6aa7476b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?pr4554/o2qQ0X2lwOjij6Aqcmwdsnen/xPZUCojUmkYLfsjcvUBh+j7aay0S?=
 =?us-ascii?Q?xtfN3Km7T2dtm0/KnEPV+jGHudjzRGIlicBS+j/50AzmBLIwRgX0MTjQfLIm?=
 =?us-ascii?Q?/1dF8zodChvBIfg0xlKGOdKDvvCmaWjgMeTh9h7YtH+cp2zED/Qf3qDyabQV?=
 =?us-ascii?Q?7l7y1UZR6X3zCsm2MhiWYrL0ia+f05wEBfKJXooIaV6U0pp4n1h9ZKTDRWJf?=
 =?us-ascii?Q?TGDLBg+zYWWrkCTXDJ+LF6n3soomx4vQ1g2aXrFh+99Ri8/GGTMvl9ZM27X4?=
 =?us-ascii?Q?AQi2WIX2+FWjJXQcl57mEhrFNw6eUwJ3P+Lg+glHTgEXrvo2HLs41KKF8V5m?=
 =?us-ascii?Q?LK0Su+4luS1mZf/aL0eviw0mmIk1//H5+/Bc956fzC1ObFlts0HxtP4IQ9AX?=
 =?us-ascii?Q?vZvUHNbuB6tiVuDxa7Pu2+rV9PNdyI2SVpcZJR8eyxUGFLIpIDqOwArEcQGP?=
 =?us-ascii?Q?UoQYiVzDTODazoaxsfxM+/1n0bA1oeaFolfrp47hDTKreqaSAU1hkJg+XYW0?=
 =?us-ascii?Q?zxw0RSwJ0b2itG/6OXZvig+qUXyPvQEeOrqXj+pwMGgn7jDPG1PBmmPk0Wh0?=
 =?us-ascii?Q?IU9+Q/xMxwQv2hzLfUL1pDa7phUrObVWhorWwjHYfsgCPFl73/CGfg+FY6xi?=
 =?us-ascii?Q?Zszr7hxtwY9EDB6jIILmpAXojwDMJY2bNMHGj+YwRhcZwb2sf8SWxZacSkj+?=
 =?us-ascii?Q?YiKTJLtTaSjrbpBUUgfUNGHjMKzjKacRERQLGH9sfZkixS8PQNbxf/DSrn90?=
 =?us-ascii?Q?CEJqKYwWcWi8hSybO7BJn5A5u5VEa7W6JJGbfS1rz+HgJR5LOd150g1Ah8S+?=
 =?us-ascii?Q?LGXTkXjVxo/IIVg7/ZFr59mp1hVWFytdLwD297ThQxZUgiad3j6frOjS6swD?=
 =?us-ascii?Q?Ke2sYn9lYpaRqKNiCX9VOqmBcHClnFoDxsumDFsHBwrl/n6Q9oLS+mJuVEaH?=
 =?us-ascii?Q?xXNkUPykA7g6y/ft0XuqweWopiQkFVwQyBUgeIUA28dTfg6zEld69a3DxW8Z?=
 =?us-ascii?Q?48NQVwDpKMtKVG805b5ptrxI7MZSFXPZbV8OyphVWYvD9CFwIkPATKmIeaHt?=
 =?us-ascii?Q?MnpzERoOd0racmmmyMnaCLQMCy/cXEhZeFCUl25us3DMJYe6vUlcdnw+Uxxy?=
 =?us-ascii?Q?MOCt129KJNuJdRCSaa2P21iL40ptT3Ghq/ib1fwj1gEx0qSb9mTfxv9EuVT+?=
 =?us-ascii?Q?RKKiY+O1Fjo2z2RCuvam7qDNNXLWiYRqb8RMeymxIxkiqPd1cOuKlWd+tyaR?=
 =?us-ascii?Q?8kB2mgci0kn7RrxcqmwEaOhgTm2zD8au6iBNJ6g6Lg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6OvMgW5FHkPbyB/L/vbNbbz/NSIjwrOwNfLoUT/r3ZB9CgiOyY+J16PhnY41?=
 =?us-ascii?Q?BBpgvXyZ8kZzlFHqR5WxciV1qgK9cH0lYB8TNp1oYocL+AKtpuGPyRCOzhVo?=
 =?us-ascii?Q?H0mZKPxtQGgMM/9x0Xx6iOcDOZ7rZK9K+zwyTRn5/RbN5N2XMn+xsPnuN9bv?=
 =?us-ascii?Q?kSEw6M9vjGGTiJnsuh9fSUCGJqNhb35dLW2j1fLwU1MsFP5iTwaIkoFTdbtB?=
 =?us-ascii?Q?plxsMEqpvm6bSdx8dVOty2EOoVUR2vPyDTEyG3DtFj6p32+fx13pK4ShmPSy?=
 =?us-ascii?Q?MeowBCV2OqvxXmgIprFvBTeqfrrvc3Ynn2wI1jxQhsn+C2Vd2Sd6/Buxd0ni?=
 =?us-ascii?Q?HlhB/OTzCNvEBm+Q2OiBUciCiT7NTWraiFCwPyVvjHa4rar9HTyL4sIx9Msc?=
 =?us-ascii?Q?KdAEzFJUigFEN1n6wINRTbQOUymWVMN3T9HR9wb30YCC7SlpGeN3oPRKYDc6?=
 =?us-ascii?Q?pThaGQrU9E5uOECbUauyT3Y4yfB8j8KT+7lPgmj/KJd7rzC4WzJkPKECQ86l?=
 =?us-ascii?Q?x/Me5jlAT3ceP8oYLbWxvgrwDnX8dOGXFhRocyKMYlJYRqw2X7gKNLp2du2n?=
 =?us-ascii?Q?YBvUTDubuXje0JCW7Dmf34jfno/Miu2JBfuUzmmd6yoeF+Hqzf8/mMuvVRmZ?=
 =?us-ascii?Q?oPtaY7EJ26ca36mH3OSnj4hq/47UtFmwLXjur6NAwmA7vgpuSuJ+WNFwKQ9T?=
 =?us-ascii?Q?bc3RyHdme3s8z2/CEw06Ct0aeyaMzkp3qmYMOaFsOsew2uSJzqO2ECqeRhOd?=
 =?us-ascii?Q?4bfTz3/fImA/f7RLPEsU5F6hfM1cnQ26PLtgIyo9UGSBR0IUS6J2EJWOh+wU?=
 =?us-ascii?Q?7BUY/wr4a4IP2xGnWn1v13mlcYS+PvGfAKeDI+2yltUO6T6BGvyIiT20Torx?=
 =?us-ascii?Q?36M+ie8JkfPfdeb1jScJMrliFrRO5e8r8olfOq8aexc5ifdPyx/8XK9Zfh9o?=
 =?us-ascii?Q?rTUZEC1nvtPn2RQ8rwR91CK/dkBewaVEIXBjTAL/ypdl0SzZ4mIifx2BRDLm?=
 =?us-ascii?Q?br2cd99a+yTs9+ej/v8mZOzVDwhvUYZfMcnz74T/8ZQEeb9F72+9VTtgUhNY?=
 =?us-ascii?Q?x08g+Q9L17Mp51vN7ARxD70OaKGoq1/4Fc08Xc9a3wQxxH+cstxRGspkFAGB?=
 =?us-ascii?Q?UvNJtKemNdtexUf+qhTMuYE92npxS3tBVwq2KDufTbS1yakG8tPwSkenDpz8?=
 =?us-ascii?Q?nekaO0vbFZxmRmU8e4drkq6o1y8SGJgEIorqMW0/hMHHINvj5XyclQK2Q/Se?=
 =?us-ascii?Q?OvXeBzvZZN554Rn7cESCSLfGFTuZxccIWsku0sbEIt7FaxwEk1PWU8Btd2dG?=
 =?us-ascii?Q?9Te3ldTqyVP9g9p5HWwqzMH6G1uKDecdbzr+zepTTG247lF58AmqNrWmGTI1?=
 =?us-ascii?Q?gTxfwcPb7LqDXgqHKvConhPHNd7GfT7dG7xZR0PUCwqs2SRS+AgLphtPIYRI?=
 =?us-ascii?Q?6H9DHCPG0OvogEeswWpIqxtLLgo3Ew/yOG/UJRNRIMYNIuAmaOCRlbj7Ga2N?=
 =?us-ascii?Q?OgA0/1A1WEAbmpi9AY+8BhrriXfzqUqw3+QynxOEKO4hA2cX57boNJaJLBnG?=
 =?us-ascii?Q?4dwbzHb341pdNouXZIXBxXS58KreRX00nKTZ0KKa?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67a1e185-3466-4860-91a8-08dc6aa7476b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2024 12:56:27.3039 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QWSMr20M83pG+Y/7A++Bt28ggVnsqlZreQv+vGQbyH6fkzZluaFSPMjTyqYp++pEmg53aqefaZ7/g99CpZFBEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8287
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

On Thu, May 02, 2024 at 12:28:33PM +0300, Jani Nikula wrote:
> On Tue, 30 Apr 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Tue, Apr 30, 2024 at 01:09:59PM +0300, Jani Nikula wrote:
> >> Avoid the implicit dev_priv local variable use, and pass dev_priv
> >> explicitly to the EDP_PSR_AUX_CTL register macro.
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >
> > Two things crossing my mind at this point:
> >
> > 1. perhaps we should have grouped by impacted file and all these psr cases
> >    together?
> > 2. then perhaps while doing the whole file we could already do a
> >    s/dev_priv/i915 on those impacted functions..
> >
> > but well, it crossed my mind, but I'm actually happy with this easy
> > review and perhaps a last full sed s/dev_priv/i915.
> 
> I'm actually not going for s/dev_priv/i915/ at all! The next step is
> going to be passing struct intel_display * to the register macros. It'll
> just work, because all they use is
> 
> #define DISPLAY_INFO(i915)		(__to_intel_display(i915)->info.__device_info)
> 
> which handles either.
> 
> And going for struct intel_display * is just slightly more involved than
> the pure rename.

ack. it makes total sense and much better indeed.

> 
> > Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> 
> Thanks for the reviews!
> 
> BR,
> Jani.
> 
> >
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
> >>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
> >>  2 files changed, 2 insertions(+), 2 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> >> index 0b1f7e62470e..daeb1b65a2e5 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> >> @@ -323,7 +323,7 @@ static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
> >>  				  enum transcoder cpu_transcoder)
> >>  {
> >>  	if (DISPLAY_VER(dev_priv) >= 8)
> >> -		return EDP_PSR_AUX_CTL(cpu_transcoder);
> >> +		return EDP_PSR_AUX_CTL(dev_priv, cpu_transcoder);
> >>  	else
> >>  		return HSW_SRD_AUX_CTL;
> >>  }
> >> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> >> index 5fd4f875ade0..a4f785bcf605 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> >> @@ -86,7 +86,7 @@
> >>  #define HSW_SRD_AUX_CTL				_MMIO(0x64810)
> >>  #define _SRD_AUX_CTL_A				0x60810
> >>  #define _SRD_AUX_CTL_EDP			0x6f810
> >> -#define EDP_PSR_AUX_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
> >> +#define EDP_PSR_AUX_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
> >>  #define   EDP_PSR_AUX_CTL_TIME_OUT_MASK		DP_AUX_CH_CTL_TIME_OUT_MASK
> >>  #define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK	DP_AUX_CH_CTL_MESSAGE_SIZE_MASK
> >>  #define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK	DP_AUX_CH_CTL_PRECHARGE_2US_MASK
> >> -- 
> >> 2.39.2
> >> 
> 
> -- 
> Jani Nikula, Intel
