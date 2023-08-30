Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB1C78E32C
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 01:23:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 497F810E162;
	Wed, 30 Aug 2023 23:23:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B21E910E162
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 23:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693437822; x=1724973822;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=h8pvmYaTT1bcM/8uavBYSyE+dFa25QyZaSSA2I4Lt1E=;
 b=PaVSLv+iWDbkl9Doynhxl9x2tXUZC4DR9y2687kuY0BPl4x2/Qpu14ur
 uk5Kq6YNCgmOebCz0YheyGJMK6zBtub/rmcGtchBGajV68CnGJ+e1j1EP
 hqUPO2v1XHg8wKwMD1b5fpsjg6X1PKPKxfUVnIxqdmXRuHBGOac2oRZsA
 zoKjNHQpUAzK3MQGxUV9ysZprCrPqdWomxCVNbQemAQ+QlUCmot5kXuRM
 OMzs6Mg7BUm3Yr/agqk1GwSKErFHOAuFyjTwvPd3+50WNMblM+dzh+wTe
 Vnph0JO81101xS/Fg7MtDp1JLPxORfzXTwNMqLB6vO9cskR/IL081qztn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="439719878"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="439719878"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 16:23:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="804725117"
X-IronPort-AV: E=Sophos;i="6.02,214,1688454000"; d="scan'208";a="804725117"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 30 Aug 2023 16:23:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 30 Aug 2023 16:23:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 30 Aug 2023 16:23:40 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 30 Aug 2023 16:23:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QpU34XYF5gyfchMBUvTZObtPo4f4kzkRS+JOaphOCEdBNu3nNZyZ/vKiETvH9YiLXpzCn7pcVe5s4oD/j8DQhVZRkNfJ9a6gAmyKoRGKFSHeETb8erhqIzrgtT8c4qaZP+DX+CVJGDaCtv9d2cb3erQbTxHflkItdSxAm85pUsj3zVgRaJKCQ8Qw0djVwSpe54an+PE4d8ySL2EugW/T10G2T6Jutyu+D6bZBvDu23qUJW8u+CZvh+sTi9oErcTHnmEpPnILChmaYOyUoe/dcT754UkuROgVfxJL2fM/z4zUMcXDWb5sRdMzlFdY3wYs2KnbnUK+/vEI9I1poLoRyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/bNdInrHyhF9Y5aK0LAv786i4Yu7pIYJw4UzfbnQZZs=;
 b=cmnCi2CNpUb47WuIJHs5rhNEDNR81vUrB+P/AIR+9HRhtuMJ6yLxCsCiWIB3Ll6pUrdhwxbgP4Iuyi9nnFvQyTMO1o1Tom6zERKQhoOatYKtFmZk1Pd8yj9g5j/DYL9kGQxumZAk7iYHjZjPfMlANLuh14OLQFw8WrJ8jZ7d15rZ9jz2PepXYrYEytI0vjpxqBRPS4xYunm3uiBTueAYySKqjGBARLytvbl2+8qybuusB8dFTvIslQf9SSjeQO0aKYrr7CQcaVuzCE7YqwTp9bVRLROu3rYev1aRXE7jf9koB90JFdwF29JCJmBbKr6GbiT1kdjpHZWP0JSb5d45oQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB7870.namprd11.prod.outlook.com (2603:10b6:208:3f8::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.34; Wed, 30 Aug
 2023 23:23:36 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.020; Wed, 30 Aug 2023
 23:23:36 +0000
Date: Wed, 30 Aug 2023 16:23:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Shekhar Chauhan <shekhar.chauhan@intel.com>
Message-ID: <20230830232333.GS1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230830160001.2395993-1-shekhar.chauhan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230830160001.2395993-1-shekhar.chauhan@intel.com>
X-ClientProxiedBy: SJ0PR13CA0087.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::32) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB7870:EE_
X-MS-Office365-Filtering-Correlation-Id: 7eb81d3d-1c6d-4c51-8d9b-08dba9b0227c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l7GPhZ7CAefO/udphi0hXTjfLFg8MByaV4FTWMaWSoVe4dhFmbeUX3c4VBtIm7Al5abGAnz8sXzIRNjYsYZWhd3Kwhq/2udReQepyutsOvzDl2si1oH10rWLVYVuN3oC8tOiVRXE4O+3zDQokp1FN/l64yp41seyK3Z+Iq51j6S9elIdzj6d5mnEh1WwT1+pDCoCi4DPw5llj532LstFY8YwjKFposCQlS7CM6+TKDqvaLAlgybHnydpHDM7MLPf2UdOs4lR2ojnItypw3QkEN1XxzDXU73wP6Gf/OldoFC9+04LQXgSzoMT76plIGJexmGV1lZgxAbUyoBn5d1/dkpWeFftMcQ7pnNrq9E6Z9UtWVdMPt+rHdUyI85m3L+2/2J4NBQbwqdzO21Xsv7F0D3sTPSFE5vjLfODCD8Bf42gGzuNCe0jjFTGieekp2vrAPpHictR0RPCxnaaA78Wy33PpIYGXM2fE25oYXXGHXxElhjlK9ALiriTnXuy75TWds1k5m02+FkNQMkSyAA04REjynbIf1CsVoTSqL14T8A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(366004)(376002)(136003)(451199024)(186009)(1800799009)(6512007)(26005)(82960400001)(38100700002)(316002)(6636002)(41300700001)(1076003)(4326008)(6862004)(33656002)(2906002)(86362001)(8676002)(83380400001)(5660300002)(6666004)(8936002)(966005)(6506007)(66476007)(6486002)(66556008)(66946007)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZVnBRi/vGPd5Imitm6BQYDP39PosM5sE8v1JVa8rPukhzASbNtAjPvB1VHpi?=
 =?us-ascii?Q?iW439rDviDMZXqMu5CqtEpEHEqXpMQWHbRdUZH16u/yf67VX+MjtV3E+RNpJ?=
 =?us-ascii?Q?m/V5IuwNUhPSh5+5x8fwK9ll5+dsmlh7KF98os2C2KSWrTcmggKX2MYOKEvE?=
 =?us-ascii?Q?mmRzQVkSdPPLSDhiTgp7krJ5Fv9jis/klhvp2pqIdzskJgbKyifMyBYALmHm?=
 =?us-ascii?Q?fpnQvaTkp4UIwc91sXPQR90eKj4qfJEGzJUarpDvOs8UF+ndEBPdkwa2OoJA?=
 =?us-ascii?Q?Q9CLK59WPEzkUkmLMjjZe7Gt5swrdKZgszX7Yph6dHCartIb2KU9amj7dUqx?=
 =?us-ascii?Q?7atHW2D7gDvejcWSnUP5VN78Sd3d+aTv0546yKK6LogUZyY73Kb7F1e+Co2R?=
 =?us-ascii?Q?EGAdy4LzuvGbhK3eavb69xSjg7oR/nsPxBIkBI1leuZXov35jF1VxqPyzh9k?=
 =?us-ascii?Q?K34fiZAPj//1z+YNPStkHqsQp3nDIf7Jp8EgTSYqcTWX/1MMfbUAMndR4n1C?=
 =?us-ascii?Q?Ig4H29YMiREQ4+HxUH48JUiIxruALvWHmMIGOa2x1+XQ+xuxnDUwEdI+biOX?=
 =?us-ascii?Q?PEL2NoSIbrPofMvNdcERT5izvBKHUsNFffMz3snbmiROMDEFcYWw4bXy+f+z?=
 =?us-ascii?Q?ltwD+ge5drRwWNSbp57QOiLE2kJG9wBXqfrM2YhDzEU71QIOAbWToYjhA0PV?=
 =?us-ascii?Q?SHq/9Keqdmv83qkulmJ+Osw7gXuyw0sdTK90qa6/fi78++jlo00X1hxN53pO?=
 =?us-ascii?Q?lfv6ojH3UwxLbh0qyzS7T8VLGRGt2a6KPRMPRlt+gWiJ/YCVW4yExWrFyrmu?=
 =?us-ascii?Q?PQLkd0THsIEiMPm4x4sB1iM3nMq+mpnkinfgLYg26N/ojWV2qGV7o2X7XoEt?=
 =?us-ascii?Q?gkg0cEV++jiSVEVaOookYmxkNy4oC2M+d04PkAoXGMoD0nXA5sASgCrRv7N9?=
 =?us-ascii?Q?73Aby3XJEgUK0WemwX3YkDVON6UvKPo0hjHkhbfv0Wd16fYelvuuw2jCEnBu?=
 =?us-ascii?Q?D1kGWCOnaXyOypDsdUiLOh8vTIG+5C2sI2KfLYdlniGPtF0V/Wvq2sYtIfh4?=
 =?us-ascii?Q?7hfafU8CpGXR/YPpRdi8najBxfqmI+f0Oi3/0VRjeih2/1IynoUJ4IXNdCYe?=
 =?us-ascii?Q?kFbTg619fL2cNcjqQv1kWlzVS+zV4Q1jYIL3kDiBax5+DDplryDrNm8QYNKJ?=
 =?us-ascii?Q?L4CSavmxQK5KWeLnIu0QA/dzXnHWN4TlUAW6KWM5I87b6t9LkiYY9V1c3PI5?=
 =?us-ascii?Q?kWXByZO1GUuBxyjTjFRPNzj2QOu2ePQr316QMtEwItL+LG580sUJgl7haCwH?=
 =?us-ascii?Q?DaaOOjGWVJ8cJG4jgNakWFTQMVNRQG4OW5YBGZHjrtkbQqG8O0Tin4UtKHT9?=
 =?us-ascii?Q?Og+H672S2dvxam67roLh34r8hbevf0gTlmqNuikc7pjKmT+8qmggZMWGWKnw?=
 =?us-ascii?Q?4eJE630QjIac9h0m2Sj00oUjqnfbuqv/NOKJ/+vY+rj5ilsMW0LDWR4ChQA4?=
 =?us-ascii?Q?J5JWO1wX4kFxtZXzc0ETIkuZ8RSObwfMlSubRNBN/izzICdCSolY5n2BABc2?=
 =?us-ascii?Q?nirp9+eyi9adfjC2jV2AmV5k/nydoTJhPSv0ioFHvN1k0IIdAlVmS7Ob0pY1?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7eb81d3d-1c6d-4c51-8d9b-08dba9b0227c
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Aug 2023 23:23:36.3718 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QSPGAors6iU8WJfRAIoS3DT6JhOgy3XnYoqQw/J8kQ8CMEclxqfOykcqNMB2Jv31N5YuJI8iJAbxzXlbl+dSvNgggZRcmVpZ1i2dgMrMIII=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7870
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add Wa_14015150844
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

