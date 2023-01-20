Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91CC467599C
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 17:13:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B3F910EAA5;
	Fri, 20 Jan 2023 16:13:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714B310EAA5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 16:13:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674231228; x=1705767228;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3l6D2mav4XJ7spsnFniZZS6H5mJ9R8e6vis7cZ1C1So=;
 b=Y4NyYrO0kGbDwolgKAMLvhc+Dfms/31/JTdxaVjGPK6suQaj2wdddgge
 +3OO88RIW+fv9gTyKP8DIRf5Kars/udONw+B5AXFR9kMZ+eOnCGpUw7JT
 1eseOsaBNTOEkFO8xZ8aG4xLQsNE/23DWsAO/7ntRYTHJq+jRDvQqw2Fq
 IoaaMW+miD1mDD4vnr69ONmk/uvU7wbTpOZgemlE4dOoPKEOR39jI98ln
 n0UYmkJc2Scg/eE2E8chG8WNQ2TQBd8yzNQMwZnePVcuTUf0KR9zNK61w
 EEYGjr0hqE2j1SKyyYU0LkRYhYFQBrg3X07I82CbnoOWkHl7L4hVBI0AD A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="313499771"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="313499771"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 08:13:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10596"; a="749391050"
X-IronPort-AV: E=Sophos;i="5.97,232,1669104000"; d="scan'208";a="749391050"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jan 2023 08:13:47 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 08:13:46 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 08:13:46 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 08:13:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YslqWO1iwanARbrZUS5eZXw5Ng54H4vZdJCzk3cTP2/kGPY22RtJLx1vxJ5l+6l4ts6BuNwlOIDTpOI/wf06D89exiaNX3WfBiURSar2iWNo+sGLDn+TtcmZCqVRsSiBUG976e5EYI00GPpaD/nDNHM4DnBr6yhkB+Lw11WVTxTbo2jMnZ+agc/DBstmnAy1Yq/MXNvmRGz5JdJ+Qf9eT/smXDMtv81N+Y+h+MVQ3bVCc5iPTxRgC1P8HrzLIurAkZz7AtxvscJorTmrUv+2sRm+Cdc7AbGZkTq4b/hJqS8Ru8TGutmvCgfQFrQYx0dTKIJtzjAqdu57d4x44/ZCHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mPrOlliBtLDCM2u4gCvpl5KI7yOadIcRD3H3JhWdXl0=;
 b=L8uP+Y5KDTUPhZpI+Hdgh/uqVJEd9kD/Zr0me2nLDSUtiUsh9I4DB50R2gTdx97xV+YCiznvDvALTYYUcY1UGxBG4NCwju/RWH7r9zWBn6wwzD9TSEnzJ3Cz00pzkpX6i28ddybNb27cm4irKXbjTDRbRyQtLVitfGnSh7cf2WrXjkHvc2nYPiWtrjqZescCkxfbsocF6btGhW6aWbkDImo8dtTJviFz8jZCYQyZ0JyIG1FeEAELkqrOqbI0pMQI+yvNVGwbWwd3AASTArASaUK01tn47uPGYZCw4YZUvT34zpv5QyKpY0LEBB5NohAx9WkYWiCCIJBVHemFFMZnQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB7076.namprd11.prod.outlook.com (2603:10b6:510:20f::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6002.27; Fri, 20 Jan 2023 16:13:19 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%8]) with mapi id 15.20.6002.027; Fri, 20 Jan 2023
 16:13:19 +0000
