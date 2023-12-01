Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020768015D3
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 23:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A09310E37D;
	Fri,  1 Dec 2023 22:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11C0910E37D
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 22:05:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701468344; x=1733004344;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KuipkmzHLyXX3CgXH6whV8nYaY3jQvfPW3xOI18M7FQ=;
 b=I5+HyW6VUFQ3ZhGEEFCCEHLGkSXmaV6JswL8UqsNa7O1uJ9G402QhpvB
 TxQ9cAyncoLq8OkZp1SipwV+cQU+eP+Pwf+AzrxiZVvhVowXJRcoZgODo
 CWxMdTqNVt0hCV6NytigKF4SL5n6CDOyzdZXviAFdYLPac4bA17tz4bs2
 OzPr7H6A/6jqfQugyxkspcYqsMWAcgjhfUxRJNr7lmfG5JDEP4Ib0pc14
 3yd+mpEdtTtfzTNA0O2IIB5gFP+G5EwxyeXBgRBUMKYRkLICMfE2wAqFl
 oqm9lD/1Tza4xaqMH2jKgiWGSlm5ULlGatuEX0d7nDzKbqEwf6i3dq2BX w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10911"; a="6844844"
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; 
   d="scan'208";a="6844844"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 14:05:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,242,1695711600"; d="scan'208";a="17909454"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Dec 2023 14:05:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 14:05:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 1 Dec 2023 14:05:16 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 1 Dec 2023 14:05:16 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 1 Dec 2023 14:05:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XkDbFtf0MRBA14COZqg1aLkXkT0HER5m/UMrwH8D0oxNFcqeNMT5KP5wiNPwQOaWDglxaBq+95xoI+KbjkayAURzhg01MjUzChgheWsw1aIK1LCWQohikD6P/eLBDuFwpDLv32uCN1JOurNMhuU+9rP81OWwrjr48T5DMy6cx8X1DifUXKm2dbrjnG31AsdUCIubnV+v5mWRrahoY/kT0VCkPT7YJhShQHxzkT/IPKpQQ8Dt4cv66YHhRHjmP0mXMOyVbqbKLTqhpGMZG2od4r2XF8XckdiQ87e98w2ogynwQYlHPjAvUR1NYN3yut9w/EeqiDaaR1MZP0zISPeyMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sbrpQhsJKE/PbSxsZ349mn92oo/J1naNtZr2/PEIg0w=;
 b=F1aD94erd5JxQAMesMN41/29p2a4qd9wkSLgA3nHe4k7jEl8pdMzpdqQ/FVeTCyTkZVQzls3tBLqUinPXRb53Vn4KrGEvrrNOffkyuAfPMjPiUoj57SjTGhMIEGg3dH10HabXU4iiXDGUTRg8R1kQLidmEfV9oY32K+BmdTFelxkvIY9AW2mRmrc6C1qJQeO5hMvZBEXtaqN7yEqsG+yBWLWaS6eGQ1rA7AzOOTtpiz5SHwyG/zQGSk+lIEj7UFpWuHX8DXVhdxEjocpj+r69TGtrzAlgkwhRW6v0vhUPyipCbfAWLl0D8PCIR1iu5CR+Ujle1/QPsrufVKcGCgn3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6396.namprd11.prod.outlook.com (2603:10b6:208:3ab::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.27; Fri, 1 Dec
 2023 22:05:13 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7046.027; Fri, 1 Dec 2023
 22:05:13 +0000
Date: Fri, 1 Dec 2023 14:05:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <20231201220510.GD1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231129205122.3464299-1-matthew.s.atwood@intel.com>
 <20231129205122.3464299-2-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129205122.3464299-2-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY5PR20CA0019.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6396:EE_
X-MS-Office365-Filtering-Correlation-Id: 752b449f-837d-4a06-e93f-08dbf2b99753
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zr1hoy2ybSY3fprYnqHuhFDFC07n+1Wm5qMHOOTo0+FCuli1seOTn2ZhQB7WAegCxMuKdeJANHiR3j3j4uZE6dvgUcTOq8LwgKZZcR4TGU6wHWKigNBD3ZjjjtXKB0eMWgnH++AAszZttLsclBMgBlXHr6OiedWt9yNV+VQLIhCJU/zH9r54Z0jKlHlEdYgMWpUnF9NqLLWGSeaQ8H0CrgZ83ILU4r3ZgXBNjLtB+81QX58x/CRVJvTsUcj7V45rJE8Wg19g8NFAwwwMpU+hLqjXxtldzPATwaESUDqTwnDclcgqP525Dy5xJz1XlSv04+dugkOJIvOvB7SiCaUOkkN0kCLth8zfFXKVoG9Ld8GGeLtbl8vqDCQnPR7sQ8KnE7lNQnLmL9oYGN1pa4DEfRXwyz9PuwF58cuV1I+z5q3mxFodG7Hu9CqUAsiwdx8yN8UVARobp+puWzsyIr42rriyIkZO3NsZNqzA4smA6xRatxPl4kt6BFlzjkFQqrRy7AzItFILSJcuSymqDI8TnGdqKih8Sp+uR2dythddXIowBiaE4sOamWhvA6ae4yT+
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(376002)(136003)(39860400002)(366004)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(66556008)(26005)(1076003)(6512007)(82960400001)(6862004)(6506007)(4326008)(5660300002)(6486002)(8676002)(6636002)(66476007)(478600001)(316002)(66946007)(38100700002)(83380400001)(86362001)(8936002)(41300700001)(33656002)(30864003)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+ONcO5KiSnd49KJtBAcAqyePuobEuGNtwXzeG8OY6mDhu1IGBJrTONZB+e5J?=
 =?us-ascii?Q?Hmgc405odIsFc9aCfq+8UfA+0QAISvv4r4vIdtGNfkccxPvwUsdSNDfLhtTw?=
 =?us-ascii?Q?/+o5EASAP695PFT5yaQN9SI+FLirpizPYsC5kl7RUi9dIFwnBH1RgD+XkkrO?=
 =?us-ascii?Q?hzJypR0wATVdad16n09hoetrrCVuoWINWuqdFQYyrzewxrSsSRWKnxrKxKhX?=
 =?us-ascii?Q?7KQnmZMZL+nVL8b/ZMi4duLjQ8aghPdjetXLr9QbJnjWhGcv1XmnbA1Kh5OF?=
 =?us-ascii?Q?iAOMHUeFXbPkpbpe1FqjKS15A0lTVuQDDca5UmhrmMPqBChXLZfffKhMW2Jz?=
 =?us-ascii?Q?kslJcHahrieO2pf1crkI2B6XG5MHa7aQkRVlB3Y9h8B6KeFPRFyNzGVFXhFM?=
 =?us-ascii?Q?QzkXAuPmUg+QE0w2bRsHyegZb8nJ5yYlq7Ql5qrumuyM+41f9dRj0umuz4v5?=
 =?us-ascii?Q?29Z+hFIG6gz2YnQxgAnp2o8P4YyA7deHsP/+3AkkGdeXF7+Il/T7qBWpGdwF?=
 =?us-ascii?Q?yu6k6iN0s9WIrky8VjbT4NCau+K3bA3cXZMdh9EkyyQVlFnQ67fw7RIzZffH?=
 =?us-ascii?Q?g1aITF8j+2WiwkP0MAkQybB/HtTlpbtVD7OgMlnGVpxd6KMdKwp8gpcgum0o?=
 =?us-ascii?Q?2Y/MhUgfUisQlj42Ij7Z5XWJj6nUHMIu2ueWWT0HWPr8h+t19m23fmT9x5Xa?=
 =?us-ascii?Q?7AoaUJswuY9bIMYPe3mvinD4Knao87+XbpySqkJq4tZtJZcUiX6APykUzq++?=
 =?us-ascii?Q?t++P92PTkxYXharI+xxk4uh7JrRrDdROconEcX3yLNk7VASwuFitBAQYfdmS?=
 =?us-ascii?Q?eBrrsDEpf+IfkQl7tJ3WQbrCuTIyFp9SbzcaK8v5PezvgJ8KSOL1GWTAO6Jc?=
 =?us-ascii?Q?iFnOSbs0ZXM5DeUZqy/msO4agJWB32DUXIZpKnOZBmMPbYwaEHBqIUydaOYX?=
 =?us-ascii?Q?m/EDe52IRIY0D3mDJkbf1epgo2YMeSmp4ECw41wZWxjlxOMvUlXnmKuCGipN?=
 =?us-ascii?Q?8BWao5ESP918kGkcFJEs52UUDlTZ89Kr2nR7apILplnREMp064qGyGU+Lu5f?=
 =?us-ascii?Q?vIrPYvh/6JE8CQQscRQDFeSxhrSuRuN6iUyYnaydpOu+zGD4P12WY0VQD7iV?=
 =?us-ascii?Q?b+kGlTdSZBU6pr9yxoupFHYwmni+c5SyJGX2/le6xsV6x/gJtZgrBpZxL0K0?=
 =?us-ascii?Q?VKrg6PAN8l+P9OcXtikt0KykDM4Wzls+e2CKJWQCASn26YlwUaK49yQADCfv?=
 =?us-ascii?Q?Act3Mr1ortB0Tx49OG6fW8V3A1XGjHZkyhtqE/FIoE8YTZykK3ssc3gHyRuH?=
 =?us-ascii?Q?LvgZj6vhOdL8RN8q0rl38JQF+zzlU/WTKsotfRgRjODmqaWGDvV3HuFRA3P4?=
 =?us-ascii?Q?j7F3AcMvR3WX4ImFgbcYtSIyDUAGIUAGkMN2dqBTuNr+LbaPOBHO5hDIbB6T?=
 =?us-ascii?Q?HaFmZ8aSSjF0L4M5mE/+9CImIHo2g4Pct/0MZYE+kGewXnmsxZoSo5sqxIFS?=
 =?us-ascii?Q?kUiTHZApi3sFkvb9hUC1hMcclXkp/dNNYsY7jMxMH2TyJUDqxsJgXuA59b9x?=
 =?us-ascii?Q?EKq3okA41H3+iQPRDdmwtcFyptzBJ7+K5pCqsIe/dwNxj3p+EmtFpqEGYuL0?=
 =?us-ascii?Q?Hw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 752b449f-837d-4a06-e93f-08dbf2b99753
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2023 22:05:13.1047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BwsFK7Mm6rHeZupOxoHfNrSZfiXcSV6ugqsaCCUClo1DhB9XQ81dEKn+nqaTQ44mgYrUXtMuHIdonb01xJ53OhlUJq1NrJXE5ruknwXiK5A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6396
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Patch v3 2/2] drm/i915: Introduce Wa_1401127433
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

