Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E059EBDF0
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 23:39:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3E0610E065;
	Tue, 10 Dec 2024 22:38:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lPRjuZDK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D0BE10E065
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 22:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733870340; x=1765406340;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=g+1uDD9qCPbk/VJvR++D2R5RYPPlxDaXr2n/P+FnNHg=;
 b=lPRjuZDKiLUT8Rb/m3prT3Bznvp6POMYcrBTic2rcz6Df9ab3WAQm70o
 HfkLKYI4o7lC3IkkJZ7i6iKOM5nDbFKlFgD7ugvDn/MbQz2t8mn1ODXCQ
 IeJBR3XtQmjSge992ooFjRtLC53auXd4k0x8x1SxNfZQfB6T6RqBfK3WV
 fcXrqusKNMsRb7MeyWcBsc4CWjli7tcKLRdPn4Ur9XLvvVi2djKPNkwGw
 guz3fB9j+TkMXMc3vzxqOojvYPLIZ7lwgqDUXEJxOBwGfeUFQaDe+Axrr
 APCIFNz4yjeVFa+vcOndlU+8gP12WPHnRgStBaOGql57OpyJybGQWvXmu g==;
X-CSE-ConnectionGUID: LE93t5MSQLeYzlu+xDJXqg==
X-CSE-MsgGUID: 2f8WDO4tTUey1SkhMDFuhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45617048"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45617048"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 14:38:59 -0800
X-CSE-ConnectionGUID: lTxO95w7QuybDsCg5yFMUg==
X-CSE-MsgGUID: 7RNSvp+mSxWo0Gl/HXsC2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,223,1728975600"; d="scan'208";a="100520510"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2024 14:38:58 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Dec 2024 14:38:58 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Dec 2024 14:38:58 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Dec 2024 14:38:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HcAC3VqUFj77zQqYDzDTGuV5eX3kWW+saezYMWkOXkXjkvIOTOJHNBRyKp0Mvem1fk+FGVsOGYn46y0L2e03huliQzw0KEKwjCaRWCJ2DJ/l2CxGIRgQoJEXUSmxOYC5chxKvJBks/EV/fsEqSzZHgtQcSLSWfTAkJAHW6fS2GE/0L1fCunVwVdIBebd5nfw78grttbGnNw+Msvsm3wMj6ueJCwKxccyo+S2pex9QdWYQkea7jjHGpCtTDmQKCmDog7l5to6it1Fn22zuYv77wYgZookv0hz+KUjyk8jS9t1Y7rBhoeDp8BxI0UiH4St+K9kNevccxxqiWfLDV4UOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HY7/A9ypejXyG6GBme7diQs6xVyHrOv/3qqGI7PR+WE=;
 b=kNW++WowGmmeKxquXzhldolV6VFK5L4QXNqPcUT0syz7OIr/76fJxXQgu0ptXLiYcPqsR0Vwi9AyBwcEVchitHdug66l+oYIkpY+9dSIjrqdwfT2nXJ6zGFlLPeQyPXeT5XCFBLXd0fGre182A8POljYrLc4unvwH1B2XaYr16jUwFwb0swvWe/kxCCkjKhRmA5f1zf0k2w/JzYnjGYpMwjjlzmb1eTjh50dnxwsaMe4V86DcMUyO3t01L8p5lsWahgKBVt8X32zTC9OybwHvCVUEAJB4YBqMNsFrQsSqVcGhYf5hineB+Rn+7/L3fXIBNa/muQs9/Uc7RD3ZlPCew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW6PR11MB8366.namprd11.prod.outlook.com (2603:10b6:303:24c::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.17; Tue, 10 Dec
 2024 22:38:55 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8207.014; Tue, 10 Dec 2024
 22:38:55 +0000
Date: Tue, 10 Dec 2024 17:38:51 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v1] drm/i915/selftest: Log throttle reasons on failure
Message-ID: <Z1jC-4ZDcxaGBzcw@intel.com>
References: <20241205081413.1529252-1-raag.jadav@intel.com>
 <Z1McDvyOeoiVmOmd@intel.com> <Z1Pn0hCm8qD9tO4-@black.fi.intel.com>
 <Z1cat34KiCX8U-gP@intel.com> <Z1gBdqXSCpJVjRmh@black.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z1gBdqXSCpJVjRmh@black.fi.intel.com>
