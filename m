Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB49CAF752E
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Jul 2025 15:14:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10D3E10E84A;
	Thu,  3 Jul 2025 13:14:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e8LPL5Gl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07CF10E849;
 Thu,  3 Jul 2025 13:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751548458; x=1783084458;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=6edr08D1kx39iN5JFMI5vkG+OKoV/LBf/rGIgETSTJI=;
 b=e8LPL5Glj0n7/nX4SfXWFYwIMNL81J8+ZMw12h81XJgOWW+VYM+1tr9W
 uyo1z9DwkEsSd3O+IVne+ORNCynKt85QyI0OpgRanJhOagbSQGcE5lG+z
 ypF+azyKcalSP9GAzjpngO3IeUhNTC3kcF25qnyvVJ4Jc+dofDbTbsh7K
 U3peX50e0Bzo1zrEr39WAauQVwjfktvVe3GD+HJs6xaSSjZkyInAZX0f9
 +r+P+9rsya0orCoiqo8Kqn17tLCw5Z9f03jHTf3N3r4vGsMO84R91SXgU
 23MAyXujDBLUr1e27Zrn3mp4J+WaZnEKA5IBQPJtV/MG/n2Mw0dmUbtwm Q==;
X-CSE-ConnectionGUID: J1de8HoxScizxgkbqx+sZQ==
X-CSE-MsgGUID: z0m3fjg+RBituvK43VHCww==
X-IronPort-AV: E=McAfee;i="6800,10657,11483"; a="53740908"
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="53740908"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:14:17 -0700
X-CSE-ConnectionGUID: XZwNmbnPQ222lAUqC6edjQ==
X-CSE-MsgGUID: 9HlgJrObQ226FJeXYe8dnw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,284,1744095600"; d="scan'208";a="154008714"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jul 2025 06:14:17 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:14:16 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 3 Jul 2025 06:14:16 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.65) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 3 Jul 2025 06:14:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qW7oH+FVeupS062KxjUEVAgiVVFUIthPRg154JS2valR47CzRfQv6bX3YvVZu9banbcK7XN+JhbG5AkYvS2scnkwveF1k7B0G12nJrfw0Js5aGF55lIGRz1SnQbepAOpPf1+smrr84Sp/Z6vORcNUgjh70KCHPLOaH70RgtQBGyfb/n06249lcagHpIsTNOXAv0lO5MNw0QtxU9Z+Y/4G2nLXLpdOVcWe39/92nUnwwJ6A2AZJpiy+K8tZ5z6ItVjs72LGVBFqnyFY3wU8I483ifoEoakfChwwn5NQvcH3JYC0zusg6n0mOTIiXhzJqGpsOmwP70e3yV+GpzrIgT3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gF7hUs/KKgzut+BV1VYWT8+kHLSLAHtutB3F19a87lY=;
 b=uOLlqg6MgTGrf72Z4yWUCUpDieB+FRYgKvCoW2z15zFMpkRBGG4L8t4AdQW+dVsrtGta2cNOKJcBmf7rj3Er4fsGZxbAFsVadNmb5fSbP8VnAsBWbcMMAg5z39s2u/+PxtMW2mMRdK+EQFSYjzdk8ellybnoiNKPdkw0oKenns6HDyGoWzrRAQIFqRyRJdrCgw1Pm6u6IV3SUR1qAnrNrfd5tbaXVcOpyrWSFZEcHIGJaghGitFDxxCoG6taYUWnWrGQZvk6geqf+sQqFUKsVgI5xdsWGsoVbooFAS9tIYwxuGIFBL37E3qz268NAl2jB/9RMlA0mUKQqnIJSYTt5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPF76AA2D882.namprd11.prod.outlook.com (2603:10b6:518:1::d30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.25; Thu, 3 Jul
 2025 13:14:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8901.021; Thu, 3 Jul 2025
 13:14:14 +0000
Date: Thu, 3 Jul 2025 16:14:08 +0300
From: Imre Deak <imre.deak@intel.com>
To: Luca Coelho <luca@coelho.fi>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Imre
 Deak" <imre.deak@gmail.com>
Subject: Re: [PATCH 15/20] drm/i915/dp: Read/ack sink count and sink IRQs for
 SST as it's done for MST
Message-ID: <aGaCIMPOqLdfGIWZ@ideak-desk>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-16-imre.deak@intel.com>
 <b32389ca0460b01d91f5adf42b1a92f81cccd2f4.camel@coelho.fi>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <b32389ca0460b01d91f5adf42b1a92f81cccd2f4.camel@coelho.fi>
X-ClientProxiedBy: DBBPR09CA0027.eurprd09.prod.outlook.com
 (2603:10a6:10:d4::15) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPF76AA2D882:EE_
X-MS-Office365-Filtering-Correlation-Id: d3215c3a-d296-400a-7020-08ddba3381f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?zv+FektabbucWXEXzjfIBUCFCAZQUMSyqg1peAtQd0p2/0TYAP6ixVCLgUeQ?=
 =?us-ascii?Q?mZehen5Xa6izKaVcBoNZZCafx3AQfCJ7fxAORk98qwBDjVxYTMrWWQZ3eqlb?=
 =?us-ascii?Q?z5GX0DzwM17U621Q8pY1U4r45A2ETwfml8hgyidgqey6PbnpK6gjv4vnq77k?=
 =?us-ascii?Q?M37OxJVBdslbi827h1qpAI3dNevj8vIc8tMTeOS1mVzSamKnezHK6ckA/lO3?=
 =?us-ascii?Q?DbAIUR5g2r4ewhmv0dZO2D1Uo+p/eQJxFT++mmsP42da+W6S50h2MT5MVtdc?=
 =?us-ascii?Q?Af9vQIAHMAG9mO5XsQksgVPEYpyzAWVyiayWhFXjtrnnk206sBGWMmR+Yzyu?=
 =?us-ascii?Q?S1BoRSyzgJRFSYAagBQ37wKX6BeMJ8wIfLhkmSfkcU7XNTxOEG+7TAG5tDUg?=
 =?us-ascii?Q?hxBOw0Ojp3L3aI1yGUqAwx2vaVEwh0V1fJvDCNJDGqKb7ezjDrFyahR20lb8?=
 =?us-ascii?Q?FT5rpYloKrTfOHl8PkVhXKyCmp7SUxT9rfnFuZJBzqPlWTHQcrxCtMaZdvJW?=
 =?us-ascii?Q?GSlLsr1dVNZ7YtlEa5zIBB/wWvr7iEGcoaeyPB1O3M7Ud8GHKK/oFG67QW31?=
 =?us-ascii?Q?AUccato1yEJvysx1ELX9Aipg0dZx870I9LSACbI3QhcSvAhwNzKmUG5CrYo/?=
 =?us-ascii?Q?/PC1xlMF7mzxR85RZNT8Ly++bg7Gt4QHJ7JFWrtLYnI2WjcFnr+re2iInLdE?=
 =?us-ascii?Q?uKzYQzREgxSScvOnXDAG9UioAllb6VTVc7nfgA2bZ0OvEyGh+pjygMKQeLck?=
 =?us-ascii?Q?ScHRaY3IFbcfPSI8uEpC/TKbWaDxe1YFoCNA3IovTtoPlSrqBk+Xz3sY5D85?=
 =?us-ascii?Q?0pcRYwhmg+G9MNF19rwdb75fz0sdPRxmWhT0AsTapUSDTF9sAV/z/GzoTabE?=
 =?us-ascii?Q?4+06xpOA3/dUooxDseR76KUE7DqqBGgFqplYbZtCHzI7ADISq4pwJKKld7Vk?=
 =?us-ascii?Q?J9qyfpX5aA4xQT89G8xZRvuaP2y0cdArNZy5hl4FDYZSAb9Fh7841Gkbfp/M?=
 =?us-ascii?Q?XOzIGNhHuMTJbEr1JrFxJUx7WcSBP8uStu+vZv7VQJGUA2nLn/QZ62H9I7Kl?=
 =?us-ascii?Q?yVkdzvUqBGf1vAkuSHkFmRzdQIT3asTCUkli8hBfRvnqkwLMnNU6JJ87yevy?=
 =?us-ascii?Q?T/gAeW/2c4+ROSvzB/wqC0JPwJQtd1NHiO29FsNs9rhJBSr2OrgNdM/yR5jn?=
 =?us-ascii?Q?KxAx35sGcbf/fonf13LJs2wOCz7eN0EZ5zIOG2kDBH8eF19WsWJJinlMYjl+?=
 =?us-ascii?Q?agdtYBiAMMg4nzsKVkuxLzDfZek9kdxFgVEw2E0oFSZCTF1ZVv/oGe/9RyCx?=
 =?us-ascii?Q?tgQA+RalNDzobKgYM167m+Zumaukywl/LRLzzSMwlr5FKZvO9jFfM6knEl6S?=
 =?us-ascii?Q?alTXe4WsDzknYepMYohZr5khjthcSFymaYT3tuKpucXH5X6tUtUssSHewvtY?=
 =?us-ascii?Q?UXzuiJcgxXQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fuirK3t+iYdycvm0uro0ciSp3por2oH18VWUtFlaJXYLFXKM+i6cE82PAbbm?=
 =?us-ascii?Q?ne7E1V/GbgW1rLIPnloxW3KqF6PZceFwNJU7UX4JgB2xUHCxKQqxSZVHFCkd?=
 =?us-ascii?Q?3i/fThayez9Uf3m8SJNYhSLl0wp4llCV6VnotpRdE1FQNL6bzb79M1sheXAy?=
 =?us-ascii?Q?XhmZhWzmjH9BQJRNy4ZZM/+oXq1K7Nu1epBEiGt4d1/HhrBzcjTHuKc0ek2A?=
 =?us-ascii?Q?aWt/vhFcC6TWuujW+Kxz3lY6NQ5MmY0v+dibg63AQWa3kXn46GNZQmYp3lrU?=
 =?us-ascii?Q?9Z85wa3HlXsAw6X8BpVc6czq9Box/frpXegwZN2S5keVRzvuXVjhz68+8Shb?=
 =?us-ascii?Q?JEoAqGtQvgh+RvgYK2kM5iE6OSEp/Vq43pDziG6/Wo1GNuEKgDX36Tu7lYtC?=
 =?us-ascii?Q?fsRxycd5fAwIHiTqRsGAnDF9OoUwYYnoSAmQG/6zHn5+rmb+r4Wqs/y8pZNd?=
 =?us-ascii?Q?gDS6XRQVDV8IH7q7E9oR8XAb4bvRpql9mj5I8vpr+Cj19kJztbVqZvFp0dbo?=
 =?us-ascii?Q?RK/IV/QM0AcyVvr1jgSQJt2EE75aiClGvaLS2HSCp3TgNeIQmfzDylJ6asJq?=
 =?us-ascii?Q?D2Tb2zQoAKxqfM3RhZOcRwkg+iYIi4FO8/j+Q10RfgyWaL/Gbwup7VPu8oyX?=
 =?us-ascii?Q?37a6+Bcr1Eeap65XBF2zMeKhQW66xPf/1Hm7X3wzU8e+TlYv9RXIz52cwtHo?=
 =?us-ascii?Q?nAwI5JaZBMh9Nc2QJ9K1CRdFY/Voke3vgvRFe8Jn6wJknpf9NbtrWAwNEkxt?=
 =?us-ascii?Q?G7uFdGpTbw5jFj5DDHfzOWqsaiY5lKFRu9HFUdSbNYZnIjkkdsu3hfhI+Hxm?=
 =?us-ascii?Q?1I7TnFFPXDDMX4x1yJqi9nRBZQdq0y+P596vfFJ9Inq9cQM7KsHOta712T1J?=
 =?us-ascii?Q?bK1PjM5VHZ2aSEF47ZHdm1oqRKurgDpnftGktK5M+csLfycxWh35C9YYrGwG?=
 =?us-ascii?Q?OnfA0ocBptNiTXQL2pw/wAAOFNtURH+WW1XkdlwVPNgldgSi5OjucZcR1QeL?=
 =?us-ascii?Q?5BHQYQID+ulA3WWGts5UsEw6Vb8iWL6FkwJLGFT0VRtvl7+4jOnYogz5jqX4?=
 =?us-ascii?Q?lCMc9TcJq6US5ZYScggwBoB+lYi9QApDtXf/q55H5Acw9Hl9KxhYfa+yuCem?=
 =?us-ascii?Q?saM/YS0imQ17x58vUs42TS2ybxbBVWRJp4KO/L2CFlg04eYDE5LFsZISUJN9?=
 =?us-ascii?Q?Sc6L/BPUOAV1FCpEUdeWC1pF4SX1csB7TcRo2LZAA7rIAGKUheECGTn5zVd1?=
 =?us-ascii?Q?rm00v2vWlK3+zLHLRBYtFoOWnz17GUw2IWm06rQxqoA4O7ylMF0SU6zVhRKa?=
 =?us-ascii?Q?LVFruz4v1Ov2udOaFuyuNppeUkEE+MmyVtbntiJqfQLT5XwhZ2is7wpaj6j2?=
 =?us-ascii?Q?TWwfCeraAV+E0v1tJ4AwrMLnFfA2eyMpzAgDIKh3C1Fck+4gj0sH9DA/jEb0?=
 =?us-ascii?Q?2+dCqyLHsLU/WTGSgKIE1dNsg4CjmD9vJaM2myuALq2doj6xCviSsWm40q2+?=
 =?us-ascii?Q?QB9/7L0blBN/oGe3e6eIO3DNmAPxcy2WdTzik/HDNxcFd3yiu5lzJEBipTGM?=
 =?us-ascii?Q?gvu4ovMzYtls9ALxKsYG6kdVqXYWzoPljiuIXVsa?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3215c3a-d296-400a-7020-08ddba3381f1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jul 2025 13:14:14.4197 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F9hBywNYLdmKP+7LCjQrrEpmY7loTdQskp5fYbNaDYgvqxPnVa/o8CxoYStc6hNV4Jqr/+LOvgH9GDxnLREPmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF76AA2D882
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

On Thu, Jul 03, 2025 at 04:02:18PM +0300, Luca Coelho wrote:
> On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> > 
> > Read and ack the sink count, sink device and link service IRQs for SST
> > the same way this is done for MST, the read/ack happening in separate
> > steps via an ESI (Event Status Indicator) vector.
> > 
> > The above way is more efficient, since on newer (DPCD_REV >= 1.2) sinks
> > the DP_SINK_COUNT_ESI..DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers can be
> > read out in one AUX transaction - and the 3 last one written in one
> > transaction. Also this allows sharing more of the SST and MST IRQ
> > handling code (done as a follow-up).
> > 
> > For now keep the current behavior of always reading the legacy
> > DP_SINK_COUNT, DP_DEVICE_SERVICE_IRQ_VECTOR registers and not reading
> > the DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 register.
> > 
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 132 +++++++++++++-----------
> >  1 file changed, 73 insertions(+), 59 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 2ba4a810f22c2..2e6ed7d2a64a6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -4573,6 +4573,70 @@ static bool intel_dp_ack_sink_irq_esi(struct intel_dp *intel_dp, u8 esi[4])
> >  	return false;
> >  }
> >  
> > +static bool intel_dp_get_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
> > +{
> > +	memset(esi, 0, 4);
> > +
> > +	/*
> > +	 * TODO: For DP_DPCD_REV >= 0x12 read
> > +	 * DP_SINK_COUNT_ESI and DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0.
> > +	 */
> > +	if (drm_dp_dpcd_read_data(&intel_dp->aux, DP_SINK_COUNT, esi, 2) != 0)
> > +		return false;
> > +
> > +	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
> > +		return true;
> > +
> > +	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
> > +	if (drm_dp_dpcd_read_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &esi[3]) != 0)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static bool intel_dp_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
> > +{
> > +	/*
> > +	 * TODO: For DP_DPCD_REV >= 0x12 write
> > +	 * DP_DEVICE_SERVICE_IRQ_VECTOR_ESI0
> > +	 */
> > +	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, esi[1]) != 0)
> > +		return false;
> > +
> > +	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
> > +		return true;
> > +
> > +	/* TODO: Read DP_DEVICE_SERVICE_IRQ_VECTOR_ESI1 as well */
> > +	if (drm_dp_dpcd_write_byte(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0, esi[3]) != 0)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8 esi[4])
> > +{
> > +	struct intel_display *display = to_intel_display(intel_dp);
> > +	struct intel_connector *connector = intel_dp->attached_connector;
> > +	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
> > +
> > +	if (!intel_dp_get_sink_irq_esi_sst(intel_dp, esi))
> > +		return false;
> > +
> > +	drm_dbg_kms(display->drm,
> > +		    "[CONNECTOR:%d:%s][ENCODER:%d:%s] DPRX ESI: %4ph\n",
> > +		    connector->base.base.id, connector->base.name,
> > +		    encoder->base.base.id, encoder->base.name,
> > +		    esi);
> > +
> > +	if (mem_is_zero(&esi[1], 3))
> > +		return true;
> > +
> > +	if (!intel_dp_ack_sink_irq_esi_sst(intel_dp, esi))
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> 
> Again, I think it's better to propagate the error than to swallow it
> and return a bool.

I agree. But doing that would make these functions return error in
different ways than the MST

intel_dp_get_sink_irq_esi(), intel_dp_ack_sink_irq_esi()

functions, which return a pass/fail bool. Imo the error return should be
the same for both the SST and MST variety of functions and converting
to propagate an error instead of a pass/fail bool should be done for
both (SST and MST), which is best done as a follow-up. Are you ok with
that?

> Other than that, it looks good to me.  So if you agree with this
> change:
>
> Reviewed-by: Luca Coelho <luciano.coelho@tintel.com>
> 
> --
> Cheers,
> Luca.
> 
> > @@ -5393,27 +5457,6 @@ void intel_dp_check_link_state(struct intel_dp *intel_dp)
> >  	intel_encoder_link_check_queue_work(encoder, 0);
> >  }
> >  
> > -static bool intel_dp_get_and_ack_device_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
> > -{
> > -	u8 val;
> > -
> > -	*irq_mask = 0;
> > -
> > -	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > -			      DP_DEVICE_SERVICE_IRQ_VECTOR, &val) != 1)
> > -		return false;
> > -
> > -	if (!val)
> > -		return true;
> > -
> > -	if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_DEVICE_SERVICE_IRQ_VECTOR, val) != 1)
> > -		return false;
> > -
> > -	*irq_mask = val;
> > -
> > -	return true;
> > -}
> > -
> >  static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > @@ -5428,31 +5471,6 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
> >  		drm_dbg_kms(display->drm, "Sink specific irq unhandled\n");
> >  }
> >  
> > -static bool intel_dp_get_and_ack_link_service_irq(struct intel_dp *intel_dp, u8 *irq_mask)
> > -{
> > -	u8 val;
> > -
> > -	*irq_mask = 0;
> > -
> > -	if (intel_dp->dpcd[DP_DPCD_REV] < DP_DPCD_REV_12)
> > -		return true;
> > -
> > -	if (drm_dp_dpcd_readb(&intel_dp->aux,
> > -			      DP_LINK_SERVICE_IRQ_VECTOR_ESI0, &val) != 1)
> > -		return false;
> > -
> > -	if (!val)
> > -		return true;
> > -
> > -	if (drm_dp_dpcd_writeb(&intel_dp->aux,
> > -			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
> > -		return false;
> > -
> > -	*irq_mask = val;
> > -
> > -	return true;
> > -}
> > -
> >  static bool intel_dp_handle_link_service_irq(struct intel_dp *intel_dp, u8 irq_mask)
> >  {
> >  	struct intel_display *display = to_intel_display(intel_dp);
> > @@ -5489,30 +5507,26 @@ static bool
> >  intel_dp_short_pulse(struct intel_dp *intel_dp)
> >  {
> >  	bool reprobe_needed = false;
> > -	u8 irq_mask;
> > +	u8 esi[4] = {};
> >  
> >  	intel_dp_test_reset(intel_dp);
> >  
> > +	if (!intel_dp_get_and_ack_sink_irq_esi_sst(intel_dp, esi))
> > +		return false;
> > +
> >  	/*
> > -	 * Now read the DPCD to see if it's actually running
> >  	 * If the current value of sink count doesn't match with
> > -	 * the value that was stored earlier or dpcd read failed
> > -	 * we need to do full detection
> > +	 * the value that was stored earlier we need to do full
> > +	 * detection.
> >  	 */
> >  	if (intel_dp_has_sink_count(intel_dp) &&
> > -	    drm_dp_read_sink_count(&intel_dp->aux) != intel_dp->sink_count)
> > +	    DP_GET_SINK_COUNT(esi[0]) != intel_dp->sink_count)
> >  		/* No need to proceed if we are going to do full detect */
> >  		return false;
> >  
> > -	if (!intel_dp_get_and_ack_device_service_irq(intel_dp, &irq_mask))
> > -		return false;
> > +	intel_dp_handle_device_service_irq(intel_dp, esi[1]);
> >  
> > -	intel_dp_handle_device_service_irq(intel_dp, irq_mask);
> > -
> > -	if (!intel_dp_get_and_ack_link_service_irq(intel_dp, &irq_mask))
> > -		return false;
> > -
> > -	if (intel_dp_handle_link_service_irq(intel_dp, irq_mask))
> > +	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
> >  		reprobe_needed = true;
> >  
> >  	/* Handle CEC interrupts, if any */
