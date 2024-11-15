Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86A719CF56C
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 21:02:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C318110E02D;
	Fri, 15 Nov 2024 20:02:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lzB1Z1as";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F9210E02D;
 Fri, 15 Nov 2024 20:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731700964; x=1763236964;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=m/igtWIr+0R39YqWur4707UCvetxVDuAi08IY8koeF4=;
 b=lzB1Z1as07xmqDvm1iDBkd7lJ4Y+QEqbucvOJ4VBV2qaOJRfxeBF/BlN
 5M+sbu8g5SpaHmHPSyWb5tAKuCETWn6oqjlCOGJndqPxoHvTN94JP3IMX
 6WVKuDTWSHld1f0QDB5QMa7PQpAsqM1ZdoXqVeGulvV9EzNCLxcul/iln
 VC1gH129vMGIRTqc+DiSHR/wdUOkVejbRsR08lPcbtLUjcApiaspDaEZI
 oU2dcvDVXIL/8oC9rcV4WzdngcoR4tCJ3WjwXs+D0aaU/Sj1iolfs4/nm
 3YK79EOaUt8xuQKk+k+afvgCOH82sWCRAFz1bkwROZ4OnNnv84HNFcPC7 g==;
X-CSE-ConnectionGUID: 1iS9PH79RyON+0pQSowhOw==
X-CSE-MsgGUID: liMc4fBlR5ClVN9a1HfTWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="34592971"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="34592971"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 12:02:44 -0800
X-CSE-ConnectionGUID: bt3T/6Y9Qry9uU/yP2/MLQ==
X-CSE-MsgGUID: NgOHaAZWRPW4LCk6feAeGA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="111930574"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2024 12:02:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 15 Nov 2024 12:02:43 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 15 Nov 2024 12:02:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 15 Nov 2024 12:02:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mb22wTFvAjDuTyIKo2PAYrzGAphlagkrNHDVyh5rytrIgBnkG19hJTPr9FWls/DfsEbind1YEQv7I3gfXUshnlbIEo18KQIznHZ2OT650WDYeIz1Pji8ZW769ClQHD7RPdeddm9c1Ui3hsyTeYjzrcGSW6S32UGtiC5SYO/jgwGp4p8MwxHh2xFYsSvr53ssxVP4O7SwbFIx+RV4FO9cWLmnvs52p63yP2PjE2Fq37iFlJqj54ruoeX4E6SEybVL2UM4HvgM7JvmfEM2zuNnn5MBzveBjmdPXSsq+3pQBmVqmZxBYIYAdGv780iqf+N2SP/G+/OywNHiqscJenpaYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UnF+/dei/pLQ3ArajIy3YjUCGdh4VrRwP+q2LbR+L48=;
 b=dJ8RaIrMgUSnY+u+xUTtVPUUd3oPTfAK//1r41YuHizV4r7RrbZh0Fb4hezKOYXb40+cv/Hod/YmEvQbQC1r2nhqLtzOiTtES2vUIVNIL8JQKCIuZaTw++PbLelC/9mRrzE0V4s9o17uyvimRKIPMjbutx1oakUrqjKa+AYpYsPEk3VdoI2RTjEu+64qNWDhgYbhTynCna+oPZfNapldXzpFXEFCFjb4gfdh9Hrp6eh7j3BywR2XwPh8CCmTvJW0xIs/5B1Krr0ncXaOJlTKsOSqlFI5NtQS/I4P0rS7PocNLFNgQNKMlBaXZzT+Jim4W9hh1BAdJEMpE7c7OCp+xA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7084.namprd11.prod.outlook.com (2603:10b6:930:50::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.20; Fri, 15 Nov
 2024 20:02:40 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Fri, 15 Nov 2024
 20:02:37 +0000
Date: Fri, 15 Nov 2024 15:02:32 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Maarten Lankhorst <dev@lankhorst.se>
CC: Maarten Lankhorst <maarten@lankhorst.se>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Michal Wajdeczko
 <michal.wajdeczko@intel.com>, <intel-xe@lists.freedesktop.org>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/9] drm/xe/sriov: Move VF bootstrap and query_config to
 vf_guc_init
Message-ID: <Zzeo2Ntxaq3fQgbC@intel.com>
References: <20241107100140.292928-1-maarten.lankhorst@linux.intel.com>
 <20241107100140.292928-6-maarten.lankhorst@linux.intel.com>
 <ZzYguKUVI6DSpNvL@intel.com>
 <4698fb99-209c-4e66-a364-232884bcdf9b@lankhorst.se>
 <ZzebyT2n7Yawvugg@intel.com>
 <ba5aef93-83a9-45f0-8d92-c9871fb264b5@lankhorst.se>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ba5aef93-83a9-45f0-8d92-c9871fb264b5@lankhorst.se>
