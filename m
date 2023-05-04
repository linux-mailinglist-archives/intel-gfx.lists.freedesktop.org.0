Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D1D6F79BE
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 01:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 844AE10E1EA;
	Thu,  4 May 2023 23:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C1BD10E07D
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 23:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683243443; x=1714779443;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hEW7z7MWV5GFkXVez5uRnfFnd6rZCJ426n09R/jdYcc=;
 b=VF/mDe01wWKjIUNscggrYpADrAfnM9NZuHSZKF26Lp/2JJBt812+LJ5O
 KMzLPoCuqVmaboNW4WwXly/tD3faABJ3JT/FKeRdcV43Obr68mtckRg1z
 8y/SMdlwF7Sq795yyoc/1brYc4Lbigr1+UhHWoS1IA25Z95VC5m+j7+gq
 8F/fvNNcC7JyWHfmCXb54cTh/ySM67iuf0eGLjKvQiKmhWqiCV8vkpSz3
 7MkiZIFsM/BC+r+jvBif0FiLgBcOXx1PonRtC6jJX3ONQOC1njEqCTHHR
 fq0/oXwfZRkDwpF3zX910/Sg2P7GUql7/6h19K+LOB83lo1yc8VJ0+sk2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="349123591"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="349123591"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:37:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="700109333"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="700109333"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 04 May 2023 16:37:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 16:37:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 4 May 2023 16:37:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 4 May 2023 16:37:21 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 4 May 2023 16:37:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HSNzTF10VH8as9iBOV4uw6Ib7u1yOW7u0p6+FLYduShM+89Yg/Fd6/04qGaJL02X4g9PDv3lLV07A8cvzuyOSKimbgCSO0gDcYidEYx30X4V1C7ZMEOp3piU2W2d5yB+/MRqPwRYSS7YPgDtzir8yVxBlHRf3dB81KkrzO4020OGrS8pUAFP3028pjwvIoOSB9fQk3BzSyjCDkmtAvRRljYLCRZluq/FtYNCXZeaVrKexZzkfJioQr8joIiETUILpRisM++Y4AyeNo7upIu0Ta1VU/IVR/XO3HJXcJtD5pslMJZ6EnDKf70cTrYu1qi3Lurrge7UVLkzkET14svZSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z1d1SHtk4/jCiYNnBuu/tPonf2CwWQH7H4V2RKVl5mc=;
 b=lgelvOHPDHIXVKtYLJFrz5/y/63zTFYNRPRQQlbWtChKAjsJ+kWK2D8EvXCWZxryzmcqRUwG1eBE9edFYWtz0p9omfffCJeMeYQcCltHkpxuKXmPK7WzZfeKb9oCHvF7m3uNrhsBYpkzQUEL/yXPBu/+fQGDmhfe7BMVmai3pSW6udzV7/LVJPoHJk25rC7VBQmjYHqr3wRUQcm8VmDLdLeXysQsQeF5w3tahZriuwgBnLWHCWQV9JN2yxc6oh/+zVWiy4Da9O5lEWZZS5eYH1dKv14JM2uQXsDX/FwOdHaS8LofVs/lssKw0FYRB+IuwKmcxLQFj4W53iEvSlPyrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS0PR11MB6397.namprd11.prod.outlook.com (2603:10b6:8:ca::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6363.22; Thu, 4 May 2023 23:37:20 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%7]) with mapi id 15.20.6363.022; Thu, 4 May 2023
 23:37:19 +0000
