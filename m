Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB7AF9AF26D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 21:19:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59AA510E060;
	Thu, 24 Oct 2024 19:19:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HDFeFkqI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD4810E060;
 Thu, 24 Oct 2024 19:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729797546; x=1761333546;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dsTXZ/syuPhj3jq9t1TLAGdpYvzmRr2jdN3TNk6Ymxk=;
 b=HDFeFkqIWrBEsblQvDKhd8VtGzG1EtBMgNHAoppyCQ3T4SP/zwQyGxZ3
 xWPuuK4JOpi4KVSZfd80ZOzR3g//LpmfYTZEe1u0M8c8CZE4wPUJzNdXf
 +SmGJXbBPs0OljG3AV6n0jfc1U0tbH571BTtdcHstkIdlyGs9RFD4kGWB
 IYiGBJ7RPLyopNjwokOJR0+mgChyA+g5bvbS6PwTjylwZTV6/JFEJVDxk
 s6sKaCSvTRNs0yjinh60jNk7+vpn99/VvzNfBCBs421Q/GhCYyY9eH+4a
 9lwFdWq2wg2onEfmAQ7AYGao5/0IgpdgAWJ6wKiUZt9f56fXkQEJfen7i g==;
X-CSE-ConnectionGUID: 5eqkIejpRMSId1FftwB/yQ==
X-CSE-MsgGUID: RXsmy6uiTIG9vVgpeNdR8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="32308445"
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="32308445"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 12:19:05 -0700
X-CSE-ConnectionGUID: KCIl13H3Rkqv2AEl0SsVHg==
X-CSE-MsgGUID: oG6gi9DESNGOGH+L7+8nQA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,230,1725346800"; d="scan'208";a="80796756"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2024 12:19:05 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 24 Oct 2024 12:19:05 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 24 Oct 2024 12:19:05 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 24 Oct 2024 12:19:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Fooc5PrOu108g2KnKLYoIbRvBqeAWIBKsBCva9KQBZEx581Lf5m4+Cw+oIjlwdp5ZQS7uJH1w/SmAkVS/fUlfE8GcPcmblUqJ5YtdlIGOkpkfv+apbRDloe7YcbdcqaKO0XlmOKS0p2GH/v1/rzQHB/7pa34eMaBZPYoV6P6TbNtcX/64wzRh4CJFqrog4jcDxAOnr1mZLSwp/7UNQwfUxyy5zUu4FDBeWkhxDLlWuz8R6JKVZDdMB+sWqFMXhROW9mQSNj4H9DpzsTQ7T4ZalnJ5C+hxdEy0sQPJ1OtANUpDZn3+h7V7wUPURxjkKU3yip9MMntNS5oNO+DGZF1xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RwF524LWOjQUpGMVlKI7oQSVteq6OCo4hooz5GCNrOA=;
 b=DjIp7951Zq5EM/9nuQbFluDm71eX+Qqo4n0YgmPe7IfTR0IiPEcStTMjmMtoUu0pyFxi6nqHPgfGevT8oBf2APv8Z4pstU0Mp0atLBTiavusduWCJ6l1j+S4FIU3eubUNchL7ScDwa3rH6NE3yhKbscW616WyiAHCbxdu1g1bpqirva7EuPDPEzotGrHCQrsx5FKC3OqAOoG4LniUziv6AmUUqpufRmhfRcUYxk7no9LzhYDDWYj6rbkXUjADr5wDXcVPt/ypOyRIi6DTAPyWlm/q7toacS1fYvc/QW128G63fewc+XGK9em1DObH0NoOJ6r1I/S9kEm75E2YUYyiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SN7PR11MB7639.namprd11.prod.outlook.com (2603:10b6:806:32a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.26; Thu, 24 Oct
 2024 19:19:02 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Thu, 24 Oct 2024
 19:19:02 +0000
Date: Thu, 24 Oct 2024 12:18:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
CC: "Taylor, Clinton A" <clinton.a.taylor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
 transaction
Message-ID: <20241024191854.GM5725@mdroper-desk1.amr.corp.intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
 <20241023214701.963830-8-clinton.a.taylor@intel.com>
 <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <MW4PR11MB705444C75DA8CE151657E689EF4E2@MW4PR11MB7054.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR07CA0102.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::43) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SN7PR11MB7639:EE_