X-ClientProxiedBy: MW4PR03CA0118.namprd03.prod.outlook.com
 (2603:10b6:303:b7::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW6PR11MB8366:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cd4cd83-6539-4b7f-d31b-08dd196b6dbd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?h6Kxjtt0k6R8LD/jJ5x5TSDR5DIomaqychtS+fFV2c6QjCRZAYfp9MWDhfpp?=
 =?us-ascii?Q?V4Y2IOH5xbssfLP8V/ubE/El0jXmMeo/5FP3b1fT1MiJAbgrdYN5ok7jHXc6?=
 =?us-ascii?Q?UFVbgztmPAC/ZujmbMtM1hZFoeU5woEG0Q3q0uNALSjD7KW7WzuYqOJBwqEf?=
 =?us-ascii?Q?Gdt+4wQK8oPXI/4FfhKVVl4xYOQhSn7GWSFv3/5UQjKgo1cn64T1EjHJv9ND?=
 =?us-ascii?Q?jzyLAfglcd7xmUL3mkvR7sWI0CuUhJ/RLukWsMcZkpAyw9RlOyZvzzVeuQau?=
 =?us-ascii?Q?xCSIySwFVnVbMtuskJlohlXxlVIqXiiUV8uzTbMNcjG0wcXQSMfgWb1LuP+r?=
 =?us-ascii?Q?nsuOupP5S3CEqiQKT5SvevUYcLNWML3LECtP4SKV/p/HEsjys9y67Ry7e/GG?=
 =?us-ascii?Q?whkhYVJ7PG/fDizH90EtiryJOrif3mB8ikUHt5pDp17iqgXrkzg/5O01/tVx?=
 =?us-ascii?Q?okiMyOthBmhGL8bTSc+sbAo8EKOGaH9Aa2zJRblOi+eGj6xM06JNsCQxmLS/?=
 =?us-ascii?Q?i9L3N1tuoCwK+LhF/ZneCsSyFwAS3OIBE0+rXElkuHzGcLgkivVxN99KXSjY?=
 =?us-ascii?Q?n91HRhGC9o5o/DFS6f6JVBaq7t+M74Fbah7PnL/5jw3R0yGGbKbxy1ZvObVr?=
 =?us-ascii?Q?CxFff0nZcfuLzA6YBGoQBNIl71X6m5N72KxD1qNn3xAiNPwzqSeWCwFdK6ay?=
 =?us-ascii?Q?Z6qhje9313KZ2udCmLJ7/cqAQ0TZBgvanbdBgaFHZSTVsGEzc0pwNNMMZiqZ?=
 =?us-ascii?Q?qmTdxa6vJqwwAKYkCyeiRNUu3VDYQG/hnK7Elbix+NUNlJhOw1cybo03E0Mb?=
 =?us-ascii?Q?OnKSJ0bBgF3XS7eBaP2Jk2jt+3jy6WbbRUKY9655Tp5UHUtzXCzAhyBy5OeD?=
 =?us-ascii?Q?X42aLDXBFoYUy/8qHI0HLZfNBhzTdIletH63HgIXZkcddDYd9T9CQbZhREtv?=
 =?us-ascii?Q?wtGWgqfiDaYtBuH0UbVnPrIvJgYcufS0EUDGS63h+oWVJ0zLkCXoZK6/zVNm?=
 =?us-ascii?Q?JO1uPZKCayjYhfh0pJ2FzbN/TlaBaZM1HaIGDldFQzE9qFhmH0nYJAN7hI5k?=
 =?us-ascii?Q?t0Eql2ASYVoXl8V+JgQmKUE4fn28LRk4WFT94WUk3lnFsszxe3Nf3smNGkpf?=
 =?us-ascii?Q?w68ROjhoXIIEwikkv7o6tJoFBC+hiZ9Ri8ZX4sJ1qNc8/R8tZwzfW4FDTjGm?=
 =?us-ascii?Q?qcwFLqZ4omGwHJ0cM+wlW0FcZsRbCEiNoS4Ka2k/heeuDyfFuuZmjmjrMHWj?=
 =?us-ascii?Q?M3od+mdCuZrEvLfDJ7Nlnr6WqhoLYsaq34OaZqYuafcrVPE9Og2rWbCJfDEC?=
 =?us-ascii?Q?zKzzC9ZiFk50Vl8rTtAKGLSUNPzFwY4AdwWyPhJqioM73w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SRGj+IQIw7xldi35iv90wD9TjMVqi3DrE6l0m0AySpdHDtaFuRdt+6Vf3VqO?=
 =?us-ascii?Q?Y3XOgyXrS/TOS6R9g9KStEaiGypE4JaqWOlHCqOraUdhSPr7ZtX+PjY+SnH0?=
 =?us-ascii?Q?aAKKFCh3CkxdaoNLhuQRy6WaUX1/x5wqXqEhZ074fijOxyFc0hoWFsWRoEo9?=
 =?us-ascii?Q?Cprm8ExZmJoP65U1aOrLVuCH4Tc/Utmp6WXghl/pu+zOTfGPcU3zLNE2gDLO?=
 =?us-ascii?Q?nclsg2DSJhCZUvGx9hkPMimY15VF4Isk0ETNQ9c/nQIA4DxNMl1toQ67ShfG?=
 =?us-ascii?Q?55B50dTNibEMJc4HDas67WT6Xx2ys15PuYnGu7QOYMJE6KWTbcTOpXYJMMG2?=
 =?us-ascii?Q?XES1wv2LPreXGhuSNqxh/Bjg4kLSYGqPUWQTLmtasHh64FtXb9+/xI4KH+O4?=
 =?us-ascii?Q?lVWSNmPCEMpmSObavZJ55ZX4Gtgpog6iBYF/xC4jcSaqTk1+JtVJXe2l8gcg?=
 =?us-ascii?Q?zXv8ImpvMtIUyZYQIDT5b2ezxaFVz+hcWpMIchHISuLMKyphmbg+p0EwpaXC?=
 =?us-ascii?Q?K1IpJ0nDMizXTwZVT/sdqSLUh+teHZpqgJFJgvUYloRLFk1MYKf13YUDGOYM?=
 =?us-ascii?Q?CMUNjQygjDnonWTvrlRy+X5NVbZP0VOHEynMcFypuzfxsTJ2/dS0Uw2SBT+0?=
 =?us-ascii?Q?IOsOY2FVoGUH9gc7A/fT9+wjbkgMQOd05d1WFAHEomKFHYOKI2YvtstvV9G3?=
 =?us-ascii?Q?ozKjMiftZ/G3KU0sDo8VtOrzXo2SqPGhoe8YNTJo/K4wFXxTtmAzyIq/RdoC?=
 =?us-ascii?Q?6PcmS2XHw8h++qCDM65ZbDnSW55q8eoQNFGvfHya4nmfYe8ch+b9mby8mOH9?=
 =?us-ascii?Q?zmi48P9qAuf7fyPOAjHiiXGEa3Z1IT42OIPAAQUgvbV3BAgKTGghaC6RKKlp?=
 =?us-ascii?Q?tIhOypBBpVaznXc/aj2+Zf4d3NXo5RNB4OovgZOzEfBu8VLAElYsKOrXKi9L?=
 =?us-ascii?Q?nIPojP+btcWT2P/Hu88qZ0R+VgeLxeIoGsbqJqSjpXbABNtMjAv3VxJW39/W?=
 =?us-ascii?Q?QK8/txvK40bHYpVtNTU/a0YaIcJWE6L8P4pMnKPLZpn/rGypNsWFOd8fZE1+?=
 =?us-ascii?Q?aPSeGp6UL3v1ruDpnqXVSLA8+TDxxIhIzdf8GBiuWVvlqX47+CymRV+blaOH?=
 =?us-ascii?Q?ulQCNGA0YWE26M7DQMTD2yvFzORKnDYovnZEXZDh1jAzKmbc/Y0DuU6dIgbx?=
 =?us-ascii?Q?mRHKK1aAy8kT97TatC6Wkq2f8dC52bbVVVlDYDlXIKFltj0q8OTJgamAXmUF?=
 =?us-ascii?Q?SiT5Mn7apurReez8BHhVF2fyaNLyNzW/LwpdvAQJ2i01Iv+vC1HO1IoRuaj0?=
 =?us-ascii?Q?HkzQ60q5fCJLYF0JeEn7pcbd0YxiX0fGHAJYKNbzQO2cAJH+GUvyXoJeUNe4?=
 =?us-ascii?Q?Dkey112OGILUA/+Evpcl26jETaXYIFEgOe9dcVo9b7pmYhiNCBk5DBnjXPFB?=
 =?us-ascii?Q?vKKioXKZnlSaMZR90Aaa6APpB3KPzJD9xAe+bKjuT0V0CsHl+AnVsyUfNfIV?=
 =?us-ascii?Q?oDePAwj7f+8JqPhGb2g+JGvokWcn1ivV5wT2ls1L2b83imjYOJhHvRK9e6mB?=
 =?us-ascii?Q?GdH7IyampFtoMlMzQncWp/QHsP/yxLBgARAnMADo6hV5rirCY6r23PeDmt4G?=
 =?us-ascii?Q?4w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd4cd83-6539-4b7f-d31b-08dd196b6dbd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2024 22:38:55.2188 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dvWoZFAwJJjWqvEvV4TpC9XxGuPQmkF5Bj+R1wmhSs/chcEN5QwM8+oqcyE8LZeC4tywhPjo0yp7JhYqkOUByA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8366
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

On Tue, Dec 10, 2024 at 10:53:10AM +0200, Raag Jadav wrote:
> On Mon, Dec 09, 2024 at 11:28:39AM -0500, Rodrigo Vivi wrote:
> > On Sat, Dec 07, 2024 at 08:14:42AM +0200, Raag Jadav wrote:
> > > Cc: Chris
> > > 
> > > On Fri, Dec 06, 2024 at 10:45:18AM -0500, Rodrigo Vivi wrote:
> > > > On Thu, Dec 05, 2024 at 01:44:13PM +0530, Raag Jadav wrote:
> > > > > Log throttle reasons on selftest failure which will be useful for
> > > > > debugging.
> > > > > 
> > > > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > > > ---
> > > > >  drivers/gpu/drm/i915/gt/selftest_rps.c | 7 +++++--
> > > > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > > index dcef8d498919..1e0e59bc69b6 100644
> > > > > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > > > @@ -478,8 +478,11 @@ int live_rps_control(void *arg)
> > > > >  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
> > > > >  
> > > > >  		if (limit == rps->min_freq) {
> > > > 
> > > > I was going to merge this, but then I noticed that this prints only
> > > > when the throttle moves that to our min_freq...  When PCODE throttle
> > > > the freq, the guaranteed freq can be at any point, not necessarily
> > > > to the minimal, so this print is not very effective in the end of the day
> > > 
> > > Makes me wonder why such a criteria at all?
> > 
> > very good question...
> > Perhaps we need to revamp entirely this selftest or kill it?
> 
> Depends. Do we qualify throttling as a failure?
> If yes, we'll keep hitting this every now and then.
> If no, then just dropping this condition might be enough.

hmm that will make CI angry... we can remove the condition and
then tune down the msg to debug and not error.

But perhaps the test was done with the assumption in mind that
a throttle to a minimum is a catastrofic error, which I disagree.

Throttle is throttle is normal operation and depending on many
external factors and many things that are out of our control and
that changes from platform to platform.

> 
> Raag
> 
> > > > > -			pr_err("%s: GPU throttled to minimum!\n",
> > > > > -			       engine->name);
> > > > > +			u32 throttle = intel_uncore_read(gt->uncore,
> > > > > +							 intel_gt_perf_limit_reasons_reg(gt));
> > > > > +
> > > > > +			pr_err("%s: GPU throttled to minimum frequency with reasons 0x%08x\n",
> > > > > +			       engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > > > >  			show_pstate_limits(rps);
> > > > >  			err = -ENODEV;
> > > > >  			break;
> > > > > -- 
> > > > > 2.34.1
> > > > > 