Date: Thu, 4 May 2023 16:37:15 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <20230504233715.GG6250@mdroper-desk1.amr.corp.intel.com>
References: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230425183011.865085-1-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0097.namprd05.prod.outlook.com
 (2603:10b6:a03:334::12) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS0PR11MB6397:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f904226-f3f1-441a-5605-08db4cf8801b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ksh2YTBwjn6hjbF8GiXO/K4EfRBhFhW/bCYnESpN3I2FErRa4y9MFKHWsp7IEMfNtc4nPfxGbIP52TN8OLTQBIgFwDLSBx2WVQF/8hcx6B4NwiBcGwXebDLtbRQw9qhIIixXZ8LZknCBoGtg6Bh5YTuhRuMKw7jcEJGJPJLinFeUp+mHYePXjtTOrYk0slakYTnG7oUUhRGgH9l2Q8yOg7NuuXMpOaG/PyuWwvyPITJ3JaahPdweUYW2Weff7NIkDn558nImwoX+h9i9WRTV18ArimXVbEGwai6lO+Hdw9aqkMLI5uGiuemULm2LPTtPoMsr3L6rLSKSFBODxboWkFRvEr2B+oJIrDfK15eTjlsjsLyvi+z3wg3UOaq86Gls9GzRlE3zuUGHeZkoDFpOk7zpgFyAt4oppur+IqRopczGUYuE79WSoh7GQ3ba9Se8aKGpwy8hUtCq/FeSbwmoWGcORBUBsRrl3dEgDofrd3/Wxk8CetYUdCyn8Ng69Znp43NRjYbC7pDLYq70H+cJ8QgeMMvOuyP7a5pcY07tcUprjF+Z6DFTpMyghjQ+0uo8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(346002)(136003)(376002)(39860400002)(451199021)(107886003)(316002)(478600001)(6666004)(38100700002)(6486002)(82960400001)(41300700001)(33656002)(66476007)(66946007)(66556008)(5660300002)(4326008)(6636002)(8936002)(6862004)(8676002)(86362001)(83380400001)(2906002)(6506007)(1076003)(26005)(186003)(6512007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TupoKee9bOCaL7tFfMsWLbXAxdI5jYw8RxS/ZVlXYdzMHKi0cIREKq8eEOaN?=
 =?us-ascii?Q?FUVmiY/EObfUF4UNFjAn/cOGc1KMOVdH193jSQxTFH4SJwFJN7Q4+dmf7grW?=
 =?us-ascii?Q?7A2oAlZal1ny5ACbgMsh0tlM/gFbsfjZfArJU4NBlRllZAr/tJG/vhiaXeVp?=
 =?us-ascii?Q?z+3kE1i+x+Asrob5O0oadkKdD8103SZPQTxfofHLqWRLTX2bLGsqJ/sL0Swa?=
 =?us-ascii?Q?ofvgexA43+8pCVjdqVsDiXekINmH6cd/IDa6bN1WFz/GblQUOki6g5HKZpga?=
 =?us-ascii?Q?VBwcTtDRcTcJTS55FLXQcPGta1Ilg+WqoUWiTa9DFMisNFrSfgdBRAltdNMr?=
 =?us-ascii?Q?e20+I7mxxnF2lf3yFG/U0voisDqUkp0Wgxf9+ZURLifvUbZhwJFIojNU8mXX?=
 =?us-ascii?Q?mF6MDHJDy2YZCfM+CB8HnPHdE/qOrfYIZcbXVlXeBH22r3rvoyX52puxuPk9?=
 =?us-ascii?Q?9p463FZrGaScLoGFGo02CHcZfxbi9ospDdxTJhOyHRHzgHCJYL7XcAdzdkM9?=
 =?us-ascii?Q?Vg2HmQO//6xjnNwHGKFvwdKbuA0BEa6xjYIifKFgpiuG5+pWV6EQZT+WyXIS?=
 =?us-ascii?Q?vRnWzEKUt5z/jQQ9wz1LUhPLRXlDFWLBluif3/jd4ggpilSx//HyKXloD9rQ?=
 =?us-ascii?Q?0l2OCWFDpA/CUm2oJISvq7HVdpd/F/vAT64LppAIv6UOXIXySiGr8v3DAptv?=
 =?us-ascii?Q?i0y5o1u1p9D3g9ZRcso0QONmJYNMOb/o4ffs1r1ie9d2171WKvvqXMItUtKP?=
 =?us-ascii?Q?sEkqWSWnFdTOuEhSx7EXULgydLoZpsYuXqpV6lbr3ocqc3uExiD88X6kU0VE?=
 =?us-ascii?Q?k/zwbdQYFa9BCdn+/mZqZXiL+qyE8e9xnaHAhROPNm7XRWKSvgWRfpoQriZ7?=
 =?us-ascii?Q?9vCok0aH++Zbg5eTkaj3Qt3/LYCKU86PdUQL136ekRKhdQ932h0Jx9J6pVEN?=
 =?us-ascii?Q?h7djY74ZUhX8XDGsUMDU7feLo92xltGyPWBfwKaOeOgTqHLVrDPpcvj2/EIT?=
 =?us-ascii?Q?ExgN2gkR1XEcLuGPu5BICxry+T9hhrULqQdpF9FhKtpgMmf58lWjmXdu26Ad?=
 =?us-ascii?Q?U1uvkBcJXKlOgbabBou/bwpmrXtOZ3XSQd4B4hRjwYLR5eIY6TAtP/bZ1EIt?=
 =?us-ascii?Q?oUgtIvHg86p49eo77Oo1BGSaYy7orb5OYAoLencbDF+xUXRknGZE1tagFyib?=
 =?us-ascii?Q?o0tw2pGqydDQPIE6fC5qGeOy6FFU4P5Ux26RMlJ3xgxU1/QU6EmMpdfSCC2F?=
 =?us-ascii?Q?AZppXmtc5+Jc42Sn/4fUG0vqEXawPiUWa8PZyHr9wNS/cWIqdfGcBOD6n082?=
 =?us-ascii?Q?rFQ9pfaqZn/mJIsZJoktYXfineXB64++OwlDHkeIh3rd3elovruI0d8iWNjg?=
 =?us-ascii?Q?ts8kCuRJ5YioNiYBFpGqRmTFOeNJXb+eEy5L6BBU4W34geZdy1UgNiMwObCv?=
 =?us-ascii?Q?bHe72cYkZum1YK0BDqW4w9b+/T0gu7qJPcdajBM2rzEZ+73nJK7hBfjXGY12?=
 =?us-ascii?Q?9pbLVd7QZl5sNzBputtDjxBZpmMK3Fg8zzglRv5t0FvKOWIPX2kwTpn18baj?=
 =?us-ascii?Q?wEOQgG5S7kEZHbst+N3lsU/W7HjUqiGrEDyfnQyiR1dHEaofAbS8s08N/o2u?=
 =?us-ascii?Q?Sg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f904226-f3f1-441a-5605-08db4cf8801b
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 May 2023 23:37:19.1084 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uCFpPXWeJHQvzEmBMtz8OXa5P/dsDQq56zWJ/MSPmOHYQbfGVc/z8AUK0+v9jhh4V99TkTvCvPb4lav9JOs3viDZ5EESc3URKOhVuJgelY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6397
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1.1] drm/i915/mtl: Implement Wa_14019141245
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 25, 2023 at 11:30:11AM -0700, Radhakrishna Sripada wrote:
> Enable strict RAR to prevent spurious GPU hangs.

