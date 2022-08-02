Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C301587507
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 03:23:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E69AF10E1FB;
	Tue,  2 Aug 2022 01:23:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ADA110E9E6
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 01:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659403422; x=1690939422;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=f6NrvpzheBpFgPtnyC0qSA2UeEGprgf/4mxt04IU9GI=;
 b=fOxS8CqMXkknS2eNfwKg5bZ6aYQeoPR8T3hV4fH+b4SY2/C+r/c7Ldse
 g4C9yygxCaKP2nHGEt2vWeYviVLVkttu/vAu9QBboDtdqB0wmsVG9nh21
 0DuyrvfRUkhAeLHrqeaRwnBBoBkmpsshNfORF+OzZ43fdIdA4xr1x7nWB
 0+dcm2WQmm/dQexzAsfRV3ppbQyiNzE+EIOEhlS2kjNI/X7RNgw1ZrURV
 Y5uDjQKdcHLQMx8rdiG5ggIaPbX7gdT0BzOVMEVP9lu3hdW/TYoaq5t3f
 9fzM5I43zbsrPKDsiNOyF4AwH5eaamOEebHHH5zU5FFOtAStuoJtTrezo w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10426"; a="269061156"
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="269061156"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2022 18:23:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,209,1654585200"; d="scan'208";a="661408247"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 01 Aug 2022 18:23:41 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 1 Aug 2022 18:23:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 1 Aug 2022 18:23:41 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 1 Aug 2022 18:23:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oDzCwwq6Hj/sGxeBL8q70+G4GIs1mpF2BkkMPH9rBKvvJNdco0iZNWDAzQrJwb83MgMDKNODZmSK6LA+HSxPx4PqeLmPXglsf9is759Fg7l4O/XD8orKGZwfY7hNVg/As/1frNke8cXn1wL6TnxFoMnyml6iZeMFQvvwJ2xyTU2E+Uj0OcqrMdav8uAG4IvZ7YSNG/On2swME4cReh3asvin/m8OHGTGi3uXUzrvSx/Hv0ZBMHV7CNrWLVBwvG6e9t6wAzVP4O6gKbVwqzQhRmMneYAFE1yTrLpV+MemMlJpM8qloeBLh1x7nH6gq5pC5bOM7A2jLQsJmk5GdyBr6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Iqu0pAehJ01CHh2th888wFRgSdN2Zlidw/OZejnz4bM=;
 b=I3hWVLgg4LjZaTFEATsTVIpmbgCSMFUgdW9ks5em3/hw2xV2fnFMqdc3H4wAGumGwog4uh61yJELrQtMXhMWW7bNlwNwUzgkG9VCbMfRBhME/vUuqPDFVLABf72RzS795Xqpy6MUWT6/0PXN7sY+fEZI+q10CGHRJt23R6abaSuUdo8+95oNM8fzxmKwU5J1FCwwzDklkz3qRUji4qDCNd4nQMt21sAlD5J8hW0AYbpu5MbFenMJrScB7icrbdGiSxbX79szsUZuIz7ylpuEnSPB+DzpfUJVWY0wexKvrXLlY9hn/M91uMHf50qO+hqR5MSwYyyhsPUEjrzcZVhlxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA2PR11MB5177.namprd11.prod.outlook.com (2603:10b6:806:11c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 01:23:39 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 01:23:39 +0000
Date: Mon, 1 Aug 2022 18:23:36 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Yuh8mFUogLg9GqEf@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-11-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-11-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BYAPR03CA0008.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::21) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 569feb23-ef5c-48b2-02e7-08da7425a0d9
X-MS-TrafficTypeDiagnostic: SA2PR11MB5177:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: hxwyJoKggxmazdgiIfOWl2DXK459gjWH1iqeN40MF8kYQSrfMpW4U1v0kGN1zUBONNCTVIngp2yhidX5Dltq4RMIi44jdTQGYFONuVE2dFBKm60dBGkDonJU4jxBA+zXS2qaNT99zfB025YDHIP1v5APYucvCir6nxg6ZhmRydauS85kODl0OmPZP+e72PEKrDO2rpWOHZft23fTH+hrh9KD5IYj2NcgwuPldl9snz4qn0EVKEJn5K9/i9xjjgbiDytcHyHw/s34xRTpAz9IMru0ILUAw2SoaPRWnysGP/uk3RblexKVG6x2QsxIh6L3cm6eoN+5oxDXTZenH3GTYB67L68cM4a6iidbaA34SDL6jhhpe8nUQdDLHk1D9oi3zHGJRIYwXPqAGaNbtEJKpUsn2sCxEzkTJsGa8Tduz2e4ywBYjc1qSx20YR2qXZ2z/c9bXOeYFOu1xfl1OCkunzzGoi/mhrqE9iyCr3c47SIRQj1qMnbFSUn6APkcTQB/NAahDqK8FGSt1xmJna1XVvEBBK6ZNpSx3dZ+wwgJWiVSarYN1X2sFS2zmWo2dklIkV9NRTbJxDTGkV6j9JmPH9zPMU5RnyduyYKWGZG5jWkqlDTRnglDuuhSgtrqhJXt6I18VHTkoUbsbVxd9ZOnCyycq4ZjlRvnRE4LpxBHcgNTyhhgcV38eLRbmm51q860uqmzQ2LgTJRDMBaALQuQY2KfLd6BKfO8eZwB+/Y9p/5C036AhnKYUQ1Lzbh0cFLC
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(136003)(376002)(366004)(396003)(39860400002)(83380400001)(30864003)(186003)(4326008)(8936002)(6862004)(2906002)(8676002)(5660300002)(66946007)(66556008)(66476007)(316002)(6636002)(86362001)(478600001)(6506007)(6512007)(41300700001)(6666004)(26005)(38100700002)(6486002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?YhhBaztv6wiVPnj4ErIxawJAznfK8zHaA2LiONResV2+wPxawvRAeKutFW1C?=
 =?us-ascii?Q?QK5jc/yoRyy2AUrxCXOaV2jS7hLSSt8dZxFAHjC20IbbWEL6IpfyXfGtDsvr?=
 =?us-ascii?Q?v77F5jmEILe2oQj88ZBoka+9ZLY9ts8ANxSX/M4bazfJV6QvtiqrSm9t12HW?=
 =?us-ascii?Q?u73EwfmR3ouenUcfPxIQ07Le+E/R1+rMEHbCiMZKlDDKaUcnq6joLO1vnBiz?=
 =?us-ascii?Q?SCvnZ7mYHDPuYqlKlT13/WUP+1KlPMmOUqr3L7OznqOkbMbWgkVo6J1las/V?=
 =?us-ascii?Q?7XHisfQRKOM59aTY86cGdCPxkz8+PJJfklfzWeGDDuYCJIaSNS+FlWrFHnBz?=
 =?us-ascii?Q?el5f+bIv4tSOY0keDqAGx0EPU7QChSf3K3UdpmzuyL6YNaGz+RqiJi/KLIyp?=
 =?us-ascii?Q?L80CwwDLTnLSkf4LLxZFT1pCnMYNvLZvNP5xKUb8sbJ6JoWcMTTeUHxzDHfE?=
 =?us-ascii?Q?/7p4STwmKG0lIPbP2gf7O89/vX9AN4T3sq6nIVLfk/Ce/ErCaLW9jRJEnUjc?=
 =?us-ascii?Q?ntP8ZvLAiFpNkHPQB+ldyXwVWcp39ARmLHOafQI+erhQ92mqBY+UwA6eNcuo?=
 =?us-ascii?Q?ZCpHjtLNvo88CQ+A0kQ92xR3VLkwyx58LkJmqsi1Hvgicd3kg+Z9bowyD89a?=
 =?us-ascii?Q?kxcRCNM85hHoS1qYBJ4T9tUm5n3axfJNF3UV80isx2UwAfhkpMAEjqIEkG6w?=
 =?us-ascii?Q?gtSulwKQEBWJNcM53378prXKFzb7eUWO7f0tATkX5RaE/25JYWpGRjmDWaBb?=
 =?us-ascii?Q?uDEf0pFmflwOnVPb/ecdG0S3VXjTtCcLFHQe2ikrnSzc5eqp6SvkuP3OjdBl?=
 =?us-ascii?Q?Q7Z++teYBbyXSbc1omIRHYNAHBvSkL/P/6fvl5cElxfCKUifqZ5AN9y84ctc?=
 =?us-ascii?Q?o56MMOehw1tVGo8MMV5Vf65RDuZT/U9RxYDhVQqQGfOTYnwNaPLZZlUT1ZaR?=
 =?us-ascii?Q?8BK8mdcqyc3LAWf/zGGwZVaiBRU4OB/AX5cSXUtaWoYBPkQr5CyiT8AmBJyu?=
 =?us-ascii?Q?rLSimYhkcjo2RupyWZNGkTDPLLfajM9Bs/tRnG5dSdKqrGrkcSzEJ4bD11zz?=
 =?us-ascii?Q?05QklAFBEmi9/VPJJWWEcATRa9EhJFQOZqLuvUnPYAQ1qLu6gRjsDkDJYhlL?=
 =?us-ascii?Q?rt/7NV+jGv0RlfGTUB+FLHd2Od8zh1vJMFY2WhXkvb7BaSy6Oj21e07l62VR?=
 =?us-ascii?Q?136ZDZ03YfQCLQivB4hXEurNfE39r8nq72iRB4JBSNGiDfqLTABl+g5R2tEK?=
 =?us-ascii?Q?M5ZLgW421jeUvYDPQr3xFbJdh1FfY0qCeM3Y1oh8+ZTCYdtoqvw8IqbeAoZ3?=
 =?us-ascii?Q?kx3szgKGC0Pf/4QcryeJUXrUJ4F9kW6pONFMxA6NM4q7txCJFKHHS6+8H++h?=
 =?us-ascii?Q?zYe7RnHNup3ywR+18Fe0Oj4AvKaNdr2G5XQdBiIxh3vPi39z3suz/+++U4Sp?=
 =?us-ascii?Q?VUH6T18uCvcP6fBDdJw685JgQ3KTVpM7kJEMan47VCL2gvqGV4j+k0fG79Nh?=
 =?us-ascii?Q?fihouGbc9s+sh8Ty9ixX5IGyXkWorox5I8wHeHlIqoreYkk87mvUOdaYk2Ab?=
 =?us-ascii?Q?O9shy17wIhONQGUI5FETs941ed52E9ezfVS9MQfQ+iETgwGgFISZdlrv1yAp?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 569feb23-ef5c-48b2-02e7-08da7425a0d9
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 01:23:38.9722 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rq2AvhWgChDWI+7BjQx4zWB/YzLSQTuW1rMTzLz3mzaultmKRZ4ym/IEQHF6neGLLXfjjrZELKmUbZKgb3SEOaj58qB+x9lRkGPNXPc/hVY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5177
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/23] drm/i915/mtl: Add display power wells
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