You're missing a digit in the patch subject.

On Wed, Nov 29, 2023 at 12:51:22PM -0800, Matt Atwood wrote:
> Wa_14011274333 applies to gen 12.0->12.55. There are regions of
> registers that restore to default values on resume from rc6. The

It would be more clear to write this sentence as "The TDL power context
is not properly restored on RC6 exit, causing registers in the context
to revert to their hardware default values on RC6 exit."

> hardware has a built in register (CTX_WA_PTR), that can point to a
> region of memory full of commands to restore non default values on rc6
> resume.
> 
> Based off patch by Tilak Tangudu.
> 
> v2: Use correct lineage number, more generically apply workarounds for
> all registers impacted, move workaround to gt/intel_workarounds.c
> (MattR)
> 
> v3: Correctly use intel_engine_cs, intel_engine_regs, use
> reg_in_range_table() for wa registers impacted search, move the majority
> of functional changes into intel_workarounds.c, free up pinned memory on
> engine tear down, be more verbose in commit message and wa comments, use
> generic function for platforms applied to. (MattR)
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c    |   2 +
>  drivers/gpu/drm/i915/gt/intel_engine_regs.h  |   4 +
>  drivers/gpu/drm/i915/gt/intel_engine_types.h |   3 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c  | 114 +++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.h  |   1 +
>  5 files changed, 124 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 40687806d22a6..d3628462bfb3e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -1573,6 +1573,8 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
>  	intel_wa_list_free(&engine->ctx_wa_list);
>  	intel_wa_list_free(&engine->wa_list);
>  	intel_wa_list_free(&engine->whitelist);
> +
> +	intel_ctx_wa_bb_fini(engine);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> index a8eac59e37793..becb466f5910d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
> @@ -251,6 +251,10 @@
>  #define GEN11_VECS_SFC_USAGE(base)		_MMIO((base) + 0x2014)
>  #define   GEN11_VECS_SFC_USAGE_BIT		(1 << 0)
>  
> +#define CTX_WA_PTR(base)			_MMIO((base) + 0x2058)

