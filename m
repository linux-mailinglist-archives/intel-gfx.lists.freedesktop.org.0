Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 116FB90B861
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2024 19:43:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74D5610E1B7;
	Mon, 17 Jun 2024 17:42:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tgwps3Nk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D86F10E1B7;
 Mon, 17 Jun 2024 17:42:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718646178; x=1750182178;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=GIOWHWmfJWZlZLILqOaVDtgt/B+iO6jL1vI65Crrz6I=;
 b=Tgwps3NkRRgi/mQcTZvo2bolkiCoY7WPdp5axPKHqknvzkk1XNXLhlsV
 hy4jrn7c7B1X96wrf2XmMhPS179ZjFkLePByP1I/zGEjoSXAS30aFb1pS
 3SPjQ+d+4ub2ByH5+S+akwxEP+dQ98mWPAHwzYMqAaA+Vx62AnM3K7w+T
 wIjFgoztcYJbSBG0xSdfHiM2gHe9X5zwVzJJc/GHCLwNksWw4p/LPOVJw
 RH2tefb6FRc4jnH42C2XvLni9ZMVQJJmDFFUSkS8u68+u4oa/iFSqCU7m
 H2fvVm/UfHcUxNXJs6nrSIX2CACWw58Qr/igPpoCkEQkEJZYc50zFUv9s g==;
X-CSE-ConnectionGUID: QnZCkGycRj2/LCMt1KcIYg==
X-CSE-MsgGUID: wIbPPC09QRWFjIy3ReHeeg==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15611248"
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="15611248"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 10:42:15 -0700
X-CSE-ConnectionGUID: zJuqm2WzRYO3eboJMVH8Yw==
X-CSE-MsgGUID: Fz0FJoMUSMqvbsrlOLqGTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,245,1712646000"; d="scan'208";a="41953528"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jun 2024 10:42:15 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 17 Jun 2024 10:42:14 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 17 Jun 2024 10:42:14 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 17 Jun 2024 10:42:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BecLgK4c1yLI1cik/qk74G0tRROsU1+fmZ4UN/EYEjJ1pytMryLcogGpzg8WZ0aaa7dCRZsoyInDclCoFbL7bqfNq0nKwBfCsZZ36qhz8a8qY88JhiPFe6FLVAuC1zhqqIf2o0e9z2I94NjZWaSs9E2glGi/vjUMPCC+OvRohkcPBvf+NTTNMpiRI2cUXU29+bCnloPyWuG/E3hmVGLZxxE2mbsp7L6vyjcG9rHUX0ZGAIsvnPmXva5sWbXWQpyiaxECADA8HRp2uQoC1Ug6wCa2RXZR3nLT4eNk9EfuMPEOSKanTJiQgYIzcdGxgt3XhoXJhGrTe7FW0VpGbKbYrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qnnrmUUfi8z6yX5AJ+AwIhh+DBtLoiuc1VNovTqSQU0=;
 b=jzLwSoQLJACGbUtfCPZRn00g5IEpDRnPqCNMf5wFS7LhwGM0auxi9vxsqlkVBviuS8ijDQqtpHoeMAblb+GHtfV7QHqPx1l+aO5EQlFZialrr7RbCiFb6Ub70KbSXeUklgAtB9Ly1aBXmLHFDx4Shx+KT8z+9LofORG5zKjohWjetcINjzGsVBaZmP73OzWhkHwZDf+ZTm///m1bG0AAZfh8CRuZFgX+SGiqb0r1k8Keomwa1SoEtuNJvqfXsfYYVZc7mKtIAByw/X7v26dOvxOqoyxFlEYT6v3votWdHea+3ZGe0uFGC7yxxyPzTBnbsEY/xbnjn6o8YQuV06KdCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 IA1PR11MB7854.namprd11.prod.outlook.com (2603:10b6:208:3f6::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7677.30; Mon, 17 Jun 2024 17:42:07 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7677.030; Mon, 17 Jun 2024
 17:42:07 +0000
Date: Mon, 17 Jun 2024 13:42:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Imre Deak <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/3] drm/i915: Pass intel_display to the encoder
 suspend/shutdown helpers
Message-ID: <ZnB1a6T_6g2diNma@intel.com>
References: <20240617170356.4000251-1-imre.deak@intel.com>
 <20240617170356.4000251-2-imre.deak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240617170356.4000251-2-imre.deak@intel.com>