X-MS-Office365-Filtering-Correlation-Id: 0d1d6f49-08ac-40cd-9b9c-08dcf460b813
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QOOWDAqYQ54yzMIfqwaQqVeiBuuou3SX6MrVEaMsL6hA3gWZnECnGxbLO2+0?=
 =?us-ascii?Q?BzOaVZ05+H3LcZNWHD7QJ6v64lThEu7i4jBwWZImUcPYP6XyDqxupaepHYv5?=
 =?us-ascii?Q?8accnTJmrJtTrdOFcppUrQAHcJsPMfGeuxD/3z9kD4G8ViRrTaXemEPPl4Dl?=
 =?us-ascii?Q?fojcr+YHH7iNeYkGOYXg6ftb6eRDIXMOgcPiuiEBXNPBk5WRqPrkg6rDN3lz?=
 =?us-ascii?Q?7ktixoahlD6RKn2reglHh/dTvTUmfMZAwUUZkazivn9n/4A4IMYmVJryNylt?=
 =?us-ascii?Q?iQaI6TrXuP16pMkx5VfcGgZxfXAa4HNAgMjny66IHQ+RYvwCAz88a9KO1cB8?=
 =?us-ascii?Q?T7plAyGRhxdsqhh5eUgrRB4T41M67+n0x2eVfvZSvawZHwZwUUJrmoD/oQKD?=
 =?us-ascii?Q?Uq1m0s76lFWqIPiKCGcGYfmt5k9EZanrxyTjNEVsXVsYsEiED5XC1wiKJfnO?=
 =?us-ascii?Q?y0sasYs1izzROjnxpZiQClr62Xn6vZmxvjcjgEs6cOXaWwgIMgxDyH5lqfHD?=
 =?us-ascii?Q?+GM3Der3LSRTYtTs6GcOOvyUawivR34EBdpyRTPN/S5TkHwbb3IULP5Lv1NB?=
 =?us-ascii?Q?KVWgNQLNV9wpUmhrv4WB8GPE59kthIyEZZxJ2UkzZKPRzsp+UkTJLgK5JOAc?=
 =?us-ascii?Q?t4tKa4sBR/r1DMlFLq2EykHiWS/zRPCbfjuN/eRBxjh27lBtAciUqOutpq/+?=
 =?us-ascii?Q?5laGiO1hPrC1fNQ+IPE6dRw16odauOP+o8hEhq6hmoNoNPgzaeCwbnjjLdxU?=
 =?us-ascii?Q?LlzBN2znjmpAq0pUp5CuVhWTyWgmjz3ygx+0HdDUOaLW2JAYGT5HW8PMa0Mb?=
 =?us-ascii?Q?7/+rqFreIzsz5STI465MDfmIWTDMEPYA0tVM0HFl5ZvOP1ru1R7l11L2YSkh?=
 =?us-ascii?Q?EZf4PXu7PO+AAtofPB9GONJGkSouAESLeHqVzNYLzIvPRqVeghc7j0wHx1T0?=
 =?us-ascii?Q?rY8lquk9xBs3JWHNPhpFupqGgH6VKYYdj7J8ZuGz/XfExEcLleV5XZvowCKm?=
 =?us-ascii?Q?ud7QMfH/6DY6KImjrW88dN0o5/64+p+2i4B9IEK3ZMDfbiw7Vf0JL6E0mw+o?=
 =?us-ascii?Q?4InTkThDF0J0smkKv8GE92C4CePo9b258Ry4wrUy+YPD8CDRfQPp4Yp8t8p2?=
 =?us-ascii?Q?76rG/c+jl5QnCN2gNMt0uyM2t5MaDD+pSRGHLFans2mrJeO3cVv8Bc7glY01?=
 =?us-ascii?Q?z7NJ+0SLBGFXCua1yseLkvv8Rixyg5AjqGy4SpXYD90g99Gget3jVPmIUXh+?=
 =?us-ascii?Q?LVV8piPD4n7jk3udfF2SNBZL20hKJUHbre0lkK4yuweMsgr3nVr4vL05vJ9q?=
 =?us-ascii?Q?nuXUvirZuXJZllOq2O8iBztu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7AKZjHWNHE12/G4ZZQqNKZakQrw5m6RXFxGuL977RaCsJ7DtfBEosKDrNSL+?=
 =?us-ascii?Q?SILsesauIZCofsZBxpVf/4iPmQiwtGWyF/1eYyxcw6267TbrR4gSBiUAwwMm?=
 =?us-ascii?Q?ikEcYbEXwdCASKBbT2XZQkLM0mKLuL1/URxSz00BtfEM/Au0qhhyO2kMm8i0?=
 =?us-ascii?Q?cIUK9dRR3J6XSWYxz0d/kZP5jC/YarCXEexRmcKWxzQ1V8NKTnXGmi4gYuiV?=
 =?us-ascii?Q?TlHFPYsBIFzqwMQScx/MOW8RNTiDrUldmYyHJ9AVZTbVkmzCxfas+5QAwNbP?=
 =?us-ascii?Q?FPFqJxoSPB6CPRMIbMQLzRbqk2JdqQTyzxA+KZ4KJFCaZo7eh7rns/6xiggy?=
 =?us-ascii?Q?TBpa1VoKZnZ8M8FDkwBEytmyc6zLj5zadHNhadP+eYAhg1nD0aDBmWvy91SB?=
 =?us-ascii?Q?RiQYyzUjvkDRfYorOXgt2L7HXG1MNXhOOBZ8ISkGbNRNr1WZhveyCxvky2tR?=
 =?us-ascii?Q?hXHe+opMvxE6U0eYW2cJ/C0+Lqsv/C5T49mw7VhBqGKfZ368cOTOsOnw/GzZ?=
 =?us-ascii?Q?4XTrlio1fMjaRsTsOyU4ZcgRfoNxc9Z1V1Sp0HILiNWhonsJPIXnbZDWrXL/?=
 =?us-ascii?Q?eB7IYVOpgF7kGNKXv5/clT6OrH/pl+W5GcYYI+nlhS8BC9+X2RrkbwenCx2T?=
 =?us-ascii?Q?rYRPreQhTHhAXLO7NRCLQD0nb1vgeuspn+iwMm6lupDIYMpn3YIhfWutqdgu?=
 =?us-ascii?Q?wZBYV/2aRACrym6lGkydyX4zOCkcHVSpkXnqJCoNY5Q4FbfQGOe0GSGBZnJA?=
 =?us-ascii?Q?RChwhgWDpm6PclR99t2s7R8NNqLV23NrUVlMLO4z1LUW2zk0DsbJEMYWs9gd?=
 =?us-ascii?Q?iYdn1OSpuH5n7zl8jws+/MD/5gjidvDADT9SNDCRr3inVFgT+0B8LBk37R1s?=
 =?us-ascii?Q?7OT5U35wKUIbSOoeGfX6ZW4uIFMolBP/B81p/3/9iICilriHR5vLJ5BQHQZn?=
 =?us-ascii?Q?naBvYrXy5VQP33JJa1Qqrae0OEmjSXOiFUhOP9/zdqlVw0r1Qzq2MkLSF2ws?=
 =?us-ascii?Q?JMrhTDS4qIVWZdmEte/Ly0lzCiqOyQVUzhLeujYS96GKQjeHbOYdbjBQZcxF?=
 =?us-ascii?Q?nI8DViX/R8HHHDQTG7dwiDsdBKoP2F5i475KkDjTdiK94Ozx33aIeWm99N/2?=
 =?us-ascii?Q?uEFpjV7AQeEL4qqJ6L0B2znV9/TfDYAqnBJAraRXKB7gcrtncVABucesxUNX?=
 =?us-ascii?Q?zniZ+So7AywmviMXImi5kwtLUPO2Z9kPBIMHGDF300y9L5nu1YYcIeWPQ1ja?=
 =?us-ascii?Q?HwO0JHVla/HO/bxc56/hEeTu/usKK20BjdtoSemsD3wJKHKc720mIr37Ee7w?=
 =?us-ascii?Q?vZuJDN141CdKxw/BNe5FOA2AJUvWCFaRRIUj+h8ru8FAdtMgHC22HwLvUvRI?=
 =?us-ascii?Q?5wxxwVisv6iuVDi/jPvFIGBmTv/k0c3qEM3kBZs+Mxx9kIpmAXDu1Rwxe4QO?=
 =?us-ascii?Q?OK0FZB3RzJYpbZS7dVGkpsLTUrpumtNgZLG+USQCNar1kr95H5Q0v6W1CuyX?=
 =?us-ascii?Q?cb6/jptLwfOVILeCAmQCuZ4lhthYJULG77HnZn4y0AIj+7cK0vh2y4EXrIvl?=
 =?us-ascii?Q?I6atHqcGB1NqgJDDRxsnMIM9jrhmAcKKOo7id2YzYpxbrqSlWINY95tcSOwF?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0d1d6f49-08ac-40cd-9b9c-08dcf460b813
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2024 19:19:02.3823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BqjAFobrCz5M2FGYYDox8AcMi+aLWnKU4Eq7ankz7HVtWf+Y+eIQ9ud8vUZbCAuxCDiQ0oBoBoZaGWxAFGdocXmudnukuDkK2Yh1ekE+vIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7639
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