On Wed, Jul 27, 2022 at 06:34:07PM -0700, Radhakrishna Sripada wrote:
> From: Imre Deak <imre.deak@intel.com>
> 
> Add support for display power wells on MTL. The differences from D13:
> - The AUX HW block is moved to the PICA block, where the registers are on
>   an always-on power well and the functionality needs to be powered on/off
>   via the AUX_CH_CTL register: [1], [2]
> - The DDI IO power on/off programming sequence is moved to the PHY PLL
>   enable/disable sequence. [3], [4], [5]
> 
> Bspec: [1] 49233, [2] 65247, [3] 64568, [4] 65451, [5] 65450
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  .../i915/display/intel_display_power_map.c    | 115 +++++++++++++++++-
>  .../i915/display/intel_display_power_well.c   |  43 +++++++
>  .../i915/display/intel_display_power_well.h   |   4 +
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |   8 ++
>  drivers/gpu/drm/i915/i915_reg.h               |  30 +++++
>  5 files changed, 199 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 97b367f39f35..cd28976f8076 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -1350,6 +1350,117 @@ static const struct i915_power_well_desc_list xelpd_power_wells[] = {
>  	I915_PW_DESCRIPTORS(xelpd_power_wells_main),
>  };
>  
> +/*
> + * MTL is based on XELPD power domains with the exception of power gating for:
> + * - DDI_IO (moved to PLL logic)
> + * - AUX and AUX_IO functionality and register access for USBC1-4 (PICA always-on)
> + */
> +#define XELPDP_PW_2_POWER_DOMAINS \
> +	XELPD_PW_B_POWER_DOMAINS, \
> +	XELPD_PW_C_POWER_DOMAINS, \
> +	XELPD_PW_D_POWER_DOMAINS, \
> +	POWER_DOMAIN_AUDIO_PLAYBACK, \
> +	POWER_DOMAIN_VGA, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC1, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC2, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC3, \
> +	POWER_DOMAIN_PORT_DDI_LANES_TC4
> +
> +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_pw_2,
> +	XELPDP_PW_2_POWER_DOMAINS,
> +	POWER_DOMAIN_INIT);
> +
> +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_dc_off,
> +	XELPDP_PW_2_POWER_DOMAINS,
> +	POWER_DOMAIN_AUDIO_MMIO,
> +	POWER_DOMAIN_MODESET,
> +	POWER_DOMAIN_AUX_A,
> +	POWER_DOMAIN_AUX_B,
> +	POWER_DOMAIN_INIT);
> +
> +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc1,
> +	POWER_DOMAIN_AUX_USBC1,
> +	POWER_DOMAIN_AUX_TBT1);
> +
> +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc2,
> +	POWER_DOMAIN_AUX_USBC2,
> +	POWER_DOMAIN_AUX_TBT2);
> +
> +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc3,
> +	POWER_DOMAIN_AUX_USBC3,
> +	POWER_DOMAIN_AUX_TBT3);
> +
> +I915_DECL_PW_DOMAINS(xelpdp_pwdoms_aux_tc4,
> +	POWER_DOMAIN_AUX_USBC4,
> +	POWER_DOMAIN_AUX_TBT4);
> +
> +static const struct i915_power_well_desc xelpdp_power_wells_main[] = {
> +	{
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("DC_off", &xelpdp_pwdoms_dc_off,
> +				.id = SKL_DISP_DC_OFF),
> +		),
> +		.ops = &gen9_dc_off_power_well_ops,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_2", &xelpdp_pwdoms_pw_2,
> +				.hsw.idx = ICL_PW_CTL_IDX_PW_2,
> +				.id = SKL_DISP_PW_2),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.has_vga = true,
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_A", &xelpd_pwdoms_pw_a,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_A),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_A),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_B", &xelpd_pwdoms_pw_b,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_B),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_B),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_C", &xelpd_pwdoms_pw_c,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_C),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_C),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("PW_D", &xelpd_pwdoms_pw_d,
> +				.hsw.idx = XELPD_PW_CTL_IDX_PW_D),
> +		),
> +		.ops = &hsw_power_well_ops,
> +		.irq_pipe_mask = BIT(PIPE_D),
> +		.has_fuses = true,
> +	}, {
> +		.instances = &I915_PW_INSTANCES(
> +			I915_PW("AUX_A", &icl_pwdoms_aux_a, .xelpdp.aux_ch = AUX_CH_A),
> +			I915_PW("AUX_B", &icl_pwdoms_aux_b, .xelpdp.aux_ch = AUX_CH_B),
> +			I915_PW("AUX_TC1", &xelpdp_pwdoms_aux_tc1, .xelpdp.aux_ch = AUX_CH_USBC1),
> +			I915_PW("AUX_TC2", &xelpdp_pwdoms_aux_tc2, .xelpdp.aux_ch = AUX_CH_USBC2),
> +			I915_PW("AUX_TC3", &xelpdp_pwdoms_aux_tc3, .xelpdp.aux_ch = AUX_CH_USBC3),
> +			I915_PW("AUX_TC4", &xelpdp_pwdoms_aux_tc4, .xelpdp.aux_ch = AUX_CH_USBC4),
> +		),
> +		.ops = &xelpdp_aux_power_well_ops,
> +	},
> +};
> +
> +static const struct i915_power_well_desc_list xelpdp_power_wells[] = {
> +	I915_PW_DESCRIPTORS(i9xx_power_wells_always_on),
> +	I915_PW_DESCRIPTORS(icl_power_wells_pw_1),
> +	I915_PW_DESCRIPTORS(xelpdp_power_wells_main),
> +};
> +
>  static void init_power_well_domains(const struct i915_power_well_instance *inst,
>  				    struct i915_power_well *power_well)
>  {
> @@ -1457,7 +1568,9 @@ int intel_display_power_map_init(struct i915_power_domains *power_domains)
>  		return 0;
>  	}
>  
> -	if (DISPLAY_VER(i915) >= 13)
> +	if (DISPLAY_VER(i915) >= 14)
> +		return set_power_wells(power_domains, xelpdp_power_wells);
> +	else if (DISPLAY_VER(i915) >= 13)
>  		return set_power_wells(power_domains, xelpd_power_wells);
>  	else if (IS_DG1(i915))
>  		return set_power_wells(power_domains, dg1_power_wells);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 91cfd5890f46..7c854c1a110b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1797,6 +1797,42 @@ tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private *dev_priv,
>  	return intel_power_well_refcount(power_well);
>  }
>  
> +static void xelpdp_aux_power_well_sync_hw(struct drm_i915_private *i915,
> +					  struct i915_power_well *power_well)
> +{
> +}

