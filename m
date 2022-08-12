Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F51B590B2B
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 06:32:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A382718A6A9;
	Fri, 12 Aug 2022 04:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EF061128F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 04:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660278728; x=1691814728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XnhsmKFKoICWcrGrPCa81qJh3SYbsDQistE2LX2CioY=;
 b=aJiZhbRjX7SVW0BKbDmEm0kO0VoAYZ9mipByppq+nm75dGBBtbXMkvav
 47AC1S+n8Oa8rCjI17KLY81Oj5ri4QYFnUAe66g3JwDa/EAX3r9FivtkX
 nviBldUX0CpPbsydpYHbm00M28KxAz3SbovqjWr2nsNMyO/QPpdcbsXva
 wYDD7LXTG0NmSsGEVxRfhbVTDbeYa9Na7DPL3UCzBuLuhk0tr/dTlmkHY
 hHNFGImJj6tV+pB+JTQ4SG6dMGcPfDzTpJSyHFzttgjgLtiRsf55hNxi3
 jweuS191UOM36wIH701b6zmAos6+oR2YbopZNjCO/sr3GzWd0VwWK75Zq w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="274574931"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="274574931"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 21:32:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="605793550"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 11 Aug 2022 21:32:06 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:32:06 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 11 Aug 2022 21:32:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 11 Aug 2022 21:32:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 11 Aug 2022 21:32:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H2alJGqN1TP9qz641yiaHqdm49V1qjpfZJtI7P6mDlpihXXr7UiOWgfYg+/SS+7M/lnsHqNHkyXDrSRdZrU1eqMyEL3Fo/NehmdWp1htjbXXpa6SY9ELW1Q49kytk2FJNqSbnd9ytXvRX3qiFJEYI20kjzHDLQ46D4kMcJiRSQWLSlCcKs7/mKgvRSzhZH4GFWANMsxQvTss9FlZssZs8LO3rYVXOYP4DIU+b63Qn3Isz+tL0iGVcym4y8jgOefq8nMkkq7oZv7NahftruMFk4Eh5Tu1fMFCc+vEFH2F+jX4qAT2Qw7429ObiXnwdx5WUtpy1Sq3nz32b/jC2BLK8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y2/GY5qSnVim9xwq0JmZHDiadh/XYRCAn0D4qIRKUMw=;
 b=mdb4XCr1JtQ0h6/PlB3zabwC+5uUPWY6j1ZeSneEK0XmMQfNFMWmzhbyR6/eLWivXb1oZmvweOk6kXgOERTqltq8Xy6RK0crNIo7jKhX2RI+DY+naLfReeGpjBkxPJDhPp5VzxD8vR6xR8Fj8Fdsg0B6dnAYQh1lTH96XDGHA0A8kMQdRxLl2BW1XW2WgtpNIurSk5P4ow1g4CBXva1KPibGVYCcyc5mZyVisa/2o4M//8HK9Tp7A4BVxUs8G6NHINAL52gNvo3zZSDR3q2f9fr33qZwXeAMVcTOqDYOh7Zuo+QKdUOLMUpE0RMtd6NKWedV7MFU0kiZEdMiR9scQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Fri, 12 Aug
 2022 04:32:02 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Fri, 12 Aug 2022
 04:32:02 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/39] drm/i915: move cdclk_funcs to
 display.funcs
