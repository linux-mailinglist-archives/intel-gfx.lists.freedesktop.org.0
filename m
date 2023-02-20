Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E78F69D604
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 22:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8549310E7C3;
	Mon, 20 Feb 2023 21:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57D8B10E7C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 21:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676930010; x=1708466010;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dR9KJTGDK3YjjZm5QBqceJuPyAvgCe93jHJkjr2YiAg=;
 b=K9gM/oJu0SozI2pn6Ur+yLj7vHqQWJYyQKEqhRLaPpxFe2MZFlXvBt85
 CNH+xbkKbkVe+/9k2Ivf92NLog5dDiLUmMqfj5zFaEJHmiaxwnkDjndBV
 YDeMFEpXk7LoajdVLlh7EEOxHIkKzWmVyQ8NXp/7R3gLu77KX7ZPEcw40
 ELo0fY/LoOYeUKjbwyeSJ14uMeXqar6rd9uZ/E9PCp16cnftpdMExWNmv
 heBkIv3coe236xzgDFfxKLte/WW/6gtSSGkGQ120aE6QEYQbtfYXPr6DT
 xbOQHo7zMGAATvDrrFF9+AcjkzOQNjVFkDGKVAAF005s1L8dXfb1BKeOt Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="332501673"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="332501673"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 13:53:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="1000385311"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="1000385311"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 20 Feb 2023 13:53:29 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 13:53:29 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 13:53:29 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 13:53:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W7icuoJI0qpZdu3oOU++7Xi87O2tid4LPmFDJK7P2lFHPDrxruhtzK/ocM381Nw2m0iQbYiPdO8ytLCoqi/AL53oV5xblOIObe9tX3VCJV8ADQhZkNBK5w6lGRZdsgEalGaFDQg444gTVsHTxrrFWcPBxNcFVKxdMNbqEc5VQs9H4FnvYQPZEATZZWUPy+R89QbvCvjdt/ybdFCICPkVdcfFzOQLuRdXs2VMJ73XMt5+7uVblRWCOds6nTLUJLpCNqmLOlL6lEXGjfCR6T4PjsbFMx0k3zrgUHC8oH3l77wRJKDlHvZAH2x7zoiSRPc+kk1iGGXljLLbUcm9F/5SFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D8XIT4eAdoajCszWWhdprZo5VrzM53bXbq2k17m0J84=;
 b=d7qs6QFYuqsT1/izSPhWAte1dcm6unxS8qEKUcLI/0KT84isyu/ZsVdliyaHk1sn28P7RisZLUmZr24Vq4xQHwgflQxu9W17mk1CBr5+XgQY0JpyrbIbQgzMW7gO3qjAYpTl84HDmovUkv2FazSiEHGNFHDDda5HgeeTkV6HJThm2w5Eyh+F5puem0DqEWqqFYZq55CxKZdtwlODWH1u1ocLra22FpzWWBmEqkuNKh57f0aOLJW/ItxcaLdstljAjzoCYcBjTkMzXru1uU/bAKen+kBkv9GlKvQOg0nNSZ36pk7yHwuzjJH+LnhOye0g693cr2sv69dcMZyKNvHoKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5980.namprd11.prod.outlook.com (2603:10b6:208:387::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Mon, 20 Feb
 2023 21:53:25 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%5]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 21:53:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design
 requirement
