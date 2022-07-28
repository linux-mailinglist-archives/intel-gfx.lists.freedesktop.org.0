Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4CA583E1A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 13:53:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDBAD99981;
	Thu, 28 Jul 2022 11:53:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04FEC99976
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 11:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659009227; x=1690545227;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XIJwn2pHqNDbWA4QLDVG2l55Caiyv+QRW6SswGZ+e6A=;
 b=I/y+MYOPNfmNjEkhGnRErxEN8eYvFfV2YfVqpKP//QiJoKQhZFofb0om
 5hWnRbtHs+oH+JLNrmPr6gjxthJsQX7/dCBacus7QFPwuiR6QFHZJLTpz
 HtKkvXka0UnufMXlwlGgRk6j3quk891dJXmOqnRvPTYDpeN96dspkSBNS
 iKdh/n/R7En9+hqt9/+7w2ubfY9cjg9EWt31QHa4ukf9+37KkTS5ojNmy
 ad4LfHpBznHybWSg/k1fDy2Rtlu63LMiqGckXQPmHtkcryhri7OgP225u
 dh+EYX9zGMJZ/S6nDza0PZ1Xj51TXNxw8r6SEj4U0zJsanIfQY1KZXHFh w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="268256837"
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="268256837"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2022 04:53:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,198,1654585200"; d="scan'208";a="597823748"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga007.jf.intel.com with ESMTP; 28 Jul 2022 04:53:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 28 Jul 2022 04:53:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 28 Jul 2022 04:53:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 28 Jul 2022 04:53:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XaZ+nWwjaCc0J5ClYryXA0MYYE/YBF1Ql0vZw2+qsbioS7f7yzTR6sSC30sAPCsELb2smstYdDwYbzf2MRNXxgmxZ2tMpSbJxehKJJ6NAu2mxGnkLrKfLi82lzR/9QU/S4wJQdl+AU2wXdMWB4GwgpBldkONs9hhOOiEKyfZg/oCZyyMUNKK0zo7Oh+K86n/0DPr1LaGJlpJMUI1SvOyrmdP6GwVImbDGaq5pYQYk8Ry/AGU5GSIuFUTVlDNrVKRgL49jBAXVvon1GupRSHiLqBB0JRCAlqSKckQ/wS5i1ayI7/bp1sBVXrFQlfozm0dKtpeh/4OZihb5NItJ3Dmsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kU5ayo5GHfHL3arv/ItXKoXIVqX7ZeQaS0Jkge7Islo=;
 b=GPwz3+0CP610vVXYj35jgWN1H+toF+wOSeXSr5o/hjVSCV6XUm7gbce53tMWYL7wseC9dq+si+5BQ4/mQd5XQ8Kjv13fgkDsLQKcQQCS5ClGCYZpqzP3YLX452n7bJoZUU6TJPdOo2U4/MXiCxOf/aV22V5Cn0hQbZtkPr3noqmz42zbkgQTSH+tYM4mpO67Cou2Xm8/vTt3dDt8Jjr/mKU57SNAODIh3JJZ8qPnzB9zc58+73iE6J4xLpGPJDZ18z6gb0zxw6HhLYouLIkSOCEkMZTT+qmiUmHXm9/6RabOxw1CdjOJtfCEdt7dZK0eDpe7Cf9euLHpQWDRGH8v5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5783.namprd11.prod.outlook.com (2603:10b6:510:128::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.24; Thu, 28 Jul
 2022 11:53:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f866:137e:cb07:5adf]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f866:137e:cb07:5adf%6]) with mapi id 15.20.5482.010; Thu, 28 Jul 2022
 11:53:30 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/d13: Add Wa_16015201720
 disabling clock gating for PIPEDMC-A/B
Thread-Index: AQHYodhYsUglQs/r1kKsX014F/2jPa2TrXhw
Date: Thu, 28 Jul 2022 11:53:30 +0000
Message-ID: <DM4PR11MB63602846E08D3ACFB1991048F4969@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20220727164523.1621361-1-imre.deak@intel.com>
 <20220727164523.1621361-2-imre.deak@intel.com>
