Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BE59F3CC4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 22:28:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE10810E7B3;
	Mon, 16 Dec 2024 21:28:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a6H4WRRu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A80810E62B
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734384479; x=1765920479;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Fq+hmxYbOlUxlFE/V9W+MJ/VSBnhfuz+7GxWMJpfcME=;
 b=a6H4WRRulpBcdU1Eoz+mAS1x36NVlgE8um9isiXRHIUucXkf/PX2Qfez
 9amPUU0yO7xY6jdqKt2DmqfT/F5PrFu1B6JMTc3mEnr2ldoONbbLvICBb
 uNJtX56oGH3SHnA7GBj7ixynXyk0MmNTGelUh6LNfaKyerQiem7oY9Ypf
 LDGXfB6D8iS6Qk4zP/5Z6Hoa5nv+/x3QyEeWY+8NNkvZH83dQm38coJN4
 0Rw6gAQJiFs5mtBISWR7QikcIwvNvs5jC+ckk/ZKyt/W1d+HrC0np5yZU
 zhXiICnkFkauzK9lYfbOadhaRB8KYBLfDA4BPOFNoTxOywoe3K822MOKB g==;
X-CSE-ConnectionGUID: yDbAb2K7QIW3LAAoy7q3ww==
X-CSE-MsgGUID: CUWN+IIOQNiftFh5ksXxcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11282"; a="38715577"
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="38715577"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 13:27:58 -0800
X-CSE-ConnectionGUID: e2dxAIFMScmEfMq35im26w==
X-CSE-MsgGUID: Bqe79qLjQH+wl6192Ye6Ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120589183"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 13:27:59 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 13:27:58 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 13:27:58 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 13:27:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r5Yht3+K4ybGTz1xcScjnJdSJ6tOciS035mkwCVfQmkPlsZQFyTMKjPBhWZEpqNb1mohFzhA5Z+iffeqYSeTXmliQL6H1ZX6fCXRTPuCqD2fSpngBdugMzzEWeORw818a9+1owf5w1AYNjBgDXRItz8PqnBzwYT12l6qZ0w4BCQ4HN8LCnQDp8dZGhnop2Hldbl2LqJLYrwaI20JGfI4jjeMwiAh2pySkog9WiwPp9NrIvLE0QNveY+CgG/R7QySa6rthKAihC5yZyP0piT2K/owhl9lpnJMOmtqnwItxVDzuI3PPki42rL5sbUTeaBaSS5NU4jVwpIdzbidGmVzGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5UEuAaNpSAD8M+Xz5neIllK4ni2Gb+bKhB4y+a89XOU=;
 b=Y97JPl+rNeKNarOWkYVH4DbDk1jRB3y/aASaSgJHTfpyZFP3JtKCQimoCYGDSBVi9r5vfs4Qmoy+JIdvkLOJjn4jMqSQOksJ57ojpBWT6LpqXl/B9emreUE6uJmXyIP4PyHiJttVork2I7ZdnIk5qh3UPjKVMw1eriC821M06gpYxMj1ih5f68Dqhch2P0tXt5khFn5psJTPtz35Mv484U8FiOZXAMxoOqAjZRbNilBR6Il80zhhoK2ICUkvIh6ywWt5Mphyct2MN7rul8olcJZL2CNH2bkWJg2BNB0RwO9O/CeC9qA5VLq4lxNhSqCi9C5QjZ8K9aOv5jSn4FXD9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6430.namprd11.prod.outlook.com (2603:10b6:8:b6::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.17; Mon, 16 Dec
 2024 21:27:54 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 21:27:54 +0000
Date: Mon, 16 Dec 2024 13:27:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <vidya.srinivas@intel.com>
Subject: Re: [RFC PATCH] i915/gt: Reapply workarounds in case the previous
 attempt failed.
Message-ID: <20241216212751.GZ5725@mdroper-desk1.amr.corp.intel.com>
References: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
 <Z1MacMC8XyyyHcqj@intel.com> <Z1r4YJ0TkjIsgoz8@ashyti-mobl2.lan>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z1r4YJ0TkjIsgoz8@ashyti-mobl2.lan>
X-ClientProxiedBy: SJ0PR03CA0171.namprd03.prod.outlook.com
 (2603:10b6:a03:338::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6430:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a9c7fbc-454e-4471-33b1-08dd1e18803f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?xKPf/DdCvH5C2/AiQsiqEwlhKgLaIzAEqXTlbE88j19aIU4UznC2reSC15?=
 =?iso-8859-1?Q?tzDP9Pn9hJfQR7TyQ3Dlalmzmspf7mYdgfNh6ZmsE843NFbbp2iJKO+aGg?=
 =?iso-8859-1?Q?i4u2/MYJpxV8Kd8IDVTz95Im4bst9XUDTOYXD53KIqY54zySFr/LkiS+lS?=
 =?iso-8859-1?Q?3ER8Y2QlhM02015GTI8YMUEoRUr62y30I4ho/J2pMcKumU/k3L8vZ2YMFJ?=
 =?iso-8859-1?Q?OHAKc2BX8zUJSy2LpPjbyREHb5OIc8W0krVZWiOBNzzbsXTFgQ6AxekoZi?=
 =?iso-8859-1?Q?Ftrue2FaxXcWl1Jh4e9JTL9hgxNrXVxJJkxYjZSfrY9FBA1Lb8Gva9LM/v?=
 =?iso-8859-1?Q?RGoRgN+QX//43ZnySlnYpncvp6OiOTBwOiM4IACih7mdF2n1LaskyeZcsH?=
 =?iso-8859-1?Q?y8t8GF7wHp4OCzUQvjvvEaaOzlxZyZEa/kBaUwGGifxkmFdbG6TZ5PgUTh?=
 =?iso-8859-1?Q?VdYnQi0tPlRf/RrvbmhMzy/egRB3CoAkRrAeeHsXwpoE16VybtScIkz4t6?=
 =?iso-8859-1?Q?p0DosnEbhky0NtdsoaLdXnnc4NY6V1WCf5hhDGc8fFk+9qzz5d4tvq/ijU?=
 =?iso-8859-1?Q?ehtD7dE8up2subMzOYProyl7HA9Q9RGj7PC/vfZb14rGZUXmRMtTWaBmJe?=
 =?iso-8859-1?Q?ubvjY7MToLOQUAsce3zxM5OVhRNYOGMFSrQkaE1MJ/v2rNTpw5ebTmk3k1?=
 =?iso-8859-1?Q?yhnUYfekDsmCwrz/7Up+NKxIZquC0GJfq3sAx3aCuCu7ERbDb3N0uBSYHP?=
 =?iso-8859-1?Q?wBX9+vb9S4eWnhQc/BcGBTwtzvSUI8M3S0+kwiYyIFw8Ehy+Ys9XEy05Z6?=
 =?iso-8859-1?Q?eP1YP/0pEooyfFly9tcUrymNiy+PnPL8etkKGzVp5cbPRW/m7+y77BKPH/?=
 =?iso-8859-1?Q?O1uOvQisd3LtzrWgkpoTjAMUAABiKA/CDKxmtZGhgOGi90kvNogLvfwAKI?=
 =?iso-8859-1?Q?CH1Mx5UZt7duiluEjZKbOmlWLaHNwpXScxoz8jAi0iXNmOT2ORNHU22NPz?=
 =?iso-8859-1?Q?NQBBukkAP+4Abmw+GDBWI6KRtEpbITWbaF/h6fgCKuG/LejR7s58b/RZ43?=
 =?iso-8859-1?Q?ruy7xY2HO0y6uC26t9AKVa10kXRbzbDA+uhrk/gvI9HPcnalKdTHAZu/CI?=
 =?iso-8859-1?Q?n5tILUX5tLIHl/7eBGVM/BJDhRKGOd6wTrNEjUaekgy+owYYe3pDBgT4rO?=
 =?iso-8859-1?Q?WDOK/DrwzCqxSK6e5fbTt4dAnvKj6Vdp59Bl5vJOO8qH66M+1aLNajEX2s?=
 =?iso-8859-1?Q?GSlq0AmyXOk42CikkbDN8Evy+hLom8LD1Ni1J6qw2Z/WsNHav7QIGtdiRH?=
 =?iso-8859-1?Q?ZO1YFpF/J0by+Hf4UW+LA69q/U7T0N9BO33PHGIabHfNCal5yTuNZH6YR6?=
 =?iso-8859-1?Q?mmPHYkuKsmPoTvMIWJqrNOqPPO5YFm7g=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?GHUhrdyRLvJB9aDFubOc0lEu6U0fT/5Kuo5cNs2/HoIAwjZ9EbpYWWPYJn?=
 =?iso-8859-1?Q?WKKUvlI82H8wKlNy7DCXHMVD3s07HEaw1oO9ebrISIcVqC95nMDVqFoDJ9?=
 =?iso-8859-1?Q?JdwwP10qp6kiGa7Jb8R0KIzFIm36agsg0o0sCtF9UvNygClBg7S7G+KRim?=
 =?iso-8859-1?Q?KWgJH0a8EXZHWtzuPD2I9OKRN+BVdhGciA5bX+Jq+fAtGdX/GwuTLitzlw?=
 =?iso-8859-1?Q?9xTdILPv4jJ1OQ9ZXCCiGorendFPUYa4pqIDNuF5oELKSnAAOoY4jOYGXX?=
 =?iso-8859-1?Q?u/ObJXPuasTPKwkfxIlEveAe1eGwDHbVOXeQo+SB8S1JWWmTWPxWbpDoNz?=
 =?iso-8859-1?Q?27BZo2/OlWTlaOS2Sc8FWV06xVd01JI1L2P9yCYylLhowCLw1bo32H8fZC?=
 =?iso-8859-1?Q?J1XNuiNkKXhDHvzVjH4+SbM5jTGvDIiu39lvyHhSQMRSsbrsAZpjo3leS1?=
 =?iso-8859-1?Q?PWhdVTz70Ys/1aqZLaCt3gieMwTon6QGxZnazXKjzcAZy781vg9KtjrtN+?=
 =?iso-8859-1?Q?Yz1N5UZPri/LhrTdtTYiFdviuw8hJLJxEGfgwyQeLJoDRQ6yOAWWHh1Zr3?=
 =?iso-8859-1?Q?VM8nSlwUNuIqxG30KMr4UDQzpCLzuIMyE5YTQxDP9YjcFaiWbpp7QiHjaZ?=
 =?iso-8859-1?Q?tG8TPon0uF/QMzdvp5QwjSMoGLctJ/Tt2+9ZjI2+HwGOoHpj7NSPIKGmpe?=
 =?iso-8859-1?Q?21IfApmaJkm3nkPCgyPjVg+14tfjQOjwdsWPQiEsYF8fYCS5E9FPmGkdU1?=
 =?iso-8859-1?Q?jNYjzxWMwvJViY06yM8ZOEHuFeEdsRooOG6/1XBdG54MQiWxxfQuKx1vLN?=
 =?iso-8859-1?Q?KqytRDMgErk+j6TS741RoJeIQBNv7In9ezl8OILxP/x1ghG8leCyvFMxmZ?=
 =?iso-8859-1?Q?PkpL/YBbcRxGXTOw0wzBBMDJ6fKdoUA2rmqT1m5gHXNA73nkEcS3SX8Oii?=
 =?iso-8859-1?Q?y/mVE2OXKFun4A/F9xC4Z179st1J88gnAPkYdshb6Vk7/eFjLYKKwvanlR?=
 =?iso-8859-1?Q?AhdCWU46KPqksiaetZUnUEE/F759rQV365pOgS9d9ltAKKKPPTmaVYfCP4?=
 =?iso-8859-1?Q?WNomlOOmh/ti5N6Vc6FTBRLwtyNrpgdkRxxvdNPTIhIiXdnh4FB8565AvM?=
 =?iso-8859-1?Q?ikANIIsa20/O2MRYsfP5Ba5qETflGoo6SVscYBks99bXrQTAc3IJiZNwuB?=
 =?iso-8859-1?Q?zDEdUIl+DYgIIs6p8wuFS7bhpAvg5MoQHf0neaJMv14x9SJLhQWlvvOIGV?=
 =?iso-8859-1?Q?de4CcdpNNlSe6Leiv6dvsjprH/CmQOLpx4PaxX3/wKh19dRUnWlGIpt7/R?=
 =?iso-8859-1?Q?bkvvF7nPZjjioaWrQkFEqKfGJVFqPyVNmsyXlFx3+u11RJXgd8/1yplLAX?=
 =?iso-8859-1?Q?kbpKk5pdZdbegvkWVqXAK3CSEigAAzg3HzEOtKL4P53PWVOEUpdIqSCZ+R?=
 =?iso-8859-1?Q?BEIepWtsrYRp5yYo1QoIY1F06Q+8210hfEDuNY8O8CgcOFfcfbqW75h5De?=
 =?iso-8859-1?Q?bdps2aNeI4uwKB+oyjTjZ+xxLSNnPiK82yxaz9A92B2cBsS2BmDEgfRog5?=
 =?iso-8859-1?Q?jUBlrPT92kODkGHzkGtkkEMcFhIxkJLpn0gbfGRzv631moOMyKgWi22PgQ?=
 =?iso-8859-1?Q?pD6zgzEuTix393CocgXtMzGMlUWKUVlDjPej/kqOcdNv41MQkRpIJr+w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a9c7fbc-454e-4471-33b1-08dd1e18803f
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 21:27:53.9325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: th4Wxe5rHriygK1Bes5N/nOPn3JY+dSXtt6Yz1nOwirQHxEJRD8GnscQyaHAwqwGqXOlvkdO2d36eDvl15iFRvMOb8NqURMODd960FbkW6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6430
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

On Thu, Dec 12, 2024 at 03:51:12PM +0100, Andi Shyti wrote:
> Hi Rodrigo,
> 
> On Fri, Dec 06, 2024 at 10:38:24AM -0500, Rodrigo Vivi wrote:
> > On Thu, Dec 05, 2024 at 03:47:35PM +0000, Sebastian Brzezinka wrote:
> > > `wa_verify`sporadically detects lost workaround on application; this
> > > is unusual behavior since wa are applied at `intel_gt_init_hw` and
> > > verified right away by `intel_gt_verify_workarounds`, and  `wa_verify`
> > > doesn't fail on initialization as one might suspect would happen.
> > > 
> > > One approach that may be somewhat beneficial is to reapply workarounds
> > > in the event of failure, or even get rid of verify on application,
> > > since it's redundant to `intel_gt_verify_workarounds`.
> > > 
> > > This patch aims to resolve: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668
> > 
> > It should be:
> > 
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668
> 
> aapart from the formatting issues this was suggested by me. We
> have observed some sporadic vailures in applying the specific
> workaround added by Ville (now cc'ed to the thread) in commit
> 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL").
> 
> Because it's sporadic, we could give it one more chance and try
> to re-apply it.

That sounds like it's just papering over the issue without really
figuring out what's truly going on.

Looking at the current implementation, it looks like at least one
possible problem is that it was implemented in rcs_engine_wa_init, but
the CACHE_MODE_0 register itself is part of the LRC (according to bspec
18907).  So we want to move it to icl_ctx_workarounds_init() instead to
make sure it gets recorded in the golden context image.  Our
initialization and reset handling for workarounds touching registers in
the context are different from those that aren't.

BTW, I'm a bit surprised to see us needing to implement this workaround
in the kernel at all.  CACHE_MODE_0 is a register that's under userspace
control (according to bspec 14181), so we usually expect the userspace
drivers to own implementing any workarounds dealing with the registers
they control.  Indeed, it looks like Mesa's Iris driver already has an
implementation of this workaround in iris_state.c:

   if (devinfo->disable_ccs_repack) {
      iris_emit_reg(batch, GENX(CACHE_MODE_0), reg) {
         reg.DisableRepackingforCompression = true;
         reg.DisableRepackingforCompressionMask = true;
      }
   }

and that workaround was added back in mid-2019 so it should be in all
recent Mesa releases.


Matt

> 
> > > 
> > > Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +++++++++++
> > >  1 file changed, 11 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 570c91878189..4ee623448223 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -1761,6 +1761,17 @@ static void wa_list_apply(const struct i915_wa_list *wal)
> > >  				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> > >  				intel_uncore_read_fw(uncore, wa->reg);
> > >  
> > > +			if ((val ^ wa->set) & wa->read) { 
> > > +				if (wa->is_mcr)
> > > +					intel_gt_mcr_multicast_write_fw(gt, wa->mcr_reg, val);
> > > +				else
> > > +					intel_uncore_write_fw(uncore, wa->reg, val);
> > > +			}
> > 
> > instead of duplicating the code you should extract that to an aux function
> > to write it...
> 
> a for loop can decrease the amount of duplicated code.
> 
> > > +
> > > +			val = wa->is_mcr ?
> > > +				intel_gt_mcr_read_any_fw(gt, wa->mcr_reg) :
> > > +				intel_uncore_read_fw(uncore, wa->reg);
> > 
> > and another one to read it...
> 
> this, indeed it's just reading, but we are trying to re-write. If
> we wrote the unwanted value, we will keep reading the unwanted
> value.
> 
> > > +
> > >  			wa_verify(gt, wa, val, wal->name, "application");
> > 
> > However my biggest concern with this patch is the brute force solution
> > and only on CONFIG_DRM_I915_DEBUG_GEM case...
> 
> this is a good point, indeed, I don't understand why the
> confirmation should be within the DEBUG section.
> 
> Andi
> 
> > and as duplication because I see that the second write attempt is
> > already happening above if (val != old || !wa->clr)
> > 
> > So, something is not quite right in here and this deserves another alternative..
> > 
> > 
> > >  		}
> > >  	}
> > > -- 
> > > 2.34.1
> > > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
