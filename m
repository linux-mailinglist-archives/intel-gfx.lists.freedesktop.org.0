Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A37587393
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Aug 2022 23:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FA8710E854;
	Mon,  1 Aug 2022 21:49:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13AA110F197
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Aug 2022 21:49:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659390583; x=1690926583;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xdsVDOXYqYyjJhWY6kqnIf94w9JcVXpGBgQy65HCbr4=;
 b=nTkass6PDE/yaOqdCjWvXnWj8noC/lptw7IFUtFD4Wi6HTSYbwy51n4F
 D3BItUY+sXX1pI8X0buZA+rcQbYfBxED7xMyrlUBCAFC+8aqnyrmK5qyc
 RJNsybrJX3IcSdzFFEV0jC1xVharv0hmRy6iaUlDkvM157mxHoaW/vD25
 z81ujAbMMpMgkuoQ5BumP4YzwdZA+KrVTLO0zJQJo+G/DmDTptiz6Xjtp
 qbsMnhclXqzwID1r6y77+HYzBchyt6qad5JXg19Lme9KRbc1hmPfaUgfC
 mSKXLjMjbJJOsgU1gpmAYYSmCNKN8P+Eh2NR00kqz/X5ShcuT1UDWzK8q A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="375560352"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="375560352"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 14:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="635057483"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 01 Aug 2022 14:49:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 14:49:40 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 14:49:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 14:49:40 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 14:49:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L8Som9OrXswjpl/T501KyZX1toSnCgHO/SzGwiGBOSlGHhYwH9rm2ZkcsrCrml0Fj+DTZja6hfJFvDLHvokWWdmEjHHomorT2AWT8LFch2Wu4aH/mYqChgbqt4nFctUSSvn1lUWzfh3MDO8UgEm1YrvmpKaU7yb8I51jVPBvG8ILkIANpC0vEyzTMoUZbRe4cofpkF51E5pcxCbybrzZV5qtBm97sWiioBjVJFG8nrtrPmAzuo0E3CQH6Sei7lr/MShl4bMGekieSRYJjPcVTftJr7epFXIAvUx5MVkeN5YSmnNkP3YFbp9MxHRwOgWSGG2/CrdeB2HVQkEuLfZ20w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m9H2o2Q8CEymgBbrNqu4JmhvR5C6218nPUXQaSi3afo=;
 b=gGV2/t/xYBIiRdSZiIm2jlGvE6I47Dg/yNhRV/Auj0vkaySUA7vNrwHBsqZ4oAVshs182ks0sw1oi0VOwsBmSNybWfiaK97vigXYnaNMUpZFrg9OVU2XKo0ob53K5YqAsdfPuwswqI4JufQBEYBcWkfe1wxmS8hYEJxtpmWvth8O9AIs7GWtzqYGh9zBo5KRue+hVoeAzctUz3QL/nbQcrw/LUHVquTWGdbftElv5iy2Yg9JXIOx4Cng1VGSzPuEGTzwLhtsJlkINe0Auz83SiuDM3aM2LVSzFtxGhxZZ8M/KQolc3vf2Egzs7+slKRRPK5/w5IcvVFQ2MyWndAG9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MN2PR11MB3999.namprd11.prod.outlook.com (2603:10b6:208:154::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.14; Mon, 1 Aug
 2022 21:49:36 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.012; Mon, 1 Aug 2022
 21:49:36 +0000
Date: Mon, 1 Aug 2022 14:49:34 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YuhKbhd0B6ysQ/ol@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-10-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-10-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY5PR17CA0051.namprd17.prod.outlook.com
 (2603:10b6:a03:167::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 62e3077a-30a6-4ae6-e205-08da7407ba13
X-MS-TrafficTypeDiagnostic: MN2PR11MB3999:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AdAfXq4dzZxxdppErPKkFLJusw+BykGwElo8zQI8VJcE+yV24HUjgfdZ4ot1Q7J4n+Peg0M2YkA+lkZ1lcDa6FZ2KY35RvG9H6RmcCSUnO9zikkti69h21gIUmtJHyOzNPMA2mDXgmz9tRzltemwi+C8WMWPyUfzPrYK5xVqgqJ2seJfNm/Zo/DpA6fek8GrpeBUPgit29AlbSVeMB0gh+Wyro0mB+W+oEcLJu75aftyA7XverFPJnc1dGoiIuU+sx9+dpftIAbQYXmpYXvmH6+fIQ9DRrfg3Ahlm4uGvUaFDkW73bN8qyEvhHKZTeiD1Areknb3Cpeh4zte3wFFV40JO6di7E1JKYBy1xTYAEuIHw3ugBiV8u28N7WAIIZ4qppocPDA5xhJBegaGdnQgfe6hqHeUxUv/ri+N5/BCYeGuRDwokONY8lQRsSxi75wEOHtXIkrLqh30idlUDgJARLR+bhxe7BbT/wBvSFH32CDHcV6USXDbooXZchmkfXbuoPCS9BIfiesXl3Vu/7CCb4NErxaVi9ILZpqVzRKUBdfDXhrWuW+svjAjdJmpLaRWnFQNMcpHb5FxaVC9DLuVqquB3e25Smp50D0hgjbJnuin5HXIwlepna0yr4Aw889PpXWuA6+f+JZLB9yJSmfhr03bwQhyIypVAq6ezErLJj5fgNJh0mJHYonBWk5ARraFltxhaDxXclBQglcjr8eLhfE7SZrK37BwPh321slpihloZLew8hYYLd+fz15yokd
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(39860400002)(346002)(136003)(366004)(6862004)(8936002)(66556008)(66476007)(5660300002)(66946007)(4326008)(8676002)(86362001)(2906002)(83380400001)(186003)(82960400001)(38100700002)(6486002)(478600001)(316002)(6512007)(6506007)(41300700001)(6636002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hoSY4MxdzEcmgF1gstlgy8aMeAiXoCqWi/5zsx6gpUX0F8Q/G820bb0aBhPd?=
 =?us-ascii?Q?fN0088w9nogunxl332elnok3xxVV/INzrlhG/rU4AA2/JiiCHTQ4bwfJ3hF6?=
 =?us-ascii?Q?HQx0YYdJP0NpZA0zLhBFAhWKAt5X+tCWUWDsjoBQgeCxwjm8mG07ua5pmUMf?=
 =?us-ascii?Q?bgkg5ohcMkYHn+CtHQmOqTe/xGgCJUjyXIgt671YmQK6uE5fUKW0FCDkET75?=
 =?us-ascii?Q?ekJoPhf4tER8qUWZk19w+jQPlplD3o7Q8v/FSJHgTpLOsXS9nXM9OhiwImJ+?=
 =?us-ascii?Q?9rZ3AxTRf53uklTaK3NFFtcZ4g0JgRUdidxK4svOpZyff1wTbgjJAqyrBQVx?=
 =?us-ascii?Q?6gB8z3Qu48CEyRBnUgy0AbzV6FwaQU4kuh37S3N84810Svp5pFgd42HQSd/0?=
 =?us-ascii?Q?QwDVHoI//ndm5LJAB7TE7UP6ou06z5wCbEUlqW4vqlMDqc71/aFr8IirFalK?=
 =?us-ascii?Q?C2vKJ2TAPVuFXBnPXGcmfEGcEK6amlenALdchbWS7bVhKfKQB9IqWqKvQlNH?=
 =?us-ascii?Q?VMTI0DOfJkD3u9cOscJwUHFfnXCNgZNWAXp7JIG3DubaYxgsPpiVXrRLIEvt?=
 =?us-ascii?Q?AUUFYXkeesW/ckyZPiWwKrpdwyovdBwH6BEINCrWEIVx8MI/bIfel9y7WSLe?=
 =?us-ascii?Q?UzAcH5CVDv+GNyT+30Zxfjp6RU/kh1NmqdSJ4tms3eTE9HThQMcyDKB80rjG?=
 =?us-ascii?Q?q63r6uZl61DS1gic3NXs24CqYBx3sWy9OoRGYBFAaL/dkDBWotp+LxDxZ2dX?=
 =?us-ascii?Q?pSAwEdsZlP74nz+UYS9OQqW6xAQwKoQng2CS1rZL+KJSgmG2wLjRzsOcp91y?=
 =?us-ascii?Q?AODCDJD1HvZJCbt7dB/N4uhQTgfp2toiCL4KqPm28tOqjI/E8plaoyUXUSHU?=
 =?us-ascii?Q?0gZGh61CSxsSBPahERDLXMj9dDe/TpYwMf/PrO2z3yG0YLGzEHNL+bNHL01N?=
 =?us-ascii?Q?A0FsGM1uUjl3v6rBwywDnxvw6PZI7f9FjNIdZPG2W1dt1mENSZUe/HOjn6ad?=
 =?us-ascii?Q?8HH/wDvINKr4z+Uiq43qkusHKoRhZQReI+X2IJf0RRS1QUnKooV8L2vbGxvP?=
 =?us-ascii?Q?0FX0g3hIP3StfAQhAOF3g6HGI0a1qVv6F8QRQacrJvDgHZj8g0ZGhLnbNFK2?=
 =?us-ascii?Q?YxCTSioCjvA7fO4ihF3mkjPuDeYfPj7cIYg1hptMyKQVq4tDOlFM92aeb4gC?=
 =?us-ascii?Q?IPRMm94KBbgfQLhLP4X92OfdZbYQJLwmxpKJL8Y+z0Inb/xQFCoPnH0HXov2?=
 =?us-ascii?Q?PF916etg0p5JBM34FJqUtgP+zGQQ1eWAskEbPjHVjWlO21vo7XHDq98cUDBu?=
 =?us-ascii?Q?iJ5VXUmnVxUgOH/JZD2Wlj/d4Z4t4lOc0K8+K3yljbVBb3JLG4dj6/ZqZyF5?=
 =?us-ascii?Q?J7oA9knEhhs93N4bSGqIHQy5IzdyskvYo3++rZZgGrCp/e+j+G2DRYmsMIKk?=
 =?us-ascii?Q?ahxC90ut0kfw2w79oxOPZT9GZZNadWw+/Ise5z5ivTfx4Jmw80cqNjhdCeNV?=
 =?us-ascii?Q?96YbvQpjpMMdXTEN5svyKk8sG1jzz5VqtWK4wlIxUGNdRg6CRWoqwC6Ph15B?=
 =?us-ascii?Q?k/Y20KHEndsmzWcsw2pq6+eHGWQeP/X0QkIP2wBlge+/TusQ0PlCr59puuPh?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62e3077a-30a6-4ae6-e205-08da7407ba13
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 21:49:36.2898 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: roEoMsHwHsFLOrT1Hk4jwbdtKCvctt8J42g7cGlV/TziRLcMslTHBcycSt4uLFGJBO1X9+c65hRxGTClAwLGBELztBCgqDmJqgkpwgw6LOk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3999
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/23] drm/i915/mtl: Add support for MTL in
 Display Init sequences
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 27, 2022 at 06:34:06PM -0700, Radhakrishna Sripada wrote:
> The initialization sequence for Meteorlake reuses the sequence for
> icelake for most parts. Some changes viz. reset PICA handshake
> are added.
> 
> Bspec: 49189
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
>  drivers/gpu/drm/i915/i915_reg.h                    | 3 ++-
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 589af257edeb..ccc3f78b1607 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1381,6 +1381,9 @@ static void intel_pch_reset_handshake(struct drm_i915_private *dev_priv,
>  		reset_bits = RESET_PCH_HANDSHAKE_ENABLE;
>  	}
>  
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		reset_bits |= MTL_RESET_PICA_HANDSHAKE_EN;
> +
>  	val = intel_de_read(dev_priv, reg);
>  
>  	if (enable)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 50ddc5ba72b9..baf747adf1db 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5926,7 +5926,8 @@
>  							 _BW_BUDDY1_PAGE_MASK))
>  
>  #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
> -#define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
> +#define  MTL_RESET_PICA_HANDSHAKE_EN	REG_BIT(6)
> +#define  RESET_PCH_HANDSHAKE_ENABLE	REG_BIT(4)
>  
>  #define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
>  #define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
