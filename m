Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E08AAC09C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 12:00:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C711F10E642;
	Tue,  6 May 2025 10:00:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+uv1UqT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0237810E642;
 Tue,  6 May 2025 10:00:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746525614; x=1778061614;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=HkwTjbwVLXToS6Y3J9i9bA4TSCiFhJSctE7ItesQwrw=;
 b=a+uv1UqTPM65ZVXUhiCfPTu2K0wjAaqM1IEZeg4H8baTsEq4EcQVMpJt
 k1TWRCA+i9XG7TxQl8Z1rwZvtKqOP7J3O4WW2BK0NW9vhE9sbHn5vkSP2
 g3W9KDUzuzXMd7xqn1OlKRdeRzkGW9tiWNIb7y+Jmyjt/762rRFVlR5o5
 ZddckzqCgIyfBkECV4qHncqkFE0oZZb3PlC9fkBFcvEyx58kF1L9ZzaKR
 gv2lNdcVFNQhPUp2TbIKi9k3kBNX4aP/x41FcyCt87Gcb/lD3epZk8epq
 J/tdFkTzPSDSlKbgChy57oRe3x2S1EpLe0HPgYoApCX09YRxh+QlUsOqw Q==;
X-CSE-ConnectionGUID: iL9d3bc+RJWrjyAr/BqvGA==
X-CSE-MsgGUID: MO/MDpJtTROjCO97wsxqLw==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="59539140"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="59539140"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:00:13 -0700
X-CSE-ConnectionGUID: evzV1Zk/T8C3KdA+Eb8o2Q==
X-CSE-MsgGUID: BeYgXBMgQdK1lPJhevJE9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135275535"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 03:00:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 03:00:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 03:00:12 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 03:00:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sdHN0jxUx1x/tVAugpczQe++jrTrYIjyvRKTrobXPFsuVFKrNkicLTC57pmqVIFNN8NosLl63fTmNPHQAFFObFHGcMzgkLAlcJlwes342k+U5jdSWLivPVaML1LfJnJEFxi6sItNfmEW7GlTTt7WutcNavKGxfmGOf1xry8dPfInQVLiHSVl3WOOxgC6zmy9avGzBxPQE6m/+UYeZPQWnsu2G5jjdaBCI+2fyp2gGObTppFw51HWkcqKbPUXi4qPvgCtbSQupRwxlLo3uYFBK6z9705UJrHsECKdX5qmtYEq4b7XFwhbc4+NDaNKfiY6V+wEY0ePuJrrJvm51GDGKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ne0j5XDEdxcQuoTvA/jFdhG3T6ti7JjIKbXhOpMIWJY=;
 b=MftKluJYqtJefIUvu6OgtgsllljQg0iJUBo1D9HjuDJgOLBPWqQY9V4D8E3wVEdoh4SZsLCzTETBjBY2UwZx0HmQkdOpI0JRllW95TMbnqVGH/pXMbCR04c7rPL0VqFF+8/92bz87vEcyzmdMTN29MkRHMsD5qqPSr/XUNnOpbS39vsqFQ44ZAC5tp6OC2LAg5CpQtwC5IuVaiNjFZkT3gDZ+2J+di40xnbOpO5OavHNMTJSLSXO293C5ph1q1OgXv4xN0+Oh5ln+FTfbH574xrPOgrzQ0l8Z4XknALJxe7oDLiXyrX+XrOtXPjD0iFVWiKKe5ehp6Xjyaq3wVqqdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB7721.namprd11.prod.outlook.com (2603:10b6:610:12b::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.19; Tue, 6 May
 2025 10:00:00 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 09:59:59 +0000
Date: Tue, 6 May 2025 13:00:06 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
Subject: Re: [PATCH v2 02/12] drm/i915/dp_mst: Simplify handling the
 single-bpp case during state computation
Message-ID: <aBndpioCdsEEcmRq@ideak-desk.fi.intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-3-imre.deak@intel.com>
 <b15cc451-812a-49e9-812d-7bab2807f776@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b15cc451-812a-49e9-812d-7bab2807f776@intel.com>
X-ClientProxiedBy: LO4P123CA0524.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:2c5::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB7721:EE_
X-MS-Office365-Filtering-Correlation-Id: 6faf160f-73e0-4df3-f440-08dd8c84c34c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YtQ5TnizRrfHNpTRMRxTEuUEsMt32w2Sp5afNAZUz2ez+TNWwSGNlsvugKZw?=
 =?us-ascii?Q?VP81lB3eLZUjaIHOa7PGW+S7AVWrglPpGolvmyIRGncKkvoABE8MMgjiymXz?=
 =?us-ascii?Q?lUw7XEh4Y1rakdT3zuHOe3VGe0lRkhIzzBC0hsvY39dHGqMtwQQmhrSTiidl?=
 =?us-ascii?Q?ThU4zm9pn/CBcuUay82sQNLpZ8fwvdW5i1fvIaZWXS3YCqSMIFrZhV0lJ6we?=
 =?us-ascii?Q?dT/e8AKCBesZw4xwX8j//FDe5MRCK6+8Fdi+nxDyP1vp4y9LIEIkQUZHRXap?=
 =?us-ascii?Q?Ti7myh8m4NqEEjuhOmFr8OcV4NhUTmr5ytmw0YFhKna9GQvgI2CfPKN/IMxZ?=
 =?us-ascii?Q?R3H5zyC9Q6Fwyng/V/1h7bNTQiE0C0kWVpWtgqAAvLiLlhI6XqT/LIbakFU4?=
 =?us-ascii?Q?Ar5Lu72BmCGrLzoeKce3rjJVUw6OE+IFhTmQJzeRQzVUx1P4jpW92btIuKC0?=
 =?us-ascii?Q?nEnF/hfJ4rn8JeKQcIOpiG3QnmLR+g1WIl+J0zr6teQJOv4nhkKGSPsKs2FU?=
 =?us-ascii?Q?rI5MOB8wjtNSgf3iyt3jqPHB9oHd8oQxZT6Yo4vWGVryUsfcskfYJh1oi2lf?=
 =?us-ascii?Q?yrcq5/gx9mskd3N3wP3L2IVbjQm/pOBgAUC9nQKK/6Q2UgtbILCALysu9Sn7?=
 =?us-ascii?Q?IKB7Ri4RVQnzkuhJ6VqDQM0lKOSDgBFSUFT2p5wbIrA+vRIBJpvqshpxExU3?=
 =?us-ascii?Q?XMWnX9WRrhYT1TMngmYsg2zHf1Gy+BU8npj26QcKnJP/O9aUgwkEmVRmG6nL?=
 =?us-ascii?Q?kqvG0dYR7ksbAjf2/jBTHWlpKXpI9xXDQgOdO6/zmQp52OPImhX974plrzih?=
 =?us-ascii?Q?AiP8IDydhv2S5LBvSTuqXbNDGjNkb56LEHeMxAVavcsgQVorGcc2KOpmYuM/?=
 =?us-ascii?Q?fSLDJ2syn+6awWoOkHpiowclOFRjEXeny2FfeKhJTRqZFQ6uUlGm2kJRN4uL?=
 =?us-ascii?Q?++KZwVPDnp+WrtrCTn7iBaLj7qwy9OoRfO6gob6X4qhgiBCzf5xuHv5km0MH?=
 =?us-ascii?Q?2iRKhfd2J9wruZ3Q4ZOGwfek3q8PH8uMwQtgqRE2gprG/9Qy7nkh2a3W97OR?=
 =?us-ascii?Q?xF5mHuUYhN7SsrgrUMXncR5/W7AvOfMxksDXQsCJh7klY+Bezu7ZYVVvn5Q8?=
 =?us-ascii?Q?HwPMBEjlFg0fFhs6ajhSrkFJQAtXXzzv8E6l1hzEMwI4I9b2WBg1r3jj8drq?=
 =?us-ascii?Q?XRD67gbEamturdJrTkugpJARzK1yeUCM6R8Qwg+rvdD1DSPE7gpK0mO0aQf2?=
 =?us-ascii?Q?D3L5ICJvdPftsvppQFPgCfMWhwqS+873O2v1JR1ebKqmeoJh4B6+wqiawvSl?=
 =?us-ascii?Q?Qx3NIBiFHm/BIE4iCoarcOFVcA8PN2FfIMnfYugk4ZP73VKE7Pt9U+fZUosI?=
 =?us-ascii?Q?sdhBjtnnp80fXo86dsZa9uua2fpE74RA+/5kbDszYQ0zy1ZXOz0692Oo7zw0?=
 =?us-ascii?Q?xrGuZ9w66kA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4+mPM7Z4v8WqiOWbIBFwZsusgBknEeU0MZ7lo15sHoSxQxtYYEDFO/0sK5IW?=
 =?us-ascii?Q?eyzEqgBznVwFpJyFUlO3T6J6theo44fghiGbXF2uiTZ+KyFtgOLVYjG55mXi?=
 =?us-ascii?Q?Ahh3MYeVsjS0M7KOXzFopxJelK4uXkbCS2FGeDfBWFZAg2VsXXWaOXSLeRfJ?=
 =?us-ascii?Q?M/9mlc8qOXQRdabdA8/8J6bn41z2koxyT8DiaxzJQ//78Tr5bOhl/htN/9m2?=
 =?us-ascii?Q?eZvY82yZIosxlbPCdLQP/LIMdPibte9uOgJaXpKYhymv8w36YD+tG2WD98j8?=
 =?us-ascii?Q?+CTOHtDwkxWpgGKkiLvGf3qNt36N+coqYhLYazVm8iUTrWl3ddgXVzSZJWVV?=
 =?us-ascii?Q?pM93Oe2r0v9txRnQaRq99pffbEJWlzTYmBt07NbC6NzvPjNxr5Sp3PK0ubAi?=
 =?us-ascii?Q?kwtLL7XgFEOKE6jXJ8suqDVRK3Knp4zn7CcBtXavs+SjfdTJlMtMHea4yQAi?=
 =?us-ascii?Q?r0Xv5A1s6atqoxlQ3pEwBdSmHlcHmI89Im/3zbEr9HM/b4xrwDdePE01x0Xz?=
 =?us-ascii?Q?CZw6zDOnvTBjQ0Wqeiz5jo3jp+Wk4uyJIQg4e1gRo3OnP8mpfXR1idxjLN7Y?=
 =?us-ascii?Q?z8jhfjNCQjYbrn9CAXZDJr9/rCZdZR/mR/ErPnxQ3eZ3xyHG2HpjCXedYIcr?=
 =?us-ascii?Q?t3qNiGw+2ERuBDKhzDP3REHQWPePTKh/IMUJnDlkLMajoAimTcsPrXyhEP/V?=
 =?us-ascii?Q?RUbuVUE8Z6JcpwfC0PFCzVN58KjtUrwxAw6azC43y6HEm466X9GH9NRNMVw4?=
 =?us-ascii?Q?h2IvONNWSypmBnktZd6p0lxIaiZrWxvQcU6FdXfAZhUbx7TxImI/Kr5VupBE?=
 =?us-ascii?Q?jGV+b/Fi1+Fm7dbuswyFhgQCrk3Qiq6mcMVVjJaBti6oeQiArMLtlcreMZHI?=
 =?us-ascii?Q?o4T1soUh0Hceuk3G/nRL7H7fNDVDRnEH1HBhJZW1vn5NmN1EjK75unNe7WgI?=
 =?us-ascii?Q?9b2g3c1pJaBMCAXBf/aUd9HIt1lZd4CHUFesgdppXPxOyL2QCeUWYUi/Eend?=
 =?us-ascii?Q?yBeZY3qeGp58hcPJbv5EcFmwze8CWgzRtfvoWvAiMLLwXMHrQiQe+7dz5bQW?=
 =?us-ascii?Q?7JdK2XlKJIB/b/32MCQY6IHP8VMNL0n62nGW34nxXZYb8XxqT8mnj2teT0TK?=
 =?us-ascii?Q?IzhvyyMBm+W9ZWAQWbHtSClGRoqFO3Cbxir3V2MGeFVWUsSqN6CONob1Wx8q?=
 =?us-ascii?Q?0orUInnioO/haS7KNMa8xtFk3Gy1bT6eJCO8tjkFfT5yKdOW9pQlfsP+bA3S?=
 =?us-ascii?Q?mJQwfZOqVf3xqZJ5jYhmy6yv9SrXf9vHaGYnv5fRZD78jaMvV/rPpaQ+9+im?=
 =?us-ascii?Q?2D2Ze+le5WQ8dujOTzvg+bQpKSMVeWtDDGDIB/YwP519RkuEcNaWlI/TEw2O?=
 =?us-ascii?Q?LtF4vQ/rCMQucnX0xDQyBkC0t/50YHWoK9Ip8yGzgQa6gu3bGAbzHloaZWBC?=
 =?us-ascii?Q?dEYeMdXTzwzf19VNIw0o4Khl0QaoEqhQU1Xnf1/QKdqsHGqCkUNs/TW+Ehd/?=
 =?us-ascii?Q?JSvOJLBdRTCzllEL3Gyt2HhnsbD2j2tN2i6+omnHm9FFHpEJgR1Gmy539pBq?=
 =?us-ascii?Q?Qv2ew67vCGB8hYq9fy8Qr3o/OX8wl0D5RKHMrQ5r?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6faf160f-73e0-4df3-f440-08dd8c84c34c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 09:59:59.8217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TtsVKrtBiRBgdVHMftLL4McwgmYvBMoOfo49cKHZxTwhRuclStZg1d15115QuE4XiQ18IJWd+7dyhW6FLiIEZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7721
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 06, 2025 at 03:21:13PM +0530, Nautiyal, Ankit K wrote:
> 
> On 4/28/2025 7:01 PM, Imre Deak wrote:
> > A follow-up change wants to skip invalid bpps in the bpp select loop of
> > a stream state computation. To allow for that, using the usual
> > 'continue' statement in the loop, change the way the sinlge-bpp range is
> 
> 
> s/sinlge/single
> 
> 
> > handled.
> > 
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
> >   1 file changed, 6 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 49b836cd8816c..d8033e55dc093 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -283,6 +283,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
> >   					   fxp_q4_to_frac(max_bpp_x16) ||
> >   					   fxp_q4_to_frac(bpp_step_x16)));
> > +	if (!bpp_step_x16) {
> > +		/* Allow using zero step only to indicate single try for a given bpp. */
> > +		drm_WARN_ON(display->drm, min_bpp_x16 != max_bpp_x16);
> > +		bpp_step_x16 = 1;
> > +	}
> 
> I can see this function is called for non-dsc uhbr case with bpp_step_x16 =0
> and dsc false.
> 
> So we just want to get the loop run once and get the slots with min_bpp_x16
> == max_bpp_x16 == fxp_q4_from_int(pipe_bpp) right?
> 
> Similarly for dsc uhbr case check with a given compressed bpp dsc_bpp_x16 if
> its valid.
> 
> bpp_step_x16 = 1 will mean 1/16th fraction. The value itself won't have any
> effect for the case where min_bpp_x16 == max_bpp_x16.
> 
> Is my understanding correct here?

Yes, correct. On SST UHBR for each bpp a minimal link config is
selected, so this function - checking if the link config is valid - is
called for a single bpp only, hence min_bpp_x16 == max_bpp_x16.

> Regards,
> 
> Ankit
> 
> 
> 
> 
> 
> > +
> >   	if (is_mst) {
> >   		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst.mgr);
> >   		if (IS_ERR(mst_state))
> > @@ -408,10 +414,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
> >   			break;
> >   		}
> > -
> > -		/* Allow using zero step to indicate one try */
> > -		if (!bpp_step_x16)
> > -			break;
> >   	}
> >   	if (slots < 0) {
