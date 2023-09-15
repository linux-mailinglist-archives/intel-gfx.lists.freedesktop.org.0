Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D86BE7A2540
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 20:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C7FD10E664;
	Fri, 15 Sep 2023 18:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1257310E663;
 Fri, 15 Sep 2023 18:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694800821; x=1726336821;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GR5HBeDE0+CZ5Myp2IXkM2YLrHqIiI6QBD/1ze81pEs=;
 b=Di+t6pj3o7jmbHH4EebpRJjFwmrf/ySkTUDpo9L4psfND0Yti+9j7wlz
 NV3NR8JyU6Owt2NWt4Wxi9Is8PqPnU25AUhQvvVElO5wTfElgsJWQj49q
 JkcZDDQ5nJueSYqnQIgCqDNoFsG74hcXwv41ruDxqPR1CLKTtGi7Xl0kc
 ATXqrgexygcGkHaYpK17rBlxg2iU5IkMKdTC36cUtwWu3zdzoE+zlki+s
 ijc/9sEEJM+MSkI1WilXAGlvBkUIYHAf0hEgKPiE9lT8AYh0/d/z6gREZ
 9sv7ogdWtBpWUL99LRQqU/Z2SD0rDhzUz36TI7s0BWaIFeX88fMP54yO0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="379231151"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="379231151"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 11:00:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="780186521"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="780186521"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Sep 2023 11:00:19 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 11:00:19 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 15 Sep 2023 11:00:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 15 Sep 2023 11:00:07 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 15 Sep 2023 11:00:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mvhbW7EysCIogIvlJ5L/h8cQYJzyBQs9yDEVJG5kW14GHcZpuzCRVDLs4/I0VvmOHwmj+DFUq/LMUgYcTqQr1f7rom3kqb4ApgizToAc31u5aUqGEyEUACtcf8nxrf2c0nMDetZ19i2PW+aLiKi0dauqin2t2bmX6AVKZNtXOWtai7bitoCZZPFshWdFPRitftJPp3ekpRhFCyesX2euamqm2olZ+cIHsIzotx6Go9hX9NaYwnqaPSGvc3IouC+g60OtzqRnnXRA0PI1O0H04vRZYjIF4b7zd9gD7TxqOw/PKvq7eFIAA64twyuDOik5tb5H64Ln35GjtyaW7NDgdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YRNL56d83IM/lKEEPWKrupK8SS0VKm/C3U3deJea+FE=;
 b=Ek7VhnXgLlyxTtsejdchkemELhaadVjfOMKqE8aFp6CUKV4npPPkAVV3Swi2uc3BWu1CmmY/RAKzfcOaahmdsIHcjUdAukC3EMoVe+D1mklxYymwE4X9KreyF+PY1bXOMoJ6EwO4OxGxweVl4iUb1/k+unNQdpiv2tU/OE/ubtez7Cy0tI0ru4PL8iTDRcw5hlPVIJ865NCOs1KRFUiwZaDKyiJr62szZ2z6J+4pmnCiZO/xtaZZATY5FaNe2+4gwKMh/UPYKdpihaKh4XEGe5XKcTi5utYFIVtTlgxIg13AvycTZXPDdqMa2pvIxuMe0zcN19XOJwHh24BNtV6Akg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BY1PR11MB8125.namprd11.prod.outlook.com (2603:10b6:a03:528::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.19; Fri, 15 Sep
 2023 18:00:05 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Fri, 15 Sep 2023
 18:00:05 +0000
Date: Fri, 15 Sep 2023 11:00:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230915180001.GF2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230915174651.1928176-1-lucas.demarchi@intel.com>
 <20230915174651.1928176-25-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230915174651.1928176-25-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR05CA0070.namprd05.prod.outlook.com
 (2603:10b6:a03:74::47) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BY1PR11MB8125:EE_
X-MS-Office365-Filtering-Correlation-Id: 006e3353-7a5f-4d0c-2f33-08dbb61596a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CcFDIZPLnXDPhdYVK42YvxsrrDkd2rgwR7OknnKyw1TwoTHczEP4MM6jmQeYXCkCwaPt3QTLYg1mw8JG+YEPfwxg0HD4566+XE9o19KC7j0o5QfyeGDg2RYd0giAF9NpaFSE5HNUbbcKD54F0GqqGXu8dxuonZ7ymQA7MXVlGQAzd3xSWYHj/xxHkPxtXhTfUdC6/KOuB5a3sQwfhNJcYRf6ZvzAu4oDGftL9Kc6Dz8nfD53+Sf0DqEb/kP1wfv4+dGob2V4J0SRae97qN1dOC6jxe0FhvGaP1jQm5OhZwaLp+gnKFbfNCPUso5Pqbm/1VmOoGXm2dZAcWgYww6a2cq6ordGBpJH2KRkdzYFrH9IT0sDkr+Pzy+S/+KSowsZGFp0mKbUX+bPLhqSxHPKiHLtIfbIgQERtCI9lLzVtw2RnUJJ4QQ8NxSoMoT7nZ/S/u089+IsOh/rmBQctPRTOp8bue9PexkKDcJz/z5FUQDGyhlvJ/xmFCNDLejyLj6iJTHzdHgMdh2IJHVAJ5M5MnmavvcB/rtwwSIPRYMG941neRxlVev0hoDW+xY8xR1s
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(136003)(39860400002)(366004)(376002)(1800799009)(186009)(451199024)(6862004)(5660300002)(41300700001)(8676002)(8936002)(4326008)(450100002)(478600001)(2906002)(66556008)(66476007)(6486002)(6666004)(83380400001)(6512007)(33656002)(1076003)(26005)(66946007)(86362001)(316002)(6506007)(82960400001)(6636002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BHN3z6mfKXCO0LEqFchCVpnrSMcOmjhgoiv8ypxcgsW5/z5y440yrn4ZuMKg?=
 =?us-ascii?Q?5BsMfLhcqQ6UNZFFbyBtE2IxX6kfx4iL2dCMn50glTZKKD1AbDghE333i6ll?=
 =?us-ascii?Q?H819dcGfyUDNvMsfEmDWssEy2CWs0yW/AJEspgD2krHMdTJgnUB8eDV9b6bG?=
 =?us-ascii?Q?XrWPx2495V2YYovivW90jDaJSP94VMcIH3sWNmbi4WNjwUDQMSpZxxVJpRqM?=
 =?us-ascii?Q?vReeVwzoqhzpzL9dbSCqqgr3O8r8UnxyaQ9KkfuzCmRIK9Rb7i1pXR1bLMge?=
 =?us-ascii?Q?G/vqZzSnd2v3PSv2TCI26+6rZAvjWOHLMriR1symCC6Yx/loHUvcFjIEGYJI?=
 =?us-ascii?Q?hyQocpu3vCLxDPafjdEYcDarDpbK3jz+Evq2fdFZ2sopBrH1hTxhYPAu/T84?=
 =?us-ascii?Q?KDYG2/rBjv56b63x28jlI5leWKq1aw9dlQeoBG0t9crBfJEgxbFk4hLF8RTg?=
 =?us-ascii?Q?uyupo0UwFxaAcLqr3OMvyHmVnrhn36XJX1RzM+KW3Ki5G11QESDWefjwnxfB?=
 =?us-ascii?Q?cliboq2su8acTj4ZGtGVu2UzMsQiyzCRanvldB4yJgHS/g2NFSnhMWQspsdX?=
 =?us-ascii?Q?eCqssR6gN8OVMpIyAppAtpvF6YuYsZD5LLi7Trloee3Hbce9JH+33d3iC4uw?=
 =?us-ascii?Q?kx3rOEkM4h0nGAQZundCaNVeMc4uvWRc4KKSqXCzinPIFHuu5uY9SI3t32gN?=
 =?us-ascii?Q?Z2klp5fzZqBFjMN8njh8wyJKjIpZ0MZwKJrb4fv5EjMGuxt6VmC/GwPIlB7P?=
 =?us-ascii?Q?wyquIKkwyRuvKaZtom0CCaOB6O5CqCN15rdXaLzwic6+lvQaG4geXkQ2/7hU?=
 =?us-ascii?Q?SVKVPemBnzQd/GS3iwTwq0yjyIIC+3WhRcjKWeJWdcRaD31t6RJjVrkw4/rE?=
 =?us-ascii?Q?PwXDgA9Z1FocCEa9gsh9SDCyvx0wy030irhs6742x/4jx7LHEvRDboz/8rhB?=
 =?us-ascii?Q?rqDbNsgSxINk603QWj5oZHoH+bPvIq9ekjjuZHGmQD0V2I+XDUO/OehVL7cU?=
 =?us-ascii?Q?LzWJ2u5j83OxE3S4DEj4bh+DQcGnV3nfP1JUEWdQj+Kpin06SNqHwKq2Jv7X?=
 =?us-ascii?Q?gP1mKeEziNmxzzmyIkTwZNNbwtcsc9yL7oP0il+3bSmTT3lSQ2wcqi71ZRPD?=
 =?us-ascii?Q?8Z67gLdmtkYJrDzdBuCeH1/XaKpznG3xeuxy6QeaOvMXmFYFPkk602RdAmJa?=
 =?us-ascii?Q?+zU+qlkinrRNUHDK5PyKOCAJ7KB2x600JOQNTpLnNaAEz7LdNPOppWFmXMu/?=
 =?us-ascii?Q?3Wm+j+zBQgS8u4VoCjpNRJSwYXFECAoPBFpYvwHVJukO83j7dWW1H/Z4VJc3?=
 =?us-ascii?Q?4wTXN2+2jB1y3jR79ztmrtKhAGcDCFW1nupnKMLBc90EsLVR63q0ETjTYbuN?=
 =?us-ascii?Q?PBbB0nArAkg11OXdNia0iic5vb/H3s4nnAgwLINRYWGnmUk/a5+HO3l52syE?=
 =?us-ascii?Q?/oWtjjRqoGhrMNhBjQHUL9mTKvePXjoxEGOEF+21tBXSopjsqxFpdbKJYsyk?=
 =?us-ascii?Q?MQmlIdrOYKk6FAS+SxxfLzZ5+UDHmPDnLIgUXQtE0ziWKPBnFkmDc4dCo+kl?=
 =?us-ascii?Q?vw4Kv/8V5VB5NuCr2Q6XMslPsbqJFC6gn6qTWWX6N/oVg9O7QL4MdSqFE1rT?=
 =?us-ascii?Q?gA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 006e3353-7a5f-4d0c-2f33-08dbb61596a9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Sep 2023 18:00:04.6823 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 5wQvRrn/EIxwarWhXksu8AGfi/V22MQxpUTI6fD6xOwBUTMcNBYjPn0GM2ogr/ar51Q9f06D8h6EAXs3bXQYL+Xh+lX3ZgyZJVNK5tk/b0c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8125
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4 24/30] drm/i915/xe2lpd: Add
 display power well
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

On Fri, Sep 15, 2023 at 10:46:45AM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add Display Power Well for Xe2_LPD. It's mostly the same as Xe_LPD+,
> so reuse the code. PGPICA1 contains type-C capable port slices
> which requires the well to power powered up, so add new power well
> definition for it.
> 
> The DC_OFF fake power well will be added in a follow up commit.
> 
> v2: Do not rmw as bit 31 is the only R/W bit in the regiser (Matt Roper)
> 
> BSpec: 68886
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../i915/display/intel_display_power_map.c    | 36 +++++++++++++++-
>  .../i915/display/intel_display_power_well.c   | 41 +++++++++++++++++++
>  .../i915/display/intel_display_power_well.h   |  1 +
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  |  5 +++
>  4 files changed, 82 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 0f1b93d139ca..31c11586ede5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1536,6 +1536,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
>  	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
>  };
>  
> +I915_DECL_PW_DOMAINS(xe2lpd_pwdoms_pica_tc,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC1,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC2,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC3,
> +		     POWER_DOMAIN_PORT_DDI_LANES_TC4,
> +		     POWER_DOMAIN_AUX_USBC1,
> +		     POWER_DOMAIN_AUX_USBC2,
> +		     POWER_DOMAIN_AUX_USBC3,
> +		     POWER_DOMAIN_AUX_USBC4,
> +		     POWER_DOMAIN_AUX_TBT1,
> +		     POWER_DOMAIN_AUX_TBT2,
> +		     POWER_DOMAIN_AUX_TBT3,
> +		     POWER_DOMAIN_AUX_TBT4,
> +		     POWER_DOMAIN_INIT);
> +
> +static const struct i915_power_well_desc xe2lpd_power_wells_pica[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(I915_PW("PICA_TC",
> +							&xe2lpd_pwdoms_pica_tc,
> +							.id = DISP_PW_ID_NONE),
> +					       ),
> +		.ops = &xe2lpd_pica_power_well_ops,
> +	},
> +};
> +
> +static const struct i915_power_well_desc_list xe2lpd_power_wells[] = {
> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> +	I915_PW_DESCRIPTORS(xe2lpd_power_wells_pica),
> +};
> +
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
>  				    struct i915_power_well *power_well)
>  {
> @@ -1643,7 +1675,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>  		return 0;
>  	}
>  
> -	if (DISPLAY_VER(i915) >= 14)
> +	if (DISPLAY_VER(i915) >= 20)
> +		return set_power_wells(power_domains, xe2lpd_power_wells);
> +	else if (DISPLAY_VER(i915) >= 14)
>  		return set_power_wells(power_domains, xelpdp_power_wells);
>  	else if (IS_DG2(i915))
>  		return set_power_wells(power_domains, xehpd_power_wells);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index ca0714eba17a..07d650050099 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1833,6 +1833,40 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
>  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
>  }
>  
> +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
> +					  struct i915_power_well *power_well)
> +{
> +	intel_de_write(dev_priv, XE2LPD_PICA_PW_CTL,
> +		       XE2LPD_PICA_CTL_POWER_REQUEST);
> +
> +	if (intel_de_wait_for_set(dev_priv, XE2LPD_PICA_PW_CTL,
> +				  XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well enable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when enabled");
> +	}
> +}
> +
> +static void xe2lpd_pica_power_well_disable(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	intel_de_write(dev_priv, XE2LPD_PICA_PW_CTL, 0);
> +
> +	if (intel_de_wait_for_clear(dev_priv, XE2LPD_PICA_PW_CTL,
> +				    XE2LPD_PICA_CTL_POWER_STATUS, 1)) {
> +		drm_dbg_kms(&dev_priv->drm, "pica power well disable timeout\n");
> +
> +		drm_WARN(&dev_priv->drm, 1, "Power well PICA timeout when disabled");
> +	}
> +}
> +
> +static bool xe2lpd_pica_power_well_enabled(struct drm_i915_private *dev_priv,
> +					   struct i915_power_well *power_well)
> +{
> +	return intel_de_read(dev_priv, XE2LPD_PICA_PW_CTL) &
> +		XE2LPD_PICA_CTL_POWER_STATUS;
> +}
> +
>  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
>  	.sync_hw = i9xx_power_well_sync_hw_noop,
>  	.enable = i9xx_always_on_power_well_noop,
> @@ -1952,3 +1986,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
>  	.disable = xelpdp_aux_power_well_disable,
>  	.is_enabled = xelpdp_aux_power_well_enabled,
>  };
> +
> +const struct i915_power_well_ops xe2lpd_pica_power_well_ops = {
> +	.sync_hw = i9xx_power_well_sync_hw_noop,
> +	.enable = xe2lpd_pica_power_well_enable,
> +	.disable = xe2lpd_pica_power_well_disable,
> +	.is_enabled = xe2lpd_pica_power_well_enabled,
> +};
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index a8736588314d..9357a9a73c06 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -176,5 +176,6 @@ extern const struct i915_power_well_ops icl_aux_power_well_ops;
>  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
>  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
>  extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
> +extern const struct i915_power_well_ops xe2lpd_pica_power_well_ops;
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index 9d141e86a4b6..e8f426d5ce20 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -86,4 +86,9 @@
>  		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
>  		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))
>  
> +/* PICA Power Well Control */
> +#define XE2LPD_PICA_PW_CTL			_MMIO(0x16fe04)
> +#define   XE2LPD_PICA_CTL_POWER_REQUEST		REG_BIT(31)
> +#define   XE2LPD_PICA_CTL_POWER_STATUS		REG_BIT(30)
> +
>  #endif /* __INTEL_DP_AUX_REGS_H__ */
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
