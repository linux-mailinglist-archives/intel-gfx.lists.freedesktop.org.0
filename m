Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 367A47860E6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:45:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06CC10E0E9;
	Wed, 23 Aug 2023 19:45:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A00810E0E9;
 Wed, 23 Aug 2023 19:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692819923; x=1724355923;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=khqYb7VvR1uelonay4m9Az5zXa1mXElhoh7s8Th9bX8=;
 b=QXEIvZGoDEwtIfqFp/V6WEkTQ0Ikf36dOg5Zh67MfrR3flZxqv4Td1KD
 QpObAEpYw4gaAhNdezCxP7BzS8qaaPmHv8O/2zw005TJOsm0dVQgEGHIc
 niaFY1vGuesFUB3NGgEmSobVQK9b6m+Ksm31+FpcZwbAUrtizY+7kRrmO
 jBbYfLSgsYBwwkuV4qi1d2/ek2n6UJaRUKrP9cXHv+/FPKFdUwYZibDAw
 qOC3ERT++4ThrFRNDTXezAjPLQHdduBqbNKRuST83DoEfVPq6WxkXoQrO
 cND8SXZ4Ax+9VMndHJtgb5Hjaf7EOjuOtkp6DLW+ZiLDSbQIWs3RgSayA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="374233417"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="374233417"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:44:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="730333846"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="730333846"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 23 Aug 2023 12:44:59 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:44:58 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:44:58 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:44:58 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:44:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HiiQiqavevLg0bR4i2og6untbnwVw/uo/XD3PtKGNU1Yk28lY8cvbZQMrT0aZRapKmvbz1LB8STaw7kgvO4IWk1ZfocXTrc4xEiPUh25EXG3e7f7J+a9ibuF2pTTRBCU+U9cQ0qs5j48vMdeEN7rAjgXICB7/YryjZwB9lS3tRBSKSNFV9jA3HIGWxrsz3kAhVUjKvByDS84jWuoTEWxfFU3f0Y3Vk2XgnMZHEdFsVEdtfoyZvZ6dKd2V5yA8mv8mREZ03MDORrTGM/L9vl/Plr2wJyK1y0eeqmBKGDQJZo0ok/gkaMLagpgBIEqNsG70ItqDBOd1GPRuEIvf3lQTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cczJWVaYiCdJw3jEI0qTm4y4NOmNmZtKUUuJTc6p/PM=;
 b=kFgETgBLa5fxl06uoB/3qHHf4Kvz8b5UR2kuC+N+XnjMl2UM9RqU196ZwDWyKQaA8zWlqXH1eWW8NJfYYxjZTg1Y404dIhV2xP+9LQGHhDKevbjmkZYm9Uhq3bwdpsNXqhoORfxNhQ/LyRqnhjp5VBFCnU8YIirHiUvQwgLiPAMRXIHgB5KqTbEJ8iwnMmE/30JJQ3i9wOBYiNYbz2/dSrugjSPOFsk0WA/TDw6wx//ojbcgEZBLEe+rXlEk1wE8WPh8f2xO1SdZcj7Plv/yIaDNWbs/A8kRDUrJ+j1bzxG/gm1eqe7GHjnSoZ+SuYlocnMnbuUAaZ0sxRpzrkQKYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW3PR11MB4522.namprd11.prod.outlook.com (2603:10b6:303:2d::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.26; Wed, 23 Aug 2023 19:44:56 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 19:44:56 +0000