Thread-Index: AQHYrZVtcpwPFk1z4Eed6kgo0LhXX62qrKYw
Date: Fri, 12 Aug 2022 04:32:02 +0000
Message-ID: <DM6PR11MB3177C4C0D0790E1A46F90116BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <835133f5ef41aa58f8fbbc7e1c86ed2efd5de694.1660230121.git.jani.nikula@intel.com>
In-Reply-To: <835133f5ef41aa58f8fbbc7e1c86ed2efd5de694.1660230121.git.jani.nikula@intel.com>
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
x-ms-office365-filtering-correlation-id: c23f0db4-65cd-41b8-a15e-08da7c1b9a8e
x-ms-traffictypediagnostic: BL1PR11MB5399:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8FffAH8syUQeHi6cQeDVg2mSjJiYFX/iKljBI1a5XqceXY5w9aB2Jaqc9gJxv7rkrlQfNFHzNPkrk2T9Jhj4JeCNxiJ8gDyu5C4MtETzVJYL11nwiZR5AZ4RFGryyMiihRvwK0MN0juqsOK2PRCkTG6enIJpTAfOnk2ykYL5Y7qJdoDyNry4GfMjz/ByGFSwxyI6hcHmqBejtvTqbuPtm9IIQ7lSusWs/bbNmOiISAcLf/C0+K/QuL6H+4s+33vxarn2hkotXAMqbOFp3EQzN5U3LKbnxicorVG7hTMz52FJWxVEMS+4Q7ItWT5PMXkZFxgbQo6xEqRUJJbkF96976VPWfbCo4AoLMOzrPgUdzY3V/aDpAjhOxUpEJyisYd+0jNBbzJ4w4cIEWYOyaKd95XDZYBGXB+tMMCdYBHMxd5SYXyT7CSYpu4K4u0d4qntFGPHLXfdFS9UXzD2DWmAd0iQmrx29gqQd5li3dFq1sGdDDmRh/LnE01IFXOlfU8MCp7eXni9OnSIK34oLKz6QxlBv8CitgCIyPJiQNrR9XhBdDcjMswmDR1m7OeSlNWSjkv6P1nGLLMsRPYq3SfsiiaRV2nRYJo2uHku4s7XEIFP1cnJvDKmA1Wt0aI29q2BnyknKjg8dkhd1mcmZT5D3EWBqqolwyZW381+MHAV1sR8Vi2wWUHSrCkpyES8Yt+bPPGX8IT5A9fmrNXpGtwumOT0nKXPQZMOQ+8l+bzqTnPKOKHBjXUKpfzR14EqaVl4wa3iQQJI49FiXHulp+3LNXyv2GG0ZD3vkt36BEXXXo0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(136003)(346002)(366004)(39860400002)(5660300002)(8676002)(316002)(4326008)(66476007)(66556008)(66946007)(76116006)(55016003)(66446008)(122000001)(38100700002)(52536014)(8936002)(64756008)(2906002)(7696005)(41300700001)(478600001)(33656002)(82960400001)(71200400001)(55236004)(110136005)(26005)(9686003)(38070700005)(54906003)(83380400001)(6506007)(86362001)(53546011)(186003)(107886003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?b6sX5m2902dGSXrfTU2rnT1bie/JqEDcdWv4MT2xnteuTO/ZdxaRShg5l5CU?=
 =?us-ascii?Q?PkXlp7fhDTlyLaJAL7XlrJ7wX1fz8dHgeQPtI79pqlb5ZdTX5hTYH/bzjtSK?=
 =?us-ascii?Q?s6G2boVG7YlvcUCtEzSzyKzi/qdl+7QvvZPAmvWti45Vrh22YM16HKqYi6Yn?=
 =?us-ascii?Q?3xKHTS+qdVZHbJBjyJ4h7Zt2C9w1oP8hghPUSeh+Tm6grSNhGVA8N49fYJ0y?=
 =?us-ascii?Q?Kn/3cNJHGuInGNp7949QRDz5l48GUbNOW+2JH+xzi1eca/wBITbIXNIptKAz?=
 =?us-ascii?Q?DKL1nIUarmCnoL5eLbxAIvDebf5NpaszI1W+ZtFhqN00w1CRg11EOLRZLYZG?=
 =?us-ascii?Q?aagmPwehF/NWCTQfmukM5BY971cspe4cdSsC7YkkTWbMWzd+RX74CFgxNpxn?=
 =?us-ascii?Q?6UGRwXwcyyxTrVyMFUj1Pwyqb5hQmqcMdKyzal3whzvDVtOTJl6teHA92tMM?=
 =?us-ascii?Q?ZrY5z7R7XlF93nVRw1wuKu7q56WTY0WLAG/UTiibtd/awl9wrCTk8TXPWczV?=
 =?us-ascii?Q?SBD8EoGkmYjErO+9OHJuQ50CvySvbOauBTBUTAdzs7nfCVNv9tMlcEkfVQwM?=
 =?us-ascii?Q?T1/mDonAF18JisH8LqlRF4VCg3P4uw+sFCLnJkYLSxNvy3gWzyIcUczZm0A/?=
 =?us-ascii?Q?HdEa9+SOtuL4AhqyGguxF8xvLRmgbVKG7Qy0QbpyH7R4pTd199LXuu8AVFtQ?=
 =?us-ascii?Q?ZnOywCiPLLhJBK1PVh/pwarEp1Zp0ppl7EHinoxyX7IEZVNDpQSGlUnIt8Of?=
 =?us-ascii?Q?L3j7zUwOAPK4DMhcNAdeX7W4mK7ZIt3sx2zUODRfXmrsS2IuHJqpC/SqEomZ?=
 =?us-ascii?Q?z3UK63c8lcHSzznHsZnPcGTZCNR6pOOpI7iSdGbYuBaHhwjRj1cDlTqS8ast?=
 =?us-ascii?Q?TLPy0SFugoGTrB/zeaCCpEsq048jmkX2rwIV8AzSwrDRq4F+Es4Wr6fojkPa?=
 =?us-ascii?Q?Ecly8T+pRYkKL4NjDZby0z/NL2RmrN21voaO9hoiSp9ahdrySLhQHgqguAOp?=
 =?us-ascii?Q?HTwMyVxjO81EsHRY7MFsW8DMQN0cRb22mUPLpn+m74eO/ZBByLxPPbPm+O35?=
 =?us-ascii?Q?psiqXgBUxq3mc0ZhhllQLN+QMPM3UGlP2+YMlVoCDYlbwYFC+18RjxvSrfF4?=
 =?us-ascii?Q?u8ujMaXR6m69wmc9MnsPIUBpL5d8248JK3judGlMs9jLD5m/MitIbYpyu3rY?=
 =?us-ascii?Q?6WOdEy2SJkbMrPkKimIARyD+iCA0+6fi82DrLe8F9Yf8oQL7DERyBtxGTT+1?=
 =?us-ascii?Q?FGekw19jmTcNhPBLX++qFqa5duFYBTJt2ff7EJtTxXNT+jFR1j5AOvlJONbN?=
 =?us-ascii?Q?ggSxBAyPefGvpQDLIN5MG9ReEoJ+pEZ+lKDo7cBS/lPPm5t3tGsjVAphWRmF?=
 =?us-ascii?Q?3tQ03ZLizFhH84HIz1sNMxNMhMANN+28aYsopzx9z62nRRJjY7T3boipQoVs?=
 =?us-ascii?Q?0QVoAb2X/KKQ5n0/t2zO1JpFJUjOJHOB0cdWxDIpKhakrzWHlWsgmgs9yJ5M?=
 =?us-ascii?Q?wEjQmjzd1Jq14WNS+TPGW3nnxpswTWIn1LeqqR1754eBWhcF+UiWRpxsAiq6?=
 =?us-ascii?Q?9vO+QpksNkzoaJPzb+Qlv6cZmj4KxemBZY0JdJHI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c23f0db4-65cd-41b8-a15e-08da7c1b9a8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2022 04:32:02.5190 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7sSjIR+HjVeYt62IFpysTg89vIPx26q5PIuJ4BBb4I0ZIbmcBPbpSbyxd6M0m+Wvb6n/aUbTG08JA+r0iaWHRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5399
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/39] drm/i915: move cdclk_funcs to
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
> Subject: [Intel-gfx] [PATCH 02/39] drm/i915: move cdclk_funcs to
> display.funcs
>=20
> Move display related members under drm_i915_private display sub-struct.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 70 +++++++++----------
>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>  drivers/gpu/drm/i915/i915_drv.h               |  4 --
>  3 files changed, 39 insertions(+), 39 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 86a22c3766e5..6095f5800a2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -79,26 +79,26 @@ struct intel_cdclk_funcs {  void
> intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
>  			   struct intel_cdclk_config *cdclk_config)  {
> -	dev_priv->cdclk_funcs->get_cdclk(dev_priv, cdclk_config);
> +	dev_priv->display.funcs.cdclk->get_cdclk(dev_priv, cdclk_config);
>  }
>=20
>  static void intel_cdclk_set_cdclk(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *cdclk_config,
>  				  enum pipe pipe)
>  {
> -	dev_priv->cdclk_funcs->set_cdclk(dev_priv, cdclk_config, pipe);
> +	dev_priv->display.funcs.cdclk->set_cdclk(dev_priv, cdclk_config,
> +pipe);
>  }
>=20
>  static int intel_cdclk_modeset_calc_cdclk(struct drm_i915_private *dev_p=
riv,
>  					  struct intel_cdclk_state
> *cdclk_config)  {
> -	return dev_priv->cdclk_funcs->modeset_calc_cdclk(cdclk_config);
> +	return
> +dev_priv->display.funcs.cdclk->modeset_calc_cdclk(cdclk_config);
>  }
>=20
>  static u8 intel_cdclk_calc_voltage_level(struct drm_i915_private *dev_pr=
iv,
>  					 int cdclk)
>  {
> -	return dev_priv->cdclk_funcs->calc_voltage_level(cdclk);
> +	return dev_priv->display.funcs.cdclk->calc_voltage_level(cdclk);
>  }
>=20
>  static void fixed_133mhz_get_cdclk(struct drm_i915_private *dev_priv, @@
> -2080,7 +2080,7 @@ static void intel_set_cdclk(struct drm_i915_private
> *dev_priv,
>  	if (!intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config))
>  		return;
>=20
> -	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs-
> >set_cdclk))
> +	if (drm_WARN_ON_ONCE(&dev_priv->drm,
> +!dev_priv->display.funcs.cdclk->set_cdclk))
>  		return;
>=20
>  	intel_cdclk_dump_config(dev_priv, cdclk_config, "Changing CDCLK
> to"); @@ -3187,78 +3187,78 @@ static const struct intel_cdclk_funcs
> i830_cdclk_funcs =3D {  void intel_init_cdclk_hooks(struct drm_i915_priva=
te
> *dev_priv)  {
>  	if (IS_DG2(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
>  		dev_priv->cdclk.table =3D dg2_cdclk_table;
>  	} else if (IS_ALDERLAKE_P(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
>  		/* Wa_22011320316:adl-p[a0] */
>  		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  			dev_priv->cdclk.table =3D adlp_a_step_cdclk_table;
>  		else
>  			dev_priv->cdclk.table =3D adlp_cdclk_table;
>  	} else if (IS_ROCKETLAKE(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
>  		dev_priv->cdclk.table =3D rkl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 12) {
> -		dev_priv->cdclk_funcs =3D &tgl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &tgl_cdclk_funcs;
>  		dev_priv->cdclk.table =3D icl_cdclk_table;
>  	} else if (IS_JSL_EHL(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &ehl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &ehl_cdclk_funcs;
>  		dev_priv->cdclk.table =3D icl_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) >=3D 11) {
> -		dev_priv->cdclk_funcs =3D &icl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &icl_cdclk_funcs;
>  		dev_priv->cdclk.table =3D icl_cdclk_table;
>  	} else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &bxt_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &bxt_cdclk_funcs;
>  		if (IS_GEMINILAKE(dev_priv))
>  			dev_priv->cdclk.table =3D glk_cdclk_table;
>  		else
>  			dev_priv->cdclk.table =3D bxt_cdclk_table;
>  	} else if (DISPLAY_VER(dev_priv) =3D=3D 9) {
> -		dev_priv->cdclk_funcs =3D &skl_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &skl_cdclk_funcs;
>  	} else if (IS_BROADWELL(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &bdw_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &bdw_cdclk_funcs;
>  	} else if (IS_HASWELL(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &hsw_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &hsw_cdclk_funcs;
>  	} else if (IS_CHERRYVIEW(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &chv_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &chv_cdclk_funcs;
>  	} else if (IS_VALLEYVIEW(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &vlv_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &vlv_cdclk_funcs;
>  	} else if (IS_SANDYBRIDGE(dev_priv) || IS_IVYBRIDGE(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &fixed_400mhz_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &fixed_400mhz_cdclk_funcs;
>  	} else if (IS_IRONLAKE(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &ilk_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &ilk_cdclk_funcs;
>  	} else if (IS_GM45(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &gm45_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &gm45_cdclk_funcs;
>  	} else if (IS_G45(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &g33_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &g33_cdclk_funcs;
>  	} else if (IS_I965GM(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i965gm_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i965gm_cdclk_funcs;
>  	} else if (IS_I965G(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &fixed_400mhz_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &fixed_400mhz_cdclk_funcs;
>  	} else if (IS_PINEVIEW(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &pnv_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &pnv_cdclk_funcs;
>  	} else if (IS_G33(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &g33_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &g33_cdclk_funcs;
>  	} else if (IS_I945GM(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i945gm_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i945gm_cdclk_funcs;
>  	} else if (IS_I945G(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &fixed_400mhz_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &fixed_400mhz_cdclk_funcs;
>  	} else if (IS_I915GM(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i915gm_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i915gm_cdclk_funcs;
>  	} else if (IS_I915G(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i915g_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i915g_cdclk_funcs;
>  	} else if (IS_I865G(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i865g_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i865g_cdclk_funcs;
>  	} else if (IS_I85X(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i85x_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i85x_cdclk_funcs;
>  	} else if (IS_I845G(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i845g_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i845g_cdclk_funcs;
>  	} else if (IS_I830(dev_priv)) {
> -		dev_priv->cdclk_funcs =3D &i830_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i830_cdclk_funcs;
>  	}
>=20
> -	if (drm_WARN(&dev_priv->drm, !dev_priv->cdclk_funcs,
> +	if (drm_WARN(&dev_priv->drm, !dev_priv->display.funcs.cdclk,
>  		     "Unknown platform. Assuming i830\n"))
> -		dev_priv->cdclk_funcs =3D &i830_cdclk_funcs;
> +		dev_priv->display.funcs.cdclk =3D &i830_cdclk_funcs;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> b/drivers/gpu/drm/i915/display/intel_display_core.h
> index aafe548875cc..74e4ae0609b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>=20
>  struct intel_atomic_state;
> +struct intel_cdclk_funcs;
>  struct intel_crtc;
>  struct intel_crtc_state;
>  struct intel_initial_plane_config;
> @@ -32,6 +33,9 @@ struct intel_display {
>  	struct {
>  		/* Top level crtc-ish functions */
>  		const struct intel_display_funcs *crtc;
> +
> +		/* Display CDCLK functions */
> +		const struct intel_cdclk_funcs *cdclk;

Like having intel_cdclk_funcs *cdclk, will intel_display_funcs *display mak=
es more sense and maintaining same terminology across the driver.

>  	} funcs;
>  };
>=20
> diff --git a/drivers/gpu/drm/i915/i915_drv.h
> b/drivers/gpu/drm/i915/i915_drv.h index 3df38531a54b..104095ea3738
> 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -84,7 +84,6 @@ struct drm_i915_private;  struct intel_atomic_state;
> struct intel_audio_funcs;  struct intel_cdclk_config; -struct intel_cdclk=
_funcs;
> struct intel_cdclk_state;  struct intel_cdclk_vals;  struct intel_color_f=
uncs; @@
> -523,9 +522,6 @@ struct drm_i915_private {
>  	/* Display internal color functions */
>  	const struct intel_color_funcs *color_funcs;
>=20
> -	/* Display CDCLK functions */
> -	const struct intel_cdclk_funcs *cdclk_funcs;
> -
>  	/* PCH chipset type */
>  	enum intel_pch pch_type;
>  	unsigned short pch_id;
> --
> 2.34.1

