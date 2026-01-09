Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69065D0B279
	for <lists+intel-gfx@lfdr.de>; Fri, 09 Jan 2026 17:14:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB3E110E8FE;
	Fri,  9 Jan 2026 16:14:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KuL8KBeI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 096AA10E8FE
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Jan 2026 16:14:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767975242; x=1799511242;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hnYCJP6a9eq/hQmlc+WXJ0xJpfKzbynY4f6eka0xxvM=;
 b=KuL8KBeIQkXtMT940POf0VC089s7wuQ6VwL9fob1oB6NKjAtjp9ZwJL9
 sTJoaYw4FkG2k3AttwI+ndsaUMDkGRZ2cb4vEeY3Yg6ejojVAQdXfG6Sv
 zbXOy4z2+P5JCV5q7JthNgtQ5QChql+N+s0uZT4y2NiDTaLFoS3M2UImT
 jGzE3MzoZAsxJyvjt8SUDAFoYl31+hdnhcNX2qunu9eljfGjexsYarNlN
 dOJME5mOI0RhERHT4lbw9kPGnAB8qWKsLbQBC63thxsF/E5trJrA29w4J
 xx9y9bDe5v5BvkOtZB0jDbg0xgQ00EoG4zZorP6PIereABfUOe0lipQYa g==;
X-CSE-ConnectionGUID: Twa6lUjtR9mp26QymT3ZaQ==
X-CSE-MsgGUID: 86jzinePR1ehoTEM+W+ZCQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11666"; a="69429132"
X-IronPort-AV: E=Sophos;i="6.21,214,1763452800"; d="scan'208";a="69429132"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 08:14:01 -0800
X-CSE-ConnectionGUID: NcpBX3lkSJqcoHS/PZXW5g==
X-CSE-MsgGUID: W3r+7BleSpmedy0z3uEZDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,214,1763452800"; d="scan'208";a="203516575"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2026 08:14:01 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 08:14:01 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 9 Jan 2026 08:14:01 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.49)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 9 Jan 2026 08:14:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HKXMnIi6fCbLkgXf0OBf1LqUSgMDzTdj5Yb3ZfVB+gNKjxx7XIrSq89dvhyDH06RKtRi1XigSuWgsR0fH+CTDks7JdEk/dHLBId5/s3uUb4/VC+chfVAPAafYzhmFewhdJf+fgmgluyLY9mR32kJOxIiTl2Qrd/ytEBU+f5iZU2dlpP6aytbr0dtBJtvSolxWIgFOSfA4INFkvcD6aCmcO7ho3tROPXKJ7A9skWAX3BufgGkI5iBYixYyGgAEX1Pj68dr951CnJS9PnPsIDOeKN6wgMuV3W2fykjah5q4NFrxD4MUiv1w/UFiiMgieERCZmS3DX5L7n1iYyrBfxd2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3d8wbLFLCXWM9T0a2UAWx0RmJovUIwK6wVhhYIDY2DE=;
 b=Hz9YIzPOQTy0EZadXxd5nryWJ/pld8DaVnuFGLQWruXbzRLv1xq400WX8mi1CanuDbnsnFOTbRPAYgi//Iwb8IoqBUuemzkGEY3EXYqfYQok8bXqDO016b8lrrD90NiomQg0D4/rMbaoxPWvvuCbg14uHVgTyhpdXc9V3ZyhSe4eEy2+TcqvoreeDNVgt3cUVCjqhr6/4pBU4cxDu9TCHbTFHuHN1nZ0Pji5HL0pV0oXJO5C5Fy7L2XNWOZUJIglSt+E3yTllEW8LvSOH2KXXn9cTrX4Rj2sYIt1sBtZNigRJlkSeMXd27qE7t2S9QgDgAK0n74nbLwm4JqNqukTGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by MW4PR11MB7006.namprd11.prod.outlook.com (2603:10b6:303:22f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.4; Fri, 9 Jan
 2026 16:13:58 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::1d86:a34:519a:3b0d%5]) with mapi id 15.20.9499.003; Fri, 9 Jan 2026
 16:13:58 +0000