Thread-Index: AQHZOsg7yqAOhomWVUSXpPkeygXwpa7YdD7A
Date: Mon, 20 Feb 2023 21:53:24 +0000
Message-ID: <DM4PR11MB636063D8739DC1D8CCA4CAD7F4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-7-suraj.kandpal@intel.com>
In-Reply-To: <20230207074416.3209722-7-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5980:EE_
x-ms-office365-filtering-correlation-id: 01f6929f-6785-4463-414c-08db138ce433
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HVHG3vm9UV7TM8zcSOY/jYvDpIanaqCDhN6EI/PoaTYM/xSsUaWoIshGy5YD5073m7CaM4FUL8p+fM4zFEZ8D1EXpSgdEcoxHgBGCcCtRGc5G8ajtuHs3kKm+HBU4hLNw6mXC8xejTaCjAWpHZRxxhhdYVMYQsasgw2HRdk9me2KrG1HZQ1IM3jO3plkQe4B/7N5S31nX9B5VmpkW17T6Yc4ONtSI2DvszF9q9zTrFAFsWYDWlboC1rbk3gpsgE01cjSll1JIkZ0SLDkDGQpyVdW6Frbe6e6HCYQB7I6E10KPSXlMT0ywZFSWgXXCyiQQLxKZDWEXaxWOQZDEgJdu2QfYA51+/bfc1+Q0VdQVZLizezTEYoyvwBnsY6OwfJ0QkuELNfiVlMzYy27bHnxebJD3OyN3SlfqX5N40ffWB5+lcp3RJ98ch6hZIZ7FIc9SsM9Lz1pPj6iGNcW181H/ZBgCaIV8C9ARIjVUti/Sz3qMfX/tBhI6KAxZpewoKBHLt7KtZm7Z1XK63usO/qVt9FxeLq98nVadb5yBlF6tjqXUfBDzcP5X9yBNTCY3wZIifHT1VVzZyBrS0aNBvLGNY8FOpBCKMX05bnZop7C799r1lMvAFDdyGdNEu7Kjf6NIMq8CZWtDFdSNoXMCQNUIshEOsCCH/inBBx3eNjcpRck+Qv8BoqyZurfP2hUpH0shO6clUMxuc+a6G+fLg8PkQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(396003)(39860400002)(346002)(376002)(451199018)(186003)(41300700001)(52536014)(55016003)(8936002)(82960400001)(33656002)(5660300002)(86362001)(38070700005)(7696005)(2906002)(66946007)(26005)(83380400001)(110136005)(76116006)(64756008)(71200400001)(66556008)(316002)(8676002)(66446008)(9686003)(6506007)(66476007)(122000001)(478600001)(53546011)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?jm9mX9qxnFo2XqBzuvx/wuZwkRuorPYJio3NBKuV39pUBRA/BMgSIJHtRjpt?=
 =?us-ascii?Q?ee/PDvekVKEwo7AGIHHy+jw08AazHQICTnq5v8h1W/bQm1KRD3X2E5DAqWGM?=
 =?us-ascii?Q?IOizufkS97HmjYjnVhmODeyEgCQtCrpSAvhXGz9SiZvzwGcB4hZzneO9H0Y3?=
 =?us-ascii?Q?6Ct8km6yB6NcSWzL+yNMDOXNVj/NkCF5ToYc5bH6xCIaXGOBeVsB6aPPrdmY?=
 =?us-ascii?Q?Fviq5SBlCkjAuA81fi2j3w2TY9H5jKlfd0MoqoVrv7IJUYeigPxq8zwNpenc?=
 =?us-ascii?Q?hM8Wk9HWTbDmMauVtJzNib2NwQImbLKTQkIzlnHOtYFq97s7w5Jihdu+pTJW?=
 =?us-ascii?Q?cwQG8HJTi7utZq4ykExivtaal0quB9ktooPCpsvpEsimEv7YuUDNqUE3tBDi?=
 =?us-ascii?Q?yVcQRdn7ieKMJq9yiecyDMhEMypZ/e6eyg2Y5IX9L32G67LssCLuK7k0apbu?=
 =?us-ascii?Q?dqCRe0sC41QF6JMiCIn1+xH2vbJZvor3eYa4nt55F/RJlHokMtdTfkSfO7kT?=
 =?us-ascii?Q?2LRtfQk0EClUJvBBa1oMuisQrPZNhY2c29dhNnjQRfj1HmxC5+6OZwDGK/Me?=
 =?us-ascii?Q?4sA3mUi2wlOEyirf6YW3QEDruhsRGF/aOChtMrkYIWO05fw6gTHrA6L5k9x/?=
 =?us-ascii?Q?dfBFeCT1K3g12ICUqIR2F1jZTO1XhrjYpgVwL1B9iyHaXG60tVeb3gQT7bLf?=
 =?us-ascii?Q?WYsVSMHdujjGo8vnW9An2Qwf2MZE1pOFhgZrZw/djdYPLrzxrwvmGN0aGXLR?=
 =?us-ascii?Q?ku9OlpiG0SwJ37UQivNBD0RKjLP+pASpW3ISjo2LjBoKya3xk49rxr0CnOQM?=
 =?us-ascii?Q?mk5YeggnrlpJYZyvJL6Bnk8KcjfMt/svAGHe2Gfv5SUDa9yCgL4eDDoKxXI6?=
 =?us-ascii?Q?7UJg6MWTX46eKiVJNzgmJuwW8exeupUJWjxH8zOBiMuHO5LuLcK6j/Hlf0QK?=
 =?us-ascii?Q?KRZ/Crhijyr5Q+aDrBPcw1pLZmA3oVfVfttDw5JGlPOz/j2f6kAJhSH+pBoP?=
 =?us-ascii?Q?NSxIj0AfZeTCONqFF7XsGyE8XamFKB+NyngQsDNKwSkVwycZkYTLZKveiCP9?=
 =?us-ascii?Q?CjEjKzNVdmsZflHXCBlfUYixi/TALz2dUpWs4r5wV0sR2xA10cSnPdnnIGiG?=
 =?us-ascii?Q?FU0foSiEKu0FxGeyR6wHCkiLZ0WmAJr5EMP0BvRSK/NLQnRFZECg/eH97Kud?=
 =?us-ascii?Q?LrLGkpjI86FXTHZS/ivpt1aAhRibchlzzQMPTMUQIMTj2pCG2QYOGdo3dKl4?=
 =?us-ascii?Q?Rj8XB4sIPQwosevrUwcyB3Sw8YOdhGrrv1w9u9+HwpQG/pwugoJOLgYp8lcg?=
 =?us-ascii?Q?L+X6cVbcU90f6qLwt8KrRfZzZaW3Ip57MtmYZ0XDDUpv04nEffYlNCzTEkak?=
 =?us-ascii?Q?5JPc6wOJHRHKD11402UTI8Moi+IEqvxjQ9Q/yi1J4wPuujwcjaqBrpOZ+IHc?=
 =?us-ascii?Q?rRddpL2/gP2MDCj/fIBK5+5M6mVmc/zIRT+7Wm3xosu6r2DudA1RRamrI6ai?=
 =?us-ascii?Q?xc7xmSNYk+2jicaku5Sh159un116wgmrRUeTapfVEXrydW5OAp48Zo16idaQ?=
 =?us-ascii?Q?5tLhKEnZc/RMCyW/ZDFP2seLinQHrDac4WJgoObS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01f6929f-6785-4463-414c-08db138ce433
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2023 21:53:24.7658 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iuXwPS8QwljemLrZ3IXu6EPoPYFN+Cbtaw4ymafgceJTNZuBX3GYtsA1pjbermEeuS1gtBuRJ3bguKPaflIp+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5980
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design
 requirement
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Su=
raj
> Kandpal
> Sent: Tuesday, February 7, 2023 1:14 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design req=
uirement
>=20
> Add function to check if slice design requirements are being met as defin=
ed in Bspec:
> 49259 in the section Slice Design Requirement
>=20
> --v7
> -remove full bspec link [Jani]
> -rename intel_dsc_check_slice_design_req to intel_dsc_slice_dimensions_va=
lid
> [Jani]
>=20
> --v8
> -fix condition to check if slice width and height are of two -fix minimum=
 pixel in slice
