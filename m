Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3009E897A4E
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 23:01:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7626A112F01;
	Wed,  3 Apr 2024 21:01:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l/0Ww/mg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3823112F00;
 Wed,  3 Apr 2024 21:01:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712178104; x=1743714104;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Sz+zv19JM9CFnQ9Lbg8UWnuCoS/p6Js0gET8W7enSxE=;
 b=l/0Ww/mgXGd612wJ17raF3lYcf/vdmzYZQKsEke71zILp64diuGBN1TP
 7r0KmkuPrZghSqbMkZ+bfRt3lI12DtBYxVCJNMVt2TMAIGFAlzimbq3qt
 zYjO8RXe6nORuhPQI3l8raA9jaqftLPRL9W5hu2Z7JLeUBnQyqueFYwr0
 r4esR8nA9mA4dkV1xLavyL+gZbMiE82dOry9vznR8YduFPSxunRY10dJv
 fh/lQpJwxw6ceRd7aPDKgbgi7z3CfKR7ZEkRv/tvyBtmkr36XBr0t7gfO
 Qe/hnlnXx0PtRoEh/Zez9YL6l/Bb3Stm52f1B1ucDS37kariBGquSUDcN Q==;
X-CSE-ConnectionGUID: gU2oO1B/RFu4YPfNP8pH7g==
X-CSE-MsgGUID: aXJo+YiLQ2OpaXh05fFMjg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7626195"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; 
   d="scan'208";a="7626195"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 14:01:13 -0700
X-CSE-ConnectionGUID: x/ls60fjR76y4yUAz/+jyA==
X-CSE-MsgGUID: IntVwsN4ToqacXyregWTHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="23210516"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 14:01:14 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 14:00:36 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 14:00:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 14:00:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 14:00:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HF4eEqdMFuekYEAOjPJArlF8puwl6OCz85KhQNPmGWRr+HdYLvDGzmShXWPoHYa2ewyroR6sa20lDAqnxJEqlTh+b++IsQgsS4L7PuMiI7qofP/2/QTVpHU0tZ/iaOcXOhz/Xf/sJVcnxex89KrdZ65TXoG7EGouJAK8S1Fes+c4Ef8POdrn184+HOJfQR8ribxK+i5XP9xQlj93civFANzGVExvN8+Ir7nn2354ypQjA2VjJebKPle06fopYXW8seF2pAhO/G1+iE0wZehyirhsEK2noKw60G85kUslz4uvNA+bJxCVeYIvuqRGle2uU7SqYTAjpbpR/oQ4BOfnfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RNiDazgt6FfcyCF4zWHb8tfdIn/I2RPC4sMQAZYBRAQ=;
 b=MmVMnz2r8KD4Os4NUdETPMSH6hCwNSI7wbd0zQhLajMoteS/ujIwdap+mdEx52HZ/o7TxDdaijCoAYmkkwcxKF0je6KEk726mlIVDCpB5sQUbhAeiTmzd83S96fvZroBFCnCctjRyE9IOtVTI1uLdYN9pEZXh3XN9naIFMQh+e0KkHcVR5Je0INrzMUcTWXvmbf4HNks+KIUik3A+pfUhHJKb9XYdhPds2a/vu1EqDiH2HK/ZI1VKVVeUEn12Wc1HxSWlMC8ns5Lxf1De8fA4/EgFsWX+1zAy1Axyqd0RL1a5PuC5gXGdcbtAK2TfzbK+PODFvUJA08QOZjltGIG1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 21:00:25 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 21:00:25 +0000
Date: Wed, 3 Apr 2024 14:00:22 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Anusha Srivatsa
 <anusha.srivatsa@intel.com>
Subject: Re: [PATCH v2 14/25] drm/i915/xe2hpd: Add missing chicken bit
 register programming
