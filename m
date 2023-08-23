Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50D67786093
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:25:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A58C10E0CF;
	Wed, 23 Aug 2023 19:25:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8364910E0CF;
 Wed, 23 Aug 2023 19:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692818702; x=1724354702;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mst4pxcizqpwdAZwSLE2IEjt/hIWrJLM/m+UX6L+Jb8=;
 b=H0w7hEBE4/YESWJuT01wTBl9w87kJBCORfG7hevCo8CSeosVe1k5xf/f
 z8D2CaQoRhNSVfQvURxv+JafEJx9lYcMSfsVfj8hGvVie2hUCAeWD2bjc
 6rKPF++wPxU8Si0wQBBxlsIaMEKWOjjxZHhNMTSYbuowp1Lq+UPgMQ64c
 Ic0mU09wZpjJG2YMnbtR1atRs0HcY/wAXCky44LPk7ILmBtqiks1fL2yQ
 mo6qatP/yUvw5IHPPTTY5Vzu1G3Wvs3AnfAYXleH7n3kxnH3NAQ9wls9k
 9dEU1KkRvs+NnqUGwzLnoxKFqtLQBcpJsjEfk3t5HNqWDUt0s0NO1uy6v Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="376982397"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="376982397"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:25:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="826841424"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="826841424"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Aug 2023 12:25:00 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:24:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:24:58 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:24:58 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:24:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cz4cCkx9CCnUmMrtkU3VCqFCRq4P2IKWGdrWcACAfjQaMJ93dsdMTAFlGka5ecdkFACgkvfovansa4TZ6ijHaFwhzq4I2Ae/kZRhrsAGAs89p10C8v5Kj9expv1p5gvgsdP/FnJmdG3jAZIzU4rSYgPipCc4kJ3wvGYaSXkhNsoCvQisIOfc2s10gJkXEwH1N58AgpE5PSSwZuYOU4hQ2G2YWJCmu2k3+2oaq7OKcaHwU7Pff3KVkQ+SzRYYZ+2qhM7wv6aDhrpRZL/30pIJZvhWtCeyURfaLzVdp30piZNr+bhhTma0jxoW4vNjWJEs6QL97F65u67ZOEp6CNt0hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LAIPzVGNv6cHPwVhp50Hs2UySENrawYG5GMqUpUIjFg=;
 b=Ncyiui904TTu4I5SZNtToGZ3mhP+l2gWBpuglLozF6V8nVEcL5OdgqDE9bU3ZlJRqW4g2D56g/uo8DoY66FsfmVvZdP0LOhXqGwNx6xsDDZ7p9PubL3z7m40usxQLBCGtajDLqyZxabyrYkVX0ZFetm2rCVjt+aSvsLpZ/yywIjwOl91byVFI6a9HmUyIKiOcZH98hnaojnrXpan+uuZNLgu6ZHII9mK+8qIfuSmOVfMTneAd9FgtJXvr4e6GzXQ1nAUOPtgpL8Fbff/4MUCl3p9iTikOl7JqAhlwxOuyRv4YdyiPV/fV70XmHYP6oUZVrX9x5RoQXN5wbjuFmoosg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH0PR11MB8215.namprd11.prod.outlook.com (2603:10b6:610:182::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 19:24:55 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 19:24:55 +0000
Date: Wed, 23 Aug 2023 12:24:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823192452.GB1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-19-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-19-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR01CA0051.prod.exchangelabs.com (2603:10b6:a03:94::28)
 To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH0PR11MB8215:EE_
X-MS-Office365-Filtering-Correlation-Id: ef6b2395-3d4a-4880-08a9-08dba40ea17a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: efrZqSwhn1OqPcvUuE0VhjJXVRMificDTnr1irAXp8if4N4hH/ho60tCiAjVlas60dLcl+wV5/fj8YabCe7VqCDveYbFQGW3It6MGhfkxl6UGXuYEniIBi9goeeDDc7lKVN61ccTS0766lvrDP9Ixn8BZE0LSv4w4hIZDkB9U2G7HTfbVwDDvX4nsAUVw9AUuk12sDHPGEG+WuCADibITK78QBX0XBF79Iz4k7MGzwVpy+0foFH7r6Z2OvRuDuQpHl5DKq0+FTbq4hft3mj1r9dRpt3MMKmLD1TVe8JWrBVUITvpfIkk1X0uxCPI+kqTDLFmBPf4r5XDuMAnxjiYXB22PWUujBaKcwVa6dLY+t2TRTeFiYd38FsJf98qRRHfZRtlmvezxLTF9Ux79BHudKhgNoM2o6AQUS2eiXaJzMch25+O2xXWzayHoaYTy7pmONaiH5WXgtxeScST+/zMh8+SjokbrJUn6mP32vIQgvjqO1b6v0c692qyR9jmVG3WXT47vyuyKLh9b8m0p9VNoH6L4rSzEjyh6kPkAGPDd/822kEsjEu6g2dvBdmfTMot
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39860400002)(186009)(451199024)(1800799009)(6506007)(6486002)(316002)(6636002)(450100002)(6862004)(8936002)(8676002)(4326008)(66556008)(66946007)(66476007)(6512007)(41300700001)(26005)(1076003)(5660300002)(6666004)(478600001)(83380400001)(30864003)(66899024)(86362001)(82960400001)(2906002)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZGppqLq+5vFILaDyNna6FsZpQHnW1ymu3V5hMdXXSegfpUmYt5jfgwzv5JeM?=
 =?us-ascii?Q?XnI5JhI0aNhW8R+63/JshN3LawgJiheBtasLYxgjgHM+Z0wYlObN/l4uZVxZ?=
 =?us-ascii?Q?8C41YEkWwQMsSw2jhxMCKfrerKAdcborNykhjkB4Cw9Z1E+wSUGsCNNwh2ra?=
 =?us-ascii?Q?j0VI7xL25OiHNXRijkLkWzkEGXpA+WbXQc7HhGuX0fCf51eGGEXhSDr8xJKb?=
 =?us-ascii?Q?FTaXaczhMRjv5Fn4clZVKJNcaCzEvOJXQBZHXzCfIsVePUPpcGiE/1ULGUes?=
 =?us-ascii?Q?eoo4yx7GMR9k5LvlNFS7Lsh207VLN9axJooH2j9Map47E6tiUCpiuxeDus1C?=
 =?us-ascii?Q?IMQkmfxHZXHC8S7h4nBSq4eX+AkvW5j2s6mKBAtvPmeJie+2rh5ekTdS8eu+?=
 =?us-ascii?Q?lOY3xDrpIEPHaZFHHVIlAphTs0/apneXPW92Z3m14Arjyv0TWKyAL1aV0YV5?=
 =?us-ascii?Q?I0w96d0Wc0+7Y4PpitdOJGodqCrnsXZjdJSBOjRVWgcLdF4UvegUunkK+8UZ?=
 =?us-ascii?Q?ejzSpyjuXC8rqEwyCShyYareqwAPGiGks2mvytt2P/QUXXgcmuUO9idGrNtB?=
 =?us-ascii?Q?R8hHjl04r0cpCZbs2iIGEV0UMjF0QBhXygvSOrfdrcgge66o3qVHHgh9rDd0?=
 =?us-ascii?Q?ymosqCauPd8SmEvapSiuaNF0wsbepLf7LET3WuQSBo+RcCs/sagkQS1r3PSs?=
 =?us-ascii?Q?/84XjHTNyPSQ1fzLy6kEl/CCEbhD7jgysTqPs2D3yIxZgfFFwLTsp5nyRUZ8?=
 =?us-ascii?Q?KKI4rd3SmgFx6PttRPAUiezVNIpuQSPewAG2fCzY9XzU7tHiYHjgs4Slr8KU?=
 =?us-ascii?Q?r/eq791MSzG2qVHliw8ZMv4q7hjKy+3JzIOSGiEstmmrxEK2a+cSsoNnntcM?=
 =?us-ascii?Q?fgaYyx4oA8P8G762n/pGOi6h+bC1L5YTq2T7XaLEesRt3OTWscTgHn11sILq?=
 =?us-ascii?Q?uTGddnodqQzk0C5Vkv2XWx7UytUQmBywdrhb61mZMYMW8QQ6i2M75SpmmdGA?=
 =?us-ascii?Q?uAguwmPd+1Z41tmqE1K+0JpQHuqjwnz3tc1/JhgolNccZHOo5HALo68xP7Tw?=
 =?us-ascii?Q?WotVUUL76+dTxJ/nMJWDKiXpbe2rTmsQERzYmL9brxz1+9YUiRCVPSVHDqeP?=
 =?us-ascii?Q?H6KbJyCa3nWWl30xTt0ffG325fUCVvw46wUoL65w6EMI9bhxQXbLSi1p9X8U?=
 =?us-ascii?Q?is4Hi/3NdwSbLy+Foz/88cuFc0zAx32usiVwRN395tvWvBSj89QsW4tuSVKX?=
 =?us-ascii?Q?ZMaCDwn0dUEuFPgE1sXba/rrl+4NcbnsRdHQGq8OjjxEbp2Q0RkiE/7RBAU9?=
 =?us-ascii?Q?vgOp6McWtYBaqRR5JVREbEwNPAmr1aKczksjnmJmHY5PN9Gfi1b9edJLosbT?=
 =?us-ascii?Q?zonHZpFzVmD+vbTj1aNoB+MBOdoAIUdL2r/nNDBaHt8PceK23aNdPDz41QE+?=
 =?us-ascii?Q?npo/epjvY32lxM0kAzIP2TwMPJACaL9UGO4Rjp0lampUPyw05eg1SHSA5hCA?=
 =?us-ascii?Q?xNWZWEK4/n8nO1okm5DTpgBTBX9Y43ky2nmX54/ikAw7Zy1WKWjZgRyyan+R?=
 =?us-ascii?Q?UudgFXB/A6oRuIXz6RW5ayJIguHrNPUnAIZdc2VcbTMOVK2i+A5W8sNe6ZJn?=
 =?us-ascii?Q?hQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef6b2395-3d4a-4880-08a9-08dba40ea17a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:24:55.0509 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S6eFV3eouBu9hm5Se99FQ5f4rRWpMzTOVOUSE+JtLCp+xC5L+XNCl2ostIbYBoPK83NszYcClrNqJ4K6r4c1784FX+nk01jrGP/+iNy4aL0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8215
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 18/42] drm/i915/xe2lpd: Move
 registers to PICA
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:16AM -0700, Lucas De Marchi wrote:
> Some registers for DDI A/B moved to PICA and now follow the same format
> as the ones for the PORT_TC ports. The wrapper here deals with 2 issues:
> 
> 	- Share the implementation between xe2lpd and previous
> 	  platforms: there are minor layout changes, it's mostly the
> 	  register location that changed
> 	- Handle offsets after TC ports
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 81 ++++++++++---------
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 71 ++++++++++++++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 18 +++--
>  3 files changed, 117 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index a5918bf30c31..6533ec417806 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -98,7 +98,7 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
>  static void intel_clear_response_ready_flag(struct drm_i915_private *i915,
>  					    enum port port, int lane)
>  {
> -	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
> +	intel_de_rmw(i915, xelpdp_port_p2m_msgbus_status_reg(i915, port, lane),
>  		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
>  }
>  
> @@ -106,10 +106,10 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
>  {
>  	enum phy phy = intel_port_to_phy(i915, port);
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	intel_de_write(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_RESET);
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_RESET,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
> @@ -125,7 +125,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
>  	enum phy phy = intel_port_to_phy(i915, port);
>  
>  	if (__intel_de_wait_for_register(i915,
> -					 XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
> +					 xelpdp_port_p2m_msgbus_status_reg(i915, port, lane),
>  					 XELPDP_PORT_P2M_RESPONSE_READY,
>  					 XELPDP_PORT_P2M_RESPONSE_READY,
>  					 XELPDP_MSGBUS_TIMEOUT_FAST_US,
> @@ -160,7 +160,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
>  	int ack;
>  	u32 val;
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -169,7 +169,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
>  		return -ETIMEDOUT;
>  	}
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	intel_de_write(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       XELPDP_PORT_M2P_COMMAND_READ |
>  		       XELPDP_PORT_M2P_ADDRESS(addr));
> @@ -220,7 +220,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  	int ack;
>  	u32 val;
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -229,14 +229,14 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  		return -ETIMEDOUT;
>  	}
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	intel_de_write(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
>  				    XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
>  		       XELPDP_PORT_M2P_DATA(data) |
>  		       XELPDP_PORT_M2P_ADDRESS(addr));
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -249,7 +249,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  		ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
>  		if (ack < 0)
>  			return ack;
> -	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)) &
> +	} else if ((intel_de_read(i915, xelpdp_port_p2m_msgbus_status_reg(i915, port, lane)) &
>  		    XELPDP_PORT_P2M_ERROR_SET)) {
>  		drm_dbg_kms(&i915->drm,
>  			    "PHY %c Error occurred during write command.\n", phy_name(phy));
> @@ -2431,7 +2431,8 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	u32 val = 0;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
> +	intel_de_rmw(i915, xelpdp_port_buf_ctl1_reg(i915, encoder->port),
> +		     XELPDP_PORT_REVERSAL,
>  		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
>  
>  	if (lane_reversal)
> @@ -2451,7 +2452,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  	else
>  		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
>  		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
>  		     XELPDP_SSC_ENABLE_PLLB, val);
> @@ -2484,15 +2485,16 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
>  						u8 lane_mask, u8 state)
>  {
>  	enum phy phy = intel_port_to_phy(i915, port);
> +	i915_reg_t buf_ctl2_reg = xelpdp_port_buf_ctl2_reg(i915, port);
>  	int lane;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, buf_ctl2_reg,
>  		     intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
>  		     intel_cx0_get_powerdown_state(lane_mask, state));
>  
>  	/* Wait for pending transactions.*/
>  	for_each_cx0_lane_in_mask(lane_mask, lane)
> -		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +		if (intel_de_wait_for_clear(i915, xelpdp_port_m2p_msgbus_ctl_reg(i915, port, lane),
>  					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  			drm_dbg_kms(&i915->drm,
> @@ -2501,12 +2503,12 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
>  			intel_cx0_bus_reset(i915, port, lane);
>  		}
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, buf_ctl2_reg,
>  		     intel_cx0_get_powerdown_update(INTEL_CX0_BOTH_LANES),
>  		     intel_cx0_get_powerdown_update(lane_mask));
>  
>  	/* Update Timeout Value */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +	if (__intel_de_wait_for_register(i915, buf_ctl2_reg,
>  					 intel_cx0_get_powerdown_update(lane_mask), 0,
>  					 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> @@ -2515,10 +2517,10 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
>  
>  static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
>  {
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, xelpdp_port_buf_ctl2_reg(i915, port),
>  		     XELPDP_POWER_STATE_READY_MASK,
>  		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
> +	intel_de_rmw(i915, xelpdp_port_buf_ctl3_reg(i915, port),
>  		     XELPDP_POWER_STATE_ACTIVE_MASK |
>  		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
>  		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
> @@ -2563,28 +2565,28 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
>  					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
>  					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
>  
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
> +	if (__intel_de_wait_for_register(i915, xelpdp_port_buf_ctl1_reg(i915, port),
>  					 XELPDP_PORT_BUF_SOC_PHY_READY,
>  					 XELPDP_PORT_BUF_SOC_PHY_READY,
>  					 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, xelpdp_port_buf_ctl2_reg(i915, port),
>  		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
>  		     lane_pipe_reset);
>  
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +	if (__intel_de_wait_for_register(i915, xelpdp_port_buf_ctl2_reg(i915, port),
>  					 lane_phy_current_status, lane_phy_current_status,
>  					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, port),
>  		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
>  		     intel_cx0_get_pclk_refclk_request(lane_mask));
>  
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
> +	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, port),
>  					 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
>  					 intel_cx0_get_pclk_refclk_ack(lane_mask),
>  					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
> @@ -2595,9 +2597,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
>  					    CX0_P2_STATE_RESET);
>  	intel_cx0_setup_powerdown(i915, port);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0);
> +	intel_de_rmw(i915, xelpdp_port_buf_ctl2_reg(i915, port), lane_pipe_reset, 0);
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lane_phy_current_status,
> +	if (intel_de_wait_for_clear(i915, xelpdp_port_buf_ctl2_reg(i915, port),
> +				    lane_phy_current_status,
>  				    XELPDP_PORT_RESET_END_TIMEOUT))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
> @@ -2726,12 +2729,12 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
>  	 * LN<Lane for maxPCLK> to "1" to enable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
>  		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
>  
>  	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
>  					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>  					 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
> @@ -2751,7 +2754,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	u32 clock;
> -	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +	u32 val = intel_de_read(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port));
>  
>  	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>  
> @@ -2804,11 +2807,11 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  	 */
>  	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
>  	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
>  
>  	/* 2. Read back PORT_CLOCK_CTL REGISTER */
> -	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +	val = intel_de_read(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port));
>  
>  	/*
>  	 * 3. Follow the Display Voltage Frequency Switching - Sequence
> @@ -2819,10 +2822,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
>  	 */
>  	val |= XELPDP_TBT_CLOCK_REQUEST;
> -	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
> +	intel_de_write(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port), val);
>  
>  	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  					 XELPDP_TBT_CLOCK_ACK,
>  					 XELPDP_TBT_CLOCK_ACK,
>  					 100, 0, NULL))
> @@ -2874,7 +2877,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
>  	 * to "0" to disable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
>  		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
>  
> @@ -2884,7 +2887,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
>  	 */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
>  					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
>  					 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
> @@ -2897,9 +2900,9 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	 */
>  
>  	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
> @@ -2918,11 +2921,11 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     XELPDP_TBT_CLOCK_REQUEST, 0);
>  
>  	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
>  		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
>  			 encoder->base.base.id, encoder->base.name, phy_name(phy));
> @@ -2935,7 +2938,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_clock_ctl_reg(i915, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK |
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index cb5d1be2ba19..4b5b9a97142d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -6,13 +6,15 @@
>  #ifndef __INTEL_CX0_PHY_REGS_H__
>  #define __INTEL_CX0_PHY_REGS_H__
>  
> +#include "i915_drv.h"
>  #include "i915_reg_defs.h"
> +#include "intel_display_limits.h"
>  
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
> -#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)		_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
> @@ -27,7 +29,7 @@
>  #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
>  #define   XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
>  #define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
> -#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
> @@ -54,7 +56,7 @@
>  #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
> -#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_BUF_CTL1(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> @@ -75,7 +77,7 @@
>  #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
>  #define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
>  
> -#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> @@ -95,7 +97,7 @@
>  #define   XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
>  #define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
>  
> -#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_BUF_CTL3(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> @@ -114,7 +116,7 @@
>  #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
>  #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
>  #define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
> -#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define XELPDP_PORT_CLOCK_CTL(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_CLOCK_CTL_A, \
>  										 _XELPDP_PORT_CLOCK_CTL_B, \
>  										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
> @@ -271,4 +273,61 @@
>  #define HDMI_DIV_MASK		REG_GENMASK16(2, 0)
>  #define HDMI_DIV(val)		REG_FIELD_PREP16(HDMI_DIV_MASK, val)
>  
> +/*
> + * All registers are in the same IP, with a single range.  However the registers
> + * for TC_PORT come first.
> + */
> +static inline enum port xe2lpd_port_idx(enum port port)
> +{
> +	return port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A;
> +}

Somewhat confusing, but this is still the cleanest way to implement it
that I can think of.  I guess the most unintuitive part here is that the
index handling above ensures (correctly) that for Xe2 the result always
falls in the upper range of the _PICK_EVEN_2RANGES() macro.  Maybe we
should mention that to help make the logic more understandable?  Up to
you.

> +
> +static inline i915_reg_t xelpdp_port_clock_ctl_reg(struct drm_i915_private *i915,
> +						   enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_CLOCK_CTL(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_CLOCK_CTL(port);
> +}

I think there's one instance of XELPDP_PORT_CLOCK_CTL that didn't get
converted to this function in intel_mtl_port_pll_type().

> +
> +static inline i915_reg_t xelpdp_port_buf_ctl3_reg(struct drm_i915_private *i915,
> +						  enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_BUF_CTL3(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_BUF_CTL3(port);
> +}
> +
> +static inline i915_reg_t xelpdp_port_buf_ctl2_reg(struct drm_i915_private *i915,
> +						  enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_BUF_CTL2(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_BUF_CTL2(port);
> +}
> +
> +static inline i915_reg_t xelpdp_port_buf_ctl1_reg(struct drm_i915_private *i915,
> +						  enum port port)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_BUF_CTL1(xe2lpd_port_idx(port)) :
> +		XELPDP_PORT_BUF_CTL1(port);
> +}

There are several uses of XELPDP_PORT_BUF_CTL1 that didn't get converted
in intel_tc.c and one in intel_ddi.c.


Matt

> +
> +static inline i915_reg_t xelpdp_port_m2p_msgbus_ctl_reg(struct drm_i915_private *i915,
> +							enum port port, int lane)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_M2P_MSGBUS_CTL(xe2lpd_port_idx(port), lane) :
> +		XELPDP_PORT_M2P_MSGBUS_CTL(port, lane);
> +}
> +
> +static inline i915_reg_t xelpdp_port_p2m_msgbus_status_reg(struct drm_i915_private *i915,
> +							   enum port port, int lane)
> +{
> +	return DISPLAY_VER(i915) >= 20 ?
> +		XELPDP_PORT_P2M_MSGBUS_STATUS(xe2lpd_port_idx(port), lane) :
> +		XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane);
> +}
> +
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 3147ed174d83..3587ddc6d8ed 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -176,7 +176,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
>  	int ret;
>  
>  	/* FIXME: find out why Bspec's 100us timeout is too short */
> -	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) &
> +	ret = wait_for_us((intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port)) &
>  			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
>  	if (ret)
>  		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
> @@ -224,7 +224,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
> +		ret = _wait_for(!(intel_de_read(dev_priv,
> +						xelpdp_port_buf_ctl1_reg(dev_priv, port)) &
> +				  XELPDP_PORT_BUF_PHY_IDLE),
>  				timeout_us, 10, 10);
>  	else
>  		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
> @@ -2365,7 +2367,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  		dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>  	} else {
> -		reg = XELPDP_PORT_BUF_CTL1(port);
> +		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
>  		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>  	}
> @@ -2385,7 +2387,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	u32 val;
>  
> -	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
> +	val = intel_de_read(i915, xelpdp_port_buf_ctl1_reg(i915, port));
>  	val &= ~XELPDP_PORT_WIDTH_MASK;
>  	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
>  
> @@ -2398,7 +2400,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>  		val |= XELPDP_PORT_REVERSAL;
>  
> -	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
> +	intel_de_write(i915, xelpdp_port_buf_ctl1_reg(i915, port), val);
>  }
>  
>  static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
> @@ -2409,7 +2411,7 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>  
>  	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
>  	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
> +	intel_de_rmw(i915, xelpdp_port_buf_ctl1_reg(i915, encoder->port),
>  		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
>  }
>  
> @@ -2829,7 +2831,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
>  		dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>  	} else {
> -		reg = XELPDP_PORT_BUF_CTL1(port);
> +		reg = xelpdp_port_buf_ctl1_reg(dev_priv, port);
>  		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>  	}
> @@ -2967,7 +2969,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  
>  	/* De-select Thunderbolt */
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port),
> +		intel_de_rmw(dev_priv, xelpdp_port_buf_ctl1_reg(dev_priv, encoder->port),
>  			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
>  }
>  
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
