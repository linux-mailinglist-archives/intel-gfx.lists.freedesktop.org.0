Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4643E6EFFE0
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 05:38:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1A510EA7B;
	Thu, 27 Apr 2023 03:37:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6D7110EA7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 03:37:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682566675; x=1714102675;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=czsSkCSZ+4gvLAyy0fkkwc/hKadpTmEypJh5LIPbftc=;
 b=U9Ym+44NRZlJCLnzwhyZ/f7lI0Lsy92AYzM+aawVWiLomdPwNDz+IoLe
 eer4kKoOH+Z6u/mQNmIp2zckFGbGIHuX2Y20xFZy5G9nEg8VeabudluQW
 ratXvG5+fye0atc75ok6lHUANTDstpWNqnCBCTo4iDVEslAaz46yM1Lzn
 Dvb6tovgNVnccUHVcSyV86OnHlPX0f5hRoQ9beCk6UZROPRtK1Efq4bRf
 quXdFCZjQszB83r66+pPUdOrocc12peGkbqm20fesLc0y82PmGhPPoTMs
 kek51oYV7v0Iyk6QkGrSX5L8HFR49QEynw0yNHdSVMrZyFuRvrs0CAC5G A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="410336954"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="410336954"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 20:37:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="694200684"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; d="scan'208";a="694200684"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 26 Apr 2023 20:37:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 20:37:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 20:37:53 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 20:37:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HevcoYADJCLHhPPuuu8RgJvjuqBclKjcaLHglUvwIZwCMTEmfRkEs7/Fiok2FZ/ZA011yfLueUhOaPZu7ldCkkPcLvToC1UtrUmPasqmBDFWjrO/Zm3F/8xGg3I2OvjKI8MYte1nxr1Rq2zUVXg+u9ODFyDcts4XI5PaYIYNlj04XsGtNNbkrdCdVj+8gBK6KEKKJfA1ZVThYGfGvZj3xNtxTsNFSmYAJbKaypnbe/YB5yIH20kiuv3m6+17AiAkY5rqEH7scRIUMbqN/+56fjXOYlhD2XCCEmlqu4MK5+iFLfFkIGWJuWy5WN9j36Li86Ndp1jSuvSrsYXwzfpIEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=deXnfvh65xoOXkS1D71Pacw8H27HZQ/SJuQDqe11aGQ=;
 b=FYe/rY/uyFMnPOVxPXkgOg8U46NYkaIVIonaMJW6apJwoveh4m2+I4DGQyXnLoZSOwkC0OzJNLD0SJ7UIBtRAemLIuo4L8sWAvPH6Yw2MwKqRtB2XsfQbJGpfluQ9RvqpCPOICUukqYIJfoa+sV89WcWuSb4Jpr5ypbeDb+szxYCpo+L/hDQODpTj7FP1ppwjM2xuVgfB+raXBGsS+L1IXSpGCzFcoW5d4bIPaxwbDWBkTYelSyZHoYEWph4pRyEP/fagwY4YpAMhKB5g0ucrfKp7/1HL/cvBsSFhxDr60FAtaZ3H6qlYu69uOK3SuM7Gc27WJfl8rnpRirP+xzfIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 PH8PR11MB6880.namprd11.prod.outlook.com (2603:10b6:510:228::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.38; Thu, 27 Apr
 2023 03:37:51 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::674e:f:7352:d148%7]) with mapi id 15.20.6340.021; Thu, 27 Apr 2023
 03:37:51 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/13] drm/i915/mtl: Dump C20 pll hw state