Date: Wed, 23 Aug 2023 12:44:53 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823194453.GD1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-22-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-22-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR05CA0022.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::35) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW3PR11MB4522:EE_
X-MS-Office365-Filtering-Correlation-Id: 070328bb-6054-4977-88b0-08dba4116d6b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hx/+PBenqBzsXv/5IsUhlnG4DDslo22dBSBM0uBRvyMLxc6z33Vl9Ua/s2wHUnFJor4Ov5XSLKpHThKnZjCRQIvve/YeOjCqLuHhy75hsYiTByAqqvuW0N4fKGIEyXpFUp/17sgnEAgCvaAQF7McAqDfTedOW2QzzHslg9gvAeORtAOhklx3FzrMBToJutsZKTn0N0y8g63CreJRtzROS7pL9Y9wR9hoBP8dgL8nGe2g4yS0sW3YtlnjE4F+SUEDTX92y6eXkhXuPqZWmS6cJO8o1c8yBg9Quwzs0rjpIvl2cYubG5g453mWfczCfX8tTQU162U+jCkKHjqDHrwAfAyKuPBi4C8klJnAOeKvXnMSTqFRrnwhKMbLvAVMghX+CEkNW8dTbDNJekuHwgcCRfUu8vwSH3pmOMv9umADDbM0mS0BeoV5aiCloL+iJ6MTF/5cRIGUUyHF5fXbVN9URZeTGHfIXZM3TVGd0oz6rlCmbVnUanMGt/HVBROmOX0q/XZIwg+qXHfmATL9cva7uE/tSvpzqSvqQjfLQXx7SYBVBFZzXL/8O67fENVwHNcY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(346002)(376002)(136003)(186009)(1800799009)(451199024)(6506007)(6486002)(6666004)(6512007)(83380400001)(33656002)(86362001)(38100700002)(82960400001)(26005)(2906002)(316002)(66946007)(66556008)(6636002)(41300700001)(66476007)(5660300002)(6862004)(8676002)(1076003)(4326008)(8936002)(450100002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gO9h+0sFdnb443WF5a0ZBJ8ZPV8a2umxBR3Lp1Vo6TAincLwV78r4YPP2VRe?=
 =?us-ascii?Q?rHfLLGHKX6RffC4o4P0Cm/5ZOlIKqGCxmaJndOOgMPwVGhegFuzl2DWvD7Vf?=
 =?us-ascii?Q?JG+64A81KKKA+67K03u8/eNFta0YTCSf2IotCK7llzJ3KsutwpzRZypj2aSQ?=
 =?us-ascii?Q?4Hnq4Ug8aZMDv1f1tyZylf+Zb6v+mU2qSgOBPtp8eyOMEzUdKjBPTJSr31gy?=
 =?us-ascii?Q?yb/y7kbnOaEkiwwdPsKBC8Ez7CoNCJfeS3+SeRsAEHhOPabq5HYSBCEH9Y39?=
 =?us-ascii?Q?1X0cUzYh3qtzDl3jg6bKLvVR6AN/j+jQOUNKh4Awy2N3gcdkTtnWXebrVoSj?=
 =?us-ascii?Q?UfhmpHaL+wuvukDalTcI5F34xIdBnpQ9zOJKVIiNA+k0CzlMCNAOOJGjjgtD?=
 =?us-ascii?Q?Y6xIuwvwoaht7r/4TOq6G4U6eNIHFHRT+gyoCk3j0y/bLL4PP5T19x+QwVUY?=
 =?us-ascii?Q?DlwHD753QhMYq1LaqYlNuESJjBjRzAgKGm2MyVlk/GAtZolHoYrtScWpBUgv?=
 =?us-ascii?Q?qBCUGwPI/LrhzBVeLbyyompv0L2Fi5kY3Dh23MmlZDq1lNTh8aMl1koMD9TX?=
 =?us-ascii?Q?ngF+p0qGkeMaciN/dAQ9dnNJkmFrxXYMcilWgYH3C+objgk3hoBusSGwo2AM?=
 =?us-ascii?Q?PNjWoiB5I3l7X1OO6Jret92hzwR/6EDvEZmW8W8AGetT6DAHwIs1pFunMdjk?=
 =?us-ascii?Q?JtyaWFTupQlPGVL+RClnp6AbyfJ27ToxVH2nvZnMgmaGipWynf2lcu4YDN9v?=
 =?us-ascii?Q?KQrsu+RJ4Wtt5uLdJrEu9XnMjRQkhlWwKEd9GS22gpzIJy0XZDWjAxk5RPYM?=
 =?us-ascii?Q?zN3ItyjKzoHnGddQX83Fb5Ztww9tCxv4g/fgCETI6QdbsK/f3O0dOC5axv4v?=
 =?us-ascii?Q?lPcBzmQgFWCyRscXOjRXbdbZrA1mWi0BBLL8/KhNKZJY5WsyUheHLZhWpCYe?=
 =?us-ascii?Q?m5zRNIlA+PI01HPbcgWKNnVajgR439/BfO1gs0xp8lQz4sxF078aFSZp2/Kt?=
 =?us-ascii?Q?L0nAffWPqWRgr+0ilawuVX0No+PyblfduwzjuoNG9pOEAwEPRaO73QIwgOML?=
 =?us-ascii?Q?adtojna5fFIZCBGIY9aS53tHQkvWb8LDeGPymyJtOYhnqWLIRD0J7y1m2tuG?=
 =?us-ascii?Q?cThjPft9OqCBDxzU81aAg05bwLrmuabKcryZbIjGqj58D7UdlDDN12tWv4+/?=
 =?us-ascii?Q?szohANdXdKX5KfP88c6VDuAahq7Ip1/qIJCRFznSIuBxG3Omw5ySDT32elVc?=
 =?us-ascii?Q?gvgRsyXAjN64atEQPgoezkIo11hCNXiEi44BoMPwJQN399DsHMLk5r1A5ZZV?=
 =?us-ascii?Q?ldnUBR34VY7MLccWbTr7c2cBsOwKgxh+5+BY66BAkE2My0ftPTbCp19dEdQn?=
 =?us-ascii?Q?NKTdZdyKuhLyCKSwo7qpqZxkDQa0ymHf0B7BmC/CDzsQXOocZWOg2HjxgOkv?=
 =?us-ascii?Q?JXBB9SOQLMpgOgd5Ic1rqrcZmh+Ij21s9cti0zQ/xsLoopq95u0jpTbi0Fnt?=
 =?us-ascii?Q?6+S2T0LFq8RXsWiGIORyZrIUyhGAx1fY+gBQdetjDeXMGWfvR9gJdrSYcVWO?=
 =?us-ascii?Q?TNfn46cIlpRj9I2bj/MG90X+9c+22RagLHXTcdIW0FnhrKF4pzhKBMQ9Ujuz?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 070328bb-6054-4977-88b0-08dba4116d6b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:44:56.2350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OJgatWff8qPLFRyUWxG8icIWt2sysdTcTlmF5m7Y0bozL/txLQdCz8hbqDE4rPJRWoRLIldctwNEYQRBVQObFQ7hNRYZSIYA7L5gNC5Ekd4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4522
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 21/42] drm/i915/xe2lpd: Add
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