This isn't the right offset; you've accidentally pre-added the RCS base.
The definition should be (base + 0x58).

> +#define   CTX_WA_PTR_ADDR_MASK			REG_GENMASK(31, 12)
> +#define   CTX_WA_VALID				REG_BIT(0)
> +
>  #define RING_HWS_PGA_GEN6(base)	_MMIO((base) + 0x2080)
>  
>  #define GEN12_HCP_SFC_LOCK_STATUS(base)		_MMIO((base) + 0x2914)
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 960e6be2042fe..95ff3e1adf11e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -388,6 +388,9 @@ struct intel_engine_cs {
>  	u32 context_size;
>  	u32 mmio_base;
>  
> +	u32 *ctx_wa_bb;
> +	struct i915_vma *vma;

You should pick a more descriptive name here.  Otherwise nobody will
know what this is a vma for.

> +
>  	struct intel_engine_tlb_inv tlb_inv;
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 9bc0654efdc0c..1d33555039725 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -5,6 +5,8 @@
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> +#include "i915_perf.h"
> +#include "gem/i915_gem_internal.h"
>  #include "intel_context.h"
>  #include "intel_engine_pm.h"
>  #include "intel_engine_regs.h"
> @@ -14,6 +16,7 @@
>  #include "intel_gt_print.h"
>  #include "intel_gt_regs.h"
>  #include "intel_ring.h"
> +#include "intel_uncore.h"
>  #include "intel_workarounds.h"
>  
>  /**
> @@ -2985,6 +2988,105 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
>  	}
>  }
>  
> +static const struct i915_range tdl_power_ctx[] = {
> +	{ .start = 0xe100, .end = 0xe100 },
> +	{ .start = 0xe180, .end = 0xe194 },
> +	{},
> +};
> +
> +static void
> +emit_ctx_wa_bb(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> +{
> +	const struct i915_wa *wa;
> +	struct intel_uncore *uncore = engine->gt->uncore;
> +	int i, count = 0;
> +	u32 *cs = engine->ctx_wa_bb;
> +
> +	*cs++ = MI_LOAD_REGISTER_IMM(1);

I think you meant to come back and patch up the length of the
instruction after emitting however many registers we find, right?  It
looks like you forgot that part.

> +	for (i = 0, wa = wal->list; i < wal->count; i++, wa++) {
> +		if (reg_in_range_table(i915_mmio_reg_offset(wa->mcr_reg), tdl_power_ctx)) {
> +			*cs++ = i915_mmio_reg_offset(wa->mcr_reg);
> +			*cs++ = wa->set;

Part of the reason this is so easy to handle is because all of the
registers in the TDL power context are masked, so we don't have to worry
about clobbering unrelated bits when re-programming the workaround.  You
might want to add a comment noting that so that it doesn't look like
we're just reprogramming the whole register here.

> +			count++;
> +		}
> +	}
> +	*cs++ = MI_BATCH_BUFFER_END;
> +
> +	if (count != 0) {
> +		i915_gem_object_flush_map(engine->vma->obj);
> +		intel_uncore_write(uncore, CTX_WA_PTR(engine->mmio_base),
> +				   REG_FIELD_PREP(CTX_WA_PTR_ADDR_MASK,
> +						  i915_vma_offset(engine->vma) & GENMASK(31, 12)) |
> +				   CTX_WA_VALID);

CTX_WA_PTR gets cleared on render domain reset, so you need to make sure
it gets re-applied properly as well.  You should probably do this actual
register write in intel_engine_apply_workarounds() (to make sure it's
re-applied on the non-GuC platforms) and also add this register to the
guc ADS regset so that the GuC will save/restore it around resets on
ADL-P.

If it turned out you didn't actually need the batchbuffer, you could
release its object here and clear the vma reference in the engine.  The
presence/absence of that pointer can be used as the condition to
determine whether the register should be written in
intel_engine_apply_workarounds().


> +	}
> +}
> +
> +static int ctx_wa_bb_init(struct intel_engine_cs *engine)
> +{
> +	struct drm_i915_private *i915 = engine->i915;
> +	struct intel_gt *gt = engine->gt;
> +	struct drm_i915_gem_object *obj;
> +	struct i915_vma *vma;
> +	void *batch;
> +	struct i915_gem_ww_ctx ww;
> +	int err;
> +
> +	obj = i915_gem_object_create_internal(i915, PAGE_SIZE);
> +	if (IS_ERR(obj))
> +		return PTR_ERR(obj);
> +
> +	vma = i915_vma_instance(obj, &gt->ggtt->vm, NULL);
> +	if (IS_ERR(vma)) {
> +		err = PTR_ERR(vma);
> +		goto err;
> +	}
> +
> +	engine->vma = vma;
> +	i915_gem_ww_ctx_init(&ww, true);
> +
> +retry:
> +	err = i915_gem_object_lock(obj, &ww);
> +	if (!err)
> +		err = i915_ggtt_pin(engine->vma, &ww, 0, PIN_HIGH);
> +	if (err)
> +		goto err_ww_fini;
> +
> +	batch = i915_gem_object_pin_map(obj, I915_MAP_WB);
> +	if (IS_ERR(batch)) {
> +		err = PTR_ERR(batch);
> +		goto err_unpin;
> +	}
> +	engine->ctx_wa_bb = batch;
> +
> +	return 0;

Aren't we still holding locks in the wait-wound context?

> +
> +err_unpin:
> +	i915_vma_unpin(engine->vma);
> +
> +err_ww_fini:
> +	if (err == -EDEADLK) {
> +		err = i915_gem_ww_ctx_backoff(&ww);
> +		if (!err)
> +			goto retry;
> +	}
> +
> +	i915_gem_ww_ctx_fini(&ww);
> +	i915_vma_put(engine->vma);
> +
> +err:
> +	i915_gem_object_put(obj);
> +	return err;
> +}
> +
> +void intel_ctx_wa_bb_fini(struct intel_engine_cs *engine)
> +{
> +	i915_vma_unpin_and_release(&engine->vma, I915_VMA_RELEASE_MAP);

You might want to clear the vma pointer as well to allow this function
to be used in more places, as noted above.

> +}
> +
> +#define NEEDS_CTX_WABB(engine) ( \

It might be better to put the name of the workaround in the macro here.
There are lots of potential reasons why we might want to execute a batch
on RC6 exit; this workaround is just one specific reason, but there may
be others in the future.

> +	IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 0), IP_VER(12, 55)) && \

This isn't needed on 12.55.  It was a pre-production-only workaround for
DG2-G10, and it never applied to DG2-G11 or DG2-G12.  So 12.00 - 12.10
would be the proper range.

Note that if you did need to program this on DG2, then you would have
also needed to take Wa_18018699957 into account, which involves
switching to use BB_PER_CTX_PTR instead of CTX_WA_PTR.


> +	engine->class == RENDER_CLASS)
> +
>  static void
>  engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  {
> @@ -3007,6 +3109,18 @@ engine_init_workarounds(struct intel_engine_cs *engine, struct i915_wa_list *wal
>  		rcs_engine_wa_init(engine, wal);
>  	else
>  		xcs_engine_wa_init(engine, wal);
> +
> +	/* Wa_14011274333
> +	 * After the workaround list has been populated some platforms have
> +	 * regions of addresses that do not retain their values after resuming
> +	 * from rc6. For these platforms, add all workarounds in these regions
> +	 * to a batch buffer, this batch buffer is stored in memory and
> +	 * executes on every rc6 resume.
> +	 */
> +	if (NEEDS_CTX_WABB(engine)) {
> +		ctx_wa_bb_init(engine);

This function returns errors, but you're not handling them here, so
failure will be silently ignored.


Matt

> +		emit_ctx_wa_bb(engine, wal);
> +	}
>  }
>  
>  void intel_engine_init_workarounds(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.h b/drivers/gpu/drm/i915/gt/intel_workarounds.h
> index 9beaab77c7f0b..fe8946b0c7b67 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.h
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.h
> @@ -36,4 +36,5 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine);
>  int intel_engine_verify_workarounds(struct intel_engine_cs *engine,
>  				    const char *from);
>  
> +void intel_ctx_wa_bb_fini(struct intel_engine_cs *engine);
>  #endif
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
