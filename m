Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8F9B39FA3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Aug 2025 16:03:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E524D10E9B7;
	Thu, 28 Aug 2025 14:03:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Dq7LeWwN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0193C10E9B7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Aug 2025 14:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756389822; x=1787925822;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=HcF+I7d/6Ruogb4iXGNJ4EnDz+ax/9BQY2bzKgLT3go=;
 b=Dq7LeWwNn/2eH4TVijaO9FNCVfhaShqqV5ssUnfdjQ+25GaofNCb7ofj
 U67p/2Nmvt5trOZ0Iue/i/jCGio9B6lnMN4zeIIqv0fxBLCXO1J65rBEo
 M/VxplagVIOpDhPX4wzzIuiCKXuUfzB3xvaLDQN1tGTVDnlPb7za3D1y2
 zfgcVMoGGWvRWtiZZFYy3azYFhDkZPZYIEXfBU4G864cdru0nk0mNGxIt
 Xwa3BcyFAwq34kWm/6V++bsoefS7BgkNyDvaZyvqr2KaZh3pxbpC8lnfA
 tV7+sxEvH1zVhKsYpIdLF86oZbpXw3eaq/0OzDoXsn+12OFL4FK+wHzZ7 g==;
X-CSE-ConnectionGUID: m27002coQWG/WSKrJmYmvQ==
X-CSE-MsgGUID: Rgd8QajDRn+L7hiW8hswxA==
X-IronPort-AV: E=McAfee;i="6800,10657,11536"; a="58807751"
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="58807751"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 07:03:42 -0700
X-CSE-ConnectionGUID: 54Uk7LuQRx6EcVZe2g36GQ==
X-CSE-MsgGUID: EqBmQKIHQmG7ZqCgADwQdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,217,1751266800"; d="scan'208";a="174507665"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2025 07:03:41 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 07:03:41 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 28 Aug 2025 07:03:41 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 28 Aug 2025 07:03:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VTTpHaUcgAV+tnGxWJaovecr6CIgAwWlmXdj34RiG4jlLO5GvhlzgVF2Ye8AGLxbv74I1rUMrJb0kSc4O15BU2WQF0V/YGjgEnXzCtEkc70rN5P9sjGf2lSDUWykgBJDtY50PskFTKAFyPXDGBIxMkPRyNVH4n738pPBRVoYg/RskslwYf5X2Xj4WBo4y2QYWQjwDqD/1m0gZta4BmPfMivIy6HLMnPeqAyeDHTtOgfgjWZt/fynjxmIU2uG8i35S/9vRoAmACipe9WbaXfaavBkHAOdzRapl4eSRBAyB5uqzAL7VoUnDaakdKkdas6590x+UNsf03xe4Fc7/f6VlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JJMA2FQMnZYF/bED8Ej5VtrNsqebad6/k0WHcvTSiNs=;
 b=Y3g2hsdRmezj59dkcOH9+9v5YfnP3SSHQZYJjdVJVAlKCeP1u170AojV3BnPKt1uYyiVIOV95Emt4PSe53mdUILCvVaMs1ediabV+1L6SbT+ZqihCGPH3TlwPkWmvsaikqDaqTebpR0tQCeqDb2R6XSussHWXRzvj5HAEV/T1fiG8uItmIFbQEkqZ8IFUKfpbaYbx2k8K0hU+saCkzXJidiaA69uKkAQprDrww4LoDSBcaag5Hg6+/BzustEmyfqj2/2V9/RZQIhTRQmds4KyLV7ftO3bO+jaENJ0I8DinIF7p55xhoWXzkUMrdGBGfQsdTXoiMdZU7rCF08OL/KVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB6608.namprd11.prod.outlook.com (2603:10b6:510:1b3::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.21; Thu, 28 Aug
 2025 14:03:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9052.023; Thu, 28 Aug 2025
 14:03:14 +0000
Date: Thu, 28 Aug 2025 17:03:09 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Shankar Uma <uma.shankar@intel.com>,
 Jani Nikula <jani.nikula@intel.com>, Vidya Srinivas
 <vidya.srinivas@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Message-ID: <aLBhnTs7wvsUcceu@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
 <20250828080649.186452-1-shawn.c.lee@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250828080649.186452-1-shawn.c.lee@intel.com>
X-ClientProxiedBy: DU6P191CA0023.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:540::17) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB6608:EE_
X-MS-Office365-Filtering-Correlation-Id: 227a10c5-c543-4390-f34f-08dde63ba110
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|366016|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Fb20pAxDsb1O88/pajeEAWT1qXdERq6RFYdLyNmrfFaQgorsCYJVtBPOg5yC?=
 =?us-ascii?Q?VZ+hjssI0nb/PPiwjWfzsVZ+yaA2blN+FI8G0Pj1zN2SIqaOdGTpqNZ6Flov?=
 =?us-ascii?Q?EQ4USOSujn53vig3mtZU1DCeBtDMmadG7e5FTrpPQBp0K9EOvVQ1kqRA/IEE?=
 =?us-ascii?Q?1Yq7dOfXV2fvWLx5TtKrXn7cod+ADSII+y3ISKtLA75OZVbTKJezXYdjaQ04?=
 =?us-ascii?Q?8v6qDyx24Gfsoaq+7Ighqio3POVounJc6RsMMFLI5C78tWRgnT7Rmd54MN0d?=
 =?us-ascii?Q?jcXZQAwrDhWWPCkg98k3GIUTDiXhKsS+VUi8rpMRAkeEJUsgucE3KrhuqwU3?=
 =?us-ascii?Q?f9/8WCqP75Ukk0PKD4Ev5v31nrAAVLZtF2znjqvskoS0a7LODODZxwNt2igY?=
 =?us-ascii?Q?SLIy/yjnRHwCTVA86rLipX9f3Fb7opPtzpsfeHzc36QrfbBcF7Z7zZkkv2+I?=
 =?us-ascii?Q?GOW2dCmzWKQYF1bsPPQo0K3vRkKZK3+kPr42nnvCThS62sskoVfeU9JKg6KD?=
 =?us-ascii?Q?+Os0O1lVORIE1H0jvqvRqHtpByR2NvCXBC518RxhRhNyUnWqgICiZi8d62bE?=
 =?us-ascii?Q?xQ2dWVYMU4K5YCilvo2sykqJdp6nrnJ6+8T4I/kOcRUS691VJcGTD8APR6cD?=
 =?us-ascii?Q?jVV8zuOkFVhoR7fMc/sYBvTF7BK/N50b+ODlHMfLkVt1rx+naedpmpHIx6k1?=
 =?us-ascii?Q?4v6ZEVllYtwWJM/vry/ij7lunLIGPxWett3eDX798/t1VO7vCMqNK3HC/JWP?=
 =?us-ascii?Q?SGPuXlrivVkF5QG6S3BRQJVSGbvn2327AbW3b94wBvGoF3IX5uDb6N3d4zV+?=
 =?us-ascii?Q?MtveLa/lXGUiZQrBo7EbRuwE8C+1gJyvMZE4tVIeLgRGlN9LLXX20jSEw1Xa?=
 =?us-ascii?Q?onRpxXirFLvf5qAQ1QnVNkEZiQRvfugNHQPrIGVDm9G+K4U6mgMogC6k0IAl?=
 =?us-ascii?Q?4nk67jYwej6nvBZftscksjWgCdSko7qj6eE9ikN50Ak1NKYSJK2D1ZfbpJ3f?=
 =?us-ascii?Q?Kb+hJr0GGZgsz+NIdBgwR0JbVfWDrx9U3uT9lEpZaG/xBvrqYZ0IWYs0JcqD?=
 =?us-ascii?Q?zo7KlFKb8aw/pR2i5WSyF0kdetXegOromSu6SZnhQoW8zzINanbIXjmWTO9J?=
 =?us-ascii?Q?juN7FbjYwyorD556BIcUOHEcL3JzeaahC0so+TCrtUQtIS+hSEUvaEXd7taO?=
 =?us-ascii?Q?vkuELk2RqwI3xJ4RGSFoNjp2CKteFinACvprheW5EgTehtQrlOceF6WBBKu6?=
 =?us-ascii?Q?+6+O8E5PPVuDB/S0SumxxWUave/IlnO+LSIFzw+FxQVsesZZmHwoQDrjgzfh?=
 =?us-ascii?Q?o/M0QTxCadoLSQ4PLCskm1kD4Bjk73LO8xyCV+cTvcZRdOe9opH595jcJn7W?=
 =?us-ascii?Q?NhUEt8KC5n63PVs1HvD8zjlchttWAWW3WATzyR4VY8V8EWrnhwAscZMZhS7E?=
 =?us-ascii?Q?zIdYS/ZzX/0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iCNG1bFE9iqLr/+LSMEyhHGbvkUd/hdgANOZTgdHBzWZ+Ks5XztrXZ77Gv8F?=
 =?us-ascii?Q?/2+mYgf5TiPvQf/96RNYFaEuOUp52nI/WySyKbYVJdijXcEMvX/7tm4zvQiI?=
 =?us-ascii?Q?tSzZb3CyhHwC6/kpCuP7ugoFokfweWpWy3BnJAMlIWmyll98/JOUNsJ5UGBh?=
 =?us-ascii?Q?9/HnbIdyVrasNgtCJVflNxbv65irQlyblPRfW+fpLevC6aYuQ06dqP2uhLLT?=
 =?us-ascii?Q?U+J5caJBIPBUEsxTtV2P65l0medDrPyXLFxBX1F0NHH8zGx23MpWXNpFHdz/?=
 =?us-ascii?Q?aFNuhf6ZzHR9QxApIlgaRW08utmeY5KyPxMtZ3ymlayNm0sm+T0VETJb8GMl?=
 =?us-ascii?Q?7uZCE87sS/TWpPebSVhuOdieVN0e3LwCkTofA9bi+fM9g+OdzvIu+iwYSKOw?=
 =?us-ascii?Q?FMq/lj/Ke9TyQiUQK+JWrWmhk2sdWvnt76ukCwNcKG7P/iSEtQPcsJXGvE+i?=
 =?us-ascii?Q?W186FmRPnWwz6HhbkqKTKPG0vK6D0HD8++z2FyN/Vd2srEaYYydoBpkREFBh?=
 =?us-ascii?Q?BZLQEZ1oQklBMHq43ULU0kDfBxsGXd6zYc4xEFMHCnawv5A9QC69p2Ol8eLH?=
 =?us-ascii?Q?nZlz3moGAipJ6cwJUIyQOAA6vNzPKoeBFweViU9v+cuHj4DRWOklev1Qab/8?=
 =?us-ascii?Q?VUqjpGlO4TWWr+ozBlBZJB5xlXyXvvo/e53Ip4u2urB62d209KuFvMLMtAgZ?=
 =?us-ascii?Q?H06z3u0qAIofTsvo+av5lU9LghaeTZAPuq5b2EutTRHO9N2XwURhou3+cbnb?=
 =?us-ascii?Q?KRM9jRFNXRgry4kmh/SRqMQq2FOIEY/Hz3jXUuQ/RnX/EFB0xXhdctxJXs2m?=
 =?us-ascii?Q?VvX7QhTGYda15x+2twPFpkQuUr8ZgjUF/7nFRDmVEKdbVTHdhRVIZM+OhZ81?=
 =?us-ascii?Q?uvNVkLO9B/N0RbKy56dxRVRvCBHHEcIxxycKn06PWkcsMmiwGiODr69BzkOZ?=
 =?us-ascii?Q?7V7PvLdt628dEE0f5NhTnogQiK3Gm7Z8PpUO26ZXX5FPUOVffdi3mVtRv/iP?=
 =?us-ascii?Q?VOSD3/AflJh5CxR+9abCycjf2YRQp1EghuoaQ3NwsEbSoksrNOvLxQjxkPcW?=
 =?us-ascii?Q?tBtjsfXjGC3XNiQcn+7zVq9EieTMmzScWc724t6i3RefzEBqJJiG+0nt2pDa?=
 =?us-ascii?Q?GUfmlr3zmmo44Hn/hc8w+bvqQTTQkdcZLMkRq3JSgUqQcxH8TDEWu2U5KTaM?=
 =?us-ascii?Q?L3BtqO6WDxosdpf5Cm+j+hPR1l7ibsM21XLRPuKcPqtZpB7coed5/xI2j+cj?=
 =?us-ascii?Q?t9yHkszIztO6q0Q27Ep0/cH5mOxtQAmNfZz9R/teeVA+7ShXveX7+HhmpAPH?=
 =?us-ascii?Q?pWmwJATtufZ5f/y9J/mgm/HbxPP9/DuP4QJyF1SCPA+UJIduYzZTcyEaZIBn?=
 =?us-ascii?Q?az5WeIYnR/elKHoHOZNoIWm7dSMOXcpZ/FqeB5M6YLJHWu77b9BQ8MhYc9eH?=
 =?us-ascii?Q?+0PvTUjE5aJXEGfBZYjEbxkNq857q3q/DeozuaJG16P96nsuRzzgEU49r9Ps?=
 =?us-ascii?Q?n9r4g6i5y3oTxxYpYVXXwPSHkwc9FXG7zPwyjtT145SM/6MCCCziEEo5SThM?=
 =?us-ascii?Q?aMZQ2eyXpo6K1+B/Mrn2jmdL01ndipl7oZY/QLbqrV4qK+epFHp8knjdtDUC?=
 =?us-ascii?Q?//c8XUFv+0YpIioykyoI2GMq9d0s4nDy2v0lbKcDhtIf?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 227a10c5-c543-4390-f34f-08dde63ba110
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2025 14:03:13.9180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9avikwwe5inq56XsTS1xMrHczASxPiQdtfE6gguLsdDGP5RAmxVmO7kZP/KFb/fAMvApH7E07oEPHNZF9g1kKw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6608
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 28, 2025 at 08:06:48AM +0000, Lee Shawn C wrote:
> While performing HDMI compliance testing, test equipment may request
> different bpc output for signal measurement. However, display driver
> typically determines the maximum available bpc based on HW bandwidth.
> This change leverages the existing debugfs (intel_force_link_bpp)
> to manage HDMI bpc, and making it easier to pass HDMI CTS.
> 
> v2: Using exist variable max_requested_bpc.
> v3: Extend intel_force_link_bpp to support HDMI as suggested by Imre.
> v4: Update commit message suggested by Jani.
> 
> Cc: Shankar Uma <uma.shankar@intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Vidya Srinivas <vidya.srinivas@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c      | 5 +----
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 4 ++++
>  drivers/gpu/drm/i915/display/intel_link_bw.c | 6 +-----
>  3 files changed, 6 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 108ebd97f9e4..b31fb1e4bc1a 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -136,11 +136,8 @@ static int g4x_hdmi_compute_config(struct intel_encoder *encoder,
>  	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  
> -	if (HAS_PCH_SPLIT(display)) {
> +	if (HAS_PCH_SPLIT(display))
>  		crtc_state->has_pch_encoder = true;
> -		if (!intel_fdi_compute_pipe_bpp(crtc_state))

g4x_hdmi.c doesn't need to included intel_fdi.h after this change. With
that include removed, the patch looks ok to me:

Reviewed-by: Imre Deak <imre.deak@intel.com>

> -			return -EINVAL;
> -	}
>  
>  	if (display->platform.g4x)
>  		crtc_state->has_hdmi_sink = g4x_compute_has_hdmi_sink(state, crtc);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index cbee628eb26b..027e8ed0cea8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -55,6 +55,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_fdi.h"
>  #include "intel_gmbus.h"
>  #include "intel_hdcp.h"
>  #include "intel_hdcp_regs.h"
> @@ -2345,6 +2346,9 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLCLK)
>  		pipe_config->pixel_multiplier = 2;
>  
> +	if (!intel_fdi_compute_pipe_bpp(pipe_config))
> +		return -EINVAL;
> +
>  	pipe_config->has_audio =
>  		intel_hdmi_has_audio(encoder, pipe_config, conn_state) &&
>  		intel_audio_compute_config(encoder, pipe_config, conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_link_bw.c b/drivers/gpu/drm/i915/display/intel_link_bw.c
> index 3caef7f9c7c4..d194a366ff10 100644
> --- a/drivers/gpu/drm/i915/display/intel_link_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_link_bw.c
> @@ -449,6 +449,7 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
>  	switch (connector->base.connector_type) {
>  	case DRM_MODE_CONNECTOR_DisplayPort:
>  	case DRM_MODE_CONNECTOR_eDP:
> +	case DRM_MODE_CONNECTOR_HDMIA:
>  		break;
>  	case DRM_MODE_CONNECTOR_VGA:
>  	case DRM_MODE_CONNECTOR_SVIDEO:
> @@ -457,11 +458,6 @@ void intel_link_bw_connector_debugfs_add(struct intel_connector *connector)
>  		if (HAS_FDI(display))
>  			break;
>  
> -		return;
> -	case DRM_MODE_CONNECTOR_HDMIA:
> -		if (HAS_FDI(display) && !HAS_DDI(display))
> -			break;
> -
>  		return;
>  	default:
>  		return;
> -- 
> 2.34.1
> 
