Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 376A1590B4E
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:45:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DCB9A4F00;
	Fri, 12 Aug 2022 04:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E428A4EBC
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660279539; x=1691815539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5vyvvoGqgKK4RLzIUDIFxjkXhYoysftmtYoiJOwLSgE=;
 b=DT2u6SoVw5G3DgIILetiJkOXOKQY96D0fLTfz66YOVa36YztUujD3Aph
 ZvxpupPIviagSDb9lcbtSi0+7A0OLybAClimtRjIlxpuxV6ePvACrqHb+
 5b01TagwrYfbJ8bvyNfauoa3aibMO+zVvQe+q+axCt0BELM1gsjemIbkd
 JD6XxhCeLQY7lY1t5CSQ3FEnMcVqGe+2RnUJ4Im0qxTqzlzIsBZH8m47V
 WuD6IWU5eyc1wkU2KMznkWN845EB/S7gLx2YnuJAtVWyGZNB3DFTT4K5c
 6bfDUV+g5YpH0pHTDPCp/BQecvr3dDch0kW8l+Hx0kklPBro2JFra29ba Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377812415"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="377812415"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:45:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="673957792"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 11 Aug 2022 21:45:38 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:45:37 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:45:37 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:45:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:45:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kZXQTMxzP6+c5Qv4WIkUYupjsb8z3YiFjP7YLGo/bE1RZ26JN2YE+P8QTjV5WhQQE3oqRHG2F1MpSPX4mhTAVoN9/qt86SdRCjmhRAJyUsC1jiBzAK8ojD/bBDKjpnGjCkWs1c8hcVa869qKqP8w/KNEqRcL5u+64nBciuWd8XyV1A15/STnKm2Yx8E15g+ppwi9I4DcG/l3rXds/DHuXYexyrDYVX16DbsYaeY/lhcYqn8F4SNBeR62sbFUYxQtGhlyQncHU9Fu87xn8+qbKAQ7rRTJsBxjFivLcPL23tv/sMLShR4q8V4A/MKUrWglDpJscVgTfklvEQ93qVPh4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dnLQ4wx54LMPqVohr7Gp4cjkpYygy6sowhS7QFA16zw=;
 b=GwqHTwXGMO88k6dXiGrDyafGY0HpAZszJ3oJddbPj7bRxrkOnXDYNPkayoeyUiNw7tAHcHXSOHS1DuFIz7hNio6MJzjOSOJSZE7jdOs6zg5JHPAe9Jytwqyj/tNxWaa3fOuaXVppp3dr4Psb4wuv03RjnRIjkI9kQdTfi/KrJrHPMSVnhlPujq2kQy8VPTd2AnfETX9+tWwxEdAi6b11cDmepZWjnyfdtn9r4HeQD1IWDHYzFmBWOergn0RSzCGMoSFHqENx2sIEtE+UsNSYdxCZpVTtjhKLRsyZQOQo4KYvbSPQ2cC1ABpIju6nbnIuIYTTyDNZNRkFH7RAEScd0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BYAPR11MB3287.namprd11.prod.outlook.com (2603:10b6:a03:1c::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Fri, 12 Aug 2022 04:45:35 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:45:34 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
 display.funcs
Thread-Index: AQHYrZWHmzH6efUB8Uet8nwoDUBWD62qsH/g
Date: Fri, 12 Aug 2022 04:45:34 +0000
Message-ID: <DM6PR11MB3177A54C0A8565E373DD04C3BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <97a3e319f4c55a6d0a1f32a18dc25f0474d7b02f.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <97a3e319f4c55a6d0a1f32a18dc25f0474d7b02f.1660230121.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bcb1ac27-2d2e-43aa-394c-08da7c1d7e69
x-ms-traffictypediagnostic: BYAPR11MB3287:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0BtcZztfHgp79kkHaJsczs+7wQ65F76GfE8mr9jgOVvs61WC6u9LvRz2dnjogmyWEwNL7r3wHNHRLwyyrj9NhE9LdkQQ7ZSl/WaNdTYei8pw6icd9Zdv/5Ts0AE9YwyZdxs0U27opJ33yJyOWKsC8dAgx80H9mtp0qq5iCqbqi6CKSPrF9HwLYTi4h+DvoUAqH9GLpUK+sYoA8FlDqrTcTAZ3OvNhtmCoP2lIjStPQt1FYN+EXuZk8OIwlbVBpY0VzAmGgz3auPJdwh4uqkzGeSIFWfu9aX1S5ZWVjM0FdC6NfXG3wzf3AaFQQ8cfTsIz8ifYJRXnW6amAk3XWzFUsBO32Us/xGQvYcEIiR8DSxETlM/Z/NuQxaAJCR8bAMbV0B0htWzb1mZ5X+twa4Cl/mzlOAb0TiN6VIQ79O2MJ42dyEcbvJ4hqOcODkeC0pxFLIpZ8pHKgbEHXUZgowcQPlUcFpr+ocEOXd57lgsHENZBkUmOyF04zfKRCA98SLtjQdnQIxMBAMkCBdas3tk1kGPXNzRVZrhHjVqvx8AWH2TwLGjj97YM3towblwYEBmHmsfo7m797xWXoYuQ+HpnFt+eBHZxPqRmhSLuv55Pnn3Hh4K/UAH2WYANJKJ87QSBKGH180BYljJjg7sRlR8lQUuMW7tj1Gq/i5GpKxpms8oVqUrs3H3M5nklKGFhQNUO+VyWm6hFXdZnVlwgZIVk0zcOD7oUhVMAcFFrM9dLCCawZUBaLT83qpm1pmetaliomSIiyiult25MW+/0irXbqaeh/zMPTJF8tvN1d60I4A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(366004)(39860400002)(396003)(376002)(5660300002)(52536014)(38070700005)(54906003)(110136005)(316002)(66556008)(41300700001)(76116006)(66476007)(86362001)(6506007)(33656002)(4326008)(7696005)(66446008)(8936002)(2906002)(66946007)(8676002)(53546011)(9686003)(64756008)(55236004)(26005)(83380400001)(82960400001)(186003)(107886003)(478600001)(71200400001)(55016003)(38100700002)(122000001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?WnXrc5VSrN/oYOKbRM6x8t2OIxH6Wl/k2aVUGULGkkbMyy7MsSwtnE/mOstH?=
 =?us-ascii?Q?pcsfS8AJghVDJgJrxEIcXYlQr1w6ATS+1ht/IKQFYH+FJfEAxi36O9Q9FheR?=
 =?us-ascii?Q?Th/MRpu4Mg5uSbDfyke0sBZK7ZpJzE2PXu/uI+MyTXAXMfBW1ZPkuaN0P/+s?=
 =?us-ascii?Q?Q2NOznoqT6xVcwo6FX7VYSAlGJTxelXbflOhE8vRgrVGEScj+msdfGdCu2QZ?=
 =?us-ascii?Q?iw7aOgoSeMM6DMJ0GfZUdnJu4FJxgkqvS4K4Pp8IHipUzgrAM/u6yoHp+ehw?=
 =?us-ascii?Q?SOwZoerx7NPBfmiyvIZE9vR2gU06C9zw1Zyq6r4uIzVJuirlpOxwiWRP7ECM?=
 =?us-ascii?Q?PyXNRTeVNNkoDEVS+rrkO6P23t5KgaBkTF8GRVK35eHLM7YItwSrRd+Hk9DS?=
 =?us-ascii?Q?ze7p3MkSlZJeuGZ46ax7vsJwrB3Af+NaWFgA/fYA+tvUFwSaYn9VL/krrgHv?=
 =?us-ascii?Q?7iTLUVIyjbmjx4SvIDsxWj30GTTPVoqv3SVW4ZxCkV4w7qvlg5qCvSnIIWFo?=
 =?us-ascii?Q?gocSPrpkQNdDLMYv4BsrEp6ZXJ6DdgbLDQ2VmJ0pK7Rcw//xr0gK3UYqealE?=
 =?us-ascii?Q?udV3Sw9Er5fD7dgoC7LAg/E0naOlw6CksyvLbkIhu724XBb62xmzuAVWemZa?=
 =?us-ascii?Q?Lr29ZV2MBilANAGoO/p6qyehyexKpOz8Ave6pDroKU9OEZyZKYWm8Dyba9jc?=
 =?us-ascii?Q?vjwZ4Yi/sv6JfkCFM8E53IvgdWnSaP0Iif+chd7ugtP3OMJSbzRK6v3Psx9j?=
 =?us-ascii?Q?fC9Sw4XL1FtfgeAE82YwrG6+bo3J+yEx6XSJo8KmPuIruOSqTND2SKzXi71r?=
 =?us-ascii?Q?scx9yOcIgAqkKPgpKr/n8tfPwN4tP7xwgmTwg1G2s1sce8k0fYxiRHm+T3Vq?=
 =?us-ascii?Q?rgDGfwG/QjYwInoFjbYy3Yzi4n9/Lw7GhzubBqPlbhW0owXOgehCe5qG36/M?=
 =?us-ascii?Q?Uwti+ZNc5oEKaIpcMQMB8/LlTCbFaCikTvCCdKAkVHTlahj2nTOMmLfpZgtZ?=
 =?us-ascii?Q?I4rRXhjil8anAe7fjtcvZh0Xz5uHKvjmpToTioubnZedMZnRhG6NCm4GgON2?=
 =?us-ascii?Q?HvEyytmtJ4viZ36icRqXwGFtVg1KxlE6UWMl2r66mq4L63Lq3VZk6IRLEZ3Y?=
 =?us-ascii?Q?LohmHUlmmR4CnHrX/MyAH6/sBFUPV1KJvfTN3aazZRChVb70dr8rtYedpMNa?=
 =?us-ascii?Q?iE5qL9YdK5R3FVgn0J/hjc/by18l852qxj4uPIHzLXlD0HTo3iMo+W87P+Jr?=
 =?us-ascii?Q?8juH6JEKed7fgZCXQjpvCkOETYG+f6cpi4mkNYGE9/YfPkFxs7Q4zTuDjLov?=
 =?us-ascii?Q?LbaN4v60sAB0MePVHiEm1jGeWRh1FD9Uo0nYeZOtGJswiiuHmSVkHoT5ZOam?=
 =?us-ascii?Q?5OReJJioMgS3g4UfJOxeWEyQDjc/wubsvUfetYk5aHcbLTRlF8QoETMDUUt6?=
 =?us-ascii?Q?ENHcjvpDy+gOjsUM99bHaZpBJ0wFYNuCYLftPzkvgR8Mof8mmsO2Q21lUzmC?=
 =?us-ascii?Q?uBBbLilHcb66J3qKU5AgnWMrriVC7b4VvbvmqHpAwOHyIhez3Djmk1P5SLu4?=
 =?us-ascii?Q?GuEsS6MHT5UaNUNcb3ihMqEKX90Ggvq2mj3kn00k?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcb1ac27-2d2e-43aa-394c-08da7c1d7e69
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:45:34.2754 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T1YlazRqXIyFBctXd/MA8Txz2PXxGDgyNgwft1tT7aFKYbOMkuIaWBSWLJTMQsvebI28DV6xza2FNfN/oKDttA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3287
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
 display.funcs
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, August 11, 2022 8:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH 06/39] drm/i915: move wm_disp funcs to
> display.funcs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Rename struct drm_i915_wm_disp_funcs to intel_wm_funcs while at it.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 34 +++++++--------
> .../gpu/drm/i915/display/intel_display_core.h | 21 ++++++++++
>  drivers/gpu/drm/i915/i915_drv.h               | 22 ----------
>  drivers/gpu/drm/i915/intel_pm.c               | 42 +++++++++----------
>  4 files changed, 59 insertions(+), 60 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 24ab1501beea..7db4ac27364d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -164,16 +164,16 @@ static void ilk_pfit_enable(const struct
> intel_crtc_state *crtc_state);
>   */
>  void intel_update_watermarks(struct drm_i915_private *dev_priv)  {
> -	if (dev_priv->wm_disp->update_wm)
> -		dev_priv->wm_disp->update_wm(dev_priv);
> +	if (dev_priv->display.funcs.wm->update_wm)
> +		dev_priv->display.funcs.wm->update_wm(dev_priv);
>  }
>=20
>  static int intel_compute_pipe_wm(struct intel_atomic_state *state,
>  				 struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	if (dev_priv->wm_disp->compute_pipe_wm)
> -		return dev_priv->wm_disp->compute_pipe_wm(state, crtc);
> +	if (dev_priv->display.funcs.wm->compute_pipe_wm)
> +		return dev_priv->display.funcs.wm-
> >compute_pipe_wm(state, crtc);
>  	return 0;
>  }
>=20
> @@ -181,20 +181,20 @@ static int intel_compute_intermediate_wm(struct
> intel_atomic_state *state,
>  					 struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	if (!dev_priv->wm_disp->compute_intermediate_wm)
> +	if (!dev_priv->display.funcs.wm->compute_intermediate_wm)
>  		return 0;
>  	if (drm_WARN_ON(&dev_priv->drm,
> -			!dev_priv->wm_disp->compute_pipe_wm))
> +			!dev_priv->display.funcs.wm->compute_pipe_wm))
>  		return 0;
> -	return dev_priv->wm_disp->compute_intermediate_wm(state, crtc);
> +	return dev_priv->display.funcs.wm-
> >compute_intermediate_wm(state,
> +crtc);
>  }
>=20
>  static bool intel_initial_watermarks(struct intel_atomic_state *state,
>  				     struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	if (dev_priv->wm_disp->initial_watermarks) {
> -		dev_priv->wm_disp->initial_watermarks(state, crtc);
> +	if (dev_priv->display.funcs.wm->initial_watermarks) {
> +		dev_priv->display.funcs.wm->initial_watermarks(state, crtc);
>  		return true;
>  	}
>  	return false;
> @@ -204,23 +204,23 @@ static void intel_atomic_update_watermarks(struct
> intel_atomic_state *state,
>  					   struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	if (dev_priv->wm_disp->atomic_update_watermarks)
> -		dev_priv->wm_disp->atomic_update_watermarks(state,
> crtc);
> +	if (dev_priv->display.funcs.wm->atomic_update_watermarks)
> +		dev_priv->display.funcs.wm-
> >atomic_update_watermarks(state, crtc);
>  }
>=20
>  static void intel_optimize_watermarks(struct intel_atomic_state *state,
>  				      struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	if (dev_priv->wm_disp->optimize_watermarks)
> -		dev_priv->wm_disp->optimize_watermarks(state, crtc);
> +	if (dev_priv->display.funcs.wm->optimize_watermarks)
> +		dev_priv->display.funcs.wm->optimize_watermarks(state,
> crtc);
>  }
>=20
>  static int intel_compute_global_watermarks(struct intel_atomic_state
> *state)  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	if (dev_priv->wm_disp->compute_global_watermarks)
> -		return dev_priv->wm_disp-
> >compute_global_watermarks(state);
> +	if (dev_priv->display.funcs.wm->compute_global_watermarks)
> +		return dev_priv->display.funcs.wm-
> >compute_global_watermarks(state);
>  	return 0;
>  }
>=20
> @@ -2400,7 +2400,7 @@ static void i9xx_crtc_disable(struct
> intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) !=3D 2)
>  		intel_set_cpu_fifo_underrun_reporting(dev_priv, pipe,
> false);
>=20
> -	if (!dev_priv->wm_disp->initial_watermarks)
> +	if (!dev_priv->display.funcs.wm->initial_watermarks)
>  		intel_update_watermarks(dev_priv);
>=20
>  	/* clock the pipe down to 640x480@60 to potentially save power */
> @@ -8454,7 +8454,7 @@ static void sanitize_watermarks(struct
> drm_i915_private *dev_priv)
>  	int i;
>=20
>  	/* Only supported on platforms that use atomic watermark design */
> -	if (!dev_priv->wm_disp->optimize_watermarks)
> +	if (!dev_priv->display.funcs.wm->optimize_watermarks)
>  		return;
>=20
>  	state =3D drm_atomic_state_alloc(&dev_priv->drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index 98c6ccdc9100..a6843ebcca5a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -8,6 +8,7 @@
>=20
>  #include <linux/types.h>
>=20
> +struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_cdclk_funcs;
>  struct intel_clock_gating_funcs;
> @@ -31,6 +32,23 @@ struct intel_display_funcs {
>  	void (*commit_modeset_enables)(struct intel_atomic_state *state);
> };
>=20
> +/* functions used for watermark calcs for display. */ struct
> +intel_wm_funcs {
> +	/* update_wm is for legacy wm management */
> +	void (*update_wm)(struct drm_i915_private *dev_priv);
> +	int (*compute_pipe_wm)(struct intel_atomic_state *state,
> +			       struct intel_crtc *crtc);
> +	int (*compute_intermediate_wm)(struct intel_atomic_state *state,
> +				       struct intel_crtc *crtc);
> +	void (*initial_watermarks)(struct intel_atomic_state *state,
> +				   struct intel_crtc *crtc);
> +	void (*atomic_update_watermarks)(struct intel_atomic_state *state,
> +					 struct intel_crtc *crtc);
> +	void (*optimize_watermarks)(struct intel_atomic_state *state,
> +				    struct intel_crtc *crtc);
> +	int (*compute_global_watermarks)(struct intel_atomic_state *state);
> };
> +
>  struct intel_display {
>  	/* Display functions */
>  	struct {
> @@ -48,6 +66,9 @@ struct intel_display {
>=20
>  		/* pm private clock gating functions */
>  		const struct intel_clock_gating_funcs *clock_gating;
> +
> +		/* pm display functions */
> +		const struct intel_wm_funcs *wm;
>  	} funcs;

Can the wm, dbuf, clock related move to a struct intel_pm ? which makes it =
more meaningful else again we end up creating a struct intel_display a long=
 one like i915_private.

Thanks and Regards,
Arun R Murthy
--------------------
