Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FA2697A5F4
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 18:26:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E0DA10E3B8;
	Mon, 16 Sep 2024 16:26:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CSXjZ67C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E3BF10E3B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 16:26:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726503981; x=1758039981;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TyPx2e+e0iwIDnvg1p3Al4LvW7HL2GSqdqpZil11fJk=;
 b=CSXjZ67C8H985YyRkT04JLyQBh/KthDL0oL5KZJNv+H9ZBis60kyfR9L
 yWk3tmNBjCnSIUrZb1bfaMydB5lIuMGLcnwiETPBr1xxYzs6Q2kJOmiZC
 T8BKwU0KSszNX6nZOI6f0ZJVME4bbgU69vyXZWHAwJ8QpIt86PHywhaZu
 8EqlCpPYd1TeY3oYlWafIG7phdJOOeikb1VQ0+tVUlRCoX1L9fMOiHS5z
 lu9Rr3sCyirhCFJ3x111Iec0hDJ05tUaGLgJFIwWbsAnon75NPplj7Eaj
 SOs8vZ4oqM/s8XH1xicvITVMem84ICuU0W6151Ik/dj7zuUwUFwb8LKm7 A==;
X-CSE-ConnectionGUID: /KSrwV4nTIKk0AiT8UAcjw==
X-CSE-MsgGUID: I5Olas/rRbCyLWWs459oKg==
X-IronPort-AV: E=McAfee;i="6700,10204,11197"; a="36477644"
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="36477644"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 09:26:21 -0700
X-CSE-ConnectionGUID: 9N7RAO74RIum5gOyZz1nlQ==
X-CSE-MsgGUID: XyZLn/cST4+wrzUDy5NkiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,233,1719903600"; d="scan'208";a="68588791"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Sep 2024 09:26:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 09:26:20 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 16 Sep 2024 09:26:20 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 16 Sep 2024 09:26:20 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 16 Sep 2024 09:26:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KtXObCgmkICDjDZnXf13xjCYHU5PD7tebRi+AyCgJrYV1fehC1IywyuRXzD2pOEM8sl63TvWFaS/7G9JW6+I6ZWCUXh962bsnZyrd/QIXuw03WFdeJYzApPsFy+GI45rn8Sc7leB/ctQjaHkhCnThqITnSqZmcfdHmATlEvLXE494aMaM2UK3rKhUZ0I8t4sFi4pgeWRzKB+WUzDlNcGqAp+sHLN+e5LDctl4SDYvWpyeO/2eQiTvz5/AX6B11Q3ovBO7PGbsmMQg15vzGaWkiUBJPG2GPBhDSSxYX/YDIjBPMPa7jh/i1UZTPzTzcsLCP4tuLz+AuNWobdai+w1Cw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9eF5Xn9GDmN7R1hDIyOQsfEVtFh3ff+c5Zt1Eeq0zww=;
 b=QFWpoB2zmrstv+V6jJx/wm4Pu6zE9MvTQHB2oWrR/yq6KGrFB8XomRfk0ljJ2S1fKe/8RnTl9SI228bGMh3nvrQPa0r/DN2joo8hMa9vfvu2i9u0B2K9i04Z0AfG9sIL3mYkWgETZhImhjIvZwKBt+CzvQ04oclJFRbV/1ognRO46dkvuLvrJ73gzi7N4+xaBbQuTIaY3Y4uKIB6YKMYNKSm6iX6HkABaGkzituCwO/cKP3TBiWShbiu/PEsvG3I+4iKvs31L8powxXwgRphRJYCC/zPw3Ij6abw8nKu0yv4hQbaQx1+id1dQ71lnj1ihz8LI5uaZhK/03WOUtDtdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MN0PR11MB6088.namprd11.prod.outlook.com (2603:10b6:208:3cc::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7962.24; Mon, 16 Sep
 2024 16:26:15 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Mon, 16 Sep 2024
 16:26:15 +0000
Date: Mon, 16 Sep 2024 12:26:12 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915: add i9xx_display_irq_reset()
Message-ID: <ZuhcJPu8U5z-dlnl@intel.com>
References: <20240916134720.501725-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240916134720.501725-1-jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0344.namprd04.prod.outlook.com
 (2603:10b6:303:8a::19) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MN0PR11MB6088:EE_
X-MS-Office365-Filtering-Correlation-Id: cb2d7dc4-9b73-4596-21ea-08dcd66c4942
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?HS1tCNIB+4ivN4QGLBR2Y+eLR433DM/Sk3Bvw+xdpBC2uB+ZAOIFY7A6FZH4?=
 =?us-ascii?Q?zdU+sVKcmDzO82P2cin5jkkJE8J8hUzHQ3p6G0fUZujNzw2Iru2SJmq4jVxs?=
 =?us-ascii?Q?OdZx5HwAasbijN85+LXierYfa2qeWVDriKTBEi4m8rCF+4Naf+f0bfQTYXnw?=
 =?us-ascii?Q?id3TZQA5EiA/OYT36i7q1FWR4VDxAUj+FeGWzqNR3xkV5HGbYltOHkq0zdOI?=
 =?us-ascii?Q?ZTTGh1do3ew9UR7fo1TMd4r0BikwJl/+5Oi9ZqbOKkH+88eCtDsYpkLg7r7U?=
 =?us-ascii?Q?ol0IyTVkRL7H6/BgNr8cklx+5vPqju5Ab9rybLl2gdZ2zjAlocNoHT6YMRfM?=
 =?us-ascii?Q?5zpfC5MuSmSBouizahs3Egljs+Q/vvHe5Lycd4Cvu9C6OHlm52hyozpzItI/?=
 =?us-ascii?Q?s8RvqPuaOOq9bEPj//b+e2Dx8YVo1cls8aWitGbZkNqixZH8avK4fUEos87v?=
 =?us-ascii?Q?k0q7bJVWWOOhFKAqQqVgz1D7C6F4uRM9GmpWZGkI4Kf/f1b1TvQJ+/5Kh2r6?=
 =?us-ascii?Q?U9gv1zgSzKuB9kMen1Xom5rzHozaAPHE8TjnzL1Ngq0c0rLq6qeGgbMvjfMU?=
 =?us-ascii?Q?deDrTT4U5SIy4pUjPGqgls0xzBiVa5z7CjfzG/01/ILC5+ETvRENb1JNX4u+?=
 =?us-ascii?Q?XbfQWuDnUGh8VhcH/CNGJhfNd3wMqdvVjbmybis7KeTCvemPj6X4HnEoGarh?=
 =?us-ascii?Q?gpkhYjVozEP5u9OAiXq/baQ3mrevcDCsW0OX4XRk/401c9axQoKA0RpkMLAg?=
 =?us-ascii?Q?CQIiBUB7JmfV2EIjqYl+cw0jf6TknIKb6Bo7pXOumHPrVKLKYVvb0NisZ21u?=
 =?us-ascii?Q?NzgiJJid/1M+NHpwqrGJzVjNYjgc1rbha0tv+lc8ZK5FAhAA3o1ulSBKURRc?=
 =?us-ascii?Q?Phm4b24wgbhnssWG6F7kHjsUcRIppaktaG8McjVKN3zE36BItKvxmqNvjF+5?=
 =?us-ascii?Q?YRiPqWBvlddqUG4I5p9wo+JBIK0tNao7/gjSyLr3cgWKIE0SUifmVt/mEQN7?=
 =?us-ascii?Q?PuL63T1jQ4ROYdsLT7g2tB67c6bKLoELPkEudDutcgG/Hc3rGYhaM8Bk17IS?=
 =?us-ascii?Q?7C8yOsyy7rQNumi2aWZOYUefUcRlXrhXCfK407uMZRKn1TIzt1NIufgndNuZ?=
 =?us-ascii?Q?Sm4LCPI72Biphh0keRsEsMbQs04jlbTdyrCoiWCXLHnQslIrkxvJaiYcX+hZ?=
 =?us-ascii?Q?mE9JCtGyjgFWY9/cPyQWjp6DF2NM5mgUpxx1nL7+yVDfr8WWFmKlEEbSdLmE?=
 =?us-ascii?Q?rE9hM7Lu1x3NiSUaZT9bYrX75p7Cto+xmZ7vP31A2BEXAZMg67HN6J8NU0br?=
 =?us-ascii?Q?wKunrhqPUAcquQz3slmXib5ym9STFYEv17h85d0+fYrKDA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?03VXOWxfl1dFq9LbnqJpLI2tEZc7pcyTS8yT3IxORG27J7R4rcW6o6gIA/6L?=
 =?us-ascii?Q?XRbsiCjqJAR8OvXCL34yDq9oNvTz84jk9nNEXBfqnlmnqi/Rz2uGQfTfrxTl?=
 =?us-ascii?Q?Udh/ybZJjyXWMrKjiHWkhdUbbcky4QoahWBEKtmf5ts7lHkPqjmZOYplNr7K?=
 =?us-ascii?Q?MYn56TBSZ9BroC5tHuLSj3PFgA9qAL+DiBZZdqsUy8PoeFJ1Ky2PkfXAZ+fS?=
 =?us-ascii?Q?Me2UPVtCNvvabi2EGz2cbzFfPNcOx2KofOYrbiU740wXcqVozmltyhw1zwpn?=
 =?us-ascii?Q?v0bZMh6wB50XdRPvyABQSh60KqTzQUR1NSJQsHaMj2985kf/MrSxf7kgFoTd?=
 =?us-ascii?Q?eicyQKTaNdUW6P49CqtgmYxW3AYNmj2FOSX+PMOqYmVLDW21Rj6RXxIM3e2F?=
 =?us-ascii?Q?gnaqnXX77MhVzwrIgg6H24SBoSr52sRI9E86McabKimz0PmvLfne8OQTh1Ax?=
 =?us-ascii?Q?GWI+WB1DZ+FTgJti6UERj9VAAhICzZzhe1K/DuX2Y+IrsUl0fqXwBLkdIa0L?=
 =?us-ascii?Q?QHUxvHKfP1/T7w6UJ/p94BCAcv40eq7oyYSeSFiLGeqcXpQcOV2t1kCVKUVy?=
 =?us-ascii?Q?GvOg63Am2iyUxxcVfEX0X6hs5hUD7/hwjNS2pPBiDb7pKDD9Ty49zI+gkADk?=
 =?us-ascii?Q?B9TcHUBCEJVUfy2Q1UGCA3sw+jWEWsfpTnWlV3eJFhmHgjpzVPtG4sxiLMmj?=
 =?us-ascii?Q?PpGCiD/plTH+VTFXQQwyWs+I2Odhn4ESCE1GrZDGVqHyY9R5QZRZXv9y8XKH?=
 =?us-ascii?Q?csw+s0zvwXi1MHfNZF/mi9RKJ27GVkF4MgC7aIgDT5XIHef1/pP++4xAHMDB?=
 =?us-ascii?Q?7E1o7RNtts7ZugOqb2UyXnK5v1BoCtD3EsiWK+2j7d7LDEhxVcjzLqb6LFm7?=
 =?us-ascii?Q?0Lv03UEtpCBnH2J/5d8Bm68BDn9+g9K+HB1thtE5iJjSzTJs5w1CcvHVeM7Y?=
 =?us-ascii?Q?nSDFzD9dyBGiYM6kWZtc548fQrCtOJuJfYga7QhtE+deqUifTJYMZ7kAdf2p?=
 =?us-ascii?Q?+o07DZYt0ZKfAvEZS/XHkumR03APg0o7xr8T+fGgQgxBfXG2VIfXvWtLexFN?=
 =?us-ascii?Q?Fr2zd0vlAQPl1jUChiuN7KcdL0dVvMbgQoN1E7lP9dUuBSyYzvQg8BvhkR1H?=
 =?us-ascii?Q?RunrCPEwScLujAzI4kYOGyspCWrJfrgpd+w0/tqipC4jJ6RS5WhWWOjM6rc2?=
 =?us-ascii?Q?EVjECf3WK0zqAryo9jQiObUXThmu41OsVwdgZRldKjbetzgjWI787ovBYUSn?=
 =?us-ascii?Q?agWzEXJ5pta/t8EpWZAiWr62ORoa5xCzGS69LMo1IT8KA/p5MJL7w6D+fvQ7?=
 =?us-ascii?Q?ZnRK4vU8DBmGor90lNYqb/EFkS6CyDqsaZ0P14DZFgHLiqGiiIzp+kSRGI2m?=
 =?us-ascii?Q?vzPVSgTWqF66KDkHzhFvvDj08DdQcn16dxm1rYSnoXiO6FG62vUYnRHgLy9+?=
 =?us-ascii?Q?AobMT8s5DKhWsnjxwVn51QeuY06hQ0l34iE5WPwgDcUEq0mRPuoBSYBC/OuG?=
 =?us-ascii?Q?NNVhuAzGuLr+3lPp5kWQyYoju6K+i0EDGfGtm5zffUPUm5yHQyLO8k4J5b6m?=
 =?us-ascii?Q?LbvhJdrJLswOzHTV1rTZcP03i8P+1L7tQ8ZBarTSgmh5pcBiAv1U/SPMYyqx?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cb2d7dc4-9b73-4596-21ea-08dcd66c4942
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2024 16:26:15.7149 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O5oimV1Xhkktsxg9kMke1Y8xazqTv4hU4HvUSkb4w/s7Z08f1rxjqxlIo0jNAosSxR6hZI7pulOrKdOecdv/oQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6088
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

On Mon, Sep 16, 2024 at 04:47:20PM +0300, Jani Nikula wrote:
> Add common i9xx_display_irq_reset() for display 2-4. The check for
> I915_HAS_HOTPLUG() covers all the alternatives.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 13 ++++++++++++-
>  drivers/gpu/drm/i915/display/intel_display_irq.h |  2 +-
>  drivers/gpu/drm/i915/i915_irq.c                  | 15 +++------------
>  3 files changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 8f13f148c73e..b830756124c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -405,7 +405,7 @@ static void i9xx_pipe_crc_irq_handler(struct drm_i915_private *dev_priv,
>  				     res1, res2);
>  }
>  
> -void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
> +static void i9xx_pipestat_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	enum pipe pipe;
>  
> @@ -1466,6 +1466,17 @@ void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  	dev_priv->irq_mask = ~0u;
>  }
>  
> +void i9xx_display_irq_reset(struct drm_i915_private *i915)
> +{
> +	if (I915_HAS_HOTPLUG(i915)) {
> +		i915_hotplug_interrupt_update(i915, 0xffffffff, 0);
> +		intel_uncore_rmw(&i915->uncore,
> +				 PORT_HOTPLUG_STAT(i915), 0, 0);
> +	}
> +
> +	i9xx_pipestat_irq_reset(i915);
> +}
> +
>  void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 2a090dd6abd7..093e356a2894 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -54,6 +54,7 @@ void gen11_display_irq_handler(struct drm_i915_private *i915);
>  u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl);
>  void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir);
>  
> +void i9xx_display_irq_reset(struct drm_i915_private *i915);
>  void vlv_display_irq_reset(struct drm_i915_private *i915);
>  void gen8_display_irq_reset(struct drm_i915_private *i915);
>  void gen11_display_irq_reset(struct drm_i915_private *i915);
> @@ -68,7 +69,6 @@ u32 i915_pipestat_enable_mask(struct drm_i915_private *i915, enum pipe pipe);
>  void i915_enable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
>  void i915_disable_pipestat(struct drm_i915_private *i915, enum pipe pipe, u32 status_mask);
>  void i915_enable_asle_pipestat(struct drm_i915_private *i915);
> -void i9xx_pipestat_irq_reset(struct drm_i915_private *i915);
>  
>  void i9xx_pipestat_irq_ack(struct drm_i915_private *i915, u32 iir, u32 pipe_stats[I915_MAX_PIPES]);
>  
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 2321de48d169..231592125934 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -849,7 +849,7 @@ static void i8xx_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
> -	i9xx_pipestat_irq_reset(dev_priv);
> +	i9xx_display_irq_reset(dev_priv);
>  
>  	gen2_irq_reset(uncore);
>  	dev_priv->irq_mask = ~0u;
> @@ -1037,13 +1037,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
> -	if (I915_HAS_HOTPLUG(dev_priv)) {
> -		i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
> -		intel_uncore_rmw(&dev_priv->uncore,
> -				 PORT_HOTPLUG_STAT(dev_priv), 0, 0);
> -	}
> -
> -	i9xx_pipestat_irq_reset(dev_priv);
> +	i9xx_display_irq_reset(dev_priv);
>  
>  	GEN3_IRQ_RESET(uncore, GEN2_);
>  	dev_priv->irq_mask = ~0u;
> @@ -1148,10 +1142,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
> -	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
> -	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT(dev_priv), 0, 0);
> -
> -	i9xx_pipestat_irq_reset(dev_priv);
> +	i9xx_display_irq_reset(dev_priv);
>  
>  	GEN3_IRQ_RESET(uncore, GEN2_);
>  	dev_priv->irq_mask = ~0u;
> -- 
> 2.39.2
> 