Date: Fri, 9 Jan 2026 11:13:55 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Ben Dooks <ben.dooks@codethink.co.uk>
Subject: Re: [CI] drm/i915/guc: make 'guc_hw_reg_state' static as it isn't
 exported
Message-ID: <aWEpQ094QyvO2xCk@intel.com>
References: <20260108201202.59250-2-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260108201202.59250-2-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BY5PR17CA0019.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::32) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|MW4PR11MB7006:EE_
X-MS-Office365-Filtering-Correlation-Id: c9c0d33f-6f43-4ba5-883d-08de4f9a1815
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?c1TTqr38u6YLMVO5AyzG1Xel1y9reYnkXFmWX22NwUcpM9Jorarml99fVZEb?=
 =?us-ascii?Q?BGpk4Lbv20924NGu5BvC1fs2gSEV2ySgWkUcYebHj7vCgiVoOL6h6NM5IAZ9?=
 =?us-ascii?Q?sIG/HuLd/T8tGdnSdo5zy4fYUefRO1F95H08nKPNik5Huq3US/cAfpRo4QTr?=
 =?us-ascii?Q?7T69y4TifmrJCS5sJcqMn+4048VwmGdof9fy8GqnaXZa8A4xq7f+yRBnfTPH?=
 =?us-ascii?Q?OKpgvDHaDNMYO9vduT15MT/aWemlgJNOXKeHdJF6jbAeLsrNzFy4BOrO7lGO?=
 =?us-ascii?Q?M6n5dqoPv5/vLZqguGXfdqs8pYIYHt81RtV+I7HPgTD0u3Wz1Hd5F4elYwYq?=
 =?us-ascii?Q?PjvLF47FAbgC91KxwkItPil00bUZvVzZrftG670Xq8NlU3V9/7k5/h5hWTPM?=
 =?us-ascii?Q?ZYBWeaUlxEZq8LyCscxzEToCqe3mHJ+AoMiDuWKLqm0+FIqjtGuCQ+O1hRpL?=
 =?us-ascii?Q?O3EA2J8eB/axaZTvCaj4Gyakh2gyK18DlGhH69lPsWoUa9dFbi9VkafZvSYX?=
 =?us-ascii?Q?Aw7X64l+VgQPsJTLkgfVm6aNsSTeTjqVIH9z+RLkwk00UK0rjdqQEbrpICy4?=
 =?us-ascii?Q?dm//0fA2e+P7yF3iYjFaGRmYYEQKnMa25A2jim655SgEjl6Nhpj7svAMZo7I?=
 =?us-ascii?Q?dGj79JzCps+zQ/MV36HOC9mqF56NzrqWaRz515+rheQ9ou72Q2doRqE6AZTf?=
 =?us-ascii?Q?vTK+oRr6n1Cf43oD0HFQYDxCPKs7Xoa/7h/CP+U0hD+dA8+g9Fe8wSfxw8NU?=
 =?us-ascii?Q?A4GaTP1gNleRbHYTcBNPd//8u/54ECFv1r3QtoL8H//lw1FYdPMKZ87zIHJl?=
 =?us-ascii?Q?VqfAombv66Y7O4RQjc3zq6LDv2Mve8UFFUAeeJx+SUEa2mCOgW9poNRlEGka?=
 =?us-ascii?Q?rGccN5tztI0wOZ97M+VGeNOtfc48aJiGBTfEgPJvkDenaXbtMS8Dr/1Xh8tR?=
 =?us-ascii?Q?JkzJ0Si8bqI81mkKb4C72HLOeOHaJP9sg9GKyZv3bpKRAM7F6gt6UGw2yx2K?=
 =?us-ascii?Q?U7Ne90Y2sMtBVL6KpRIc2Rm8xgY/FgIIvhcd5HqlnCcKP+B+BxtNem4JHXd6?=
 =?us-ascii?Q?bd4/Am7Mk7qLGSqGBe01P2QRNO0qIUbopVfQC6kSmOTBHm2c15DecNgdCRW9?=
 =?us-ascii?Q?uPia6N5bFPrL3bbhT/xASVK0KUGubuH6zTV5C5c96lpU+h45uquN90k5960x?=
 =?us-ascii?Q?7YUITv+JmDdQlpy5IOB2wZCA26BPMt2Cs4kzcTELMukXAdBzWFyW1xlaVBp+?=
 =?us-ascii?Q?G5FFoppmVHC394KAhqpyp/BiOXCCUIbbRKZApmbifM0f0ZKW+axrM2K44XHw?=
 =?us-ascii?Q?kzt2Xr3nwckoRE8IvcpY4EmHP02M8wJXLFpjRy99QfoPUur3RCTXjp17D5AV?=
 =?us-ascii?Q?ASTZr115o+Hfi8fye9e1heCouVEjw4lLfDllXUKLLsTVX54LqtPVFP+27VkQ?=
 =?us-ascii?Q?YntTidqF8UC1ESsiotUojy+A0mosJeKY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5orRNwVE0VAp49vE9Y+ifL2885H/9/gvKwy+QH4aWFFZ7hIs3hzOgqAsJQyB?=
 =?us-ascii?Q?SGIhSZDpJAzgCnncEkfngPC0deqot56YwftX7E8XF13QUzE/hbKta/BvGMwy?=
 =?us-ascii?Q?vnHV6U6CcVX4hgkjyd+1u+hpBjPf8bMoboHl9eaLs6xG8cn1cCvshzHVS7lu?=
 =?us-ascii?Q?eQV4D3tsr20yeRA7lH4dIS1jUtR0FZKLuOfQRExEXqd5nhcxrAjLAjsvCogb?=
 =?us-ascii?Q?gqiL1PwAaddoZY0aqB5bARGYQU2ivvhqmu3pxfi44LgjcGMuwSt6rqb7ZVpg?=
 =?us-ascii?Q?d9/vaABvUHv4uabAz2JiWf7mKvsNXACdwzcMYKEnW/7vH0KYDqWlX31pIjRW?=
 =?us-ascii?Q?9+TADObmoDj/akrg7Gf70mC7BEgn1CEBN++NER9yqyBcysN3v0xKmSyYO3C6?=
 =?us-ascii?Q?SRMGISBpzS+xFQbMWo+A0mtvR3+E978/xy3aH71syM2oQLja0GWyLrAXLNE8?=
 =?us-ascii?Q?wC+chcxk8qs71W6RtmfpFuGNKefCHum6PfddeCTeBvn5BdPRW+lYxayem9Vp?=
 =?us-ascii?Q?5SACvTc47ZRGG/8oqpcw4UzIuvVsKBwTkoT/7MoGMtAOxVBMXIa1nvdnmRqR?=
 =?us-ascii?Q?uUzOSpzVcGJTe9qSf1yiqHGl/putZClXcBb0fMMUwrjTx8wJkbvBS2n3JLkt?=
 =?us-ascii?Q?oztIbLfVTIBIFh86pIPKcjoini4BtgJCgSWlHwu1x/ixHEPkUErwsvU7aRBT?=
 =?us-ascii?Q?DsoyX3Q6nZqwzsA/Af6UUa7wAnVZPxzXtN+dEpvgv6SOIFLsKbFTJdoPQedW?=
 =?us-ascii?Q?GtvhGeflDVs5X3vua0p+4TxLdq2J15tyohrX7goiQFR0RcNYZ6DkWGUw3BMh?=
 =?us-ascii?Q?gSCxtYq+v+nIxZUyHQbRtHU2JcDLq11tdDUeDz62H8ucZnC0iacmhYqPzeng?=
 =?us-ascii?Q?aHqJddigFzCn80su5Id6t69o9Vfl8HgB2dP0kugYoSBaI0bdVo/xDBS2F6Mi?=
 =?us-ascii?Q?/GU9VdrC3yWAUFgqZz+JvOTjv1oAeuzhbTY2/I+xDmAsn4YGfFan4raBY4JY?=
 =?us-ascii?Q?nUndzJzzb/xzmEbEOztFeoDFB1hVfJZq5m1DyZL/hjd0EjU+kVp8ZEzddr06?=
 =?us-ascii?Q?Vz0SmZ7TkktB6D2fClWwSgaYEsPHi0f2kVp5jzNVhTQW3ZrkzpHyk4bSXIrB?=
 =?us-ascii?Q?I2IPXv7hDLf2yc1ly0wG5p6NjB0/wmSa1oRbao7uJT+xLZylxuRmSPHw8ofl?=
 =?us-ascii?Q?TJ5uk4nH0fCUtWP5Focedq1yQ0NwtsZ+OOdiiFp+FOK2K5oxLKs/revoO5bF?=
 =?us-ascii?Q?cRLI6OvbKc03j1UGC0wqQxHzdOfTDUzNYA8c7guPFfhNappm0eMI/phLNQKz?=
 =?us-ascii?Q?+y2fKUBWhe5gAaGazhKG8zI+jKzL2QH/NUqTcS6rv2SMk3ouF1rgJR5QAFNX?=
 =?us-ascii?Q?D+ujx1DcO9OYmDoWknWD3hFLHGJK/5uuoz6VVR6bb0E2lobczMjd97sVa64+?=
 =?us-ascii?Q?L5rZaCoSSmwTUYLmhadO8zm49w4eec7ieFUO/vOCoMxoIXX0KS4KhRDnJpy/?=
 =?us-ascii?Q?VMgtd8E5G5/R8fthHeSMkaqGfnGRxI3ckmyq6SUcKnfkI79lER3letxP77am?=
 =?us-ascii?Q?CKFuAbv43K27cPkZ4SIwhzXdtwKn4yqc0Xy5FIGR1d0D7HM31uHn0tIRBDxJ?=
 =?us-ascii?Q?Y58j12QTReoNV5tjIp8gUx/6nK9C949K6X0xn9mDFEZoPqyMiniV/KI54hJm?=
 =?us-ascii?Q?sfB0ZhY57109J/TzvCIKg74T9Obl7pnBWNHprTsY2Z6NB0PIK2HQ7w7EkCVS?=
 =?us-ascii?Q?uqgnG1aEfg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c9c0d33f-6f43-4ba5-883d-08de4f9a1815
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2026 16:13:58.2632 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MLPkKNdWtiy7LJtQpt2S3XZEFGAxg3hQFrI3IJWNuMA6W3M9VmJy0OcX5zgvzBaJHikxyqDteR0aCSo7DeO3Lw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7006
X-OriginatorOrg: intel.com
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

On Thu, Jan 08, 2026 at 03:12:03PM -0500, Rodrigo Vivi wrote:
> From: Ben Dooks <ben.dooks@codethink.co.uk>
> 
> The guc_hw_reg_state array is not exported, so make it static.
> Fixes the following sparse warning:
> drivers/gpu/drm/i915/i915_gpu_error.c:692:3: warning: symbol 'guc_hw_reg_state' was not declared. Should it be static?
> 
> Fixes: ba391a102ec11 ("drm/i915/guc: Include the GuC registers in the error state")

next time, consider also Cc'ing the original author to speed up things:

Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

pushing right now to drm-intel-next

> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_gpu_error.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 7582ef34bf3f..303d8d9b7775 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -686,7 +686,7 @@ static void err_print_guc_ctb(struct drm_i915_error_state_buf *m,
>  }
>  
>  /* This list includes registers that are useful in debugging GuC hangs. */
> -const struct {
> +static const struct {
>  	u32 start;
>  	u32 count;
>  } guc_hw_reg_state[] = {
> -- 
> 2.52.0
> 
