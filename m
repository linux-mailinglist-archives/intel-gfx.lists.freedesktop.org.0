Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C10258FF0E3
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:40:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3298B10E9A9;
	Thu,  6 Jun 2024 15:40:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WMz76gjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F69510E9A9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688417; x=1749224417;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dUhpbHeFDsTJr6SMxxs/pMpwF28LJ5/C7y5pn9Pu5bE=;
 b=WMz76gjy3QovE+9+ehEk5AWz3ajkY4qsLxsntjFQo/azT+SpEdbZWB6E
 e07yC8UlnoqKZ0xN+qmPYx/Pp+nYAwLszRHcae8g+ABYw3dTq8kdt71wk
 fvdY+1UFOT6N8FM/CFIqzqpUKuxI6B+SOCZrOdJf8O9VQ3hBVjylbmCMR
 /FIQPhanDV1+GDI6Sqjdhz7lh7KqlfrBMFRSICd/OkXJavZMT8CCyfIBT
 XH+GlJnyrYmTNSz3qm6E+G8z6OQQGn5YkAZy6Y0bppT3ED69ogatsZzB9
 h66nSkRLjIFuP9AawWc43BLfv79CeBGeGQD41eLek00PW48s6MpUpfRO7 w==;
X-CSE-ConnectionGUID: XO9z5tEZQmWmhmmw14rVeQ==
X-CSE-MsgGUID: Fgus6YGGQViPaMqy4WvsVQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14250189"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14250189"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:40:17 -0700
X-CSE-ConnectionGUID: upZLm7gJTI+U6WiC0sY7xA==
X-CSE-MsgGUID: 0Ob4odtSR3mq4icx5KPP1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="69162715"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:40:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:40:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:40:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:40:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:40:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QJN8OdlMuCeUW4qsreivAaOuFYfMht87qA6ApY6Mslb/ANKgmyIaDjZjVakxBTlMJtt13kS7Q65MPki73+TmuVptZK2/EFG4MRnsdK6+flncc1Jz/3X9f9LVbRnCKs75ve2BAcyX1fXQtzXrDI/9qCPh7dE6+2yiOQOb/gJiJLVeNlK/U3Liw9bEHn+JvaYmEQWjhafUyUybFMB0ik3iUtDCZHmbJfXY+7BvoZ0A0XEz3oyWaaK+8Jlbvzv8wymVzv9c/VlspS5q3PM11d0wKxxlbQyFQcwcB3QZJjCZjOpb4zT1Z4DjbwQWVSxscsKBl8YaHHYOs0eRBoJu4l8/RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Nm+J5iR33qSHMB6SyuyMwp1b849jSGJzO2CIKZXYvzs=;
 b=PEG8uFgJ6jfopxhTivAdPf2M3vH/crxC3yZdmB9wHsxVURhJdbF9Dyx2GFNU25mcDb66Sk4oaBD0SqlbryJOb0fxLggqy4u5RIHwC8MvWKrZLDcTu/QIUKXUGVGr1HOJl4AUpCJOVU7/qvPifOWfF38QShNA8sei5bKZiR9UW3gP54spgWaqr9zbx+/+09JEWvrNqe7tMTMhCAKCT6HvvIr5D8EKN1HsUuUfZiE7gb+ntu9HgNCyQZZpSbQroE1TyQJon9L786VmBaYjNcaRcqbyaRWcEOp4HSOmyjyNdcBJJ1kUtQdtBL1WeZ3DPMCpdC5Uj2bqqXpqJLTnYjD3Xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:40:12 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:40:11 +0000
Date: Thu, 6 Jun 2024 11:40:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 14/65] drm/i915: pass dev_priv explicitly to
 PORT_HOTPLUG_STAT
