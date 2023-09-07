Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C170796FBA
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 06:58:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B962D10E756;
	Thu,  7 Sep 2023 04:58:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D247E10E756
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 04:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694062678; x=1725598678;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5e1jhpA9SqE9cnerFUnSP8X06u8wpWOT1oDHiEMMuJE=;
 b=OMuI+UVjdqRswLtXN7KLq4Efdhh1iDzHATb5mFqA1hFErvYtERCatG7T
 u3vpJFAjsOkwj9erMfnmdN6TqtxyFNsS+yukmm8iNOYV1+Z9vGMW3MaaS
 QlQ643706KRwa/VUj+8RpGU+fRC0PPJE80xSIKVTToOT8xpQpU0iSjlZ6
 PCG/6X6vga8f92q0/eBwBEzdTqSJY0+OLHlsgS23BvKE73qCJongqNmCY
 AL4xxJObcB1n3P0NySRTkYYE4Lad9CLfWDfhyPVr/MF7jnbaEIwDdd9n2
 pfB0xN1Ix1OneiTD7s+BGEAFpbV6R3i3Xm3tLHV89Rz2x7kTqDLENyIn+ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="441245265"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="441245265"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 21:57:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="735346178"
X-IronPort-AV: E=Sophos;i="6.02,234,1688454000"; d="scan'208";a="735346178"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2023 21:57:57 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 6 Sep 2023 21:57:57 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 6 Sep 2023 21:57:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.104)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 6 Sep 2023 21:57:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lNnx2SjnWLaBDgpBBBYHYeyoFC0cx2c9UtNTgJ1kqQi1ldFOjEQluB59hmT/9BRZ1ZdjAjxwqPcdKnRFr4p2H4Z55ZjRQaHoJeDpweJevYV3WmUVCzbg7eWlcnAQ/fnfpiav0QGTqE7zp96HACu2QatfUj6oMCJQU66xl3j28UIJ40cDxgvNumMHbFZBlA8Yq0UJBKqZMuRxbgpMnEh3IdsIc/fCuO5FJvLLWSDcTtzZr89CU41k6Uoz98HsEkvm4ri6F3+WtAcbVpicDZsGaVTnKMVWvsNApb/bXSQp2FnXI/+C1eqAIJDaZvp5NgEiwe6V8vSjK9Oa+gUIATVUAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5kCc6WG6r2quUC+OFTuPcD3eTch3skb7f0dmsM+YCro=;
 b=BLWwszc8BgNsPoOeSRU+RScG3iIsJpeh8vh+OIWqtEh9bN5qadNrC+XelPNPkW2I+DPeOxMA1rnbS1mHu6nYZjCKISym2WZnlUAK+iPVGIAVSYW8+cvMhe+ziRzfUh8PxXcz6v21Rp4ngrEoUkPU+KSfIK2/H3g1hfhEBVIyzmL+5G2+WYEOIpxasQIV71gT5fKWQVmen4DZUJgvpDjSQ+1noIIoLQPDvM8wpuoHehttwG+n0MqSfmSmbSzh465LQERLjGUAyo6K8oK6srsZP3Vb3R0Tq1BCxI0pZTgS9IG0sxiF788Gyi9AGiHvf34zjozyrXASk51tMwBcQuP2GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB5957.namprd11.prod.outlook.com (2603:10b6:510:1e0::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6745.33; Thu, 7 Sep
 2023 04:57:50 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 04:57:49 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 2/8] drm/i915/dsc: have intel_dsc_pps_read_and_verify()
 return the value
Thread-Index: AQHZ4Bx8BaqdKiz8DkSj0zx2ZAcI07AOz0oQ
Date: Thu, 7 Sep 2023 04:57:49 +0000
Message-ID: <SN7PR11MB6750312B5BEB634EA5D75658E3EEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1693933849.git.jani.nikula@intel.com>
 <89b7d70bb19114ab3ff0e150a4b862d8032f136d.1693933849.git.jani.nikula@intel.com>