Date: Fri, 20 Jan 2023 08:13:16 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <Y8q9nJ+qgMqtVKzb@mdroper-desk1.amr.corp.intel.com>
References: <20230120160615.80554-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230120160615.80554-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0177.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB7076:EE_
X-MS-Office365-Filtering-Correlation-Id: d29ef239-66fb-41a2-0bec-08dafb013e53
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LZq0p4slEUi9OiOAJQcKbjwM7UVgom+hbbxiCKNNnBkQyvMD3/Mi6Q2R1Kc/pl8O+eufMANN3Bz/gJarM5HvYDlkRO8dvuSegyGViUiCm/oY4hdevmWJvFJchn/P12oO9kAb7Obs9XOgpqXJiSJ32QRkLWvNZzRMUYVhxvI3Nv3g7ukP0EPMhez5kRVEDGA3Go0NRTFUuTm3H87o/zItn2L2K7GAffVsJ5cBuo+z9ik5QLYFFTXAa5lNIxN3K6aMIgZAg1heNSi4JP7+sIirjZVMFICkKMxdURttH4HmdNti0bScWOJ6MAR8JC4BcEOuLR7bZA703GCwBBX5HMK6EheAVLeOicAp6gsRwJMY21vdU6QfoxXzwxSwxsSU/W7YDfkCbv6n747vOsUqQDFuUb1Tdy1eST/FZ2be7RP7VYgl5zOcc3e7rCsYw0+Xow4pdPPHdxFxHl5hMwLGZCBr/BpRJZMaNBiBeilNdk6HjwjlCZDJQ8yDNQTVMOAkAMP8aauAgvXrK3fk5pTcEvSMT6/rVFpAiXJahTBNa0QTvVmobFd95RH6bdoLMgleU1j6L3PsDKRq7au1Vt7Om+Xxn+q505HF9YTdd1QHd1PfCX6g7FrQ5qqmccYKxynapirNFSyRTVFoI6UO61Rn0IJNENr8UDcVkOf7/C1VDpVCRaxw6vIt1FK5Ubq+GnxMIUWB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(39860400002)(136003)(366004)(451199015)(5660300002)(83380400001)(38100700002)(4326008)(6862004)(8936002)(41300700001)(2906002)(66476007)(66946007)(66556008)(6506007)(6666004)(186003)(107886003)(8676002)(6486002)(26005)(478600001)(316002)(6512007)(82960400001)(6636002)(86362001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mIIDb4WJAhcvEs0k/qk/tZfyqRGSa/jhJ7R75HipXZv5kGaTYPDSn6/U7KvQ?=
 =?us-ascii?Q?tYQmCu5ZBpCjoQYjUlB5arkh2AN1AyRYcF11rutIFI1LIfCB8zpk5ncls4S2?=
 =?us-ascii?Q?+NpaleQOWkBwFaLDvieSTdYwqD1lx63PskjjdMvDrQEEl4FQtLLujXPdzijY?=
 =?us-ascii?Q?AmQivhGc383HL/jE09Bu7aCsAwpXggz5UDPRjRVzDPTcLxkFnRsd7ZzbFzf9?=
 =?us-ascii?Q?T/zPtlPEAX2F0kQxBJZ0LeQnjhFEwCGaVKrmRTQug0uuEfAWsdSjk50Qhxew?=
 =?us-ascii?Q?hBRxNXAUgdd+M+vM3zE5ZkAFmRVoEtZDu2qQc6iIYM5v9aMxgORENapbCeM0?=
 =?us-ascii?Q?Dk9B17eK+FF5E2ZP8y6F+04Md2CODCpTBfToELJ75REzVX/fT2e6XsI7ottK?=
 =?us-ascii?Q?aQjL7MOA2gCBNXC/k7aoUVKNT5qd0wvqDNtCptw5Of8dHXtqlIRt7SIlVYdH?=
 =?us-ascii?Q?7leVWqJ0HsMjiROHhJwANvwWZrxTPcStlmlNV6w0px3UtwHW+jDBs7aFm6E+?=
 =?us-ascii?Q?AnEcD91/t0Bb/78Va79yMQie12T9sF0A5MkNHojmWsVPngMdo7Y32n87eCRS?=
 =?us-ascii?Q?xVHr5kkRGpSt2NoubKEPpSyQZPwbQCFyDDjlmWLi7r2IwjPvXKrEhNb/HcuC?=
 =?us-ascii?Q?X1SmM7WsUkCJZMGwPBZBP2Qj6clcqSWFh+J8pMiSlsNLvb18s+JXvECO6o/r?=
 =?us-ascii?Q?UNYTX0dRXAAbjmvb4swwEE3ct2XauDNSrbD8EPlfOrvoX6wq2sdLvfy2/AoV?=
 =?us-ascii?Q?3kM4IHC51J6qFfWGrTnhfsfcrymPjdIRoun91GajntsJifmNa2zBcuZ+aTAL?=
 =?us-ascii?Q?aBCXFjZyya8o/FvN/2YExcVC4i99iY532tLFPuBlSo8qNCka+rDee+cvQzRN?=
 =?us-ascii?Q?UMaqa4Vt/JTgWfopiFK6Qn9DNMcuhZApoY05xWHgVXg5rHrx0Clq4Lk6rqTN?=
 =?us-ascii?Q?WjzRFdkpC0Er4iy2p7RcCT24yPlIJSzEUb/mrG4ez5GOHvLORRfLM4M7PPfL?=
 =?us-ascii?Q?QEveZ8ZHkTo4K6w4Gsj6e9QCqH/Q1NyntCNJ/AiGjtdPbJQXgEmab+CM9D5p?=
 =?us-ascii?Q?6D3Of8N22SDFlJPVRBkv3d5FrX55MLQV2J3dUIG1fjtvr37/CK8JP4E6UqJQ?=
 =?us-ascii?Q?+5M2BgpH3KaCj+s+PozRPVL5EwgGjW69Pim+ai0QvD/jPmgO7WOrd0oOVJe8?=
 =?us-ascii?Q?U6zIpuBWwEeAffbXq8GCNmJVg3nilHYeimhA8fBK03dZsYBQtr5xX+3kHc2y?=
 =?us-ascii?Q?OtkDCueMc8atXxoJb4aM02IsEX4S86byHSxeUkx/NR1SuQhkz1LAaAD5W8Y0?=
 =?us-ascii?Q?1zVSJ9IH8iZrxjf3mb8CUVCq015XBvW/V3d13+oJGd3Hr/97om0nVSsjZoK1?=
 =?us-ascii?Q?Rr36tar66JQyUGP2GK4Gu4VEP7Ygydq1cEtawev2DJQGgxlGkbVN8j+w0zfn?=
 =?us-ascii?Q?K4UaoUjdtXlHaQTorY4HqrHDWYZ3QuHZEY0CZ/+Yf3sij7oR6trpWDtW1mkz?=
 =?us-ascii?Q?BlzSqWeF3bRmzYF6Zr9FkjY6f/uZPVMoNQNo77ttHxjsan1ORiOVGt7hIOxR?=
 =?us-ascii?Q?LZCzEqb3h09MKCj8nlIRFSl8qXnEUqd/LDiHyZJGDtC5WxVYxm0y1WRnG0s7?=
 =?us-ascii?Q?BA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d29ef239-66fb-41a2-0bec-08dafb013e53
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 16:13:18.7234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZQKdS3zP3J69sHwhkf/pEq1nowOohf/cxG5VzSZTWGa8AvLY9HEe5n0WrmZ7F4k00QxiVC1UqOP18JIB6dgMDUwPlkVb9EDjS47RXQg5LFU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Convert PSS_MODE2 to multicast
 register
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

On Fri, Jan 20, 2023 at 01:06:15PM -0300, Gustavo Sousa wrote:
> That register became a multicast register as of Xe_HP and it is
> currently used only for DG2. Use a proper prefix since there could be
> usage of the same register for previous platforms in the future, which
> would require a different definition (i.e. using _MMIO).

It might be worth including a quick note here that this oversight
doesn't actually cause any functional problems on DG2 because the
workaround-only usage of the register will still wind up happening in a
multicast manner regardless.  The fix is mostly just for consistency and
future-proofing the code.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Matthew Atwood <matthew.s.atwood@intel.com>
> Fixes: 468a4e630c7d ("drm/i915/dg2: Introduce Wa_18018764978")
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 4a4bab261e66..2727645864db 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -464,7 +464,7 @@
>  #define GEN8_L3CNTLREG				_MMIO(0x7034)
>  #define   GEN8_ERRDETBCTRL			(1 << 9)
>  
> -#define PSS_MODE2				_MMIO(0x703c)
> +#define XEHP_PSS_MODE2				MCR_REG(0x703c)
>  #define   SCOREBOARD_STALL_FLUSH_CONTROL	REG_BIT(5)
>  
>  #define GEN7_SC_INSTDONE			_MMIO(0x7100)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 918a271447e2..4efc1a532982 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -793,7 +793,7 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	/* Wa_18018764978:dg2 */
>  	if (IS_DG2_GRAPHICS_STEP(engine->i915, G10, STEP_C0, STEP_FOREVER) ||
>  	    IS_DG2_G11(engine->i915) || IS_DG2_G12(engine->i915))
> -		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>  
>  	/* Wa_15010599737:dg2 */
>  	wa_mcr_masked_en(wal, CHICKEN_RASTER_1, DIS_SF_ROUND_NEAREST_EVEN);
> @@ -821,7 +821,7 @@ static void mtl_ctx_workarounds_init(struct intel_engine_cs *engine,
>  		wa_mcr_masked_en(wal, VFLSKPD, VF_PREFETCH_TLB_DIS);
>  
>  		/* Wa_18018764978 */
> -		wa_masked_en(wal, PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
> +		wa_mcr_masked_en(wal, XEHP_PSS_MODE2, SCOREBOARD_STALL_FLUSH_CONTROL);
>  	}
>  
>  	/* Wa_18019271663 */
> -- 
> 2.39.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
