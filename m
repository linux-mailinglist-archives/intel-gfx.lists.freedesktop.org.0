Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F15697EFCC5
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Nov 2023 01:50:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE1A710E083;
	Sat, 18 Nov 2023 00:50:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1171210E083
 for <intel-gfx@lists.freedesktop.org>; Sat, 18 Nov 2023 00:50:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700268620; x=1731804620;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=N50+80ame4aTAHm4ZBiXRGjEPywejsNxft6O5HKPpLw=;
 b=lsEztlEJk44X4paZqr0t9rK4xnoXSbJOtfWPNRU1Vf4av8FmKx/ArdGc
 q5JS/vSyvKUyt5JmPP/uYPPO+Qtg6cjxN1qSpWitAbd2w6wdrjD1OooHL
 KkwI6zrCXosq/+GmUw0pWPyfdsNPLJISDZKPIIJzFHomfA7suPyGfvTX9
 lKJTPK2qN3xbyQrvMxy6/HtFQxtF0maa+71A/bfWl7KspDDBANA8IMCED
 KemAX2a83V8av7HKTcQG1NLkxIWwxP58Fe4Bs8Bb8IvKcmeB96KjQ7Ube
 JI5k+E7RtgRSAm+DL0iyLlbSB+lGWtBn+kvCUwnDD5X+Ai21mZbX0wnf7 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="394243289"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="394243289"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 16:50:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10897"; a="765757501"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="765757501"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2023 16:50:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 16:50:19 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 17 Nov 2023 16:50:18 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 17 Nov 2023 16:50:18 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 17 Nov 2023 16:50:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTgmKNt4YqhZgRVK8l793fKnCAjLIOJcHGHtmAjOGFfO8VBmAn3m00erObtf5PAWacnnACgKiynvAhOY2rkaddnF1k3K7S6BzbwE4w1yj9RxkWs67PjFvyp0FbqkajMzvtgCHQQGQdgxfUK1CdLlUj2yjUMnTGnxCtFvNwaMKIrLW9rpwo3CNA04hSY11Zm8O6PWHyHsfSGSUQ2NFNIZ3W2CA9DX4+lt7u3G9jH+vfg88eGZ1TWDVRpRdIvTJjnQXLOz+RYthvpfdHJbzGO6ovcihnLyRMVstczQu6mbvi3abj0kAjCPU9fcqNgmIWqprqhktqPb7YW6bj25499lsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vSazmubelKJCXugHq72sus1xJaP7FP51gkpV2A4OwRc=;
 b=QlFaequEGrYfLW/YirKq9BFecZ8HDD7D/Tq5UA5alJOxslLZ2GKGh32grpi5dpCEOXbPm3DqhIM4QlWb67Agm82DznxMzcgfoE9PZ46Va8JjwnbtzE9S1Eu/4WFUU9Eipz5Ux6OfZFtVEorLMZpy5/QZl7Gbf8gaHxyQ4eZepoQdomspxfCRTPXIEDAVFYIbNM1hFps91cV50ibkfFU+dyF5Y9eU2trQZkXe+Pnv9s0eFwalDSLveMTDJjL3VqrEiUomFfA5Y55I1xg/3T9ftjMwkBHhCp3QYVYZbpTWNiEVtMRLjHO6br3opeh3zvevwIWap22sI7LLsUXXXKRZ1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB4806.namprd11.prod.outlook.com (2603:10b6:510:31::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Sat, 18 Nov
 2023 00:50:06 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7002.025; Sat, 18 Nov 2023
 00:50:06 +0000
Date: Fri, 17 Nov 2023 16:50:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Message-ID: <20231118005004.GG1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231118004446.3077282-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231118004446.3077282-2-matthew.d.roper@intel.com>
X-ClientProxiedBy: SJ0PR03CA0009.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::14) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB4806:EE_
X-MS-Office365-Filtering-Correlation-Id: fbc5a125-562e-46b7-c286-08dbe7d04edf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 11/bfaZ7e9rMMlmUKWsa8jt5CbZHX6bJTqkBQf54cXYE6OhsdljJLR56hVkzkerbK8uHKOc/teJlzoSaYz51bxQ/Z5NJhJ7N1oXh4MCZhVU8KXVCFszEqUVu6Atgk7nLnyGLbuFCA7Dr0NlrSlmzVcWcB5iSx05QMBYsMjp7AzFiQRjZJxolF2/kSObDlmjmp9msVN/9SYcdmL2I32kQdAvCa8vKC1klD6kjbidO91FEvo/OrVMxUCWiqZZe58HnUv2wbiqUsFrxKidCQjphlpexgt9EL9gQqmKZlrG7Xv2Cn25P3WZzg8UoWIfmivRy+jUdmMBrGwSZEB48ufXiAGih6/eCeUNsknx4boNLz7v5X1J0kKWKlnThnRgN7bz1VwYAKgpTmHVtWKPl2Krqd7SzpN3gbszKBHmH3PcVl7eTmba10zyRqqmhD06ybQXQueZZpqR6xpBP6flxiQwcr7qJ7dPc55E25489xC052I1bnKggmd5m7yW8udKBwfuHRyZUv+7hD/nkjMwEUsiU7kxfmRhk5hlLKAxdtpmfcPi5kvXR/Ij/uy6jL+KLayoA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(376002)(396003)(346002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(5660300002)(66899024)(2906002)(6916009)(8676002)(86362001)(66476007)(66946007)(33656002)(66556008)(41300700001)(1076003)(8936002)(26005)(38100700002)(316002)(83380400001)(6506007)(6512007)(82960400001)(6486002)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OZRccVSls+39RgQZfEnzhmL9E4Ljxi0Nj7S/vtZkk5MC7YHewSkar4/+H3DC?=
 =?us-ascii?Q?JO7e3RiJBQuuJg7l4FmlTH346pdGsmPRtAkvg47S0hxDpbfd067n3DbyP+ZV?=
 =?us-ascii?Q?gIa9fbM7ez8yURcaGUr1t1I49R3xyLh1vo9Tgj5mOdww/H6wetPpKk6aHyHu?=
 =?us-ascii?Q?mMXlVWH0Jpiv+Heb/+jE29X58nYAWuqaYw0GDfOR6Q9z0W0gX/LiyMoRdY8K?=
 =?us-ascii?Q?5KRi91rRNcFq1IuZ+qQHkysfUaaSoP6Ytj72EmEqg+d5u+2y2aRP5LjIgcZT?=
 =?us-ascii?Q?QPgu1OgXqxSAZINdzKq0DMlWQE8w94iOtRzgTOoFjEeqC4XBpWR0Kb1hPKrK?=
 =?us-ascii?Q?kfCFjjpBTzwwCi69m+kT77qhugeA0l2RHhMT3+jYxny0kbnsiXOSBgtC9MEM?=
 =?us-ascii?Q?SWMu5/fQe6t+uTaHfeoH7nSx4k3GZQKOsOthMYBK0G0wSgYklVZb2K3F7MdK?=
 =?us-ascii?Q?DlvSo2gMKrI+tzGQs/x7h5xTRMcZ+GOgGUxsIqzq94p+TxJYdLaXhWWwbFne?=
 =?us-ascii?Q?uCP+opj6nLrDpD6MLlT1oITyBO3vLnkUVnX+jMV0cYkHamFjOPEnWE87AowE?=
 =?us-ascii?Q?YPW4r57TURn6VsM0nPfA87My/V14UIOZzTPvPQQ8d0ZDhrO1dRZ+FUovvLlc?=
 =?us-ascii?Q?01xltmedkJdl/6s+uN8mdKng+72Bi8asv6xfjlfF0u0AqrS23csmXHlLAjXc?=
 =?us-ascii?Q?zNxsLmiywvfLp7z0GITfPJcnYgid1gp8Uc3GWBHf2JJMBqRFgn8Rb9LwJhZE?=
 =?us-ascii?Q?09PoSz/ZTx4jBoL+/ZTa2ENsO5gS0GpQAECbFASpzHG1GRpXbPUnJd0XhlaG?=
 =?us-ascii?Q?jvz/366i37cNd54bz9LgZN0n9xg1d5OLtU+Y6Mhpc4IlJqJ2aiD0iuU1gdI9?=
 =?us-ascii?Q?Lc06hEaakvxRrqmUGWfiJqCgIE2CAwmcRxcQ4MsnAzJEBIOzUdI/NcLNoju9?=
 =?us-ascii?Q?KRn/7uGHutCeideKhzMdlTqm4A8T9UNhZAyxeYGeuBhv0ov7fPEOfwj9ght9?=
 =?us-ascii?Q?LkcvnUOgIawcbBrtVzl63Oy7B3QH7e7AEcFzSIZPNM4hna+xbcxrsyfajBxU?=
 =?us-ascii?Q?UP1QqwDIDvYG2t+Akf5jNhQ/XjkjTWOR00x4XzecKJIqftGKxnI+2HjosCJz?=
 =?us-ascii?Q?j7ajggVzVy28qPZq8C1AuXCdaGsZ7Gar4GGTZ2lw0OwCfXyP7c16RMlqotqw?=
 =?us-ascii?Q?K4hhGARynaUAMwrgNvEKtv/hgjJnHkdlDjPs0yoW6HjkB+FPmGlWZjzWwJ6k?=
 =?us-ascii?Q?V6A5gUjPHPqP0YbM8S72PYTuTXipoCr17MkAvMF/OnsP8fY94zCucLEs2283?=
 =?us-ascii?Q?UATwrGKRPtecqSaPMpKViN8GlIGNJfVR+ebNKKBk6uleQUS2j+B3Ho/fiQHJ?=
 =?us-ascii?Q?TQilR1LqUkSEpWh9GGJC1d2iZOa9icUGa1rOBIWwHJ2l/8iCWGMJN8cUbUnf?=
 =?us-ascii?Q?U33PtI2F9r+g2bLDDdb7QgbLqVo4DSin++amksOCpufBworAJY54ZKO971f4?=
 =?us-ascii?Q?Bbg4qQSPALzPUg3wRJRUcbIzZvr4q8knnxaGAw2T8jYZMmsWx4U7XdnqAzkc?=
 =?us-ascii?Q?0c3ZqJ7lUEFn7ZVGIscDu+mnCkhy5eG9sGJ3uMNPJRk9dXxUh4/V2sBneWEK?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fbc5a125-562e-46b7-c286-08dbe7d04edf
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2023 00:50:06.6410 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k7wUJsl/sOw9BNl1vL3O6AY8jXVGuwill/3xrpnLk8ficTLZnky3MMpoiqAh6zEjeH/OTytP3jE0MhgEyAWxH+rRBTZOuEUSVgVAsKvqS14=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4806
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Wa_22014600077 also applies
 to DG2-G12
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

On Fri, Nov 17, 2023 at 04:44:46PM -0800, Matt Roper wrote:
> This workaround now applies to all variants of DG2 so move it to the
> corresponding block.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Actually let's hold on this patch for now...I'm seeing some conflicting
information indicating that maybe we don't actually want/need this
workaround on any DG2 variant.  I'm trying to get clarification from the
hardware teams.


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9bc0654efdc0..038d4902b6f7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2347,6 +2347,12 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  		 */
>  		wa_mcr_masked_dis(wal, XEHP_HDC_CHICKEN0,
>  				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
> +
> +		/* Wa_22014600077:dg2 */
> +		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
> +			   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
> +			   0 /* Wa_14012342262 write-only reg, so skip verification */,
> +			   true);
>  	}
>  
>  	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) ||
> @@ -2357,14 +2363,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			   0, true);
>  	}
>  
> -	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
> -		/* Wa_22014600077:dg2 */
> -		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
> -			   _MASKED_BIT_ENABLE(ENABLE_EU_COUNT_FOR_TDL_FLUSH),
> -			   0 /* Wa_14012342262 write-only reg, so skip verification */,
> -			   true);
> -	}
> -
>  	if (IS_DG2(i915) || IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
>  	    IS_DG1(i915) || IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/*
> -- 
> 2.41.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
