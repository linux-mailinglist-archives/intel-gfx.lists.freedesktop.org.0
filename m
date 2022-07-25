Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75A4758041E
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jul 2022 20:38:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8726DA95CA;
	Mon, 25 Jul 2022 18:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14A6AA95CA
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jul 2022 18:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658774321; x=1690310321;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kZ8rzHB7vOazBT0tG1MQbYBuJ4YuXvHybpMPnyv6UD8=;
 b=XlZKe9tDbtXWrFxVx6EGGo6RkgEpNjRDtZjCDgixtgR4t2PDa2i1gLT8
 M/oLr/YqIgTuf4y7hWONto1CDX6X5ZvBpB/7D61ECSqJiUWVIwiUxGSDe
 nK2LLiPsDun1Jka+CMqntzVqDAqbkURmC8RMbDj38s7s7gDvNkAGUf1ov
 SDOjY4JseTfjMpLM4iFnSADKEyA5+eVYiuehONLNPR6eI3HCeIVaC8R1u
 la2aMXUMjghBJT9I9lN45efWtLJDoToJFM8o3b1hK5+ILqkYFiOL5XauT
 Brf8ZSrfI+/vfAOeWUSF4szzrH0OX6msmCWYjcQUsa/otZl1l8de0bug+ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10419"; a="349470120"
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="349470120"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jul 2022 11:38:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,193,1654585200"; d="scan'208";a="689155763"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Jul 2022 11:38:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 25 Jul 2022 11:38:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 25 Jul 2022 11:38:39 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Mon, 25 Jul 2022 11:38:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dWwrsN71ZhUDFfve4OGgN60mFruNJcEoT/qLDiazZx9un27eVSNZJTuyMvjoTtp+kpdtAEo+0Q99oM49XeIWHnhh1xC6Vz++V8u3O0roQp28g03e2U2JDIl5d4nk1646i18VPN6PR+2Qzwwx8Z7VAV2Z5wSSNqnSjnvbx4y9NByQGaQ+OZlGox+3v3n4KVvOWVoLit6mNv+2DIIp99OHTOfRRyv/4/OGQh0QKsioS4rPcfbxxF0V5HlDbBLAzqzFsr/acSWd6+GbOPb9te7UA9IM89E8c11akV5XS05eoXobh+S7Dy1rbwdZSVJiW1lmGMrUvpbZdXEstW01Z0m47Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JTQJq7px3wnkNeeyw4DLCY+3s6rk4/Y1LJpJi0eEU54=;
 b=gRfelFW8D41gz7ogCRu8i+QCMYCqCOVhqLmPAc0z65Z5F2H8RsKOxtj6oD4hlj2t2yr1CUGtGr68tuPkRo12XFIIn7oenqYFU/SWLkAve4HkCtgERRMIb8psRkJasMtcB66C6OJnTJw/bfTm6lfoz27kdTdT5ds7iwu828rVZuN2npJU7FITwIx26eJocgcokveKwmKqnH6Oskj5zUeAFRIZBZn8+IQ3Pnd8o9G32cYW6tUQ2r+0ExCwRXUS1N4ruIUS09nQlnzOFN1TBk5fRT61hzGuDBpJiN2ONJ072RabLufZfv/ifn5LzanAy5xIB07zzKE8OueM6q2yuYkv4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 (2603:10b6:910:1e::13) by MW4PR11MB6761.namprd11.prod.outlook.com
 (2603:10b6:303:20d::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.19; Mon, 25 Jul
 2022 18:38:37 +0000
Received: from CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::d5ef:be62:3e97:ba64]) by CY4PR1101MB2166.namprd11.prod.outlook.com
 ([fe80::d5ef:be62:3e97:ba64%11]) with mapi id 15.20.5458.024; Mon, 25 Jul
 2022 18:38:37 +0000
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Ursulin, Tvrtko" <tvrtko.ursulin@intel.com>
Thread-Topic: [PATCH] drm/i915: Pass drm_i915_private struct instead of gt for
 gen11_gu_misc_irq_handler/ack()