In-Reply-To: <89b7d70bb19114ab3ff0e150a4b862d8032f136d.1693933849.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB5957:EE_
x-ms-office365-filtering-correlation-id: bae56ed7-7e4f-4543-6c2a-08dbaf5efc42
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MfmiE+aa2sxAth5JCfXzcaTTgodoPOwGc6M4NPzS7PGTEgt1VH/nODpbofRshx3SKF/2JigJxsDipgtIDIUfiPRI4dsSGoOrAogmcUknAslH9chxYKhtUIhgCk9r4ntMQRHWVE0xLhvlcPvOkjYJxmKAX4SxJkuakyokVrVPxE3jAk4uXe5hpHs2HhdIwUUrTmzmTaukHV36kzaYLcER0xfSIJAn+i5rUWhQrtAMh9SCT/zTxoKZ3RJBJMOcFv8anJExTKMQ5zraWM6qsbuSX4y9KpRvj70loFP7lTPQW2CJWclxs0HA9e2qACkPkP9kcuolsmFL/SisrHTRCNa+4cXM0zNZ3m2bA+kOq05Gp84F6GkIPuvePokdMoJkBgmPOEzU/MVzMI4T+e7jJYEBqRL4t5EKxhE1iRIc6zyIIdH/rlvlNDbVPIZ1dP5rxqevx4RiSCmddRM93ierAVEGZ+GTRLRkmi1dKIjsFzYd75oC877eDaqdO7KCKRn5tXJe298VDEAZEovRlWzgo/g9Puljxk/W2GBsslsKAxH4ezFexOrPVlTD+aczkPF3MmTozFuJYdEBXdM/RX0kDiBHIPeM8/RvCPP/AFr+oqhAkYR4q/KpQI3kBPC0mwc0e0iJ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(136003)(376002)(366004)(346002)(186009)(451199024)(1800799009)(66556008)(76116006)(26005)(71200400001)(66446008)(64756008)(66476007)(9686003)(7696005)(66946007)(110136005)(41300700001)(316002)(55016003)(122000001)(107886003)(4326008)(8676002)(8936002)(5660300002)(52536014)(6506007)(83380400001)(478600001)(2906002)(86362001)(38070700005)(82960400001)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TS+poqttJNy9wewVyKFE3qep+rKxnUhJkgDhZPYMu1bgIdub9cuy/djCY6Ks?=
 =?us-ascii?Q?udhnxTVCpQO3Gs04Y8TLKe2vmoILYpczyYWT1VoBEt2HC+Ak5q2sf9RDbUoV?=
 =?us-ascii?Q?RBsfoR62jLJ4YAt2JuNajllL0gSGWe58jwiLnP+QT2IYb/bm5J+VXtuKHh1d?=
 =?us-ascii?Q?izEsLg0Xpsr0AcnGWAqKCwIH23e2txfmZqudUwZebAEzS/9tH+dQz/LKTi8d?=
 =?us-ascii?Q?2OTHVU37wxg+/w8cPd5XXE0SyHxoREf31NQkeVCEoiYNdOtXvglalf12kyJV?=
 =?us-ascii?Q?C3rdxDqz30s/pq7Chq63vjDbaQs5nedJxvaYITsngF0+LrB2+fj3tU2cakW3?=
 =?us-ascii?Q?Je7EApxeLZzTjf8WxBCRsGnz3DPnykplyyE49gmbtZUkJbqF+jlUGaoGg9zt?=
 =?us-ascii?Q?T46M5y9P4jRocgMDa6A4qb2g4XwruWug7N2z9+5+j/7lyyZjsuUTTeo4b+ib?=
 =?us-ascii?Q?EkeTcWwkUvu/fyU7RlT6gpNN3IBu+24RWasC9lWUTf5827iw4UKa9pd/jH9x?=
 =?us-ascii?Q?Qa5M3e6IozVkLcDyX0eb1BA74NKnkRj1bfAcfmYab5+bNgR1fdHP39cgl62B?=
 =?us-ascii?Q?bxa69wzEIdOASJnU8+FCWGCU04GcIYCCzGD2ev4QqSeQHbJMerrLqziqZqTA?=
 =?us-ascii?Q?heX8mCN+NKBklKstA3np7FJq7XvAsF4yLjbVETUAEYUMHOT9lFCJxz1rQDZL?=
 =?us-ascii?Q?WImjkmBGadoGVmsMtVFbpnZND0W8vbueMdV/bT+tihjwBnAehIYMH2JIxS6f?=
 =?us-ascii?Q?hsS0i0nXkzPH+SjpHWe3EbN+octGKhwIo2rvpFxU6fIsFYCP8G4RLDe4PV0f?=
 =?us-ascii?Q?vCvFoIDiVjSvptWleP0zRkv1qysD/nWBHP/ISA0XkGNmlEGa6AqEljeqaXh+?=
 =?us-ascii?Q?3aZD+R1/GUP7SkwRUCZ5D7dGakgN27Ia5SI1VrOYoHLbuOO+qxDfMJZlvWsx?=
 =?us-ascii?Q?2xQzK2UnbGaUMwHps66YH9F6iaw0lMkdTONmXYvS0+MOBJydRQ3vn/ZMmW7d?=
 =?us-ascii?Q?Ki1SUQfNX+nlOn80gF2A+mE1JbayiG+PtZ8QmMOAbwzPDufCRrFVlrDsVhpB?=
 =?us-ascii?Q?UxzeTHhvkfxQW49qYqeLfDLiRgbwG/O5XwYBOM2ofwC7doZkC8zxUxdHZLZf?=
 =?us-ascii?Q?6ayyNxP/BZ7dUJG/q+zKuf/BxGka26j34K7aUrJ8ug3kaMblE6UiVbn0VoDD?=
 =?us-ascii?Q?27Bslek0g/sR8yIxpn0mPzDsykov6W4j83vW4HOlsBJmFpjF85e7GD+PWO2G?=
 =?us-ascii?Q?JGf62AtdZoFODjCa2molrPz3TSYlwARvDIHOCHCljSJ+gnwccSx6JPZju3n6?=
 =?us-ascii?Q?FoyDVG6PnSIFKjhISH2HflYGyDVO8yHG2MLHRRNzJoafiiP8vrWSO/gMJeS+?=
 =?us-ascii?Q?X9EZ+TgpwCguze2gywLtGER6+ZD9vXGeNZYrA+TYRsJbYiCCd7htyEH8L70I?=
 =?us-ascii?Q?TVIG6JnOpYiykrZfTjSSb+jUyymzQcnS6QpCMt5NAZZ+rp+H6DBvq8Cb7mQZ?=
 =?us-ascii?Q?Tus6v325ETBUpPZNjFKu5pFp2qV2IHMKOR4DipnT2FhMd91BItZFqxqiFzKj?=
 =?us-ascii?Q?wk5koixw68RLvo4nZaFLIsgm/RH/nq1JVRYEo3pI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bae56ed7-7e4f-4543-6c2a-08dbaf5efc42
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2023 04:57:49.7001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IIf01B8Twbta68hDOQ9j9uKJMeUBvhZhPXfrjxrgKZmeqfH1OaKtCBaY7VB5RHHbyn2ULAH2gVykVb2zEjxhzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5957
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/8] drm/i915/dsc: have
 intel_dsc_pps_read_and_verify() return the value
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

