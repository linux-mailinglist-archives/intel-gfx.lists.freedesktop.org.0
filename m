Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8507E78F6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 07:01:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 926B410E692;
	Fri, 10 Nov 2023 06:01:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C9A210E690
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 06:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699596055; x=1731132055;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VeIuAB0dT0ANRMPnpRp66Tt1pQJGFfOYhiauyisCU3c=;
 b=T7jC2pj/vIzLjdP7b5FGDxFNmgS8YDKwG0Z7jrNAjf52/JdzQnFAGzta
 wRoTQCAlK9r2ThmTjl83KcE9j4qhSBnJLAoH/AoPgNjDYLU/uhBWwwtwF
 ZmxgyZVkswW+mTGNcAVV4NHoEq/pYyXYzeTZaKtPoEdSDvCPu37lI+/95
 m87DHGIBda8ViOx2yMDvTBuFb8UoQeGu+ET6tPK/FGeY9JtOes5lme6tj
 Tz1P6bKg0dmV6m9RFh9F4HNOoVEkdtr9vLafDzQsnVQ3XQhjWKN00zHiS
 yZHd+59I+vBHktYDvUeC2ZuWv2dTxFG4e4V+BXY06FiQN9TkFz0FsgWuR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="375178616"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="375178616"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 22:00:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="763667262"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="763667262"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 22:00:51 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 22:00:50 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 22:00:50 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 22:00:50 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 22:00:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VC//INQL8kGqk0IWgN0ZCK0U/Yyfr9por7D8ALS9hVkCthGPGdqMVxEyGU0QNKE0xwAqB8a3H/IfQedFSTjcxKVxy9nfKc1krQZoIMCNINHQ22zdHHx/J/+XoCQgd7C/erixv1iyDxnmkKdFnwyXoj64ID6dOlBcirnvY5/MepCM+mZEYKwMJiWuZzIHTxTKqlDhKtapxgfLhhjX/z/dtSqquUYCNRLVFFdyDxAzUOnMhLytft6zwHQ9GGUP46g8az12d6X4GSx/ZK8FDuWDReHzqZ1ZoqpBTCWW4sHklbFKXhOs8rfgRV5b/vzjtwO+tAztiuC6yHXmNY70YqAzFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y9WM+4L2TbWPbuJZnPE38126axGLvmqH9KdtgcLJozE=;
 b=dACysVq16YnXjaPFs7or3/brG+JtCVXyId+wX7EWX1R7lU/COGeUNrSESoiQ3bLW1TonbHmbGHma57dwm7Zjtcd5kL4Dy6z1qI2yYyT7+UOkr59TrA4uhdS4NknlkBmTO+ys5k5Z5RJPK5+SyyD/jPqFaPSraBLIkHaVsZM9kXQKMBvEu+9z0WoLrVKczAJi2blZ+GttmkqmI86n70xWK6yw7jj6hMzKXz9WjDgkpWkq2T9Wx21KaFDsm6racuXegd6eFyiTKI6F7d7y3gOB+/WccbvQi698/QDNALhTwcEtmr8bkSA3S0Fuu7rbNKROnI+LrHNuQVovFRnofVo0uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.18; Fri, 10 Nov
 2023 06:00:48 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3f2c:c6e5:ae21:82cb%4]) with mapi id 15.20.6954.029; Fri, 10 Nov 2023
 06:00:48 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915: remove excess functions from
 plane protection check
Thread-Index: AQHaEyb0cl+Srg09x0WRarKrVBqUI7BzEAKQ
Date: Fri, 10 Nov 2023 06:00:48 +0000
Message-ID: <SN7PR11MB6750FCAE51C87CBD8872A6FCE3AEA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20231109160722.3372379-1-jani.nikula@intel.com>
 <20231109160722.3372379-2-jani.nikula@intel.com>
