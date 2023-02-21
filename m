Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB7369DC98
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 10:11:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F081210E25D;
	Tue, 21 Feb 2023 09:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B10010E25D
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 09:11:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676970694; x=1708506694;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=wGeXmXOsRGrAqJgUro1aOJv1DSsOo9wnzN+dP2vnfCc=;
 b=IA6bUjhEt+bzfMndK1Bp2PtCyC88sSQVuM0BcQj1V8EMhOt+FcxwhZhK
 QT5POeesHlEDld9ZEZXEeP/1Z7JZlpVprRMtjXbzHRSogGSWLrjSuXQAL
 h7+5hEPHqHQJKeyqMRGcb50QtSfALJpQramT7gD/TjrOK2T/Mlo2Hc6Nt
 R8ThAH395/N4PvynLQZ9N83Kv1mx7irL7usZ1juXUMaJUcUc7OgYtEh5n
 lE/lxprPHvSGKY0EehFuWlNWOqTh+gAEFD6J1P079FwmOpKyX61FN6HR4
 Uxl4Thsfr54fRH5sHUTZXJ3d1x/90GrNymJQD9iMSCd/SxlqLul/xW/7W w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="330306540"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="330306540"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 01:11:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701936460"
X-IronPort-AV: E=Sophos;i="5.97,315,1669104000"; d="scan'208";a="701936460"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 21 Feb 2023 01:11:14 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 01:11:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 21 Feb 2023 01:11:12 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 21 Feb 2023 01:11:12 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 21 Feb 2023 01:11:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xj8gF1E2Lko1bmwGh4Jb29JK/Ncc1NdxZgOxnbxcHIVu1ngZ8VNGx0nGkjApqCW6Z8miowV4xVNw8nIGqRYCR14SbbENDapuKGZI7hDGJFIqUjLnHdDsfwNmZlKrc+CrP1yzd2kg660HGg8fV1x1vTiP4IAnltoa8QYm02EIriEZ6UR46xXB1rG/1TxB6cIHtTL/XAUrFI3fAUBI4bTBi0noalzbd3AMZDGURlu7kmSS9xSixNgGXYot5NbhugQa5cNAWTsHWrurqpTz9VqatHOPTi8LfQVr3DLmRaVo5M6iKSBqXlAzbOFHIaByA33KY5CLYnxJxr3WzhPAjTSjyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=In65Zh7UUB+RtajtQlXHLAd1yzZtwSnhI7JwvMp3rv4=;
 b=fvIlMOUlRXxpqqLCrEibRn3RFyM1++ZZ0FzWsXGOLNP6ng/OVcBipT182ggXcJHL3JBhPdC8w4O3WXG825SHkJ1JWpLRDAxmZF5VkfEjgeLUdSDLly4VXJIX7rVd98q6iSNqF7FU04PmqxQg9FkkiQq7AdfkT3R/uuvi2U2niYqqpJniD2e35IxggvL+5MFlxtbOxac6WpDs2KRtboJ+YM6bVJ0vMv0UofXaiD3p6MI3DKY1A27TWpx0lWV++9EdtVG6Jp0NeVHoz2eOupGWce/P0tJqEDE5Oze/eCK+0rTTKupnePYU9438TKRLjrXw3sZ0eQnJmaXv/KOEyNyQiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by DS0PR11MB8183.namprd11.prod.outlook.com (2603:10b6:8:161::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.18; Tue, 21 Feb
 2023 09:11:11 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::8fed:e048:66b9:532a]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::8fed:e048:66b9:532a%5]) with mapi id 15.20.6111.021; Tue, 21 Feb 2023
 09:11:11 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design
 requirement
Thread-Index: AQHZOsg7yqAOhomWVUSXpPkeygXwpa7YdD7AgABt74CAAFAKAA==
Date: Tue, 21 Feb 2023 09:11:10 +0000
Message-ID: <CY5PR11MB63441718E9F040CFCAFB5AFBF4A59@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-7-suraj.kandpal@intel.com>
 <DM4PR11MB636063D8739DC1D8CCA4CAD7F4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
 <MWHPR11MB1741ED8C2E4BEC46BBD4FBB7E3A59@MWHPR11MB1741.namprd11.prod.outlook.com>