On Wed, Aug 30, 2023 at 09:30:01PM +0530, Shekhar Chauhan wrote:
> Disables Atomic-chaining of Typed Writes.
> 
> BSpec: 54040
> Signed-off-by: Shekhar Chauhan <shekhar.chauhan@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h     |  2 ++
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 10 ++++++++++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0e4c638fcbbf..82b533aa0c03 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -1218,6 +1218,8 @@
>  
>  #define XEHP_HDC_CHICKEN0			MCR_REG(0xe5f0)
>  #define   LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK	REG_GENMASK(13, 11)
> +#define   ATOMIC_CHAINING_TYPED_WRITES		REG_BIT(3)
> +
>  #define ICL_HDC_MODE				MCR_REG(0xe5f4)
>  
>  #define EU_PERF_CNTL2				PERF_REG(0xe658)
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 864d41bcf6bb..d54120009334 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2327,6 +2327,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  				  LSC_L1_FLUSH_CTL_3D_DATAPORT_FLUSH_EVENTS_MASK);
>  	}
>  
> +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_C0, STEP_FOREVER) ||
> +	    IS_DG2_GRAPHICS_STEP(i915, G11, STEP_B0, STEP_FOREVER) ||
> +	    IS_DG2_G12(i915) ||

Since DG2 is at the point where we only support production steppings, we
don't need to worry about avoiding this workaround on old pre-production
steppings.  So these three conditions can be simplified down to just
"IS_DG2(i915)."