On Thu, Oct 24, 2024 at 06:08:46AM +0000, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Clint
> > Taylor
> > Sent: Thursday, 24 October 2024 0.47
> > To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> > Subject: [PATCH v2 07/12] drm/i915/cx0: Remove bus reset after every c10
> > transaction
> > 
> > C10 phy timeouts occur on xe3lpd if the c10 bus is reset every transaction.
> > Starting with xe3lpd this is bus reset not necessary
> > 
> 
> This C10/C20 bus reset was originally placed as a workaround to prevent bus timeouts. These timeouts were fixed elsewhere and therefore these are unnecessary lines.

I'm a bit confused by the patch / explanation here.  Before this patch
we did the reset on all platforms, unconditionally.  The code change
below is removing the reset from the existing platforms (MTL/ARL and
Xe2) but keeping it only on the new Xe3 platforms.

If the timeout mystery was solved and these resets are no longer needed,
shouldn't we be removing the line completely rather than making it
conditional to the new platforms?  Or do we have now have new,
unexplained failures specifically on Xe3 that requires that we bring
back this hack at the same time we're removing it from the older
platforms?


Matt

> 
> Reviewed-by: Mika Kahola <mika.kahola@intel.com>
> 
> > Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > index c1357bdb8a3b..a8966a7a9927 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> > @@ -224,7 +224,8 @@ static int __intel_cx0_read_once(struct intel_encoder
> > *encoder,
> >  	 * down and let the message bus to end up
> >  	 * in a known state
> >  	 */
> > -	intel_cx0_bus_reset(encoder, lane);
> > +	if ((DISPLAY_VER(i915) >= 30))
> > +		intel_cx0_bus_reset(encoder, lane);
> > 
> >  	return REG_FIELD_GET(XELPDP_PORT_P2M_DATA_MASK, val);  } @@ -
> > 313,7 +314,8 @@ static int __intel_cx0_write_once(struct intel_encoder
> > *encoder,
> >  	 * down and let the message bus to end up
> >  	 * in a known state
> >  	 */
> > -	intel_cx0_bus_reset(encoder, lane);
> > +	if ((DISPLAY_VER(i915) >= 30))
> > +		intel_cx0_bus_reset(encoder, lane);
> > 
> >  	return 0;
> >  }
> > --
> > 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