Message-ID: <20240403210022.GP6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-15-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-15-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BY5PR13CA0024.namprd13.prod.outlook.com
 (2603:10b6:a03:180::37) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYYPR11MB8430:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lz9Ms55o7uSfvw56nXPUEHapJFUSLfejIMFCQmi30/HM2QFI0qLOhJ3BWZe7kfKALlFC8RzmJ4j/h/HAjTXwcFHmfrLQBIKmAttSDzpcJfexppjPu3jF3GoaVOc/ykAtMYJcCaK8VmBfcNLg4ir6CnV0M4f/x+FbDwTHUYwAX7xymVJXgq9QJO4fa3K/I7nm+b5Q4XzIIuTryNL2nRXm5UeYhZaJItPj7TxJvUtyy2LWrgVXGdjUJpcvkl5qDIdySCDDtAUkWLp8J224DXIfiG0l7fswSWvs17gp4f/kqRcUXcpKIA6Y0fl4jXMiIN7OmTe/xy9DxtLK+ADABb+npQBQNqTStCUSOPJeY8Cc4xeWlQQlhGaEbnEFezNBVnfeE1pw0PBTnj6yO09whlCZNU/uzPx4A2fTVDGTCtd2+Dhs0GguRCbRNVmkZL8c5UM8qzcH7iCM6U4LRkgXijQtk09y8dorqrzJ/a54hUsVORm++z+K+Myuvv1L2dXIRQe/nRpLvE8UPpJisS4Wx6IF4Mbv4/NEEMbA3pLStHIcQhcFaH1eAg9I45fwftaLhGO/oMdujYUjhAE2zg41W3dNqFDBdKdU5RRF8PTlL+Te8yBNYYiDX0u8zYIWmpJD0GWJF+M3LrvV5IYxo61C3jjcKpObMLUtNdMQ+VUsCtO+IZM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1yzhVv0JGfYg7q23ZNslVoMXe2s+ta/m5cv3HB6tkr/5rBfIMs4L5+swYroW?=
 =?us-ascii?Q?N+i+05WXA2JdU24D9c7bEcbOMG2KTJgGDJ0dKmsKTquG52aB4zNGIVuKwDdJ?=
 =?us-ascii?Q?4Br3++a0HrfUuLei9jppfPX9vpkiZwuPR++6EcFEQaoF0LG35lXv8S16T6j9?=
 =?us-ascii?Q?2FFmM9NyTQaxFj8t62I8IKK5xEIS/Au7T1NlX78RngvgPF08jdCuPmuTimfx?=
 =?us-ascii?Q?GKFSk1JvXmoGGKjBRmF2Xwwt5EoTl2OjFZvXxNmd2Z01Zz0z24+smiFGtcIx?=
 =?us-ascii?Q?g/FS1t8TfcqclRHMVQJhYraW/UYllKSUYyM1MyxyglEISmxj3dVwGneADED1?=
 =?us-ascii?Q?AXBDG9kRrjghgwdPgDeuu6ZgJRyugxviWjCdqkNT1Ryg82yyDS64YTr9iRv3?=
 =?us-ascii?Q?LqNUCo2AqganrMR9E5qz6gXHpBjjsM7l+QvJWs+iZidbKW8Ax/5r4/Ls4FVd?=
 =?us-ascii?Q?rn1FJtc34XtWDxqktsqyLOw8qec36YxdHAyL0cQvJWmw3G0uSdZVF4PfewM/?=
 =?us-ascii?Q?5Zy5WXPpd97+AQXcuCE0QbB/gyTzXgkdzvdhaXMuGL60rJm4YM2ANR06IQbD?=
 =?us-ascii?Q?xJcvum88iwfg2Z3WmYi4scxi/3H+sJ97YBR50qRp31vS9jnsIMZnpAiOh32m?=
 =?us-ascii?Q?wYxs+hKQA9942bXHy6id0dT0BLek5pIogYAtQKmz//+6wqxi2hs5SUKMxyrP?=
 =?us-ascii?Q?g8cXP3/saeDfHQBaNxatu743r70V2XRbOpk/t1sQsYwIaYie5np9sGT/6n1f?=
 =?us-ascii?Q?AqaAsUQK8HXz14K/aVkhRvMd+fJeWJPaYvx1GCgVs+j/cRS29WqzNZ4zZQZz?=
 =?us-ascii?Q?lHh7cRoCXiFwMnoqRbzrKMU2fcK+DltWAwTX5QeI3mcmqyR4fmptDyBakJd9?=
 =?us-ascii?Q?iQmLt6bfSoMlZ+kK9qz9k32x588S8fJUKHzDmA0pu7S68Oh5bu+vwu/FjEU7?=
 =?us-ascii?Q?X7DwOakDR0MZD91832Zc6kDkC3xR4W1aekqLZWwHTj32SlXx9XbJE0ljHzub?=
 =?us-ascii?Q?OaINlUjoqQKK6nrQ2+gOgBWTwdZLRHGvZ6R2mP1MMMfCa8rxc9Fi0tyKtKSQ?=
 =?us-ascii?Q?Bicp01eevSF+5XKMNMOh02zJdU2ZDeUlpRS3KofPiPgYyoI4x94vIQiB1GP5?=
 =?us-ascii?Q?qlPQDc/prBwwiiy9C5chrrXR51rUXwhqaqPcy/J7OzcEIYcooKvoEa6T2yfa?=
 =?us-ascii?Q?BBF5Gae0Fs2F8QJF+DaoTB0EgYpLBEwWcbAn75y5eNNf2BBOqayGuRbSDQD2?=
 =?us-ascii?Q?/6XJ2sC6oq8aj/4bvYeMW5Sy6TOvApC1eOMr29E/BR2Z1+6kEc8QIFNdiuYO?=
 =?us-ascii?Q?0XAVO9CPNHuR5lwXZgdIBoIPwSqr6sliWD6Uw4bGjbX669O+3KZHTcvvjDr1?=
 =?us-ascii?Q?Bdqx90e9rgN+iP96h0xUeEXE2fsiZnVaLqX+kzPfA0OSxelAmGOim/89EE04?=
 =?us-ascii?Q?qWhxkq0+JBvY9Il5LE0OO8+PECtEzJ45ztljYpJjZDcWQr7+xrmo3BsL/uD/?=
 =?us-ascii?Q?3fnMfKya0oQQ1cq3TMbaGqOG3QJgF1wpy2i7omh54/jnQeAF1am+ea4h/pAM?=
 =?us-ascii?Q?Y/z2g31xU4dfWO9eUCz/YMnSPfF6Oy2xCqSr/03bxEb6kuLrMqr1xpLGnBlT?=
 =?us-ascii?Q?Dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 82752040-e8f1-4620-4128-08dc542115c0
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 21:00:25.6851 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WChPUbcaI+Y0EQHngc9VVMfjxqgIiiKmkU5D0GdffkhuomvlV4JKW8RUHHejefoo4DrtR3MKQlMmA95FtLDBJ0DYlJGJN1Uf5yCMpgPF/EQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYYPR11MB8430
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