In-Reply-To: <MWHPR11MB1741ED8C2E4BEC46BBD4FBB7E3A59@MWHPR11MB1741.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|DS0PR11MB8183:EE_
x-ms-office365-filtering-correlation-id: 2215125c-7655-47d7-349a-08db13eb92ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rflbrNIwMUkCvKAyCEcAYpax61tN60OXZCzgEjBIm/ZpS6MwVSgRu6Lgcsjm/wrSpyJuPYHL1plCPSXG7MA+MjSVQ2PpGD5c2s8Mp89rYU0VcM/xBtRW15hV2iRXrt+y6ZUq92hPyEhZbV98CoKZZ2ldQrcKNcTMAt2InucZPzV6IjifG0RxsVvCXHZVM7AKxiPxJY14oU+dbbrurgq7rvdf14JivrYujHGDaackcsGQlDEgKy9hfs0qC3VEvtL5mX3dKR32K1W/OOA04ld+Y/WJA37NUmQSk5FVSLo8Mn0ueCailf5UKgjko9TifxecxNrJlVKfbpw1N54uxzSuAU6Gfy2kzAtmNhuuGVp+VraBPWOU2xo0ctyFqa0w+zJG6+MJmP7bw2uTlwUhsAL1VEMUs7acfYN17otZh+5izOh9RV8llgTagAjZBLvVLGBYGytUkeqc+KWWrUeQ8RVlOK/1F8+/8XaUBlOhiiJ2zSX0Mtbj8KyM2fM6m+jYHYN3l2aweIJvayDzOLg63Su10ppWXJKbLMmXv7BZUvu53CJniNIk7XOKTeLYi4XFQXUX8QouPWVhGCfHS8VFnotzqXGcGp8VhiRLKktzteMpWMgkk8emU0q6WeWXBkZdaRq9G5X8pr2nm6dKUvPePHdizZTGRl2GuJplyi6mISqaU7tMorP1B3jSQ9MFM8tX1XXfK//yh5F7EMFRMaBJqgh2Mg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(366004)(39860400002)(376002)(346002)(451199018)(8936002)(52536014)(5660300002)(41300700001)(9686003)(55016003)(38070700005)(53546011)(2906002)(83380400001)(38100700002)(122000001)(82960400001)(33656002)(71200400001)(86362001)(316002)(110136005)(7696005)(478600001)(8676002)(76116006)(66446008)(66556008)(26005)(66946007)(186003)(66476007)(64756008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?2/90rFB90MMEWto22E6wSQlWA2GxOOtSvUPPlUYQ3paEOwZb4bRa74gTfE/l?=
 =?us-ascii?Q?tsbi3eP54M57b949lWNfBQhWjXGFCEU3ZNNOFQ/UOA/s/HT8B37fa+6efCxL?=
 =?us-ascii?Q?CpXXb3ulwll++2Y8eJ5qJjk9kTlktyMr++6SlLP8vFW6TEw3VwvKTXYfxKqC?=
 =?us-ascii?Q?h6WRQchV7xKasSAgTd0eeVRDGYU27U03DwQRLkSvL+SYazVnc73fvSS8Z599?=
 =?us-ascii?Q?2Mc32K7mhp9CimZUe3gp2jIPrbF2UQQfcrAZ/xymgSafX5KAXD4f3S8EgxPr?=
 =?us-ascii?Q?I0PcnsnLSSWRWg0i5J/xHMQ3zUNz5Cksm3roMXyj6z4JvhbYoA3rNalcbg7n?=
 =?us-ascii?Q?EvbseM2ykvT/Ipprn0JDxas/+eAq5OSRE7UwKeSqdD+FKBr3Ny0RO1k3LNtG?=
 =?us-ascii?Q?Z0eG8NcH/lFqg/d6j1tCIdb+42wNGoXI8m7KorxTxoed/e0aAbLONIUws78P?=
 =?us-ascii?Q?AdFHipKA/SQuO0ER59Uc+5R1SGhrOmk0ZqlPEC0W/HmovDDxRMKsmxLFxgUC?=
 =?us-ascii?Q?QmSjiuWm1qHwr/7WkVkOuFoUSqkvYMPgvRmLfheB8QuptpaLFYqPbtxHTm+g?=
 =?us-ascii?Q?4qT7agRcohgkA+BMjRsC9RE+Zq6h5pnKGpdg5Jvpba2IrXHnKmdPM3jJqngM?=
 =?us-ascii?Q?wok/0B+1kvoxgs6bxeu0F1dXXfOxIkhEHjx4YLMqJNE7YDv2reBEqwgjI0ws?=
 =?us-ascii?Q?L+OsH1OSv5PTrGLBDwi9NF6KPvdiA1w1Yh8iAGuR6beolbvfRN7S7TimAGYu?=
 =?us-ascii?Q?3zJINEgwkjsTWWuZmahFn5wA2HOJIP7KQSCGM/4rsNaOB+TkgjAvqkuPTiPa?=
 =?us-ascii?Q?ENyKtpH214/WA8xzvnrsRPV148WdVh0zqejjhEUniNVGhwBz4VvcFLaBzg61?=
 =?us-ascii?Q?w6n5B+e4QY7hAxBMXzSjEhSGc3WShaezs+iHCIzXZcdSrlNjA+Daes2jvThC?=
 =?us-ascii?Q?zaogq3OYkVUkDZyrZku/4jIJXmJZH+ZP48NQfY5llVsoUe/JGC9wAEo58MX8?=
 =?us-ascii?Q?l8zY9wBdY6ZyVxXY1GEY4OnLqISElkbyCHM2qQKlNBzWJ3kXInFAfgoTxj4W?=
 =?us-ascii?Q?Cih2h2YQKQ8MlBKoWGIGhHAkavN4H/NtY2BkWl2CKrn5ygcFS59lJVcYEvVi?=
 =?us-ascii?Q?ggXz8YaIbzNCH3bn3f8LJfEef5WJ5YqSiPkIOdWFNLCXNSIl6JzbzQSggRBe?=
 =?us-ascii?Q?BQ26EkIWBHV10z89bkecovMguYIDwzNjoBt+d/FoYtsuEKAniPGgMroNncTW?=
 =?us-ascii?Q?NmaGiEdyiAHrTaKzeAHPQ466oKZacxs5azORuF5QlRE2qC9RteCwOpq8gRrF?=
 =?us-ascii?Q?3TTI43ITO4iwKS2PXHvIs7OkWlOXUK9iEgIlz7pkutZsnTBtHi8m05GkXNI1?=
 =?us-ascii?Q?C/3/R1ru58rfI8kzSeiQHpCbeNF5kb1FQLQHfxrtWcgoE8Ud/KiQm5cM58Uw?=
 =?us-ascii?Q?Nm2J6NiYGS7kx7mg40nW7Z81x+x6sCSVS106Cq/BeblCDshP7z1/aM2lxBBt?=
 =?us-ascii?Q?Xcb/3qXjhDHCuww+n3B7h2TqoA5qzz6dxXCNDUWsACfQzHBG/pf6oXrP8R9e?=
 =?us-ascii?Q?ddANrUEkda9xpOFxrBnaAm5z2ngru015xNGtDQ7E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2215125c-7655-47d7-349a-08db13eb92ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Feb 2023 09:11:10.5965 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IH7rGkxKKo2DIX8i+WibIFM+Y4hzMtFJcTrDiB1CB2+caDpi8isEbkKY+gtS23Oit8aNY1aMv89CxTAypeb/wQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8183
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
> From: Kandpal, Suraj <suraj.kandpal@intel.com>
> Sent: Tuesday, February 21, 2023 9:51 AM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH v9 6/7] drm/i915/vdsc: Check slice design
> requirement
>=20
> > >
> > > +static int intel_dsc_slice_dimensions_valid(struct intel_crtc_state
> > *pipe_config,
> > > +					    struct drm_dsc_config *vdsc_cfg) {
> > > +	if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB ||
> > > +	    pipe_config->output_format =3D=3D
> > INTEL_OUTPUT_FORMAT_YCBCR444) {
> > > +		if (vdsc_cfg->slice_height > 4095)
> > > +			return -EINVAL;
> > > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >=3D 15000)
> >
> > This should be greater than 15000 for valid case, please check
> >
> > > +			return -EINVAL;
> > > +	} else if (pipe_config->output_format =3D=3D
> > > INTEL_OUTPUT_FORMAT_YCBCR420) {
> > > +		if (vdsc_cfg->slice_width % 2)
> > > +			return -EINVAL;
> > > +		if (vdsc_cfg->slice_height % 2)
> > > +			return -EINVAL;
> > > +		if (vdsc_cfg->slice_height > 4094)
> > > +			return -EINVAL;
> > > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width >=3D 30000)
> >
> > This should be greater than 30000 for valid case, please check
> >
>=20
> I missed this will fix it the condition should have been < 30000/15000
>=20
> > > +			return -EINVAL;
> > > +	}
> > > +
> > > +	return 0;
> >
> > If code reaches here, format is 422 which should be EINVAL as of now.
> >
>=20
> Not necessarily code can also reach here if all the slice dimension requi=
rements are
> met for any format also AFAIK INTEL_OUTPUT_FORMAT_YCBCR422 has not been
> defined yet hence can be found in crtc_state->output_format