Message-ID: <ZmHYWZfGqB5gf_47@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <9a47bba4ab8fa4b1a8e8ceea2ba5301bed54805d.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <9a47bba4ab8fa4b1a8e8ceea2ba5301bed54805d.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0092.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 5831edd5-3eac-4463-c45e-08dc863ef3d0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5dq+orMotmgWeTGG62cnXfQDj0NHceeAN1oD3do8Yozs7WF8Fc4R2AdMGl05?=
 =?us-ascii?Q?u5HO8VlzeWVZ/j8h0cSRQ99jelfUCNGLgyTpRiF+FbVyaKBFiQsnCiuehlSM?=
 =?us-ascii?Q?jHA4qb/nIBWzjy1888Smpysf1v/5UaKQt/YpDQMw/7jImdK95qoH7g1M4G1+?=
 =?us-ascii?Q?R3oVVXt7NFZa9BXIbyRe8gCaRS0DyijR64qHT0BpXyd36uAeyDXkGB5G6pj2?=
 =?us-ascii?Q?rrEyeuoH6D4hu0u2yYn/kt6f77louAnbMUJbpX2mfLMsM10KtSIyEALTw3BM?=
 =?us-ascii?Q?I9dOQYK4pZnrXVwcN5LXxNnIjmMXmzsxui5M1CTIjXDYgS+9QFhO5Pndni53?=
 =?us-ascii?Q?U0Y2r6OLJrY9neCON/s/SrsYuCqDdnXbkkDrdZIQ60nzow7yMgviAnU47v/0?=
 =?us-ascii?Q?Sa1dX02s3YFxOtmUObuj1P9OhGj+uykjo5cHzfUxhvsWE6ta0rIN1RWNue5c?=
 =?us-ascii?Q?8T2ZfLIcz4wqU2TITBUlanLsKDrAhjg127Z8xZsm6uX0gaDeIW6mrExy/XmU?=
 =?us-ascii?Q?sMonIr2Q0Z/E9Oytc1WdbG7ztGRPWUh26xHwbuTDGyEYTzqPOeBH1Onr11l5?=
 =?us-ascii?Q?I/BHdPZq3v3uefnzvWGRefKaQQjK4jebVRPS/Gc2uqVTOdqY1rt6ljG+OlV+?=
 =?us-ascii?Q?XQaAPB+OVNlAGmJt+DHOPOhFAoPTGv97lSRtdNDteeidzQXdtfuBxLjqRnej?=
 =?us-ascii?Q?OykpvTdU3m6zfnmOc0Cepm5uib0J9G0HTLZfLnxjPYQDRiMuA3bbG9jf+Qts?=
 =?us-ascii?Q?2GgHe6Q7clVPv/TXUxa6hZPAByHRq+YWmf5h8buWOWFutY+2BHFSEbqm61Fg?=
 =?us-ascii?Q?ltw78y3BzkvKzVTwhgsTvktWKWEHM7mPd+bmHulRmWc6FXnawdsZtdHeUrXB?=
 =?us-ascii?Q?LB8W9y1nVBHhxi4DrKKEERe63HG6g2PpicUDE5PAWXxiXvCFyPdXCTR1kDjZ?=
 =?us-ascii?Q?+ZJY99BDZQ3u/D7PszwpArJ+mH1HSJNABHDqBpNFkmUk3OLIZSvuxMuD0RJR?=
 =?us-ascii?Q?HT1V8xOGEr/9kjl2AW4yTqch7EslH7ROfnxYUH7ebAx9TlcVIg6+HFe4MdDo?=
 =?us-ascii?Q?TBJQYf92xOLu++aZOmBTW9oeW56cVLJRUOM3akO5wRRigGmn83brwpFmrshI?=
 =?us-ascii?Q?zZJlDn490nMWqqdhi1Hlz/7UmQbARbjPrTAHtpkSvOTNQm/0BnCU5flqpDIl?=
 =?us-ascii?Q?eg6mfdnUMqjQDV3609eZGmdd0Eox36aHMQbsL5af/1n0xwcjzzjdWPoWdEhp?=
 =?us-ascii?Q?ORpo6AoFwds2RcjHDufOG0WzYtCnMrR/hVBxV6hMXiKEaUU4sXwDG5JI3qlO?=
 =?us-ascii?Q?N4U+uGKeIsIYJot1Jki2LkdU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GqJdkCchZIlKRAgWOxax4KjVMWyepADSOXnSLcoAlxwP3LweZw+0SyN9PIrT?=
 =?us-ascii?Q?1MUfZCwaFbZ9bVJtLx3nt60wOwZntO8oWEo+Jh0sE0senaU2I2HKoxMmcUUm?=
 =?us-ascii?Q?XaUoL0dGjOk/iJM3vhzUwOdupayJL1DaoS1luB/scpNE8pXuZAcPb+q3BmqI?=
 =?us-ascii?Q?uHxpdAvV7Prlzqwfdm68Wuwk12ClwkEBVPz9OzaihD8Sl5mnXyjvWBtpr3xf?=
 =?us-ascii?Q?mFLoJkB6gu18MjQPDOioZNQfkeyQeJr8MEJzLDclM85VsaOD7kxYRsOBGXkf?=
 =?us-ascii?Q?SUFwVsuA1vE6UXK72ZuxBUo7i2NEsPeKHvQJcIwNTZgwG09uviiu0eTtJ0Y6?=
 =?us-ascii?Q?uznGcKxQgQGCiXakXDMLyZY4JLxhBBpqfjIqGi1y+2Y1vI357DMF8JvMwARq?=
 =?us-ascii?Q?ApMP8W1mpYpVw78HtGna7tbBXIKD/b423JhfEGOJ/Tx42wm+xDiAtb3wRd5a?=
 =?us-ascii?Q?850svm3f5tMIQtXi79iE4ri849ECh6JUkcAnylsw9UMWQe+jKGgk6PX+J7ja?=
 =?us-ascii?Q?9M0deozBy7kjjDudbP1eGb1KBqxFyRW5R2bxwma+Aufk6IxLeRrA9HJdf4xv?=
 =?us-ascii?Q?Ljnw9pTthP8rIO+JSDWEn62F9mXm/ELbrx+oEEM9dieECmlw66eporFFgC04?=
 =?us-ascii?Q?oHSB04MuRrVJvjlB7cOg8ymjVBiQx8SJ+V99sAsbyZNkkQejt0b6I4SU194i?=
 =?us-ascii?Q?ZyV18WMj1DzypP1KLL9SW8G+N3oeYvRmcU/cLLytF2NGZ8Wm4NUkyPZoZ1k5?=
 =?us-ascii?Q?JkKQxabqmfRQ4gtrFf4BlgG5XNnHbE7jEpM9lF9GuBEOYpy/a05kjrFoLOsd?=
 =?us-ascii?Q?iwtU1ixGvzmnC4+FaYRAgDzJwKYl78zVe1TMoTFyul0ucptgsCC9lH08T8hr?=
 =?us-ascii?Q?llYemj/yxQ/jn+PfTIyEqG6n6i0Nuj1ErU4PaIgPIXot+VY0c9Z2gxHVT7ev?=
 =?us-ascii?Q?2kWm+MbbdZUw4XPWVmpY2tMporPGY6zQlafcVMJLZZj8d4xUS0uqksXceF3S?=
 =?us-ascii?Q?NvlnEXbPtPnHHf0biO26hdOo+qfY9acVieXkle/uZuk18zb89zzWKLYbH/7k?=
 =?us-ascii?Q?sbN/6e7+WQnDc8WZnCFSzqepKZSXt86dHGKIolD7Q1PyhmCC561WQMpUhHTb?=
 =?us-ascii?Q?dlYyt6mck77hcy4turqwW0XbTzy8YuxzaTwfFexEF7ur1W1sp8ChLxviiDpv?=
 =?us-ascii?Q?J0ZmFOiav+Vk6GdeaSf51N09IzpvMfJJ472x88vwVA1rpbOOCtwKSynHbvwi?=
 =?us-ascii?Q?YMEELEa41NqV7smMQBfHOpOavclNtGXe8nmTGf614oEeNC6/rXqFs3OFh+hf?=
 =?us-ascii?Q?LXdJ/8GP8YdHTXqvowz2RUs/Ez01uLMecrL/UV04we+HMd33Mo1tohqFnO7H?=
 =?us-ascii?Q?Ou2qT/TrfCvVF039FIFraR9rdgYMxmCSqgrFDHk3ZSH3uMgrlzeBnKHolXts?=
 =?us-ascii?Q?tNd+mahCgUd7ZAkjMsQKysHGup1akhCkaiNzvsu5S4LTsFJAy/LrUuek/ijJ?=
 =?us-ascii?Q?dQ8a1x+R0u2BgOYGT2Lt/D7SuEnCjPcbhWNhEiCrWoY6n254bOTdXI4yirLH?=
 =?us-ascii?Q?xhqE+cQF+U3ZlQECNh7N4EXIvjC65BhtaZpLQOg4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5831edd5-3eac-4463-c45e-08dc863ef3d0
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:40:11.8305 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TYzqFqoz0HMHsF8AGSKQOZ9Wh+CXE4mvwyqjvy4ASgLNdizKKKw3ZaTVaTTeV1pl3mLBSJf5ItGhNqBZ2mSGzQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:32PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PORT_HOTPLUG_STAT register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_dp.c            | 2 +-
>  drivers/gpu/drm/i915/display/intel_crt.c         | 5 +++--
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 9 ++++++---
>  drivers/gpu/drm/i915/i915_irq.c                  | 5 +++--
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  6 files changed, 15 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 06ec04e667e3..40fee8380a81 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1228,7 +1228,7 @@ static bool g4x_digital_port_connected(struct intel_encoder *encoder)
>  		return false;
>  	}
>  
> -	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT) & bit;
> +	return intel_de_read(dev_priv, PORT_HOTPLUG_STAT(dev_priv)) & bit;
>  }
>  
>  static bool ilk_digital_port_connected(struct intel_encoder *encoder)
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index b7eab52b64b6..808fa8afb164 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -609,12 +609,13 @@ static bool intel_crt_detect_hotplug(struct drm_connector *connector)
>  				    "timed out waiting for FORCE_DETECT to go off");
>  	}
>  
> -	stat = intel_de_read(dev_priv, PORT_HOTPLUG_STAT);
> +	stat = intel_de_read(dev_priv, PORT_HOTPLUG_STAT(dev_priv));
>  	if ((stat & CRT_HOTPLUG_MONITOR_MASK) != CRT_HOTPLUG_MONITOR_NONE)
>  		ret = true;
>  
>  	/* clear the interrupt we just generated, if any */
> -	intel_de_write(dev_priv, PORT_HOTPLUG_STAT, CRT_HOTPLUG_INT_STATUS);
> +	intel_de_write(dev_priv, PORT_HOTPLUG_STAT(dev_priv),
> +		       CRT_HOTPLUG_INT_STATUS);
>  
>  	i915_hotplug_interrupt_update(dev_priv, CRT_HOTPLUG_FORCE_DETECT, 0);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 1674570dff1e..be5b48861baf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1377,7 +1377,7 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
>  
>  	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
> -	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
> +	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 90fe5f8538e1..a1f07ee69a86 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -435,18 +435,21 @@ u32 i9xx_hpd_irq_ack(struct drm_i915_private *dev_priv)
>  	 * bits can itself generate a new hotplug interrupt :(
>  	 */
>  	for (i = 0; i < 10; i++) {
> -		u32 tmp = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT) & hotplug_status_mask;
> +		u32 tmp = intel_uncore_read(&dev_priv->uncore,
> +					    PORT_HOTPLUG_STAT(dev_priv)) & hotplug_status_mask;
>  
>  		if (tmp == 0)
>  			return hotplug_status;
>  
>  		hotplug_status |= tmp;
> -		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, hotplug_status);
> +		intel_uncore_write(&dev_priv->uncore,
> +				   PORT_HOTPLUG_STAT(dev_priv),
> +				   hotplug_status);
>  	}
>  
>  	drm_WARN_ONCE(&dev_priv->drm, 1,
>  		      "PORT_HOTPLUG_STAT did not clear (0x%08x)\n",
> -		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
> +		      intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT(dev_priv)));
>  
>  	return hotplug_status;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 678d632ed043..8059ac7e15fe 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -1040,7 +1040,8 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	if (I915_HAS_HOTPLUG(dev_priv)) {
>  		i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
> -		intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_STAT, 0, 0);
> +		intel_uncore_rmw(&dev_priv->uncore,
> +				 PORT_HOTPLUG_STAT(dev_priv), 0, 0);
>  	}
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
> @@ -1149,7 +1150,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
> -	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
> +	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 4508c535f320..166c7f4f9c6c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1408,7 +1408,7 @@
>  #define CRT_HOTPLUG_DETECT_VOLTAGE_325MV	(0 << 2)
>  #define CRT_HOTPLUG_DETECT_VOLTAGE_475MV	(1 << 2)
>  
> -#define PORT_HOTPLUG_STAT	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61114)
> +#define PORT_HOTPLUG_STAT(dev_priv)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61114)
>  /* HDMI/DP bits are g4x+ */
>  #define   PORTD_HOTPLUG_LIVE_STATUS_G4X		(1 << 27)
>  #define   PORTC_HOTPLUG_LIVE_STATUS_G4X		(1 << 28)
> -- 
> 2.39.2
> 