Thread-Index: AQHYnVR3bKelK4zoJUSxAHPBm1cpW62PcLBA
Date: Mon, 25 Jul 2022 18:38:37 +0000
Message-ID: <CY4PR1101MB21665FF0EE500E6A0344B41CF8959@CY4PR1101MB2166.namprd11.prod.outlook.com>
References: <20220721225100.693589-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220721225100.693589-1-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: tvrtko.ursulin@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 55443e39-c711-4445-e98a-08da6e6ce34a
x-ms-traffictypediagnostic: MW4PR11MB6761:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mSBMv3r3O1M1s6ktth12m1KX3bzts/Q76j9yD//IzEcPFcSm2uABP4ia1Un/rmuw9Cs4Eb3RNKq3DVigSylKXNMDaG2ZSfMILVmrLHrJp/XU7PM1Bh80QUb3kaRwxzpXARmF0iymQzt/zbTf+JDUwfBu4AgrmnICG1OWaGKsn6iwoJJwC9XH7CzOBYtvr0rKwTxH6fqUpgGjIICZQsOidnMNOxMklWTo2zrpUhPRspdVo+8BwjpDP53rKawV0fd6LOgdKeMyNA1Gi7KX2maP5BBczVBCubJyeRzfRsHSFVPRFN7AwMkdU/qXJsGs0iw7E1/XqN0tba1urcxHEPsY6h3nDxkAhMXXzOsuFxg19RuzHsS8DWgLvap0StZGN/i0btvv9Si3uqaeDuwo38s80brMusSbR3+P1CFTD9EIuW2T3PaycIAZeN7WYBPzBGOztdljh3Er2nCqEyDsiwz0LA8HrXaG9fsRv2CkH2tKxIJpXyzn/KAgnh8Q24MH0jkhiT3fYKFUUcKrT/focnqTWOn701JFzUpDWlqAfrGbhloDHsBKFcicXsWR69Y4i+xEfM8nnRjJxj6ZNyQfGFBAUxaWEl20qpfWoirg5k6fv05d1/+M7fXHyc0MumURasR6GBNTEqc9pN0QP91tiIzY5I7vbsOFbWqYzaST5RVv3+eE+YtpK/gAg7+lS1ivW+HZdrd70tyt/yKfoyvZUKLlZnx+mn/OE0bkm9dRdpLaeRpBRK2oiOMCDh9DaBanaM1TSopmGgY6A+VqezL7+BevPF5FIl25dlld7oCuV//02ugg6pTrZ//CtPrkjWPDM+1+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR1101MB2166.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(396003)(346002)(136003)(39860400002)(86362001)(55016003)(38070700005)(82960400001)(38100700002)(33656002)(52536014)(122000001)(5660300002)(71200400001)(478600001)(8936002)(316002)(64756008)(110136005)(76116006)(66946007)(6636002)(4326008)(107886003)(186003)(66446008)(66476007)(66556008)(9686003)(83380400001)(7696005)(6506007)(2906002)(41300700001)(53546011)(26005)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kuICwUPaHIGscWkfEJy4/s1MSE98voB3vDMr3dSlLSOYdcaDLsgNC3XJtjnY?=
 =?us-ascii?Q?bhIx0E5yOmNpWfnvIOTBjddLpJp/jJp1bjMR3PevA9MBb+Uzm3Nao3/CVqeC?=
 =?us-ascii?Q?wEP2iv+h9XTYJsXvB7PlduABKntUvQAr/pdlMfdTaYs4EFFvXeYxfmawrFTs?=
 =?us-ascii?Q?AARrJBpp0Rw9LURjkC/Cb+tFZI5fYFMVK50DdkF8RCFIbyLCPsxsEDO6XW1Q?=
 =?us-ascii?Q?VD9q1ZpVbv4l0ghGaLhF9U2ekbt13fxhhivdyCAyGhPS7LPlE0/JvcXoLhSp?=
 =?us-ascii?Q?U3+dd+JCSI9MTp1pLr5SE1fVit8P+kHmOIrUmptwf9PBYRenys3ss2hSjlVe?=
 =?us-ascii?Q?Nmof3D3PDDIf6ux+2smtw/4XtBRCteTR7HDIqQF1evu4SMrVXLvFVivzFolP?=
 =?us-ascii?Q?l7uTLqwHswSBc2zBAOWssjoTmXntZ/VoRVl8YDl5o+0kCZ2FgK28aKuk1CDo?=
 =?us-ascii?Q?tDpIsq2HW16Tjs7xKSItDA22hYqGoO5OxUUHxNU6IVJpye7VsEDKRaDTlIqK?=
 =?us-ascii?Q?7iYWqDf0FnuFuASonFgHiihCX9y/pn9JoaxRD2CUggeHQvB1Txq42xaOCYQI?=
 =?us-ascii?Q?/AmwPjtHO7zgGof+/j+J1LSo8t47regV0LIgbnQn103TSKQJKZi9jJW6L9EI?=
 =?us-ascii?Q?iegO4q+y6g/Xfay21bLxaoAdGTpdWiqnpkBRtxwtKTwqDDZiPQeavw4OUGfy?=
 =?us-ascii?Q?N7ycbbAtRtSN7cplhkg85Js9UTxHY/6uMSn7J7lT2lvzryfbLMkl6RypsPZd?=
 =?us-ascii?Q?iPEWhNi8tTiNYKcfKYJ3SA0JVJS3PGsS6Wc/6frEoGoPYAeJD1fR4+Z76oMi?=
 =?us-ascii?Q?lixnv0tB5/cjiOFMEIgdNutBOy+t677nVPWj+hp5xn7ZDVF0WlOD8Vr14n1T?=
 =?us-ascii?Q?YJAzx5wOwIxqJUWWl+zXM5/byPLR93irJla5Zfmd9OfIQwIGyvsoQIV1oS3J?=
 =?us-ascii?Q?Bm8aEUdlnIx0PJDehVo5JtL6QIz1FgTSYaBhPWOg8Sl8crO9Hk3ajYffH7CT?=
 =?us-ascii?Q?CPesYKRZqFr4YC54L5kbvXMj5gEjr6In5ukyeZEbjQDIyfIBg5AtlBS11CpC?=
 =?us-ascii?Q?RzmXDMkk2utEFLw4dZHTRVJheEl8YMZUIFs6zZKQN1TeNRXE5tvNKosARYTv?=
 =?us-ascii?Q?OD9K06FUNtclKZA2xZNqsrxbWyIm7X57Zgx5c3cW3XhdMCxTsJVDU1HEHdzv?=
 =?us-ascii?Q?Blqyu8wrvEoCrgXQMzwn/37jZBcqkZ+s+b0b2EhIP+kQTi5FGZuqkeW4VTWN?=
 =?us-ascii?Q?Wapx99qo7YP10b42eeOMyUwmiO8yRnMoLYkqsJnLiK2U/tir8zR/LIbOUPgB?=
 =?us-ascii?Q?nvgTWjF8vqZhQOQPx+qkDllMN7GQYgrv5z7EFBfodNWz3WajGezsGT8iWctc?=
 =?us-ascii?Q?qbAe3NNqzfIy8ds89XyJc9sDTFdj/WwS+ZPD3C7ac64c7yhMwbXrlLf4D8b/?=
 =?us-ascii?Q?+ZoRUwXVn/SBkIzvjOekJWuRy+SFEO2/jGt2wU70HMnhc2TpEay7ixKinEJ/?=
 =?us-ascii?Q?1AWE5Eux01/OXiasKFW6v43IFLwyHAkccBS+Rk2Nb60G5NUbSJtSE50cHBeG?=
 =?us-ascii?Q?dIIXlfkR3N8aARDNslkDOb9fTZsYrSRh4qfkSUqd7ysNhfEMLDGsamloPZKC?=
 =?us-ascii?Q?hA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR1101MB2166.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 55443e39-c711-4445-e98a-08da6e6ce34a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2022 18:38:37.4582 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pJVi0XNMWLsFxuVAWFqRSbEHWmTs8oJS6wuvAso4Oc7vbl/pYGw4iv9RZEeonDmXV3y37Ad8kZXBf/eKZfonHlpcZ8CN1bb/Qt7GpXXVvdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6761
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Pass drm_i915_private struct
 instead of gt for gen11_gu_misc_irq_handler/ack()
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

