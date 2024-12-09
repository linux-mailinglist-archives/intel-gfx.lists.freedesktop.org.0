Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D42389E9BA2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 17:28:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078B410E4BF;
	Mon,  9 Dec 2024 16:28:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dcv0WSWM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75ACF10E4BF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 16:28:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733761732; x=1765297732;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nflV21zSvRA6B4YyTNHYeHxNsNq/qRY8FVox0KQyHDE=;
 b=Dcv0WSWMnVNQFJ6tDJ4xPUfwXl2s0SaVcwxS4e0/A2b1XcTmEOfQ2Hc+
 P5vgwhznkg8uMJ0+hT21nMtMxs4Ti45JJwE8BuQy4J6V0hyCiob4ODIfM
 GlVl26EQUhqx1c/Aemp9ALyTll4KNW1BnVSe8cHAbq146v9bQwz3ZsbM5
 nKDjvB4Bxtj5PJ8mft29GXhtUQ4zNxOKfm1kjQpsE+hA12xaWYxprg884
 su/tWXUGbnOCfGW0idjaU+UTyF4DVebX7/JUWOJy/g1uHGtW3AGIccPP1
 P2FRIhG+ymjiHfv4JQdH9hn8tW0Vvm66FAl8n9fcCCJPoKsm+HFDtsi6t Q==;
X-CSE-ConnectionGUID: 8TDG9vhFT4+PTDXe9PlPdQ==
X-CSE-MsgGUID: GwqN7R2WRRCt1JzFwMHgSw==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="21661630"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="21661630"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 08:28:52 -0800
X-CSE-ConnectionGUID: ZYPDXQgqSoW4oYsqr+ABCw==
X-CSE-MsgGUID: ibwFVEn8QymdNbXhrMFChw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="99597519"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 08:28:52 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 08:28:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 08:28:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 08:28:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vkJR+W7n9Zx+YV/BVuVd2Lj1Rs8qJoKn72bYNd7UFm2jP1sL4gAV7KhhIkHAzgzt48pNjVzWDwDyVkF6SEJdHaDc/h2srk9eBZNrupfieD63Zj/KCZQVQJs3g2foJQaQLu2qSnB260TgzVHyXapm3WJg64j1pS9KLvSJjyqtXTGGJUtU1h8zCuuhKH3v7qyJRTA+zDU1uuRzDVLyaJhU40Q8YawDXfgIcmA5MfmgRmVsNvUcoEw+Ms2ds6BT/2g5yJ3xQ7uc70UJQi18WAhg4QVmaHX7i/GHYAeJ5Fht3tGjySgMDlOAIBHOKNQBYXCLtuMOwcSACIUMALFJwClc1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q79tibcUXfjIYIaLlAUR9n90cpUa21RV61kdbHkobkQ=;
 b=FvpyLidbyTxXDnKrsug4B5mSvjSDs2iLxldhWsUTj+frt6iSDERdV2YnOLwUB7Hf/Ijk9O2//d8KnKC708vm7o8m3Gb25Kq7jE3CypZYVLjOoVZ/ysG7NS/fNm4IYfPzYbUCu51UQc9af1qQ714plQKziydOICD5efCis+O2GM2o0lZybem6uOFIjpekfM9eIUq0qmhwOGczRpDV+kiQZcyVZMaZr+4M8r1YMizkzCMBAS4qMxUWJ7nQ+0CCAvh8IJa2/gpiDvIVFy+VMrG9hdhSUW8/UwiOEugZhIwkLUeqOlTJuUyKRsX3snxXHHB5zhL80Zq028yaEcY07ofxwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB4801.namprd11.prod.outlook.com (2603:10b6:303:9c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.18; Mon, 9 Dec
 2024 16:28:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.8207.014; Mon, 9 Dec 2024
 16:28:43 +0000