X-ClientProxiedBy: SJ0PR03CA0058.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::33) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|IA1PR11MB7854:EE_
X-MS-Office365-Filtering-Correlation-Id: 30694b87-3625-49cf-142e-08dc8ef4ce7d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|376011|1800799021|366013;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?oAKCH60Vlotait19tXcts5ZZMTicGNCEwYnmSCBqSiU0cR7C9nqwnrDJ1R9H?=
 =?us-ascii?Q?LATvWHboTQ6Z/BZPzHt8RkKJIpRS8c20M5A3l0rK9mHvnBX0dL+MNGL4VRDs?=
 =?us-ascii?Q?ldqod4J6RYclJrvFvLN6PufjdEcvyZbsXV4U+WxBsS0QUfEqVBwTYrPSua4S?=
 =?us-ascii?Q?t1+E26dHkGEkahobg7w7dzg+8vT939dc8ee8mMT4KF2sODn15Idntl/r/7i0?=
 =?us-ascii?Q?89dO1KlPvJLzlRFzBSiyz7d0r2yh0++G7v1SyFhRtqSPP7ACZl71VbuV948p?=
 =?us-ascii?Q?yzncKXOVMZhtIGvOxL28WSfaeW9BQo4RJIrAF2Vpto0wGgSygL2iyketXAcP?=
 =?us-ascii?Q?kfP5iqaHIVdCXugQuIljJuLi4XheWrXp8NAqD4AwU+L44oZRkHppG9Ek1PZy?=
 =?us-ascii?Q?XsVhpr6FGUQX/Ht8wqq3cGdqhPaU7hCIuqqLUr0PSmTL4xOv+bouOoCroBne?=
 =?us-ascii?Q?VGr5vctJgLmO5EQOcu7ty8eyVaOgp3rSxonD2bNCQSroc4SPK+043k9LBJnq?=
 =?us-ascii?Q?z0HIyyWo5clwfQ16ck+Band0sI/na84tHqtJvZnXtB4dLeH/UuoqeBXKywxe?=
 =?us-ascii?Q?+T13dIvDUKNkS3cpQw2gkHcOhzANaW4NfUMdg19ntNZxkFe2Onl6MrnFYg42?=
 =?us-ascii?Q?UZwGUId9EPA9gcMDq1Apkslq6nu0W6zEL+r0XkW0aL+xh2WKVM/12l0XhgIs?=
 =?us-ascii?Q?W+UM6w0hnsIcpswUj4e1fbFKxFFkR7mpYqQ/QRpohxHtCH91IeP3SIjmfnsA?=
 =?us-ascii?Q?r/ABp+4Ik3kmfpRywcmMCUb/HtrQgzSKc8oJz/pSfG3cHcDau/TsoVWXi2NH?=
 =?us-ascii?Q?6OI3Vb9cJEBO/d1jXjnux4ZqsZ0rQlGPKtsWt5BPlnRV5uRK23qLVxhlSkdb?=
 =?us-ascii?Q?hS4iHvZsVShU4vjOOmrSe1SsJTQXth4Cirzlo4X/Lm4wVuqumXSAkFxA4Q2l?=
 =?us-ascii?Q?MIZDEcLraxdIPvF+/ZFzdp36IanvEXfEjD39nX8KZsY4qsAxBd/EF2Sf1mvx?=
 =?us-ascii?Q?7tmEAC93xmx0IAirD1YZgLZuUhzUMEeHkWqgRRFQzk0zQViMJwVQuXbAKH2H?=
 =?us-ascii?Q?N2FZoio6XzHmRUQ1X58kVWF7y1dbXeb7IZOdA/lySBqHU2EKz1Ktl9hC9u6r?=
 =?us-ascii?Q?QgcEi/lV6dRH9KS4+S2XihIqGg4ILtnb8I7N3PpQKgG+gVF4v988dCW+znle?=
 =?us-ascii?Q?mb2dcsBsbhMP1S89VWezUrsu+z3IwZrFTOOlno/rk8qVTNzwcdvY72pFKmWo?=
 =?us-ascii?Q?JA0r5cTMoDKdvGe9nWEjmC/3hQwu/8faQo8a2jV1Buejq2IeYuB9WJRg0YvZ?=
 =?us-ascii?Q?NzzKw8cr/VBEuAXUxSYJUsjf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(376011)(1800799021)(366013); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jS8/uxvD7DdiH0gxbhFoOUtCjTabDHkuzXAuwYzAwA4bCdVMNivImOmsTPb+?=
 =?us-ascii?Q?HSkYmnmRkSQc0CbLI4mnWuPd0ROxiDOfLl/wGmANNLe4MztWz4I1G4LD16Rk?=
 =?us-ascii?Q?WJoKEkajh5xWmYr0cVa53X5GRJ6L0Ib/rhkrclPcxgGMS68GIrVdtReAuHn7?=
 =?us-ascii?Q?PPJV57NOtzBSYFFjkXZTWTGJagXy55qbHUD53s5rSXJr3Cy1b0PO57Sa3/vJ?=
 =?us-ascii?Q?iAKd/1/ClcOMGGUjpjhBkvYEjne7eMtrRC/dkWW1W/9tY1lBalsOixPRprQH?=
 =?us-ascii?Q?+W/O2F9FVVdSLlzcH1g//0KPQFMnFKLQdiC0ZLI9wV5xg3z5ZsxWo+nhQ5wC?=
 =?us-ascii?Q?EnctwrttKiERRRwgK7S41pqrzscUk5HAIJWvI6qZ1mT7wmhyYgbG+evpGvpm?=
 =?us-ascii?Q?MpT8e4MlznhC0bq9hFDN5SkbahdBSm8PklolUo4CNlH7B0Wr840cCRYuyj09?=
 =?us-ascii?Q?MXPOMau2EnrwII0v/8FDTmZClrDjlx0PUX+BC8K25OMDFtk/U9B1yY1YdvZj?=
 =?us-ascii?Q?b4Le7FYzj9xRKBDlNBlzidWrknf/9lx9wAzbZspIlRrwXWiLhrE46/UhN8SS?=
 =?us-ascii?Q?1INck3wd2RhW2QM2+x6312g1CetEH9mDoPCwk0yze9iHBmJrs1Q94CiXi+hR?=
 =?us-ascii?Q?/aWKI/HjgYDZf8bHqREMqnNwdnfS6qeZPevkM3KbSPtT4x0L/bUut7wiwAEb?=
 =?us-ascii?Q?DkCdBFYUV03dYYERg4KiZLa1iXSK4zQeRY3aImmL4Wa0GbtqLOeYl0D7m2Fn?=
 =?us-ascii?Q?nkc+O9Ejt69XluAKmNyoG+dNpWx2tC+JjczKqkTEU6fA2P3pVfRlcveqCYp1?=
 =?us-ascii?Q?rZynC243M3swPXuHa796FcLVp4UoeCW6Xs+9BWdQUsVddXHY2InRJziK0y2y?=
 =?us-ascii?Q?cO3aui0KzQ9A8lb8yUYtillzP3Lpivj9jZuXNmYRLvrz7E+gE3ZcQwQzU4ZX?=
 =?us-ascii?Q?8ITY7/kMvVzzrTrzirqpXhQYnameo688N3GzkTa7lXVyDQ6ZDy8n4iyIvStU?=
 =?us-ascii?Q?QOSoljiPgV2UdpYigzw3wqrrrwxzUac4Wsy7Uc8W3Bs59klhkPmb3qZKpy6U?=
 =?us-ascii?Q?ZWYHuGcH7UftjyitICBbwOAHBj7RfDhhJznrWc1EWJcmLsxcZXaNDInmKZU7?=
 =?us-ascii?Q?mRD2vlB2hLgmtcPYiDKFgH623B9Igacr24szN4I1DypHnkjsdxlMztJbniQI?=
 =?us-ascii?Q?BCsEn7057wGeODDr6Y+K2EOREN0e4rKW2QoXUbB36nhP/IinTAlIGNl7p9Rd?=
 =?us-ascii?Q?Zmeby9bUNrXA3aI5l+77rsKbrJOPkSNbRw1Cyr74pjWcNdA2ROiVPQfgEQBq?=
 =?us-ascii?Q?0q+k4Q6f4mRQoGS26himn3H0uPb0nPDl56o8UEOKZk/3n3KwsuP2nvul2Gi3?=
 =?us-ascii?Q?X0cF3gguiZ/A5CHuqv3dWA7QBtJRyDoo0ZrE1Un5qssGs5QIGn5UpugNBBV2?=
 =?us-ascii?Q?BFXfP7aphB3R/GOvvvTIPeTUHYQBJcKsBL60WfB2ZBRu4sGRkghkHOqtugat?=
 =?us-ascii?Q?YDMs5F/O8lRJPsIO/cEsLfBUlVUaqAva9dxhlzfPBTUjtvKL5TiswJXCO684?=
 =?us-ascii?Q?eVDtrCPU1thTMoOiEH3mIVAKvikdxTdQGArGYcaG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 30694b87-3625-49cf-142e-08dc8ef4ce7d
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jun 2024 17:42:06.9421 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WfoXaEPZAzSnpBIfkFO6jEPPuun/EkY6P94Vlmh51F3L61LqqGV74urvYw92BWLVV8quevauxsSCxd8CpvnEgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7854
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