> Subject: [PATCH 2/8] drm/i915/dsc: have intel_dsc_pps_read_and_verify()
> return the value
>=20
> Register read functions usually return the value instead of passing via p=
ointer
> parameters. The calling code becomes easier to read.
>=20
> Make the name conform to existing style better while at it.
>=20
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGMT.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc.c | 36 ++++++++++++-----------
>  1 file changed, 19 insertions(+), 17 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> b/drivers/gpu/drm/i915/display/intel_vdsc.c
> index 14317bb6d3df..abb2c4370231 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -840,15 +840,17 @@ static bool intel_dsc_read_pps_reg(struct
> intel_crtc_state *crtc_state,
>  	return true;
>  }
>=20
> -static void intel_dsc_read_and_verify_pps_reg(struct intel_crtc_state
> *crtc_state,
> -					      int pps, u32 *pps_val)
> +static u32 intel_dsc_pps_read_and_verify(struct intel_crtc_state
> +*crtc_state, int pps)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	u32 val;
>  	int ret;
>=20
> -	ret =3D intel_dsc_read_pps_reg(crtc_state, pps, pps_val);
> +	ret =3D intel_dsc_read_pps_reg(crtc_state, pps, &val);
>  	drm_WARN_ON(&i915->drm, !ret);
> +
> +	return val;
>  }
>=20
>  static void intel_dsc_get_pps_config(struct intel_crtc_state *crtc_state=
) @@ -
> 860,7 +862,7 @@ static void intel_dsc_get_pps_config(struct intel_crtc_st=
ate
> *crtc_state)
>  	u32 pps_temp;
>=20
>  	/* PPS_0 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 0, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 0);
>=20
>  	vdsc_cfg->bits_per_component =3D (pps_temp & DSC_BPC_MASK) >>
> DSC_BPC_SHIFT;
>  	vdsc_cfg->line_buf_depth =3D
> @@ -873,7 +875,7 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	vdsc_cfg->vbr_enable =3D pps_temp & DSC_VBR_ENABLE;
>=20
>  	/* PPS_1 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 1, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 1);
>=20
>  	vdsc_cfg->bits_per_pixel =3D pps_temp;
>=20
> @@ -883,31 +885,31 @@ static void intel_dsc_get_pps_config(struct
> intel_crtc_state *crtc_state)
>  	crtc_state->dsc.compressed_bpp =3D vdsc_cfg->bits_per_pixel >> 4;
>=20
>  	/* PPS_2 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 2, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 2);
>=20
>  	vdsc_cfg->pic_width =3D REG_FIELD_GET(DSC_PIC_WIDTH_MASK,
> pps_temp) / num_vdsc_instances;
>  	vdsc_cfg->pic_height =3D REG_FIELD_GET(DSC_PIC_HEIGHT_MASK,
> pps_temp);
>=20
>  	/* PPS_3 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 3, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 3);
>=20
>  	vdsc_cfg->slice_width =3D REG_FIELD_GET(DSC_SLICE_WIDTH_MASK,
> pps_temp);
>  	vdsc_cfg->slice_height =3D REG_FIELD_GET(DSC_SLICE_HEIGHT_MASK,
> pps_temp);
>=20
>  	/* PPS_4 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 4, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 4);
>=20
>  	vdsc_cfg->initial_dec_delay =3D
> REG_FIELD_GET(DSC_INITIAL_DEC_DELAY_MASK, pps_temp);
>  	vdsc_cfg->initial_xmit_delay =3D
> REG_FIELD_GET(DSC_INITIAL_XMIT_DELAY_MASK, pps_temp);
>=20
>  	/* PPS_5 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 5, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 5);
>=20
>  	vdsc_cfg->scale_decrement_interval =3D
> REG_FIELD_GET(DSC_SCALE_DEC_INT_MASK, pps_temp);
>  	vdsc_cfg->scale_increment_interval =3D
> REG_FIELD_GET(DSC_SCALE_INC_INT_MASK, pps_temp);
>=20
>  	/* PPS_6 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 6, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 6);
>=20
>  	vdsc_cfg->initial_scale_value =3D
> REG_FIELD_GET(DSC_INITIAL_SCALE_VALUE_MASK, pps_temp);
>  	vdsc_cfg->first_line_bpg_offset =3D
> REG_FIELD_GET(DSC_FIRST_LINE_BPG_OFFSET_MASK, pps_temp); @@ -
> 915,41 +917,41 @@ static void intel_dsc_get_pps_config(struct intel_crtc_=
state
> *crtc_state)
>  	vdsc_cfg->flatness_max_qp =3D
> REG_FIELD_GET(DSC_FLATNESS_MAX_QP_MASK, pps_temp);
>=20
>  	/* PPS_7 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 7, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 7);
>=20
>  	vdsc_cfg->nfl_bpg_offset =3D
> REG_FIELD_GET(DSC_NFL_BPG_OFFSET_MASK, pps_temp);
>  	vdsc_cfg->slice_bpg_offset =3D
> REG_FIELD_GET(DSC_SLICE_BPG_OFFSET_MASK, pps_temp);
>=20
>  	/* PPS_8 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 8, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 8);
>=20
>  	vdsc_cfg->initial_offset =3D REG_FIELD_GET(DSC_INITIAL_OFFSET_MASK,
> pps_temp);
>  	vdsc_cfg->final_offset =3D REG_FIELD_GET(DSC_FINAL_OFFSET_MASK,
> pps_temp);
>=20
>  	/* PPS_9 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 9, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 9);
>=20
>  	vdsc_cfg->rc_model_size =3D
> REG_FIELD_GET(DSC_RC_MODEL_SIZE_MASK, pps_temp);
>=20
>  	/* PPS_10 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 10, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 10);
>=20
>  	vdsc_cfg->rc_quant_incr_limit0 =3D
> REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT0_MASK, pps_temp);
>  	vdsc_cfg->rc_quant_incr_limit1 =3D
> REG_FIELD_GET(DSC_RC_QUANT_INC_LIMIT1_MASK, pps_temp);
>=20
>  	/* PPS_16 */
> -	intel_dsc_read_and_verify_pps_reg(crtc_state, 16, &pps_temp);
> +	pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 16);
>=20
>  	vdsc_cfg->slice_chunk_size =3D
> REG_FIELD_GET(DSC_SLICE_CHUNK_SIZE_MASK, pps_temp);
>=20
>  	if (DISPLAY_VER(i915) >=3D 14) {
>  		/* PPS_17 */
> -		intel_dsc_read_and_verify_pps_reg(crtc_state, 17,
> &pps_temp);
> +		pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 17);
>=20
>  		vdsc_cfg->second_line_bpg_offset =3D
> REG_FIELD_GET(DSC_SL_BPG_OFFSET_MASK, pps_temp);
>=20
>  		/* PPS_18 */
> -		intel_dsc_read_and_verify_pps_reg(crtc_state, 18,
> &pps_temp);
> +		pps_temp =3D intel_dsc_pps_read_and_verify(crtc_state, 18);
>=20
>  		vdsc_cfg->nsl_bpg_offset =3D
> REG_FIELD_GET(DSC_NSL_BPG_OFFSET_MASK, pps_temp);
>  		vdsc_cfg->second_line_offset_adj =3D
> REG_FIELD_GET(DSC_SL_OFFSET_ADJ_MASK, pps_temp);
> --
> 2.39.2