X-ClientProxiedBy: MW3PR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:303:2a::23) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7084:EE_
X-MS-Office365-Filtering-Correlation-Id: 0319944d-bc65-4726-491a-08dd05b072f3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SgyzHwocueQGNw+yZw6W9oP6TNlUcS8afUE/R12GkK5Re46A0jv1zSAf5wNt?=
 =?us-ascii?Q?OuFU1rqLS/FuLx3WTj9dak8Sko2B/YPilamcZZJpE+HytQUibZpDSVw7oBFo?=
 =?us-ascii?Q?GO/57B64gI2ONVeCSTvVZJgHZ8ZCF/bzijX7yv4BeW6UUaSHm+cdd0LaDiHu?=
 =?us-ascii?Q?lZBIaUkHFaJyLkpznbviBIuefykyJgiVj7gm7moUX2wGETTgbFhy91eAkDvx?=
 =?us-ascii?Q?HvA3saXU7dBTrZaHl6xrZZU7GIVwktD8RkToQncZEhrw21sgd7TLuuVjnnrY?=
 =?us-ascii?Q?moCw+LhPPw8aknpGrMkwFoGb1mN4zFL+Pe8BYH1mgZM63OTPhMFIYOPnXD6i?=
 =?us-ascii?Q?L7I+WmKaqQCkS72p06rXE2knLUuXzVCRqC9xxdAbOpUtsp1Ff2c9kRdTzQF+?=
 =?us-ascii?Q?6q4dIxJQK2dqKXLZG58kN4sAgO0mA7142yLFqfi1DbGm2nb1xXVwDH0vHbSX?=
 =?us-ascii?Q?XlvLH2+RwuysMxq7v76lVHgD6zMtBTHXGwUdfP2jOTp5RbRgqVDep71jwe6S?=
 =?us-ascii?Q?C7mrlnqrmnGYtd0FjWtsiDI/1IonrDatyjuNCyMbbgurtI6usysYqEh+Z60T?=
 =?us-ascii?Q?7Roq/RVVumhaeL/4dDzzA0aDOhwroN39yfel0MpKoFK2iOnxg8Yf77QVb+wk?=
 =?us-ascii?Q?t2hV3TOsexVREfqYIBdKlnknqbfp6KCENwCQ948o5jLd0NKDIOX+WLi/8d9/?=
 =?us-ascii?Q?YAKnZmn4QYJ7o5DGXT7rambMWY2+iRqYGz+cDFSX1mwcnh2Wc3I36js71Ngo?=
 =?us-ascii?Q?mtqcOCxi19JHlO9ExzwgNa+iadSoBoyKGmGFf7RWA8LsS56gQsX0jQqbH+A2?=
 =?us-ascii?Q?vJPs1b5vLZHeb/8/CQqLDF3P0CNO1re4Tf2VyieqHpI9Fwr1sK5oJcskvpMv?=
 =?us-ascii?Q?arc6w7rJPbUnE6tOMLuqmpTfkctQ+YVBie82Vb95ltBrp/YSuOnHbpJaVzAw?=
 =?us-ascii?Q?EXwFTKg95iBrMl830xhDN6fb/NP/H7aKzg+2lpQ3SrEyzYdngOf7xZvsGAza?=
 =?us-ascii?Q?iI9DsGouV120SWgmD2O/D0xJUNUV0VVtrhPE2dNjbSYlE3iP16t4ntKP7JRh?=
 =?us-ascii?Q?hP5hiSG8UxlLQ3f8+/3zeT58xvw8urxEPZIHSFFUYYE8MQAZ4xZJ0hCz2tL2?=
 =?us-ascii?Q?7QICXCgKjsRitYnwUC5vC4H9JTth7Y0Q75O/LcZlMmBQh6sIIYkX7JjQfG/Y?=
 =?us-ascii?Q?Rh4zZmMVa23SGQTesKwKUGAT6/E2IYPvEPEQtVYnTpYcJy3raWOwD5DaCTb0?=
 =?us-ascii?Q?c5ZpMB+BaQ6UBbjaYDgh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?N0W/z5gYvDQzEvOpADtWm4t/l41oIixd8pWM2RCY6ditjDprY8a5Zmt5oHCs?=
 =?us-ascii?Q?Tvs/YLvqcQDjbvspNBDZZWynm5txCXj1m70+NKP0p8M/TB65xsGMLN5Vi9mE?=
 =?us-ascii?Q?wYqcpIjvbYw8PPbsa8OH6jQHVdUSBXSPjE8ggBI27UuSI0ug/5lNO188ADuX?=
 =?us-ascii?Q?VUwzX8oN7bQ5RCGdfbSgMB8typBcuEADxlyl+wIy8Y7NH4tlGCTQQu2u8l24?=
 =?us-ascii?Q?SLd20nFiy3BsokVxZA9zxcqmgNh49OKm39HPzURIsPVwwcg6jpY9S95KmX6Q?=
 =?us-ascii?Q?Ns64MyLKY23HnYFI7NZCOjd4C5OF/rziFIfUF870G2BPIqqp6jkf0kKLkHBD?=
 =?us-ascii?Q?0I0FwoKjSN1Yf6fwxgMytSIzxLkpFD24Ijkm6UrMzboNEUoMz6vLNsWCAsN8?=
 =?us-ascii?Q?j2BeFWXbhPxUDd6a76SzEHkKQNBBdl4q6B0/a3gr5QlVmACxu7wFGLlshuYb?=
 =?us-ascii?Q?LXL7ALNGakLgxnX3GgJDWnlGgWrZtYOtqTpEerqNiCN8QqqL6E80d8jo5thE?=
 =?us-ascii?Q?ujSjEqxFdHfTZ96xYLX1CsV7dy+sfubvvMUAbSwd6XxFt6zetr7DXilZexW7?=
 =?us-ascii?Q?xA8L0AmboY08Yhm2Rx/UFeoeYURaESFQ7IyriSJqv83GAfv9HMwgfiElguQC?=
 =?us-ascii?Q?1gdS6Oijuj3iyYq56tW8Mk3kQrUBTc5HoHiy4r+MZ6SugeYc/KwDIoVFmvBl?=
 =?us-ascii?Q?4kKNoiMJpa5biODClcyaRGgvTuuAgBL01nc37hEeZj9gjoQxkZQkmkOa+IiO?=
 =?us-ascii?Q?Yq1kcgmzRtgN2fxTfrW7C8uzWwrcv7p9+5/Q0dst0oQOmUZccsSz1KNQ8dp3?=
 =?us-ascii?Q?IxUnFrPSPWQkaV8l02B57mUCj3OEPumQW6c9xEA6KPXBZ3qp/TkFc/p5Wmcj?=
 =?us-ascii?Q?Vb0bm3Bh4pTiwuRcjOQytvCVsSnQ4kJAVK4jCL1mFgEcxJeRvTd0mM5YAhnK?=
 =?us-ascii?Q?A7dzSn2REstCO6EGIKTvCnx28agWQvMpQixXaHaZpuJfv/Ttwikv5QrOy2Ns?=
 =?us-ascii?Q?q5JOAdnVuJyKwzx6O4zlH9rrszPPpw9CenABvDIaJ3fOD2sYQsQe3QmZvsC+?=
 =?us-ascii?Q?5N4oZXEugoPCbzF+BSBSiieux/A+endf43SWHZZocAxQsTrD4aDbl3PKZLm7?=
 =?us-ascii?Q?pA6c3DLem3ILCZmk543V5ouFnkZdlSV944bQgpuhSsHP+ismv2MGZHsIKv02?=
 =?us-ascii?Q?RHCoCZbeYM58fiZ0vwf9B4vahRVjDks+HBWix0j6Y83y1dZ5xDqcqbebLiRh?=
 =?us-ascii?Q?FOGyU4gDMyqpTdzV1fWVOw/uIaGy1u65xW4dq2QdFqvQ5ihapVA/UFmI816s?=
 =?us-ascii?Q?ry7Jqs9IxFzoKQWnRfHB9esHnezd8n7MtemsIqEJW8icyeL5NjItNI7J2HGG?=
 =?us-ascii?Q?oYlmjWrPynF9ixnT6SrFbcESA+bvUXuuFnRAOWU1qz+y+J9QNBrk2/Z99XaF?=
 =?us-ascii?Q?49pXZEFNnMLwLKWHCloc6+/EdNBhnQV7Cl+1pE/3+qXJm3F+Sy1TipMWugJz?=
 =?us-ascii?Q?tpWWTv3U4Itgfn1qO3cBBiVmnCHT1PrpZOhBS5aLE8IbdPmN468UOHJrDYCL?=
 =?us-ascii?Q?oMrqBMqIP4CR/3BsFuWOAQ4Yyq+Q8+G68vjZM4w8882ivcufcrh06ALs/Sdb?=
 =?us-ascii?Q?dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0319944d-bc65-4726-491a-08dd05b072f3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2024 20:02:37.8540 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ClxuVeNDwVEWPBAGwEDMK64XYp/PKGDafZKEnmwcVz0KrfzoHDxkmZEKiPkXcKDNnidxvu5t78S4+M2T6uuXjQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7084
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