There's no such workaround as "Wa_14019141245."  Were you trying to
implement Wa_22016670082 instead?


Matt

> 
> v1.1: Rebase
> 
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 5 +++++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 ++++
>  drivers/gpu/drm/i915/i915_perf_oa_regs.h    | 4 ----
>  3 files changed, 9 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index e8c3b762a92a..af80d2fe739b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -529,6 +529,11 @@
>  
>  #define GEN8_RC6_CTX_INFO			_MMIO(0x8504)
>  
> +#define GEN12_SQCNT1				_MMIO(0x8718)
> +#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> +#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> +#define   GEN12_STRICT_RAR_ENABLE		REG_BIT(23)
> +
>  #define XEHP_SQCM				MCR_REG(0x8724)
>  #define   EN_32B_ACCESS				REG_BIT(30)
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index de4f8e2e8e8c..ad9e7f49a6fa 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1699,6 +1699,9 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  	wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
> +	/* Wa_14019141245 */
> +	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> +
>  	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
>  	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
>  		/* Wa_14014830051 */
> @@ -1707,6 +1710,7 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  		/* Wa_14015795083 */
>  		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
>  	}
> +
>  	/*
>  	 * Unlike older platforms, we no longer setup implicit steering here;
>  	 * all MCR accesses are explicitly steered.
> diff --git a/drivers/gpu/drm/i915/i915_perf_oa_regs.h b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> index ba103875e19f..e5ac7a8b5cb6 100644
> --- a/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> +++ b/drivers/gpu/drm/i915/i915_perf_oa_regs.h
> @@ -134,10 +134,6 @@
>  #define GDT_CHICKEN_BITS    _MMIO(0x9840)
>  #define   GT_NOA_ENABLE	    0x00000080
>  
> -#define GEN12_SQCNT1				_MMIO(0x8718)
> -#define   GEN12_SQCNT1_PMON_ENABLE		REG_BIT(30)
> -#define   GEN12_SQCNT1_OABPC			REG_BIT(29)
> -
>  /* Gen12 OAM unit */
>  #define GEN12_OAM_HEAD_POINTER_OFFSET   (0x1a0)
>  #define  GEN12_OAM_HEAD_POINTER_MASK    0xffffffc0
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