We can just use i9xx_power_well_sync_hw_noop instead of creating another
empty function.

> +
> +static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
> +					 struct i915_power_well *power_well)
> +{
> +	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +
> +	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
> +		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
> +	/* The power status flag doesn't indicate that the power up completed. */

This comment isn't super clear by itself.  Maybe something like

        /*
         * The power status flag cannot be used to determine whether aux
         * power wells have finished powering up.  Instead we're
         * expected to just wait a fixed 600us after raising the request
         * bit.
         */

would be more clear.

> +	usleep_range(600, 1200);
> +}
> +
> +static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
> +					  struct i915_power_well *power_well)
> +{
> +	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +
> +	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
> +		     0);
> +	usleep_range(10, 30);
> +}
> +
> +static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
> +					  struct i915_power_well *power_well)
> +{
> +	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
> +
> +	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
> +		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
> +}
>  
>  const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
>  	.sync_hw = i9xx_power_well_sync_hw_noop,
> @@ -1910,3 +1946,10 @@ const struct i915_power_well_ops tgl_tc_cold_off_ops = {
>  	.disable = tgl_tc_cold_off_power_well_disable,
>  	.is_enabled = tgl_tc_cold_off_power_well_is_enabled,
>  };
> +
> +const struct i915_power_well_ops xelpdp_aux_power_well_ops = {
> +	.sync_hw = xelpdp_aux_power_well_sync_hw,
> +	.enable = xelpdp_aux_power_well_enable,
> +	.disable = xelpdp_aux_power_well_disable,
> +	.is_enabled = xelpdp_aux_power_well_enabled,
> +};
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> index d0624642dcb6..03d11576327d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> @@ -80,6 +80,9 @@ struct i915_power_well_instance {
>  			 */
>  			u8 idx;
>  		} hsw;
> +		struct {
> +			u8 aux_ch;
> +		} xelpdp;
>  	};
>  };
>  
> @@ -169,5 +172,6 @@ extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
>  extern const struct i915_power_well_ops icl_aux_power_well_ops;
>  extern const struct i915_power_well_ops icl_ddi_power_well_ops;
>  extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
> +extern const struct i915_power_well_ops xelpdp_aux_power_well_ops;
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 2bc119374555..40c4bdd9cb26 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -150,6 +150,7 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
>  				u32 unused)
>  {
>  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	struct drm_i915_private *i915 =	to_i915(dig_port->base.base.dev);
>  	u32 ret;
>  
>  	/*
> @@ -170,6 +171,13 @@ static u32 skl_get_aux_send_ctl(struct intel_dp *intel_dp,
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		ret |= DP_AUX_CH_CTL_TBT_IO;
>  
> +	/*
> +	 * Power request bit is already set during aux power well enable.
> +	 * Preserve the bit across aux transactions.
> +	 */
> +	if (DISPLAY_VER(i915) >= 14)
> +		ret |= XELPDP_DP_AUX_CH_CTL_POWER_REQUEST;
> +
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index baf747adf1db..6087d40eed70 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3619,6 +3619,34 @@
>  #define DP_AUX_CH_CTL(aux_ch)	_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL)
>  #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
>  
> +#define _XELPDP_USBC1_AUX_CH_CTL	0x16F210
> +#define _XELPDP_USBC2_AUX_CH_CTL	0x16F410
> +#define _XELPDP_USBC3_AUX_CH_CTL	0x16F610
> +#define _XELPDP_USBC4_AUX_CH_CTL	0x16F810
> +
> +#define _XELPDP_USBC1_AUX_CH_DATA1	0x16F214
> +#define _XELPDP_USBC2_AUX_CH_DATA1	0x16F414
> +#define _XELPDP_USBC3_AUX_CH_DATA1	0x16F614
> +#define _XELPDP_USBC4_AUX_CH_DATA1	0x16F814
> +
> +#define XELPDP_DP_AUX_CH_CTL(aux_ch)		_MMIO(_PICK(aux_ch, \
> +						       _DPA_AUX_CH_CTL, \
> +						       _DPB_AUX_CH_CTL, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_CTL, \
> +						       _XELPDP_USBC2_AUX_CH_CTL, \
> +						       _XELPDP_USBC3_AUX_CH_CTL, \
> +						       _XELPDP_USBC4_AUX_CH_CTL))
> +
> +#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PICK(aux_ch, \
> +						       _DPA_AUX_CH_DATA1, \
> +						       _DPB_AUX_CH_DATA1, \
> +						       0, /* port/aux_ch C is non-existent */ \
> +						       _XELPDP_USBC1_AUX_CH_DATA1, \
> +						       _XELPDP_USBC2_AUX_CH_DATA1, \
> +						       _XELPDP_USBC3_AUX_CH_DATA1, \
> +						       _XELPDP_USBC4_AUX_CH_DATA1) + (i) * 4)
> +
>  #define   DP_AUX_CH_CTL_SEND_BUSY	    (1 << 31)
>  #define   DP_AUX_CH_CTL_DONE		    (1 << 30)
>  #define   DP_AUX_CH_CTL_INTERRUPT	    (1 << 29)
> @@ -3631,6 +3659,8 @@
>  #define   DP_AUX_CH_CTL_RECEIVE_ERROR	    (1 << 25)
>  #define   DP_AUX_CH_CTL_MESSAGE_SIZE_MASK    (0x1f << 20)
>  #define   DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT   20
> +#define   XELPDP_DP_AUX_CH_CTL_POWER_REQUEST (1 << 19)
> +#define   XELPDP_DP_AUX_CH_CTL_POWER_STATUS  (1 << 18)

We should probably start using REG_BIT() for the new bits at least.


Matt

>  #define   DP_AUX_CH_CTL_PRECHARGE_2US_MASK   (0xf << 16)
>  #define   DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT  16
>  #define   DP_AUX_CH_CTL_AUX_AKSV_SELECT	    (1 << 15)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