See
https://lore.kernel.org/intel-gfx/20230816214201.534095-7-matthew.d.roper@intel.com/
for details.

> +	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_FOREVER) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_FOREVER)) {

This macro doesn't exist anymore; I think you need to rebase your patch
on a newer snapshot of drm-tip.  BTW, "A0..forever" covers every single
stepping, so there's no need to use a stepping-based check in such
cases.  Once you rebase, this will just turn into

    IS_GFX_GT_IP_RANGE(engine->gt, IP_VER(12, 70), IP_VER(12, 71))

Also note that we generally put the newer platform/IP first in our
conditions, so the overall check will become:

    if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 71)) ||
        IS_DG2(i915))


> +		/* Wa_14015150844 */
> +		wa_mcr_masked_dis(wal, XEHP_HDC_CHICKEN0,
> +				  ATOMIC_CHAINING_TYPED_WRITES);

It's easy to miss, but up near the top of bspec 54040, there's a note
about this register being a "write only" register.  That means that if
we implement this workaround the normal way we'll get driver warnings on
debug builds when it tries to read back the register later and make sure
the workaround was applied properly.  We need to use the more explicit
wa_mcr_add() function to provide an empty readmask to avoid this.  The
next workaround just below this in the code is an example of how to do
that.


Matt

> +	}
> +
>  	if (IS_DG2_G11(i915) || IS_DG2_G10(i915)) {
>  		/* Wa_22014600077:dg2 */
>  		wa_mcr_add(wal, GEN10_CACHE_MODE_SS, 0,
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