On Wed, Aug 23, 2023 at 10:07:19AM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add Display Power Well for LNL platform, mostly it is same as MTL
> platform so reused the code
> 
> Changes are:
> 1. AUX_CH_CTL and AUX_CH_DATA1 are different from MTL so added extra
>    logic xelpdp_aux_power_well_ops functions.
> 2. PGPICA1 contains type-C capable port slices which requires the well
>    to power powered up, so added new power well definition for PGPICA1
> 
> BSpec: 68886
> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  .../i915/display/intel_display_power_map.c    | 36 ++++++++++-
>  .../i915/display/intel_display_power_well.c   | 63 ++++++++++++++++++-
>  .../i915/display/intel_display_power_well.h   |  1 +
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 27 ++++++++
>  4 files changed, 123 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 5ad04cd42c15..cef3b313c9f5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1545,6 +1545,38 @@ static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
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

Are we missing a "dc_off" power well here?  This patch might have
originally been written before we separated dc_off out from main.

Assuming the DC state requirements are the same for Xe2_LPD as they were
for Xe_LPD and Xe_LPD+ (I haven't checked), then adding

        I915_PW_DESCRIPTORS(xelpd_power_wells_dc_off),

immediately before xelpdp_power_wells_main should be sufficient.

> +
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
>  				    struct i915_power_well *power_well)
>  {
> @@ -1652,7 +1684,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
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
> index 916009894d89..e1fb0bd7b3bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1795,7 +1795,11 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>  
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	intel_de_rmw(dev_priv, aux_ch_ctl,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
>  
> @@ -1813,7 +1817,11 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>  
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	i915_reg_t aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +				XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +				XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	intel_de_rmw(dev_priv, aux_ch_ctl,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     0);
>  	usleep_range(10, 30);
> @@ -1823,11 +1831,53 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
>  					  struct i915_power_well *power_well)
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +	i915_reg_t aux_ch_ctl;
>  
> -	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
> +	aux_ch_ctl = DISPLAY_VER(dev_priv) >= 20 ?
> +		     XE2LPD_DP_AUX_CH_CTL(aux_ch) :
> +		     XELPDP_DP_AUX_CH_CTL(aux_ch);
> +
> +	return intel_de_read(dev_priv, aux_ch_ctl) &
>  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
>  }
>  
> +static void xe2lpd_pica_power_well_enable(struct drm_i915_private *dev_priv,
> +					  struct i915_power_well *power_well)
> +{
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST);
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
> +	intel_de_rmw(dev_priv, XE2LPD_PICA_PW_CTL,
> +		     XE2LPD_PICA_CTL_POWER_REQUEST,
> +		     0);
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
> @@ -1947,3 +1997,10 @@ const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
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
> index 5185345277c7..d855f3730381 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -83,4 +83,31 @@
>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK	REG_GENMASK(4, 0) /* skl+ */
>  #define   DP_AUX_CH_CTL_SYNC_PULSE_SKL(c)	REG_FIELD_PREP(DP_AUX_CH_CTL_SYNC_PULSE_SKL_MASK, (c) - 1)
>  
> +#define _XE2LPD_DPA_AUX_CH_CTL		0x16FA10
> +#define _XE2LPD_DPB_AUX_CH_CTL		0x16FC10
> +#define _XE2LPD_DPA_AUX_CH_DATA1	0x16FA14
> +#define _XE2LPD_DPB_AUX_CH_DATA1	0x16FC14