Oh yeah, missed that. But it would be good to have a check for YCBCR422 jus=
t to
restrict it here.

Regards,
Uma Shankar

> Regards,
> Suraj Kandpal
>=20
> > > +}
> > > +
> > >  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)  =
{
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> > > @@ -455,11 +478,20 @@ int intel_dsc_compute_params(struct
> > > intel_crtc_state
> > > *pipe_config)
> > >  	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> > >  	const struct rc_parameters *rc_params;
> > >  	struct rc_parameters *rc =3D NULL;
> > > +	int err;
> > >  	u8 i =3D 0;
> > >
> > >  	vdsc_cfg->pic_width =3D pipe_config- hw.adjusted_mode.crtc_hdisplay=
;
> > >  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
> > >  					     pipe_config->dsc.slice_count);
> > > +
> > > +	err =3D intel_dsc_slice_dimensions_valid(pipe_config, vdsc_cfg);
> > > +
> > > +	if (err) {
> > > +		drm_dbg_kms(&dev_priv->drm, "Slice dimension
> > requirements not
> > > met\n");
> > > +		return err;
> > > +	}
> > > +
> > >  	/*
> > >  	 * According to DSC 1.2 specs if colorspace is YCbCr then
> > > convert_rgb
> > is 0
> > >  	 * else 1
> > > --
> > > 2.25.1