@Ursulin, Tvrtko Is this wat you had in mind?

Anusha

> -----Original Message-----
> From: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Sent: Thursday, July 21, 2022 3:51 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Ursulin, Tvrtko
> <tvrtko.ursulin@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: [PATCH] drm/i915: Pass drm_i915_private struct instead of gt for
> gen11_gu_misc_irq_handler/ack()
>=20
> gen11_gu_misc_irq_handler() and gen11_gu_misc_ack() do nothing tile
> specific.
>=20
> v2: gen11_gu_misc_irq_ack() tile agnostic like gen11_gu_misc_irq_handler(=
)
> (Tvrtko)
>=20
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/i915_irq.c
> b/drivers/gpu/drm/i915/i915_irq.c index 73cebc6aa650..eb37b6bacaac
> 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2653,9 +2653,9 @@ static irqreturn_t gen8_irq_handler(int irq, void
> *arg)  }
>=20
>  static u32
> -gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)
> +gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32
> +master_ctl)
>  {
> -	void __iomem * const regs =3D gt->uncore->regs;
> +	void __iomem * const regs =3D i915->uncore.regs;
>  	u32 iir;
>=20
>  	if (!(master_ctl & GEN11_GU_MISC_IRQ)) @@ -2669,10 +2669,10
> @@ gen11_gu_misc_irq_ack(struct intel_gt *gt, const u32 master_ctl)  }
>=20
>  static void
> -gen11_gu_misc_irq_handler(struct intel_gt *gt, const u32 iir)
> +gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
>  {
>  	if (iir & GEN11_GU_MISC_GSE)
> -		intel_opregion_asle_intr(gt->i915);
> +		intel_opregion_asle_intr(i915);
>  }
>=20
>  static inline u32 gen11_master_intr_disable(void __iomem * const regs) @=
@
> -2736,11 +2736,11 @@ static irqreturn_t gen11_irq_handler(int irq, void
> *arg)
>  	if (master_ctl & GEN11_DISPLAY_IRQ)
>  		gen11_display_irq_handler(i915);
>=20
> -	gu_misc_iir =3D gen11_gu_misc_irq_ack(gt, master_ctl);
> +	gu_misc_iir =3D gen11_gu_misc_irq_ack(i915, master_ctl);
>=20
>  	gen11_master_intr_enable(regs);
>=20
> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
>=20
>  	pmu_irq_stats(i915, IRQ_HANDLED);
>=20
> @@ -2801,11 +2801,11 @@ static irqreturn_t dg1_irq_handler(int irq, void
> *arg)
>  	if (master_ctl & GEN11_DISPLAY_IRQ)
>  		gen11_display_irq_handler(i915);
>=20
> -	gu_misc_iir =3D gen11_gu_misc_irq_ack(gt, master_ctl);
> +	gu_misc_iir =3D gen11_gu_misc_irq_ack(i915, master_ctl);
>=20
>  	dg1_master_intr_enable(regs);
>=20
> -	gen11_gu_misc_irq_handler(gt, gu_misc_iir);
> +	gen11_gu_misc_irq_handler(i915, gu_misc_iir);
>=20
>  	pmu_irq_stats(i915, IRQ_HANDLED);
>=20
> --
> 2.25.1

