Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E374879813C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Sep 2023 06:32:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4932510E863;
	Fri,  8 Sep 2023 04:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 218CC10E861
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Sep 2023 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694147573; x=1725683573;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=x/eHmr6YoVIEtFYG08ejT5EriIgaWTC7erdJMgQYTWY=;
 b=NO6f8r6+OTWUCzMvCuM2dcstw6drF5XrWnDKzQjexywoqFwHzIZ3Vp7l
 FTTHcoxxz5nksIJmZk+Blz/U6HbO3dCQASuEJbYTSA0firnKEpYXLs0jX
 ZDnkHUmjZFmy18JNqH6RgVTokB+lQwCWRmURzcj9Hc8ieLlVVtWq1EHJC
 rBi82cq3q3ypzJJVA/TpWR7ydQaIRhDMPe3HhWjzep1yjtSTMkLq3TXT4
 KUY5NStwWaf7PJGdjyQlslaWU/gu1ooHAKfYVzSY2UvBCRU6H6VB08Zor
 Shm4v8qHn/JW3sLL+A3MnsDLsSVkV8urJhcfaUptCMdL8VCesdiDS4LQp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="377463502"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="377463502"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 21:32:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="916006799"
X-IronPort-AV: E=Sophos;i="6.02,236,1688454000"; d="scan'208";a="916006799"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 21:32:52 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 21:32:51 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 21:32:51 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 21:32:51 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 21:32:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPGVSl4ityXhC9U8empcOjqZ1uTDtBFnMLhjHJPyEzr0f8j4REMOx7fyVAZJUtUG2SdjtRqmR5llavvx6MvA/ko6glU3z0PgtaHUOrJRi2ESelDHs+bvvznzCfdSV7BbxY7V9v8L5KGOqO2vjCYwh/W2tq+IwXGsuHDeC7XiVQWJvTU28oIMiZAp0qERanp0o7fS7uVZKI4WU/DUr2SvdJp4grGh4ga7YmCpcD4zutO+bvd3XwVZzyEfnjzN6mmdzefIVX3uCa65kSheCU6F0/dH51lJD//T/bSkU4P89IoVicc93chm/4ucMbqSpjIux80Cr0n29hhe+lLA5O3+vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Muljqcvk460xY/jLii0tGGdpDITsobgeIv+sPFUhbGQ=;
 b=QyCjax4m+O+90R2vYztba8XMQCHdgmkGTtffAqA/GOPWpT86Hwb4iHTJn0bSQ/mVY8Vk8v0i9doUWKXlfRYSUXtlRLKlSjQbar4g/i+vuR7rpQp5XaJBhqdKFhFFexOBC7jA188/Z6SrTPmedeMkTPjZgtMG8IrTZYc0EhEMZG4W8F8UWqOF1w8++VZGdo40IGA07sntGz51hNt9X2Dxe1/P2atXzNIVyYg++ieJDGIt+9fOnS68UBEweFnO2MvrzT9/jT55t1N18Xap22URePowN0bgsaSvZ6fbQYGAlQK4j9S+tIy5z98Vg+IZI1et+VCkOlNPR0VCKLpRwJICWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB8229.namprd11.prod.outlook.com (2603:10b6:8:15e::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.34; Fri, 8 Sep
 2023 04:32:44 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 04:32:44 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 5/8] drm/i915/dsc: drop redundant = 0 assignments