> condition
>=20
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 32 +++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 13ad853e24eb..6ebefc195e83 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -447,6 +447,29 @@ calculate_rc_params(struct rc_parameters *rc,
>  	}
>  }
>=20
> +static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state *pip=
e_config,
> +					    struct drm_dsc_config *vdsc_cfg) {
> +	if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB ||
> +	    pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444) {
> +		if (vdsc_cfg->slice_height > 4095)
> +			return -EINVAL;
> +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >=3D 15000)

This should be greater than 15000 for valid case, please check

> +			return -EINVAL;
> +	} else if (pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		if (vdsc_cfg->slice_width % 2)
> +			return -EINVAL;
> +		if (vdsc_cfg->slice_height % 2)
> +			return -EINVAL;
> +		if (vdsc_cfg->slice_height > 4094)
> +			return -EINVAL;
> +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >=3D 30000)

This should be greater than 30000 for valid case, please check

> +			return -EINVAL;
> +	}
> +
> +	return 0;

If code reaches here, format is 422 which should be EINVAL as of now.

> +}
> +
>  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> @@ -455,11 +478,20 @@ int intel_dsc_compute_params(struct intel_crtc_stat=
e
> *pipe_config)
>  	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
>  	const struct rc_parameters *rc_params;
>  	struct rc_parameters *rc =3D NULL;
> +	int err;
>  	u8 i =3D 0;
>=20
>  	vdsc_cfg->pic_width =3D pipe_config->hw.adjusted_mode.crtc_hdisplay;
>  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
>  					     pipe_config->dsc.slice_count);
> +
> +	err =3D intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
> +
> +	if (err) {
> +		drm_dbg_kms(&dev_priv->drm, "Slice dimension requirements not
> met\n");
> +		return err;
> +	}
> +
>  	/*
>  	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb i=
s 0
>  	 * else 1
> --
> 2.25.1