In-Reply-To: <20220727164523.1621361-2-imre.deak@intel.com>
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
x-ms-office365-filtering-correlation-id: ef89676a-e1f3-49be-b831-08da708fca34
x-ms-traffictypediagnostic: PH0PR11MB5783:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IoC5rtB6gefcNamB/2c7duSvNgozH+T5lSI6sIYLaRImjo+UEatPDCURN+e2aPSvJ0gHrGSquCaTsTC/w2wqD3D6oh5hHA6PlR7SzTGWJpz9cwE+e0natbeniV+/UyV5Xcx1+664K7ylQRcmVVqbsupB94ANsrbGWnWgDOFHxAQepyGdQGX/QUmoRPCe+aEjszOpz0qtfoZ18cExWU47GahZtuoLEKlHnWy8UiEOZkj9NWIbWd73Vbt2nZ1V4QYmDO+Iz0EVrCbFzo49/cJxdXk8Da9YzdnKaUiNXCmKobRNKZKPRc/SJi9e1HOWMhGiIBC5cOirMhpLTzOCS9qF6fxwYLJwsxag8tlRMtxnLfU3VtzxqbiO/5fDWlwNPIsXte5lnDj/CxIGVjsL6Q/UCbJUe424NmHEv/CE/4vKReKCySGWtdCUVR3oLtlCkhxotdnA724r8C30wK4edL6/o1tNqaTNGnF4smKW8uFuMBNzyd0Z9kO/nMNwvKem+fD4tyw7lq9AzZR+O5/COZu0iBIT2tDQhRG8WmKOr/TK/+S8k5A62r5lNDDPzkBAkOSINhudePXRno0WecU3DVFDR7myLLljTmIapCiQMCF8RgxfvblNgzqJLVDmf4pHMdENZ51BPrwrgXn/dsJaFmAalmuCdLVaC/t2l1fuD6abw7MMcFlWFlQ0/Lh0XqVK0vG525OAZqz9nGpSWOkSvNrbQ9JpJAsYEOr5Zbn2Hrlj6Ws4jMHbk05MV0AxDqxV3vLqxW6kTygSzDkJCxLEBKZRMSr7/REU3+xjHA5WWiwXn0YHmRQQj4L83DcDWt7slS0+SctcsU6f+7MT7euyIHef2Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(346002)(376002)(366004)(396003)(83380400001)(82960400001)(38100700002)(38070700005)(66446008)(316002)(110136005)(76116006)(66556008)(66946007)(186003)(8936002)(64756008)(6506007)(33656002)(478600001)(26005)(9686003)(53546011)(8676002)(41300700001)(55016003)(122000001)(2906002)(71200400001)(7696005)(86362001)(52536014)(5660300002)(66476007)(154233001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?VzT2Q6EVcSI3HRrQNpgNE0S1AfrT7D38CuXnl3rJ5RdMq2xJUMyV+WlJYVqx?=
 =?us-ascii?Q?4dVsOHOzEEeWLKR7258EHCdQF7QD9IR7+BfzWHfbTzQoAhbRuYwjUqT2v0o/?=
 =?us-ascii?Q?21GaUNW1jtwGQYg3M7svtkv+F4gZdqObQOkiw6V8AWfXGudyCdJk4aVZlrNs?=
 =?us-ascii?Q?/KE7xDycUT0yVnXe+Abu46ISnN/RpDlmeLVqFrJSx83fLWtFSddZMMwa9xdh?=
 =?us-ascii?Q?NMqcZdZCV8XgyleDNc37+68snGK3bC7slKNiEoyatlhWt7zjYiHp5ahy7w4B?=
 =?us-ascii?Q?RyhtRTv9eAbNUoW2NpurwhvEzwzox7OeXAqwJgMvlRWYlpYs/GXSHa8iBSLj?=
 =?us-ascii?Q?9lV+hQ72aUQgw3wH52uAx8VUQDWcMh1/vd19jRNNYUitXKhE8ySHq99efGOw?=
 =?us-ascii?Q?F6Jta2LR/kOLFNu0VduU5SakTQmF3UeVAJpryRt0C46z/5XP00UjoUo47k3x?=
 =?us-ascii?Q?R+Yxs3T2n+hgzU8ktYodyqPlInMGM/JDKolBUVtO2ZFEUsqiH90TZwmjX2T8?=
 =?us-ascii?Q?9fMOHDTif6RYceU3jhC7eFGrT+x/Z1wgFqrYtD8tAfIdZ4WcnkC9D7IewW6g?=
 =?us-ascii?Q?aPeATorQamFpWyR0fWIohNK+Gion7TBd58l9mU/vcRTNj9mu97voXozxyscf?=
 =?us-ascii?Q?h2TFegZXpVY6nwO4ZaYKIVGb2tHN+szTC7GneV5OsWrzSuAHfTjTumRenacN?=
 =?us-ascii?Q?5n+kY0qFEFAJVNm9UbXoTuBpPjn0VuDXMt4O2WaMyK1k6jp10jD0JYAwiVDf?=
 =?us-ascii?Q?ntd3J7msgqT7eCeV+59J+mz2BjSn+b3xc6BVNvBhISG8j+gVO81KhB6HI7S1?=
 =?us-ascii?Q?ifmviYRTnWyWql/vhZjx29BoVoF2214yiT1BoDuHPH2hn8jytH2Q9Q3IJlIQ?=
 =?us-ascii?Q?VAD01hIY5cLnKmUTsITYTOxDO0lHSpZOKIOubTDYxyFY3mLMzqAMoBm4HHga?=
 =?us-ascii?Q?e7j8c+IwkAkzmNHomFZBYKweLxLA9rGjuF5dheDTrRjZwZZpAHXxJAi8ss2B?=
 =?us-ascii?Q?qN1wr5eX8AccMWzY3ATtsmarao7GAnZSVXZoMs1isyAXSqWSRVubF2liDQIL?=
 =?us-ascii?Q?Xz7woydZpfh/blQuNEspVAretGbyKPWYS63FF/ogMdXBAucVGijlXZGpOuC8?=
 =?us-ascii?Q?dySwOcuE3aujiA0vbenv1sGYqMZRcnoM9tUR7sMZw9f8ZdrqtgHE0n7qT+vB?=
 =?us-ascii?Q?hM4S1+ovWG08Co6kAieuTJ35+XCjnImRa+KmMsYVzGoxpx1qIts3fOvUX2Xl?=
 =?us-ascii?Q?egp423K8XHDMWtGvx/uS6+JoXAC3MtciM0v1fYKeMk2LQf9SPnP7RNWoAEyc?=
 =?us-ascii?Q?aqWGXi44G0Zt32Mdz1nUJIhuuA+qK7kWKdeUeFRewlodsORKRZuF5TxG72uG?=
 =?us-ascii?Q?ppgisRTkpyEYnuVhkFArLutW3usOEU16zkXz7Zo/aYVitEu012Bj1S6IhyUC?=
 =?us-ascii?Q?ngPr5fGDVjBbRkdPWTpWnvvobICt+UzV7d2NGckx5hxE3hFSa/WKW4/a8Tgn?=
 =?us-ascii?Q?BOXfNH6dIne+PA1p6A+tR35DidK4gQAUxtdJf2dv4mXfz6BgJt1Q40EwvDgp?=
 =?us-ascii?Q?fLxHsbfEc6kx1eVcmAz+t3Sv6lQU+WQUXmr9bQ64?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef89676a-e1f3-49be-b831-08da708fca34
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2022 11:53:30.0808 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i/EzbOhOd622HIJ/lteop3Te4LARVjiVrqdxir/6L4yik2nGQZR50QEf+htY+jBzibYJoQb4BjduiF39gX3pvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5783
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/d13: Add Wa_16015201720
 disabling clock gating for PIPEDMC-A/B
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Im=
re Deak
> Sent: Wednesday, July 27, 2022 10:15 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915/d13: Add Wa_16015201720 disabli=
ng clock
> gating for PIPEDMC-A/B
>=20
> Add a workaround making sure that PIPEDMC-A/B is enabled when the firmwar=
e
> needs these on D13 platforms to save/restore the registers backed by the =
PW_1 and
> PW_A power wells.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 7 +++++++
>  2 files changed, 15 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 22f65a9968c6a..13aaa3247a5a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1615,6 +1615,14 @@ static void icl_display_core_init(struct drm_i915_=
private
> *dev_priv,
>  		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
>  			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
>=20
> +	/* Wa_16015201720:adl-p,dg2 */
> +	if (DISPLAY_VER(dev_priv) =3D=3D 13) {
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_A),
> +			     0, PIPEDMC_GATING_DIS);
> +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL_EXT(PIPE_B),
> +			     0, PIPEDMC_GATING_DIS);
> +	}
> +
>  	/* 1. Enable PCH reset handshake. */
>  	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
>=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 3168d7007e101..bf5c39d9f9530 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1916,6 +1916,13 @@
>  #define CLKGATE_DIS_PSL(pipe) \
>  	_MMIO_PIPE(pipe, _CLKGATE_DIS_PSL_A, _CLKGATE_DIS_PSL_B)
>=20
> +#define _CLKGATE_DIS_PSL_EXT_A		0x4654C
> +#define _CLKGATE_DIS_PSL_EXT_B		0x46550
> +#define   PIPEDMC_GATING_DIS		REG_BIT(12)
> +
> +#define CLKGATE_DIS_PSL_EXT(pipe) \
> +	_MMIO_PIPE(pipe, _CLKGATE_DIS_PSL_EXT_A, _CLKGATE_DIS_PSL_EXT_B)
> +
>  /*
>   * Display engine regs
>   */
> --
> 2.34.1