In-Reply-To: <20231109160722.3372379-2-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM8PR11MB5621:EE_
x-ms-office365-filtering-correlation-id: ad2137dd-e0d6-452b-0188-08dbe1b26337
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RUaI/KLRb9H9hDDyXs9UWXuezpvfaJlByUcGn37ULScngsFmKP5gfjeCHJwpnEFCSBjJGxjJnWpQ6WJjc9B3mFXSgLMO84JyU4wowKRLLrKv+2ZZ+LzexGK+TsXfbFX4D73j+WI2HTU7kLVzEp7846EKrd0BzsQ4O8KUIOyeFCvCvs+k8sMNCS/4iFeVTNk2NjxoesTkIibQvSztAqjR04Pr68QUCJ8AjkoICaECTzog4mfM6dVHViuh9gPgA+h7vIeMpQQXxhh9NZEeTDd3XUTLpfZIBiGkh7nzQHnWnBxr54bw14AtVL6OHlu9oxDF7Q6CcDGy0pbANyoOUkEBxco0do5ExLB+b8WMgWdEHIY6LF47+k+Tw4aokTlhnDNWAEsNzUrTjx2lXvLDADe9zdZP/0BJwgxrhb5Sf/+0SIPXbVUVRevVktB74zRL4fUntllU4OYw5Ky9jRMD8SMXB+MOU+lV4aRNs0n1rcJRNfJfbYfEnFxOUwkqhWibCEJmYa553sd6RDRUPT3fDqxDMVJ54F2iIxDZVAaDGA3/mEtdHkCWNhjzAGIM7ZLPbHtQ57p+BUp6v/l7EcmqSDVojpsXNtuMsENfoOkM4cpXYGz3NAmvNEiO9ZCWuFqCw/im
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(396003)(366004)(346002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(9686003)(71200400001)(53546011)(6506007)(38070700009)(38100700002)(33656002)(82960400001)(122000001)(86362001)(83380400001)(107886003)(7696005)(26005)(41300700001)(110136005)(52536014)(66476007)(64756008)(5660300002)(316002)(66446008)(55016003)(66946007)(4326008)(8676002)(8936002)(76116006)(66556008)(2906002)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Bq7Z7bMBRRpPh39MNf2TSm//IgCWSwFvHPBxFifuKmakrZxi1lxSK110socD?=
 =?us-ascii?Q?NuUQLj0GiAH6yeZCTzEr5nELZFTuVzZeprl3iiiO9r96BtIxU0P7rSC4Mjfb?=
 =?us-ascii?Q?ksE7qAcU18mD2vb34mOXSosZDWXwyBhPaaR41AbOTaD+N0pBOLKc3ZbIJcw/?=
 =?us-ascii?Q?AC66fbWhWzITIKo9uxr4ts20lsxTH8OQkh3fkgYRTeXt3Maixw1Lpcq6jZsH?=
 =?us-ascii?Q?naWPVFHOIL3ka00n6ESCTPYcrbewYllB25dKgJc68c9mNfv77TwRzQ3vy1gz?=
 =?us-ascii?Q?3A/4AG80wVQpNNLKCIk7glsML8k07BvQeVrJIo9q9tCggZkY+BLT+ptrsi4Q?=
 =?us-ascii?Q?EitLqNu8JiAjAPZlsGVssKelMeXDkrFzQVNsoHjK+YWxp38zXgbMNnPD2EGW?=
 =?us-ascii?Q?DiBX/hKWOKlG1p06UPkifwMfup3+gtOkIYYXgWi0B3cidFnDfoWi3yHEoBd2?=
 =?us-ascii?Q?OxlVVyAalKkSPs9uMVyKqUwfO5hougv5IiXuNe+sTWJXc+nxryReuWY7kSeo?=
 =?us-ascii?Q?L64mOwv6YbMlhqiUoJd4nLo2yQtqjYswjMTHKRCPNgyrp/CWq3NxAPYSgb45?=
 =?us-ascii?Q?X45HoGXtUnHY/nsCPzg2VlJy16K6kL3sZnzE0q4WJCsmqrqATR15ARM3iQ1E?=
 =?us-ascii?Q?B0DfPCvNts17+Yuv3uFdfXrea0tLQeEwUvn9lWGGnYr4OsKZmpWeDhdeYPDR?=
 =?us-ascii?Q?NDOumz0kfkMjhikrnxWrN/i916atI8WWsg+50afux48MTTavJuyIESHNAMFz?=
 =?us-ascii?Q?ORKtnytFc67YW3qduglqsIQsklejPfPj4EmrNZAmqHpoFYRNWw+kHK+WoG1m?=
 =?us-ascii?Q?4MKFcN65nPQDfPFe/TjhDZPvXPgXsLfMGZXKjkbGlq71AdAvV2oUZOof+AWW?=
 =?us-ascii?Q?+aiE+YzPjissvwK7YWGqu30CAFDdmhKtoQTwdTmVvjQf//q8XoO1QL+cxm15?=
 =?us-ascii?Q?5zf9x6/IoDTZhJ7ziWJRYV/Qs1FdF1Le/BjQEFLmIdvRNQVNWkuCNQO0NhJD?=
 =?us-ascii?Q?LcxSuenI9uWj8ppgiFbV4Leg0OCrA2wJ8+CXhAi7+t3BBtJps2EB/GlGQu6i?=
 =?us-ascii?Q?952jNwMC74dAG9nzhE6gk0VrcO+jKyKE3gmXw5R2D94hItKy7/MXLA3KSF1n?=
 =?us-ascii?Q?sZ7KvY4a6mwrh66R6yBWpE8SXMO/5cBNR8OCR/3DcH/mR82x0qq6ENcAbl+O?=
 =?us-ascii?Q?nYas1UlzlSbvV8m/ZMmjvwW4EHzMW93mzg/nd7MXBR8T9Ec80fBiDfaT6/L8?=
 =?us-ascii?Q?MN/caNm3VZQpkd30m7oVWL9rtn7SA9j63Zomle79jJFtBPM07NAcLO+9GDCu?=
 =?us-ascii?Q?KjZzs08F1k4TOdumUe8md0VWHyngp0qle9uksTYq+cc/K4EVOGXRV45twa48?=
 =?us-ascii?Q?HOuPSAMarrSfbSoPtNME+M21wOd+Tm9griPLYTyX2HxAZaAUUpAkrzg6d5i0?=
 =?us-ascii?Q?ZccpN5yPF332MJ2KRsAiTet8IU3AykzIDsW3/pZ28lsbhSJdmaOVpaq2FMIx?=
 =?us-ascii?Q?XGvcuIp1Skj706DfQZaYFkGxitfrbcheOJnI2FtIJOwb16Yc7fPXCe8hDuU3?=
 =?us-ascii?Q?Hqvd/vrtTYQozDfUfTM8rm2QmQx5wIUpx1iJi4pp?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ad2137dd-e0d6-452b-0188-08dbe1b26337
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2023 06:00:48.7763 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sYqnFwAmJuPC4SxPOZbYmUewAji01R0NPfCaG8bVAyScRkCexuA1f9QGYl96KNRMVQlafiu6sMgWqybnzZEF2Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5621
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: remove excess functions from
 plane protection check
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Thursday, November 9, 2023 9:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 2/2] drm/i915: remove excess functions from p=
lane
> protection check
>=20
> Reduce the function calls by reusing ->decrypt.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM.

Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/skl_universal_plane.c | 18 ++++--------------
>  1 file changed, 4 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 98acf25a5ca3..39499a0ec6c0 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1854,29 +1854,19 @@ static bool skl_fb_scalable(const struct
> drm_framebuffer *fb)
>  	}
>  }
>=20
> -static bool bo_has_valid_encryption(struct drm_i915_gem_object *obj) -{
> -	struct drm_i915_private *i915 =3D to_i915(obj->base.dev);
> -
> -	return intel_pxp_key_check(i915->pxp, obj, false) =3D=3D 0;
> -}
> -
> -static bool pxp_is_borked(struct drm_i915_gem_object *obj) -{
> -	return i915_gem_object_is_protected(obj) &&
> !bo_has_valid_encryption(obj);
> -}
> -
>  static void check_protection(struct intel_plane_state *plane_state)  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>  	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
>=20
>  	if (DISPLAY_VER(i915) < 11)
>  		return;
>=20
> -	plane_state->decrypt =3D bo_has_valid_encryption(intel_fb_obj(fb));
> -	plane_state->force_black =3D pxp_is_borked(intel_fb_obj(fb));
> +	plane_state->decrypt =3D intel_pxp_key_check(i915->pxp, obj, false) =3D=
=3D 0;
> +	plane_state->force_black =3D i915_gem_object_is_protected(obj) &&
> +		!plane_state->decrypt;
>  }
>=20
>  static int skl_plane_check(struct intel_crtc_state *crtc_state,
> --
> 2.39.2