Thread-Index: AQHZc4YwRD7j060raUe0CE+b6xS8Wa8+ioPg
Date: Thu, 27 Apr 2023 03:37:50 +0000
Message-ID: <DM6PR11MB3177B9080146C8B534786BFCBA6A9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-4-mika.kahola@intel.com>
In-Reply-To: <20230420124050.3617608-4-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|PH8PR11MB6880:EE_
x-ms-office365-filtering-correlation-id: 917afd98-a8c8-4e49-5be4-08db46d0c700
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F5LOeBjOUarmJVNTjXj3oHRg/TXE1N65R6uYzUZj7mQL9+IvMdP1Vl1iPGNNLqZmcc7UTAhjPYXnzoymOmq66j154Ex6GvlEZmWJfl7ZvRn12qUaXmzIYtFMYpxP2e28zN437F52chiKU8f4QOhFQpuztOlgXBMP3KL5d2FlF5YowuStiNq4yKQODNeONe89gR9nDpjZaMUazXkqkg1NeDMl276hB/WlVzPZAyLPUqBzwwxIcFM2iqW7dcE9zNvGlH9FikOQ27aejluC5K2uHLVCLMiiF/WnRjjTPiSQg19uOyTp+6FhJfAuGCfSBhpayK2U8rXdkYkvskAmbqEcP5f6NOMxcd4B3PA1W3qlOxRFc2Mtr18hU9DAAMgZ3VkPm33aqhaBPSYV3DOsEMHkgHKyC9fjgZlaVTD9gcVEt5zXbQERmNhttiOXS0Er7BpvJydOM4+qoiELXkeqiVF+DVvR22f1NUA0dfqw69BTIRg1FzebGj9Q4QN21V3ANAfKmZuEGuUq5qinSLzb03egIyIWI9d5ZIM2K6Eo0AHm+ssaUaJlF7Ez1RhwL/MENa5WpsEWolomywzP+Ze4nGUFdZ3UYWEf1XsJsYRKwyejsJm7tOAunSRjUH4KB94m3hfS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(86362001)(64756008)(478600001)(66476007)(66556008)(66446008)(71200400001)(41300700001)(8936002)(7696005)(33656002)(52536014)(82960400001)(83380400001)(55016003)(5660300002)(66946007)(8676002)(76116006)(38070700005)(26005)(6506007)(9686003)(53546011)(55236004)(2906002)(38100700002)(122000001)(186003)(110136005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AReMVHEhDBEyejABxeSGX11Ir+Z34bQvfHu01kVoBF2ySIzjqekSu6b5tE1U?=
 =?us-ascii?Q?vP3do84Gpn6QhwfLjNT0V+ZMQuMiCjKQlLFwlirR6BE7NncJmu/VbxG/cqcL?=
 =?us-ascii?Q?3mGSQ3RSch2Ozax3ykDnH/6+bCubnmdcMA4hbMmIZmKMl0tP2rnpn8kI07T7?=
 =?us-ascii?Q?00ik1CWFEBGgkSx+OzILZsNpmXdSIstbWZ5uohTbZLBbJmx6x18GFOvERyyt?=
 =?us-ascii?Q?3ECID/LWa026rMKCqqkxi7cA+JGdJXMFHQmDPuMMYZVXKjWEW9mGrNfzfV4a?=
 =?us-ascii?Q?t1cYVgQee8fav+H/LU6JZiPNfhxeDl2rDoXDWMI7BR/ebzCni5J2yk6hFFB+?=
 =?us-ascii?Q?Yiib4Qeouu2EoPPlp1HyRH9VYErnE0N4vSoV7fF+sHjRc8APLM4oXxUM3abV?=
 =?us-ascii?Q?H+lQjd3cy4P0bbWUz+Vbkv83Xbo5E6nptA1DJ8reRO6OzvNGbobABw71eQyx?=
 =?us-ascii?Q?GywfFGtUHpnArT7YfmoUc+PpuTKfVmoh5KDkLDyEQbq5HSqaDGEBY4kkDOgI?=
 =?us-ascii?Q?ZjFHfIVTc8kT8DsRK0MNv/GS4HjXK4eNQOS6KVXfSUdfmpPWWgAdRIZuJdwU?=
 =?us-ascii?Q?0XsjJ36nzt6e8Lz13jPmp84wmJs+nq0NbiBb2qe9WiLHx/TNHQMFYLGpDNfx?=
 =?us-ascii?Q?WnnTPcOki49Fn2v8lkn5nh3cvybGlL+WkmSwETPlYMw6he8aKj4vovArQveH?=
 =?us-ascii?Q?Qq+Ncljn7cbL1HO6HXa+hXA5FsLKfBMbcUL4ufLiDHKCZzA8yZiX0XmxtkUA?=
 =?us-ascii?Q?mYxBmQ8P8pP5XezoPFwYuMoY6uCRtjggDUx1x5iDKYQQkWM2UQdpdAo2iacR?=
 =?us-ascii?Q?4UH5v2X60v/eZ/n09c1DabBe60rSupRmyl6P8avr5TtUJdS3Zog+WNYtJocR?=
 =?us-ascii?Q?Bn7UD5FYRvKa2//FAnJahyiYTFYTrCT/WNv8wAjgtL2CtklQ6gbNGhClYv/G?=
 =?us-ascii?Q?iS101XcPXFARv7hUen8F1+zxWXschkbzghPk9FGtzSsUUFQkcsEK+Ic1X3Sp?=
 =?us-ascii?Q?MNocNuWxDnKIX2+TmzyLqcOtAWvHA9ozITTKcXvNBwmRydyEzLHj9BVBsDtS?=
 =?us-ascii?Q?92q/AMAsydx+/nmJwmSNT23rY/7RXYDHd/TJejgukP8SRY3OgiivSUmhxWXh?=
 =?us-ascii?Q?etQD4IA79K/WQ7oJLHHeRxDDS4f6Uf0XWo3+ZjaLAbSDgrAJ3z8QnbR3g5Rb?=
 =?us-ascii?Q?nAhx8KTgoZzeIZVyX5dp1RhBnyvRrqQ8M+SczHCVxAGSVhvMxyjDx/niBEX5?=
 =?us-ascii?Q?Ctt9a0HYEvyB+GOS/XEmDuuiATBSoSeDPTurOiWfjB6f8HN7/NjEK9sUvbcz?=
 =?us-ascii?Q?UkF6EpDL0Fbo66vwfJVLzoHO5WeYl1BNFGnTo8yMbcyUJU7JaA/I+VezbUMZ?=
 =?us-ascii?Q?yPw0g81SWHlD6byL2iwf2eloXHuxZJiK2ddOXpXa+FCQqspOkXI/PbXbAy+e?=
 =?us-ascii?Q?54ZN6VoBPRX76z1MG74DFElkgQzFCsZ41AO8AOJ4VEcgoCk4TLPfb6FLUQNM?=
 =?us-ascii?Q?8l21MhSxy1SkakbM0qYqCTqZMtFF4xV8N0KHNtNn0O4WunCK3r6sCelgB8yE?=
 =?us-ascii?Q?zrLoxci26g145UpFhisYXQyLqxUcqcngjD+IxGWY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 917afd98-a8c8-4e49-5be4-08db46d0c700
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Apr 2023 03:37:50.8403 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6QjzP0xuDvos+S8s3KyBnoRpjpkLMQAPzPvOz72/daEvrNedSu7tedDRnOZRxiRejmZTc7RjoyajhoGAjntXiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6880
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/mtl: Dump C20 pll hw state
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
ka
> Kahola
> Sent: Thursday, April 20, 2023 6:11 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 03/13] drm/i915/mtl: Dump C20 pll hw state
>=20
> As we already do with C10 chip, let's dump the pll hw state for C20 as we=
ll.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 20 ++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  1 +
>  3 files changed, 23 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 61428c5145e5..144474540ef4 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2035,6 +2035,26 @@ void intel_c20pll_readout_hw_state(struct
> intel_encoder *encoder,
>  	}
>  }
>=20
> +void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
> +				const struct intel_c20pll_state *hw_state) {
> +	int i;
> +
> +	drm_dbg_kms(&i915->drm, "c20pll_hw_state:\n");
> +	drm_dbg_kms(&i915->drm, "tx[0] =3D 0x%.4x, tx[1] =3D 0x%.4x, tx[2] =3D
> 0x%.4x\n",
> +		    hw_state->tx[0], hw_state->tx[1], hw_state->tx[2]);
> +	drm_dbg_kms(&i915->drm, "cmn[0] =3D 0x%.4x, cmn[1] =3D 0x%.4x,
> cmn[2] =3D 0x%.4x, cmn[3] =3D 0x%.4x\n",
> +		    hw_state->cmn[0], hw_state->cmn[1], hw_state->cmn[2],
> +hw_state->cmn[3]);
> +
> +	if (intel_c20_use_mplla(hw_state->clock)) {
> +		for (i =3D 0; i < ARRAY_SIZE(hw_state->mplla); i++)
> +			drm_dbg_kms(&i915->drm, "mplla[%d] =3D 0x%.4x\n",
> i, hw_state->mplla[i]);
> +	} else {
> +		for (i =3D 0; i < ARRAY_SIZE(hw_state->mpllb); i++)
> +			drm_dbg_kms(&i915->drm, "mpllb[%d] =3D 0x%.4x\n",
> i, hw_state->mpllb[i]);
> +	}
> +}
> +
>  static u8 intel_c20_get_dp_rate(u32 clock)  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9760c6292c81..c643aae27bac 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -32,6 +32,8 @@ void intel_c10pll_state_verify(struct intel_atomic_stat=
e
> *state,
>  			       struct intel_crtc_state *new_crtc_state);  void
> intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_c20pll_state *pll_state);
> +void intel_c20pll_dump_hw_state(struct drm_i915_private *i915,
> +				const struct intel_c20pll_state *hw_state);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
> int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock=
);
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 44f07011245b..d414dd8c26bf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3858,6 +3858,7 @@ static void mtl_ddi_get_config(struct intel_encoder
> *encoder,
>  		intel_c10pll_dump_hw_state(i915, &crtc_state-
> >cx0pll_state.c10);
>  	} else {
>  		intel_c20pll_readout_hw_state(encoder, &crtc_state-
> >cx0pll_state.c20);
> +		intel_c20pll_dump_hw_state(i915, &crtc_state-
> >cx0pll_state.c20);
>  	}
>=20
>  	crtc_state->port_clock =3D intel_c10pll_calc_port_clock(encoder,
> &crtc_state->cx0pll_state.c10);
> --
> 2.34.1