On Fri, Nov 15, 2024 at 08:50:01PM +0100, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2024-11-15 kl. 20:06, skrev Rodrigo Vivi:
> > On Fri, Nov 15, 2024 at 03:21:43PM +0100, Maarten Lankhorst wrote:
> > > Hey,
> > > 
> > > Den 2024-11-14 kl. 17:09, skrev Rodrigo Vivi:
> > > > On Thu, Nov 07, 2024 at 11:01:37AM +0100, Maarten Lankhorst wrote:
> > > > > We want to split up GUC init to an alloc and noalloc part to keep the
> > > > > init path the same for VF and !VF as much as possible.
> > > > > 
> > > > > Everything in vf_guc_init should be done as early as possible, otherwise
> > > > > VRAM probing becomes impossible.
> > > > > 
> > > > > Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > Link: https://patchwork.freedesktop.org/patch/msgid/20241105121857.17389-6-maarten.lankhorst@linux.intel.com
> > > > > Signed-off-by: Maarten Lankhorst,,, <dev@lankhorst.se>
> > > > > ---
> > > > >   drivers/gpu/drm/xe/xe_gt_sriov_vf.c |  1 -
> > > > >   drivers/gpu/drm/xe/xe_guc.c         | 17 +++++++++--------
> > > > >   2 files changed, 9 insertions(+), 9 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> > > > > index cca5d57328021..997438047a037 100644
> > > > > --- a/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> > > > > +++ b/drivers/gpu/drm/xe/xe_gt_sriov_vf.c
> > > > > @@ -948,7 +948,6 @@ u32 xe_gt_sriov_vf_read32(struct xe_gt *gt, struct xe_reg reg)
> > > > >   	struct vf_runtime_reg *rr;
> > > > >   	xe_gt_assert(gt, IS_SRIOV_VF(gt_to_xe(gt)));
> > > > > -	xe_gt_assert(gt, gt->sriov.vf.pf_version.major);
> > > > >   	xe_gt_assert(gt, !reg.vf);
> > > > >   	if (reg.addr == GMD_ID.addr) {
> > > > > diff --git a/drivers/gpu/drm/xe/xe_guc.c b/drivers/gpu/drm/xe/xe_guc.c
> > > > > index 7224593c9ce9b..5a050a5379911 100644
> > > > > --- a/drivers/gpu/drm/xe/xe_guc.c
> > > > > +++ b/drivers/gpu/drm/xe/xe_guc.c
> > > > > @@ -301,6 +301,7 @@ static int xe_guc_realloc_post_hwconfig(struct xe_guc *guc)
> > > > >   static int vf_guc_init(struct xe_guc *guc)
> > > > >   {
> > > > > +	struct xe_gt *gt = guc_to_gt(guc);
> > > > >   	int err;
> > > > >   	xe_guc_comm_init_early(guc);
> > > > > @@ -313,6 +314,14 @@ static int vf_guc_init(struct xe_guc *guc)
> > > > >   	if (err)
> > > > >   		return err;
> > > > > +	err = xe_gt_sriov_vf_bootstrap(gt);
> > > > > +	if (err)
> > > > > +		return err;
> > > > > +
> > > > > +	err = xe_gt_sriov_vf_query_config(gt);
> > > > > +	if (err)
> > > > > +		return err;
> > > > > +
> > > > >   	return 0;
> > > > >   }
> > > > > @@ -753,14 +762,6 @@ static int vf_guc_min_load_for_hwconfig(struct xe_guc *guc)
> > > > Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> > > > 
> > > > as I believe there was a good reason for these functions to be called this early.
> > > 
> > > This is in fact called slightly earlier than before. It's now called in xe_uc_init instead of xe_uc_init_hwconfig. :-)
> > 
> > Oh! Indeed! one step earlier actually... that name min_for_hwconfig got me confused, I'm sorry.
> > 
> > The only difference that I see now is that this functions are not avoided anymore if xe.force_execlist=1...
> > 
> > We should probably add some skips inside the function? I know I know we likely have many other bugs
> > if using force_execlists, but let's at least try to avoid introducing more cases...
> 
> I don't think it's even possible to use execists in VF mode. :-)

yeap, it is not... this is why we should ensure these functions are not called, liked
they were not called before this patch...

> 
> Cheers,
> ~Maarten