Thread-Index: AQHZ4BwXa6n86mvVzEKO7H1ndtTJ47AQWn9g
Date: Fri, 8 Sep 2023 04:32:44 +0000
Message-ID: <SN7PR11MB67505E926D9B7DDE2596546AE3EDA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <d752a148cc84558b76c8c3dacd9c0b2e0a4efd91.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <d752a148cc84558b76c8c3dacd9c0b2e0a4efd91.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB8229:EE_
x-ms-office365-filtering-correlation-id: e5483605-4e6e-41c6-cfe7-08dbb024a58a
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sh/M6RQcSupYl+O7z+R/aIEzAqYAE0udRVzkaUAACusW1wi/lgm4y1pYUtYR44ub+ZW3bfzI29a+E+72GXlcByiz+LePZ7P35IAGijkLnezF3Bg/7P9Xw6GPw/KLSXlo6mZBnR11JzVDoUa9ym1KbVBEcZzSlaQBt/lnCrazBsMEkRUqKjCTeSHLblKj6nU0JiaGmkVdEiRFvwtVHXDzYKHTmnXnvc9QROEhG8S6NyFP+ysJh93R1acgOBvr25prO2+SnpzeSkuIO2gnavcXUk6Q/B/iijVVMSU0rCrd/NodYzwSM6gwIKZnNJ1vX32/nRlyd1DKfMqYWBXGKaP6DdkvrxcYpLn2o0TpsgDCr02cq9LVsZaXBvupjNksbbeoXcAWyk7MrtmZSycqtgCvwcxV3CkIJmKBvvYDx82aLlIRC55rO0Qk6RRM4AOrJyMkwtZ7ILXlgwopF7mk+xuonq5bMsuJsVsAmFcuf1qAX7E2MxTdNvcC5fPMWhQnXmSFZ5M/Azb7PkGioXVePBhZa2PVfQ1bd8cQU2P0eOo/StXTDj0CuRyN9wrNDHOwo0vS3Lzucc+S+dC5pN50ML8wxCnwQS2SMQBiEcdgt0t77Sw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(346002)(366004)(39860400002)(396003)(451199024)(1800799009)(186009)(66476007)(64756008)(316002)(66446008)(122000001)(33656002)(107886003)(71200400001)(86362001)(110136005)(66946007)(76116006)(66556008)(2906002)(8676002)(41300700001)(52536014)(4326008)(8936002)(5660300002)(55016003)(38100700002)(38070700005)(478600001)(9686003)(26005)(6506007)(7696005)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+rKfl3R2LYBWLAErSgwaYQl4yifwdcGHtkuVnS2xhvQogT4m9VpyCUgjBlkM?=
 =?us-ascii?Q?xMUM9WnXkfsSZuKUwqMCCfaHwp7Yp4c3JitbYiLjU2L0LPwqw/rUreISqU3P?=
 =?us-ascii?Q?V0WnREx7BZtj/cvrEYqSNbFSk2sPhOlTggccoCZriNCyHNhO7WHoXWgwBoNk?=
 =?us-ascii?Q?yMDlG96YrhHjxjyFXa4PRLcFQJe44jI+CSJ01o4tubOdHVhuFCDL9+ntCtGH?=
 =?us-ascii?Q?Cc+MrJrwqIdg/8W0YqP2mRqCViYTL/MliTMg9zMzQUQmsq5VVkx8+1kAcPRZ?=
 =?us-ascii?Q?TvbCswgdPbaHSDFl8n22NW4YU/xn3BO8l1iHrT4VVoQiuSahayWRIZaVC5Jc?=
 =?us-ascii?Q?s0J3jstUv8kdK1EryCBNuvqA+JNTJ+h3M+NjlIp80yFx8zyNGdFxV/7y2meZ?=
 =?us-ascii?Q?Lr+FuP3Tth3PG4Q0RqYJF+27ZoM3E5qOgQJ2G1VdQ/aGHN75BMZ1ImxCLfb1?=
 =?us-ascii?Q?zmGPL0u7RiH8s7/Fn/TPieyiUSZuHOQ9IDhQVcBxODkhgrXXQ4a0GKpeALLQ?=
 =?us-ascii?Q?PYZNi2flP3hZw/fg5RgGcVOI4R4G819GT4WSnBe59M6nO2CmCBu0WO/kyAsx?=
 =?us-ascii?Q?nSlfbEh7Pw910ZYMMU3fKK148ch4ArzTR6o90akz0NsJbrluPFOoQD1ybd78?=
 =?us-ascii?Q?5RpkQZsi4iiZfmlVxpYuU+6Bp9GXuDm8t096Xe8yH+0ooUDdU7gzcxBmE3Dd?=
 =?us-ascii?Q?+cQiwfP0fb+Ixa5WJBpitZaLc78ABxlncLdEUlRYtCf/PYyW2wmAHvKwY36R?=
 =?us-ascii?Q?Kf/1yT01haxi9wtvc+A/h9PH7ZTwJ62Ifk5HMC7FbDoGwlI3Qt9/VfzHiGtu?=
 =?us-ascii?Q?18WDRM3M4wC4t73aZ9Yd59VCT2SaGd+5L0LJSpts6Ge+V2JMeJbkZweizi75?=
 =?us-ascii?Q?0qKkVwwzs4oNMRwHnn331VzEnB7OLA4mGE44IGquDSljOTU26igAu0B2UpMv?=
 =?us-ascii?Q?8Y0LC/oin37cM6IyD66BYroQP+TqN2mp0ihaB3VBjz2qW/K0IJVEXwraW/bg?=
 =?us-ascii?Q?QTcQNk0737IvVp4BrGBr7KE8T7vxrrIi2oXhfiQzuYSXTEQlqFLfI/LNaSbl?=
 =?us-ascii?Q?qBgf+rzA0j2Hn0j696i5qDCAKeTwHGIBgxkKxv84nsh7HU6wRaLh0WC3ThbZ?=
 =?us-ascii?Q?yP/AHNbhuidawMRbGWThS448ozb6UdDasC66yxamOi054ezP+maQFzvLFyZo?=
 =?us-ascii?Q?mY2j6sLAG0cJJKaDeyeeDKGVbPfmLYVGo6ZbHFQgLpUg4UTpHdzBI0Bc/MeC?=
 =?us-ascii?Q?ryD0lrWOyrxpqJ9cB4B/t2Kwb1rdvKZMx1KRyW3BNGHpUpBfg0uoermQfXUV?=
 =?us-ascii?Q?4qSKIV0k0W6eZx+NGsVdh8wH7jN+I1fl81l4yGpvNL1zeAcgiWN+kCEBGXpC?=
 =?us-ascii?Q?PHeL7zVlsraJi3Bh5F9MiPdNEjlFf8U/b1lcu81wZMvuarGBlMl3lVIo0mzQ?=
 =?us-ascii?Q?V3xcuT0iDKxmUpIsOB6JAPvY/dn6Xhn86DW9d298j4r1ahjAFHT26PXHOXt4?=
 =?us-ascii?Q?TgG8WZBcgui4CiAFhuGDqMavSixNIIc2Y3KxWvsLStwW/32HaonnmbjZ75/B?=
 =?us-ascii?Q?zh9HvcRN48x5aH2sUFJu/ctMKc0f7pe7AyD5S8Jx?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5483605-4e6e-41c6-cfe7-08dbb024a58a
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Sep 2023 04:32:44.5439 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gzg7bBJp+w+2ibE/MCwrNYabbJG55aE27gUJrCbUd7MhsMr1XBLTPT7Q7l6y4zglxrYGVuh74M5vji/vulUv3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8229
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/dsc: drop redundant = 0
 assignments
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