On Wed, Apr 03, 2024 at 04:52:42PM +0530, Balasubramani Vivekanandan wrote:
> From: Anusha Srivatsa <anusha.srivatsa@intel.com>
> 
> Add step 9 from initialize display sequence.
> 
> Bpsec: 49189
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

I think the title here is misleading since "missing" makes it sound like
we overlooked something previously, whereas in reality this is just a
new required step on Xe2_HPD.  A title like "Configure CHICKEN_MISC_2
before enabling planes" would probably be more accurate.

With updated wording,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 ++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
>  2 files changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 6fd4fa52253a..bf9685acf75a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1694,6 +1694,10 @@ static void icl_display_core_init(struct drm_i915_private *dev_priv,
>  	if (IS_DG2(dev_priv))
>  		intel_snps_phy_wait_for_calibration(dev_priv);
>  
> +	/* 9. XE2_HPD: Program CHICKEN_MISC_2 before any cursor or planes are enabled */
> +	if (DISPLAY_VER_FULL(dev_priv) == IP_VER(14, 1))
> +		intel_de_rmw(dev_priv, CHICKEN_MISC_2, BMG_DARB_HALF_BLK_END_BURST, 1);
> +
>  	if (resume)
>  		intel_dmc_load_program(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 58f3e4bfe254..875d76fb8cd0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4548,6 +4548,7 @@
>  
>  #define CHICKEN_MISC_2		_MMIO(0x42084)
>  #define   CHICKEN_MISC_DISABLE_DPT	REG_BIT(30) /* adl,dg2 */
> +#define   BMG_DARB_HALF_BLK_END_BURST	REG_BIT(27)
>  #define   KBL_ARB_FILL_SPARE_14		REG_BIT(14)
>  #define   KBL_ARB_FILL_SPARE_13		REG_BIT(13)
>  #define   GLK_CL2_PWR_DOWN		REG_BIT(12)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
