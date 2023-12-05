Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 13861805F5E
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 21:24:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FDE010E553;
	Tue,  5 Dec 2023 20:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C61510E553
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 20:24:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701807879; x=1733343879;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yN5rLzuhPd6NrZm9aZwIGcTzPvVZgzIal/dMghMcrkc=;
 b=h+1XKkeo3USNmejkfm7LEeK6vUEajn8Trpi8VraA115PGH6JtplUT/5T
 /EyeWU2OJ0G/ZOByPeNRMGJflDGrT3RI1qcKPb/8NLsSz71csi7OYqjxq
 7exit4anRanyG/5fNPXK5LuT5ZgUeY4QpDGHVitenA4NLKE9i0eCIZeCP
 Tw1QS6Wn+FKfhKl76V4d2XXIidTGPvtpJ2YshqgpCszKTx/ET2AJggEED
 B1jaXs1uTMXC6esZ9L9J6aXax0Qd0prTpF3NLgd2+TWEZtimJiTFTcomZ
 G3h7w8TWyXJ2NXUnUyeM9TEJIPMWMUQvU6vy/cfMFBn6dmkzzJfqldZ7V w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="7253125"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; 
   d="scan'208";a="7253125"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 12:24:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10915"; a="1102574195"
X-IronPort-AV: E=Sophos;i="6.04,253,1695711600"; d="scan'208";a="1102574195"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 12:24:38 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 12:24:38 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 12:24:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 12:24:38 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 5 Dec 2023 12:24:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mK/tWBpQV4bvZhYjcFQRjA+bG39JgQcC1IssNaJmqBJbLswY4nX4Stu4CTnR51EQdsGLcNmYAoJdhI171Fdm3CGX9Fc/4Sdk9JTIVHIGCjIsJolU/rHZosUBnsbMTtK+Fhz5OGbgBfoCp1n3kCRLagAi1rdca8jaLW13Eqa+DZBiPphPfVq1VGDsbSIbQa1KEd/RWD+seBtP9ttZoTPdk4MRqHvGUP1hNVna/Wu4HW5bQoaV45N5xsdcyBlMYCzAiM4I+IiDQOLaUdWbtkAuyNe+0Ki+7cKy/fiXgmXbLDZMCTd/FRASa9giiC2vuj/at2VH6pKcrJ0RFTYZ5QVpTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U+lO6PT2Vx9FSecXj3lqs/tfsLw+IUcVOHy9IQfKfzs=;
 b=cyYgMkeW7+ICdu+/ANqFqeqkTiuV+EVxC3pSt3SiKzxBqdzSYTymRTbNTVhpiNtOtF+vrzF182/zMYKg2mPvU32qCBXsjFoPJ4Ul5SarYAWqsoE8Oxe7ZnfBLelTmLAe0IqLycgDpWPLU+wHKQyQkj1rYbiIdu5FU0lTS0oUKhIqS4nvUkDLIsMZwrm/8A0vfbrXYHCfwRv0EfNPdits0SBOtYmKFKerEYlGsdAOT7Eg/4ZEgFP87H9I9jqzCWVQEFfq7yPLf76RDqU/AZd+qVkElhWD8e+llJQ5hwVjbr8H4pHE9y2WRIJqniARWlaYQlQaksuppZ2lJdo7KSU4hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6552.namprd11.prod.outlook.com (2603:10b6:8:8f::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7046.34; Tue, 5 Dec 2023 20:24:30 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 20:24:30 +0000
Date: Tue, 5 Dec 2023 12:24:26 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Message-ID: <20231205202426.GK1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231205091105.3604223-1-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231205091105.3604223-1-haridhar.kalvala@intel.com>
X-ClientProxiedBy: SJ0P220CA0001.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::7) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6552:EE_
X-MS-Office365-Filtering-Correlation-Id: 34764991-aa47-43c3-7f11-08dbf5d02eeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JftrdcATs/K/PAOX9cQgkqzm1qWWWqSPodcrE/9HneZDRR8W1M0k8HbugcYjEiD6KtQr4aQSAbxMlwzG1zMQ1Yqq4funnNNglDol26XnbasLWO+dvlINt7Pu5L832Mg7wiblaFHi3iSLwPMC1f2A1hv59BWPPqc5X+KdTP2Txb1VhzrEHTFyL6Ivi8SBK2c+QlDV4pzRAO5b8V4QdSNF+m9XI2k5buT7KBL9HQEmJ2zS0S4fdhBej2KwVm3CEG2tAodQtiwilkXv32so970wHVVQ8hKFnMAKsAIPMNjsPhWzcEVXogdDKnhv227NPoz2zgUxbI7o8nl/jT2FNCD/UALps+734L7Bw1UfPhVgaSwWO87tTLNbMKhrkxZqfAP4N6eic9QsbsXVpGBl6avn22VFSty//ZK7CT/LzAu6f1xLCYAC0thIeo496yXkfidWPlTY9oVlbUo5LrjKSKmW0fvUazI6zAzECEb9UL/xLebp4kUl1GvXKPbGdxKqPpeguaSHd8nqz87DTF+7QgY85jbyPVBS9V2/GBaHCxmCIhym0iuU9Fx3tiXDp8HRQDYJ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(366004)(396003)(346002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(8936002)(66556008)(66476007)(6636002)(4326008)(8676002)(316002)(86362001)(6862004)(6486002)(478600001)(6512007)(5660300002)(41300700001)(2906002)(33656002)(66946007)(6506007)(38100700002)(26005)(1076003)(6666004)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ELVpNJI+IF9++UgnonMFhmEP489j+3gsvsgVayPXbGVmwGl5sISwPaLfpA1v?=
 =?us-ascii?Q?07iHZkZqEF/mp0H6lHKERsDhqCY3r1dYFaeTR3OXVMo/GYUyyFsd9JSYHkAW?=
 =?us-ascii?Q?wI5LPkMk6HuT9hdbSzVM1l2IWs5TYJvvmdy93G2FBveFFbe+ObrvAwQ9sMoJ?=
 =?us-ascii?Q?p5gzRfm79tia7DqZOanKBVZwxgly9a1Dix27AvaMf2zpEppPe32Bzzj4l+jI?=
 =?us-ascii?Q?YfKqEXoz9CnxEhg4XxKYDVXFWTBjpjsmMHswBwgxhfvDhmHM94C3n2vZaG7h?=
 =?us-ascii?Q?l0fOF+agullupZ9Mqq7NjS/zRVlYH9Pjv1/Q6i8c8TD46wyXh8qEXJgSw2YK?=
 =?us-ascii?Q?fEPFEfKMcPrtaKsYTHzL5ZgqlDr0q2gEGeoNM36KJLawpukUujZBPMohk3zI?=
 =?us-ascii?Q?TB1q0mCYskdq/ADBvjks93xB1ogB1pI9ahoVoeJd0o8x71CGAQVWk6Vp5YKl?=
 =?us-ascii?Q?WvkPhFIkh+1nOLwJEoxE7dLOahjfAk1/D9Cwe+DD4x7bOBUnnZfy3819taKw?=
 =?us-ascii?Q?cwiGMaF2MfNJu+2z/QlpBaXEwZAasCsCdrvf+rQTbOy4IllRFSlbSBbCVa4d?=
 =?us-ascii?Q?8qwdrUQOsN4HMB6yiVcq0TV69CnJrJeh5eiFxwOcaFzKK7o7x8eDinkywtyL?=
 =?us-ascii?Q?NXR1dLu7Ipjx8ZC2CW1zTC6BaR1xRXxqqSJg5s4icsYaaVcL+AA0cPWF6/Ac?=
 =?us-ascii?Q?qNtamNcFqAv8BP3O2dVx8dO47RARn+ukynkY2YqhkPN66Xdiv8jMDqa0hlpA?=
 =?us-ascii?Q?zMi3uF/zIcBcrOPpkh9Ew1Ro0cPAV7MK7yKLlaAVrexuKvt0CT9r8xqpL5Tn?=
 =?us-ascii?Q?0NVHVixzR1hhW88GZ4sFhxVw2MJqt1QQi0wCI96/YoGp5e0Q+SVXfNZ8n2f5?=
 =?us-ascii?Q?nucmi3heVOEywxCzMEl7tE0w3iVg9YGAlLtENfPEz2BbHjnlFbk/XyjlH3eq?=
 =?us-ascii?Q?fUpUBvhXWmNzde4gU37ZyiDgNhJ3m6BSN4cvgBbOTdQ1dyN81cPT0UKjEtxX?=
 =?us-ascii?Q?LwJ26NQKb8p6gBHucL2O+HMg92lmxs7Ug1FHE/n7Dqg7//4uo4EvXhTsInt+?=
 =?us-ascii?Q?mkub3yKv0ErrGDPi2Kky2o5/HTkHBE2gsRO5Tk2/7zFL3P9gSNwy4qQCtx1j?=
 =?us-ascii?Q?9yGdXz7ZbN1X5EiBt2ZUl1TigqO3vtiPltEe+SVkcPbgPdnTWTvaRa8S9z6c?=
 =?us-ascii?Q?nfUWD2D/2dvDuBID5bz8SmkeVEne8jW3TYZTNy9nZzC3k3tWjmx1iWeQKvcX?=
 =?us-ascii?Q?HdTlK9lj9zMS3fWErpwo/HSJQhWdrSBlb0WOvEw/XmWK9R5+mxTWniLnz1k9?=
 =?us-ascii?Q?xXE1bhj/6JbFfGosBzHp5lCW9/fKrDoqNhciN06g0315gWZZZZDif/b+HpMd?=
 =?us-ascii?Q?GUN3eoh/CKs7CGwj5S/NYkW1CDI3j0+CHQHQTXupMt978U/ha/VeDd+s7kzF?=
 =?us-ascii?Q?PZIzaZFkVJv2gsZopMcNhcQ6zUZpfc0QNlsNRIjj9M0BJV26qHAmdYpYbrrB?=
 =?us-ascii?Q?5yxUOUX1SxBe0g8f8ddAfRRuiozSFtvv52L7BjlL4/FBq98uw5dk4S9h/iZN?=
 =?us-ascii?Q?8PMrfjkpCFZhNOZkfDOpwV6w8Rh0hb+JgrReyzkZ70SknPAH6Yc9LRM8fe//?=
 =?us-ascii?Q?tA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 34764991-aa47-43c3-7f11-08dbf5d02eeb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Dec 2023 20:24:29.6511 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ycimkAIR6w7UP/0cxfUhMYqDk4RfZNz6RfveIP2iroUIw/aYQJENWntbeJYR58PXyil7UPWVj+ru0jqiblq06ljUhaYcW9nCrvMe0o24hW8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6552
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14019877138
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

On Tue, Dec 05, 2023 at 02:41:05PM +0530, Haridhar Kalvala wrote:
> Enable Force Dispatch Ends Collection for DG2.
> 
> BSpec: 46001
> 
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 3 +++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 9de41703fae5..85ba62639807 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -469,6 +469,9 @@
>  #define XEHP_PSS_MODE2				MCR_REG(0x703c)
>  #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
>  
> +#define	XEHP_PSS_CHICKEN			MCR_REG(0x7044)
> +#define	  FD_END_COLLECT			REG_BIT(5)

Looks like the whitespace between '#define' and the names isn't correct
here.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
>  #define GEN12_SC_INSTDONE_EXTRA			_MMIO(0x7104)
>  #define GEN12_SC_INSTDONE_EXTRA2		_MMIO(0x7108)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4cbf9e512645..3eacbc50caf8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -777,6 +777,9 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  
>  	/* Wa_18019271663:dg2 */
>  	wa_masked_en(wal, CACHE_MODE_1, MSAA_OPTIMIZATION_REDUC_DISABLE);
> +
> +	/* Wa_14019877138:dg2 */
> +	wa_mcr_masked_en(wal, XEHP_PSS_CHICKEN, FD_END_COLLECT);
>  }
>  
>  static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