We're generally trying to standardize on lowercase hex for register
offsets these days.

> +#define XE2LPD_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> +						       _XE2LPD_DPA_AUX_CH_CTL, \
> +						       _XE2LPD_DPB_AUX_CH_CTL, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_CTL, \
> +						       _XELPDP_USBC2_AUX_CH_CTL, \
> +						       _XELPDP_USBC3_AUX_CH_CTL, \
> +						       _XELPDP_USBC4_AUX_CH_CTL))
> +#define XE2LPD_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> +						       _XE2LPD_DPA_AUX_CH_DATA1, \
> +						       _XE2LPD_DPB_AUX_CH_DATA1, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_DATA1, \
> +						       _XELPDP_USBC2_AUX_CH_DATA1, \
> +						       _XELPDP_USBC3_AUX_CH_DATA1, \
> +						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)

It looks like these PICA registers are following the same general layout
change as the ones we modified a couple patches ago ("drm/i915/xe2lpd:
Move registers to PICA").  We should probably handle these the same way
for consistency (or maybe even squash the register movement here into
that previous patch?).

> +
> +/* PICA Power Well Control register for Xe2 platforms*/
> +#define XE2LPD_PICA_PW_CTL	_MMIO(0x16FE04)
> +

Unwanted blank line?


Matt

> +#define   XE2LPD_PICA_CTL_POWER_REQUEST BIT(31)
> +#define   XE2LPD_PICA_CTL_POWER_STATUS  BIT(30)
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