> Subject: [PATCH 5/8] drm/i915/dsc: drop redundant =3D 0 assignments
>=20
> Directly assign the values instead of first assigning 0 and then |=3D the=
 values.
>=20

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 43 ++++++++---------------
>  1 file changed, 15 insertions(+), 28 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 4086dbb25ca5..73bfa4d6633d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -415,7 +415,7 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	const struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
> -	u32 pps_val =3D 0;
> +	u32 pps_val;
>  	u32 rc_buf_thresh_dword[4];
>  	u32 rc_range_params_dword[8];
>  	int i =3D 0;
> @@ -446,42 +446,36 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	intel_dsc_pps_write(crtc_state, 0, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_1 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_BPP(vdsc_cfg->bits_per_pixel);
> +	pps_val =3D DSC_BPP(vdsc_cfg->bits_per_pixel);
>  	drm_dbg_kms(&dev_priv->drm, "PPS1 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 1, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_2 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
> +	pps_val =3D DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>  		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>  	drm_dbg_kms(&dev_priv->drm, "PPS2 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 2, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_3 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
> +	pps_val =3D DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>  		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>  	drm_dbg_kms(&dev_priv->drm, "PPS3 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 3, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_4 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
> +	pps_val =3D DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>  		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>  	drm_dbg_kms(&dev_priv->drm, "PPS4 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 4, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_5 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
> +	pps_val =3D DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>  		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>  	drm_dbg_kms(&dev_priv->drm, "PPS5 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 5, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_6 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
> +	pps_val =3D DSC_INITIAL_SCALE_VALUE(vdsc_cfg->initial_scale_value) |
>  		DSC_FIRST_LINE_BPG_OFFSET(vdsc_cfg->first_line_bpg_offset)
> |
>  		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>  		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
> @@ -489,29 +483,25 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	intel_dsc_pps_write(crtc_state, 6, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_7 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
> +	pps_val =3D DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>  		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS7 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 7, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_8 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
> +	pps_val =3D DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>  		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>  	drm_dbg_kms(&dev_priv->drm, "PPS8 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 8, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_9 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
> +	pps_val =3D DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>  		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>  	drm_dbg_kms(&dev_priv->drm, "PPS9 =3D 0x%08x\n", pps_val);
>  	intel_dsc_pps_write(crtc_state, 9, pps_val);
>=20
>  	/* Populate PICTURE_PARAMETER_SET_10 registers */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg-
> >rc_quant_incr_limit0) |
> +	pps_val =3D DSC_RC_QUANT_INC_LIMIT0(vdsc_cfg-
> >rc_quant_incr_limit0) |
>  		DSC_RC_QUANT_INC_LIMIT1(vdsc_cfg->rc_quant_incr_limit1)
> |
>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST)
> |
>=20
> 	DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
> @@ -519,8 +509,7 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>  	intel_dsc_pps_write(crtc_state, 10, pps_val);
>=20
>  	/* Populate Picture parameter set 16 */
> -	pps_val =3D 0;
> -	pps_val |=3D DSC_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size) |
> +	pps_val =3D DSC_SLICE_CHUNK_SIZE(vdsc_cfg->slice_chunk_size) |
>  		DSC_SLICE_PER_LINE((vdsc_cfg->pic_width /
> num_vdsc_instances) /
>  				   vdsc_cfg->slice_width) |
>  		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height / @@ -
> 530,15 +519,13 @@ static void intel_dsc_pps_configure(const struct
> intel_crtc_state *crtc_state)
>=20
>  	if (DISPLAY_VER(dev_priv) >=3D 14) {
>  		/* Populate PICTURE_PARAMETER_SET_17 registers */
> -		pps_val =3D 0;
> -		pps_val |=3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
> +		pps_val =3D DSC_SL_BPG_OFFSET(vdsc_cfg-
> >second_line_bpg_offset);
>  		drm_dbg_kms(&dev_priv->drm, "PPS17 =3D 0x%08x\n", pps_val);
>  		intel_dsc_pps_write(crtc_state, 17, pps_val);
>=20
>  		/* Populate PICTURE_PARAMETER_SET_18 registers */
> -		pps_val =3D 0;
> -		pps_val |=3D DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
> -			   DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
> +		pps_val =3D DSC_NSL_BPG_OFFSET(vdsc_cfg->nsl_bpg_offset) |
> +			DSC_SL_OFFSET_ADJ(vdsc_cfg-
> >second_line_offset_adj);
>  		drm_dbg_kms(&dev_priv->drm, "PPS18 =3D 0x%08x\n", pps_val);
>  		intel_dsc_pps_write(crtc_state, 18, pps_val);
>  	}
> --
> 2.39.2