On Mon, Jun 17, 2024 at 08:03:55PM +0300, Imre Deak wrote:
> Pass intel_display to the encoder suspend/shutdown helpers instead of
> drm_i915_private for better isolation. This assumes that HAS_DISPLAY()
> will also take an intel_display parameter in the future (or that the
> HAS_DISPLAY() check will be moved to a caller of these functions).

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_encoder.c | 22 +++++++++++---------
>  drivers/gpu/drm/i915/display/intel_encoder.h |  7 +++----
>  drivers/gpu/drm/i915/i915_driver.c           |  6 +++---
>  3 files changed, 18 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> index 8a1dccb893a37..8e73d18a522d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> @@ -38,8 +38,9 @@ void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int dela
>  			 &encoder->link_check_work, msecs_to_jiffies(delay_ms));
>  }
>  
> -void intel_encoder_suspend_all(struct drm_i915_private *i915)
> +void intel_encoder_suspend_all(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -49,19 +50,20 @@ void intel_encoder_suspend_all(struct drm_i915_private *i915)
>  	 * TODO: check and remove holding the modeset locks if none of
>  	 * the encoders depends on this.
>  	 */
> -	drm_modeset_lock_all(&i915->drm);
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	drm_modeset_lock_all(display->drm);
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->suspend)
>  			encoder->suspend(encoder);
> -	drm_modeset_unlock_all(&i915->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->suspend_complete)
>  			encoder->suspend_complete(encoder);
>  }
>  
> -void intel_encoder_shutdown_all(struct drm_i915_private *i915)
> +void intel_encoder_shutdown_all(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 = to_i915(display->drm);
>  	struct intel_encoder *encoder;
>  
>  	if (!HAS_DISPLAY(i915))
> @@ -71,13 +73,13 @@ void intel_encoder_shutdown_all(struct drm_i915_private *i915)
>  	 * TODO: check and remove holding the modeset locks if none of
>  	 * the encoders depends on this.
>  	 */
> -	drm_modeset_lock_all(&i915->drm);
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	drm_modeset_lock_all(display->drm);
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->shutdown)
>  			encoder->shutdown(encoder);
> -	drm_modeset_unlock_all(&i915->drm);
> +	drm_modeset_unlock_all(display->drm);
>  
> -	for_each_intel_encoder(&i915->drm, encoder)
> +	for_each_intel_encoder(display->drm, encoder)
>  		if (encoder->shutdown_complete)
>  			encoder->shutdown_complete(encoder);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> index e6cd74576f78e..3fa5589f0b1ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> @@ -6,8 +6,7 @@
>  #ifndef __INTEL_ENCODER_H__
>  #define __INTEL_ENCODER_H__
>  
> -struct drm_i915_private;
> -
> +struct intel_display;
>  struct intel_encoder;
>  
>  void intel_encoder_link_check_init(struct intel_encoder *encoder,
> @@ -15,7 +14,7 @@ void intel_encoder_link_check_init(struct intel_encoder *encoder,
>  void intel_encoder_link_check_queue_work(struct intel_encoder *encoder, int delay_ms);
>  void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
>  
> -void intel_encoder_suspend_all(struct drm_i915_private *i915);
> -void intel_encoder_shutdown_all(struct drm_i915_private *i915);
> +void intel_encoder_suspend_all(struct intel_display *display);
> +void intel_encoder_shutdown_all(struct intel_display *display);
>  
>  #endif /* __INTEL_ENCODER_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index e9e38ed246f66..fb8e9c2fcea53 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -956,8 +956,8 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	if (HAS_DISPLAY(i915))
>  		intel_display_driver_suspend_access(i915);
>  
> -	intel_encoder_suspend_all(i915);
> -	intel_encoder_shutdown_all(i915);
> +	intel_encoder_suspend_all(&i915->display);
> +	intel_encoder_shutdown_all(&i915->display);
>  
>  	intel_dmc_suspend(i915);
>  
> @@ -1040,7 +1040,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	if (HAS_DISPLAY(dev_priv))
>  		intel_display_driver_suspend_access(dev_priv);
>  
> -	intel_encoder_suspend_all(dev_priv);
> +	intel_encoder_suspend_all(&dev_priv->display);
>  
>  	/* Must be called before GGTT is suspended. */
>  	intel_dpt_suspend(dev_priv);
> -- 
> 2.43.3
> 