Date: Mon, 9 Dec 2024 11:28:39 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Raag Jadav <raag.jadav@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH v1] drm/i915/selftest: Log throttle reasons on failure
Message-ID: <Z1cat34KiCX8U-gP@intel.com>
References: <20241205081413.1529252-1-raag.jadav@intel.com>
 <Z1McDvyOeoiVmOmd@intel.com> <Z1Pn0hCm8qD9tO4-@black.fi.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Z1Pn0hCm8qD9tO4-@black.fi.intel.com>
X-ClientProxiedBy: MW4PR04CA0295.namprd04.prod.outlook.com
 (2603:10b6:303:89::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB4801:EE_
X-MS-Office365-Filtering-Correlation-Id: 4daa2bdd-b022-4a8f-097a-08dd186e8c27
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?c5AUb+6XL1AVR9Qrg138gDi08PidaD5lzJtiDpj/UVL6IUDb8SBwRe43h5I3?=
 =?us-ascii?Q?L8fA0ppsacEbeJ9AzxAWFQf5zdc94QDa7ozXL4yY80JPGSIIQyaNdfBXeS8m?=
 =?us-ascii?Q?8wESD9bZKB2oF8Sc9AShrGFWF0zjL8BPBE1pauuxmRMuzDg8lSULaDsg9XxG?=
 =?us-ascii?Q?u5fV2FxHikheSG08LTK6ERYMzMf70A17tlGZUmZ9tioJXd1NjP0O0SdwrgTY?=
 =?us-ascii?Q?zPbAVppZNrOwYm0cOWrfwEHCZEZv0f8Q92/8XUweoCaEoibKfNW/ORNWRLS+?=
 =?us-ascii?Q?JlZsg6WAQC5nhvGPxRGN18TjD+TMBhzFugg1PrIf7jALPUz+/NFvMpc8wVJ4?=
 =?us-ascii?Q?BSRS7h4FeNABqKHwUunSPL1q7ZktyZcbppsdXTx6i7C/t2MM5VtxTeWBC/oq?=
 =?us-ascii?Q?+IwCztKcrzDyBRtcISCHqBmCRG4KNvz3iTManFpKGq52IJf1qw+UGSpfjpcl?=
 =?us-ascii?Q?upJzNr5kn8PDHhvXhvL42w6qaFiB16EpAlTg8K8DoEd5b9ZLQXoyqIG5VAC+?=
 =?us-ascii?Q?AOiKksu1p69ocu2bi+ackH2cflX3mYDZxI6IniYxONlHX+J8vWvD4BIcVNC2?=
 =?us-ascii?Q?ekcFTBlwdA91ljUwCTnDfIaBGxo4cmEV+HciCVI9G1pnaWnd7UxgHErgCZC/?=
 =?us-ascii?Q?v8qpESOXEgNaSvV/XzMkuuqMZrLAf4wOpoRukgFAaOzxJTmAdpZfTNzfILsl?=
 =?us-ascii?Q?Q8w0N8U1d7Jg1O/ybtnf3xX23h4OJBg/PtxVhmKFA4tdrYRtDloLnRoFkSJR?=
 =?us-ascii?Q?jvOcOOWBuM/yNjjOZ3id9eWWRiD/XjknNgiIItZeT2yzNwubOZFZJdpbEMgF?=
 =?us-ascii?Q?NEHQWr6adhqoZ2B8VOzKiWjNhOka9isgUA8FygnGhysL8h2f7FX7axJaZ5iJ?=
 =?us-ascii?Q?W5llvG7Sq5udkcl7RClXmv93dnhX8VWvgt31Rr/nA/CEew+QKaeqUfU1ML+Q?=
 =?us-ascii?Q?tY5V1eY7P77HI/FuNzVSga6lFjJ19xbeiQn2UNwmBpC7fJKjE4E+fiBuGdzr?=
 =?us-ascii?Q?to6QyNkWCosZBX1kDBFfRGx6GXiX4sMpdP4+MY0+/PrNRtXx7+0T89kDx2QQ?=
 =?us-ascii?Q?5+1mUwc+DhE54cs4MZMmvEDZh9qs2A/ZbPxZzxQGxvxxd9NkHatMeHbBGWxT?=
 =?us-ascii?Q?TPgxSlOETEvZ5KY9og47GbmbaHaGrh5Mq3eW1ccLsbSNyY56U4h6fW2lLXPd?=
 =?us-ascii?Q?Re5mkhiqRiYMFyo1Jdze+idStFfdfI55jGFrEFxl9sAjHlb4LdCnLGAldMau?=
 =?us-ascii?Q?KSWmftd1CflX8xXYIar2u/UB1lSwbI/wyCJ0VVLLAcF3CkCAEf+d31R9ZWgn?=
 =?us-ascii?Q?4/pWWA3OTJ8eAdQBdPPg2kvwt7wUj105Dy8+8ttQi4XwEw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BbC+VqaDSYlXtVkTa6K8Isb6n20rFKg4wo30Bi7ino2tG4iFqcpmoyr3nzNw?=
 =?us-ascii?Q?0nKMfnMYr8tQqRAgFI4GOYP3am0fjoBBR25wPu6t3AHAGiTe3c2EwIe6mAV9?=
 =?us-ascii?Q?qpTHqvqv/V99dtdzRyssmtWGYHl3IeJYIo+G2yULPQDeCUFldfR5tkOxPfzv?=
 =?us-ascii?Q?leKv+Dl6LboBBm2rkoFDvw4bNXzpAj4lM2t7twoqWq8/3mwjV2RLymwRWba2?=
 =?us-ascii?Q?AUGvOv5PtGwk3s/j2uoxUM7KAcrXPS1xIADUoyLaY4N351kBkpwRToNPo3Vb?=
 =?us-ascii?Q?Nvb8ZqZyLOjgb5h/FQvax4JQdlSyL9KRalZnSWHCLjx78enZ3dzEqBkYhFe7?=
 =?us-ascii?Q?ZudPqYcU35+XPsvahLUYn48tqUQooxQ6HWlKPIRdwqJT3dlWt312Kv+RKW6g?=
 =?us-ascii?Q?TwJETIebjprnGtlPxKtXzYba9oA1dA9zMjmAB7cvULTo9TdgyJg7h4+w6fhO?=
 =?us-ascii?Q?0NOzdcf7aO0SVK5OWp6iVwum4J+zZtWgpbWzBW5Q3yhqj2eNg7j9ud47is2y?=
 =?us-ascii?Q?7Ngb6JZkdni5E+1+/IoEt08R+sZ4N45+yM/IXsl5wDRh8xchU3QLP9zk+bHp?=
 =?us-ascii?Q?ukYxFP5XTmkuizlhGRsRDX0WZV5tiFgHkMqNY6E8wgym3Z2AzedULJmgj5Gx?=
 =?us-ascii?Q?ZL94IIX7jMoyxVpSSG3SigSP6urruC6MQ4O7XbfjrnRWzy20P3/d+/uTllrP?=
 =?us-ascii?Q?Or9UcgabIZb0ZHi2qnCPo1mcIG92GvT+QNKa1EM7iveDcQDnPv9IQBJJf6Rc?=
 =?us-ascii?Q?Re9gYpv3WDE+KOOgZFotS+QNse5rgO8ZrdRLcvl6iJYFVu50Llr3VFVPaDoa?=
 =?us-ascii?Q?3cj6tmVSa+2HqMoQA0cCmJwWwA7VZ0PQetk5ImqJmvR1/rpT2dlOrRT1zc1B?=
 =?us-ascii?Q?re7ySV7AAxH/M2//YCsloh/7ig7mXWRzISexX8BqfME8hMAgWIpAgdRk7HwD?=
 =?us-ascii?Q?REgCqsMWkSM/4pywmEmmcZKfDF2m9JLFB57WxZuQL4rOwPr73WxdeURGR+h7?=
 =?us-ascii?Q?lj/Xb+eCKufFlmxBdAe88ZiyCAJZHY7vAFY4bHxZho6N82abYFwmlaCDs/4/?=
 =?us-ascii?Q?wbfa17M+AVQV4QFJURm/x4pZSNq6sZRUzVfQo30PMa1Sr3vLoHlAWCZofrzn?=
 =?us-ascii?Q?sz1sKXOLc071+AsP72PtEINDwSc+7aluHS4hrZZFwaCCpIk7rwpuApHpJkHZ?=
 =?us-ascii?Q?dDXA7ridj8uS5UIPW5JPFfPL//309cAK9TZ4iO7gCstBWbRPZPvi3ogK677j?=
 =?us-ascii?Q?hnWEd3gwUc3IOzgxsKPeqpVqEtnlwSM3ugIOE4P1JN6FogpJF0eB9+kaKzoJ?=
 =?us-ascii?Q?Zd8MiCl05yxKeZVqiYCvnTtOSCuqoFCSXf9Z5fBMU17fXSveFBrf5ELuqISl?=
 =?us-ascii?Q?VvPZVBkscoqEL/1A8WL2R1f/w9I9aYcYuB+vonLGowGYI9tbmGtdAgTkmgik?=
 =?us-ascii?Q?0TkLDRqltHAUQqHmXMaHPCwNQtvw5KPN0M/ZvXWVNmtXq0AQFa2IDqp4AV28?=
 =?us-ascii?Q?0v6N6RaJijLNIkFn9UbMkeb4OMOyNc8WB9duiiKq/eAjQE5vAJwiQU0enuHp?=
 =?us-ascii?Q?Xt6UIJv1GzD4FNmkHKvzhqStAFIMS9oa8793QBzv5CXP/tA9yL0rXsOI58TM?=
 =?us-ascii?Q?rg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4daa2bdd-b022-4a8f-097a-08dd186e8c27
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2024 16:28:43.6844 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pJqzlcAOY0ApUUa35rCN5k3lqTq94a2UCDi7YFEAKyz5qQXhmiCPNslO0twVvJjsin78rXRA5yuVgbwBpFQMMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4801
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

On Sat, Dec 07, 2024 at 08:14:42AM +0200, Raag Jadav wrote:
> Cc: Chris
> 
> On Fri, Dec 06, 2024 at 10:45:18AM -0500, Rodrigo Vivi wrote:
> > On Thu, Dec 05, 2024 at 01:44:13PM +0530, Raag Jadav wrote:
> > > Log throttle reasons on selftest failure which will be useful for
> > > debugging.
> > > 
> > > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/selftest_rps.c | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > index dcef8d498919..1e0e59bc69b6 100644
> > > --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> > > @@ -478,8 +478,11 @@ int live_rps_control(void *arg)
> > >  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
> > >  
> > >  		if (limit == rps->min_freq) {
> > 
> > I was going to merge this, but then I noticed that this prints only
> > when the throttle moves that to our min_freq...  When PCODE throttle
> > the freq, the guaranteed freq can be at any point, not necessarily
> > to the minimal, so this print is not very effective in the end of the day
> 
> Makes me wonder why such a criteria at all?

very good question...
Perhaps we need to revamp entirely this selftest or kill it?

> 
> Raag
> 
> > > -			pr_err("%s: GPU throttled to minimum!\n",
> > > -			       engine->name);
> > > +			u32 throttle = intel_uncore_read(gt->uncore,
> > > +							 intel_gt_perf_limit_reasons_reg(gt));
> > > +
> > > +			pr_err("%s: GPU throttled to minimum frequency with reasons 0x%08x\n",
> > > +			       engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> > >  			show_pstate_limits(rps);
> > >  			err = -ENODEV;
> > >  			break;
> > > -- 
> > > 2.34.1
> > > 
