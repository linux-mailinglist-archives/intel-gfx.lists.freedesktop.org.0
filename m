Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D11F76E4504
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 12:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 522BB10E273;
	Mon, 17 Apr 2023 10:18:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7225910E289
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Apr 2023 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681726733; x=1713262733;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9AVgA5dVVb2aubx49bMJRTArOG5VhIA/+o6ppvUoSgA=;
 b=eaNbL4Q/ZbSJ8+vPBClhIyTHyRH8glbIhHGBr8XzJzCEKKNm0AemInsG
 TcqWdgp4HPZ6VwQlQb2cpgzI5RpeYjRVrUF8p9lQOPh6ScXdYpUOYSnl5
 TSYGByvhX9sj9DClGWkZ3ccGM1d6HmsNguGgOUMVHnlDbmlEmIRIfrSJ3
 KgyYhFGOmOUNrLzkTasyPfwa6vFk5xBYz/KJxZCn0LGgicYuc37lKzjQN
 BNUPiPaGIBorsYyOr8xElafCl+EHCWB/YDEWbUzFebC/xurVhDFhyJKhm
 ++FfEDeVbzD1LN1rX7eTok/T73k7tin9pf6PHm87xjAyxal2wMlPEHAtT Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="343611380"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="343611380"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 03:18:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10682"; a="780018598"
X-IronPort-AV: E=Sophos;i="5.99,203,1677571200"; d="scan'208";a="780018598"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Apr 2023 03:18:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 17 Apr 2023 03:18:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 17 Apr 2023 03:18:44 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 17 Apr 2023 03:18:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O3tGLEAwK4bCgiV+gYPOyxaCCagq1rBAchRUlFEmcqDeDYn3qVuZKrF1bsk7mNIvxipuXkTOMt8aAOplOXnl/DBUOGWhNgjlJPY+I9U9y1TUjOhsO1iP48mAXcZFTJunT0CMYibvEzIFvB0kOvYoN3zUFntvTf4m3y7uwmgrwu3CAxQN35Of1GzEJXlZSfnHi3fHIml5sraGvp9w7J2RonywKJPBK/pXGXOWuQFMVxCw6yaqYZItKqFX41RVeDrOtzfHCIX2fIR3kcRcz9BIlmbo0+9RrP14IsfqjBETu3cFG/fRqXW+LQscfsj67I4rheMHxYy/keRFbkALn1qNpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=g3Oqo+mJ+eIHCoQW0luGNRBdnWzSYB1qRjHPyKh1KIQ=;
 b=iyJmj43f3L09RNd2yuzIe8Cg8smE9tNm/04ZYgmJ6yCVd36nZfURFkdfP+zWF3VvsfC41QnLp8CLZS2cPJ7Uyx3/tsZ7FqSlkvMfok2CbSqQeCUFt5zLAlCuQkT5Gzw9SEAncPBOGAkGqtz/rf1LZX/NZjFHuyJHPP4xSVIMn0EV1UTtrZjwpqjC2agUFe+CwtViAfaHAV9ig+upVbs9i8ByFl1+RN7zm1KMLCRz+UeV0756f7bGWOz9hPnBDUOBisnmOu9bY0FK3/Emfmj4yC9X2CDSl3dYjKbsBuAgaYHkB0Fq7HgYqFM4Sx1ZOM5nXBcQTtx/mBSQFhLKhDWelg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB5107.namprd11.prod.outlook.com (2603:10b6:303:97::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 10:18:42 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::3541:e31b:6f64:d993%9]) with mapi id 15.20.6298.030; Mon, 17 Apr 2023
 10:18:42 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
Thread-Index: AQHZZ48eDLRLF5QNKUCgBLAIXnjav68vRLgAgAAXivA=
Date: Mon, 17 Apr 2023 10:18:42 +0000
Message-ID: <SN7PR11MB6750CDF9E59B364748A7ABB3E39C9@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230403080154.1239873-1-suraj.kandpal@intel.com>
 <20230405071951.1258132-1-suraj.kandpal@intel.com> <871qkigabf.fsf@intel.com>
In-Reply-To: <871qkigabf.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB5107:EE_
x-ms-office365-filtering-correlation-id: 9000a55d-9fa1-42da-4a01-08db3f2d1e98
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pej62wagEjURihZra9nM1bYc+8qiWk7pmbcepJDW8uRc+lhsh3SqWU/UvSCCdRpGMV9VCetTP1hi1Jq2wjIvGa7mHuUjTZ1QAIPaEF7ila5j9EeA7IF7LEdqhdhHgg3mPaiuo9tDz2ZBHp8W9t4L02rQXJ9BKNp4AYkGbQ8CgymIDAGqIJcKNZV9BNQq0SZ+yQN8/eyU8u4gTnqP0WRKXASPd59egb9OWFfutcU6SPZrkedmeMWgaAaC/14r/gWB7Pl1eCkhloT0X6sGDazDo9TO23Otqs3QmhB1gXpKi+ipzHYpqYW6aM2enjcRJHYmO4Aif1vo+o3D7yu5lUketAFVR2slP+hviY/+ZMfvl0Z4XPD8bZZVzcjuZgR0UEBindIPds1tE+ekcU+GPDx+33xUb/rMUIm+hf1sNG/zEaaFJupc6vu3aukBG5sAjzTqFvvBOvICpsLltFETGbUntLsEvXGnvW/4T1ZldP5zsFk7mbRLGjNHLJ4hzYFeFNYLSC3BjwgXlfgv0/1j9j4k96M+8Q5AJ1qYF9Yrpn89jkRfqrOpnN0cS50Ir441d9CpRacWfwrC57KnewIQCnWP/eoMW8qYNq5sjLtFzfbMMBKMdUC32m/uUAuSuiHXneqz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(136003)(39860400002)(396003)(366004)(376002)(451199021)(38100700002)(8676002)(8936002)(122000001)(38070700005)(52536014)(5660300002)(2906002)(33656002)(86362001)(55016003)(478600001)(7696005)(71200400001)(110136005)(186003)(26005)(6506007)(9686003)(76116006)(66946007)(66476007)(66446008)(83380400001)(316002)(41300700001)(82960400001)(64756008)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?flWH8yAlQPN1l7fG6QW2WTL/8Sw1hjcGEw+ho454xEG9nlFS/CKbOSQrUkaf?=
 =?us-ascii?Q?Q4FWIfcStP3SWk6Z4eovGUYeIvd+WYzbvZK8hJzpDcXXe6YyLlfyrfITJ+T1?=
 =?us-ascii?Q?h8PQjZN5dvIoCLCc6IkJzJ+cxvFxZMcV94oSAvosNtOsbls0pzg3nBpjM+Yo?=
 =?us-ascii?Q?kvwiE0PoKkrNyx/3cEpC9oYm8dHvlTlnpzKKuGUdUCNNUF7pYbiSLi9dvZ+D?=
 =?us-ascii?Q?hatwklxPpmTk2LC0OPebFSYGQM/8kojGEmP8LtQwXX/SvhRUicQ+cfjgiSj7?=
 =?us-ascii?Q?TFNJCgAs6GU5gZmDpv89tAGEqtJCpTmjcVKGZIulLQuvbgkxcZytUo74O5yl?=
 =?us-ascii?Q?yBDypmCY4w1bNQRZXY/3xkOaAJTiXamkb4L1pMFAblHtpI5zuAM6ziZgzQUQ?=
 =?us-ascii?Q?V8eHsW2ULSLWATjvk6sPjmI6N7MkTG6dcI5nYtMu9/0htgpGBIJ3woc0lnSt?=
 =?us-ascii?Q?l6oc3byLUQ3OFmr7KHiCZjL6Vbiun5p1VtMRQ10blKLLz9AleX/Z7NQfbEfh?=
 =?us-ascii?Q?6daLMTEKmE8k2p/2kVAN5+5MaKLlIRWT2xIzsJc74rTYqf6L/yZtX9KlUev+?=
 =?us-ascii?Q?7OwBZtTZGlsnx3EKmhCbzMvvn+D3KXK4C6SNZbDsajpz8A7MnswdMGBJs7dD?=
 =?us-ascii?Q?mkGr3BZxAwc/3nPV7yEJvBFIrUDpwNqffi+Ua8l/20ayICIXPZlCkmRhShDw?=
 =?us-ascii?Q?XVlxIP8d8LPg3pJZKd+/eN/8AN5AUhpJuC7xsxI7b7XJdrzKy+prDKS6S6xd?=
 =?us-ascii?Q?TUlzzF09F0Eyfu7UgjYMdIViXfQrHbCWYFg0ikMyv3ZeTPinwo9Bqo8Bgk6s?=
 =?us-ascii?Q?ol74HE+7qm3Ov2DyJioSXfXseIR2Uaw4hP3CvyoonOy6TTg6gses5gMrqIKB?=
 =?us-ascii?Q?gutVPM3lIyfndz5Hm+9dRR7v10abKw4rssfk/3qFnSiRROwSmehbijC1slGS?=
 =?us-ascii?Q?BKr33dsNOMOIUCsT0DvzzD/fWCHQkXhn9+rqAB4lZemSb+wkapTXBvB+hW5i?=
 =?us-ascii?Q?WVhju29d3UDC+HYmsNsOWx4flKDK2cUWn4I3eY/voLLCsMK9OWB77sOkd8aT?=
 =?us-ascii?Q?skeeMeWwpkTEFaOEQi0Kz123CjCmrEgQC7N1Cy5BlnxcgCTpSHSN5720r11o?=
 =?us-ascii?Q?jOrIMC0GNfXHKiPTCHC6mwp06Hl02Rj6WpQGIDZVdbXOwzDkLctEIzte+4Kf?=
 =?us-ascii?Q?e81Fk/HxidVH7tzhF3nv3Lr9E1BzPKTquFUXd3rCQlwPVA+spDF3T7VyHD9D?=
 =?us-ascii?Q?oGiJ54XW8SB5PyTt8Su+vO/3eWQ5O8oCsN3ZFLARNBxoznAHOsP6TlctbKBR?=
 =?us-ascii?Q?5RoGH06IH23ViPyOst9gr1Wp+yEwPrJaovS/TBXYQDcYpxiD4J3t8nFhKNFH?=
 =?us-ascii?Q?2e5IoBC7eMYm5G3dDjtgoCmYJ69qpniMSuc+dk5hK3OzKZTzVCTAH7ZWXKSQ?=
 =?us-ascii?Q?MVw4wKPHASU4lc6BUsliM04EEu7AsSs5wGk+NUjkRSITfYXKa6qkAivx2R5Z?=
 =?us-ascii?Q?a5MRyEtY/+M7rPYDU2mvg38i6MSRKpoVcavTpwsVSIGEkshqlc8w6j6oXhEe?=
 =?us-ascii?Q?BIWJu3ldXezDUgNcqt9qg5ZvJf5bPgDFG0sfBL7E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9000a55d-9fa1-42da-4a01-08db3f2d1e98
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Apr 2023 10:18:42.2305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bCw9ckWcWH0oDkCv+duQLVVcC+UmLaMyrXnhdKDgWuzOake0VrNq6cYZlBucgn21+K4eNY2dl5XuClXvf2IdUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5107
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Increase AUX timeout
 for Type-C
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

> On Wed, 05 Apr 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Type-C PHYs are taking longer than expected for Aux IO Power Enabling.
> > Workaround: Increase the timeout.
> >
> > WA_14017248603: adlp
> > Bspec: 55480
> >
> > ---v2
> > -change style on how we mention WA [Ankit] -fix bat error
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  .../i915/display/intel_display_power_well.c   | 30 ++++++++++++++++++-
> >  1 file changed, 29 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 62bafcbc7937..52f595929a18 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -489,6 +489,34 @@ static void icl_tc_cold_exit(struct
> drm_i915_private *i915)
> >  		    "succeeded");
> >  }
> >
> > +static void
> > +adl_aux_wait_for_power_well_enable(struct drm_i915_private *i915,
> > +				   struct i915_power_well *power_well,
> > +				   bool timeout_expected)
> > +{
> > +	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >regs;
> > +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
> > +	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> > +
> > +	/*
> > +	 * WA_14017248603: adlp
> > +	 * Type-C Phy are taking longer than expected for AUX IO Power
> Enabling.
> > +	 * Increase timeout to 500ms.
> > +	 */
> > +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy)) {
> > +		if (intel_de_wait_for_set(i915, regs->driver,
> > +
> HSW_PWR_WELL_CTL_STATE(pw_idx), 500)) {
> > +			drm_dbg_kms(&i915->drm, "%s power well enable
> timeout\n",
> > +				    intel_power_well_name(power_well));
> > +
> > +			drm_WARN_ON(&i915->drm, !timeout_expected);
> > +		}
> > +		return;
> > +	}
> > +
> > +	hsw_wait_for_power_well_enable(i915, power_well,
> timeout_expected);
> > +}
>=20
> Please don't duplicate the function and the wait like this.
>=20
> Something like this is sufficient:
>=20
>=20
> @@ -252,7 +252,9 @@ static void hsw_wait_for_power_well_enable(struct
> drm_i915_private *dev_priv,
>  					   bool timeout_expected)
>  {
>  	const struct i915_power_well_regs *regs =3D power_well->desc->ops-
> >regs;
> +	enum phy phy =3D icl_aux_pw_to_phy(i915, power_well);
>  	int pw_idx =3D i915_power_well_instance(power_well)->hsw.idx;
> +	int timeout =3D 1;
>=20
>  	/*
>  	 * For some power wells we're not supposed to watch the status bit
> for @@ -264,9 +266,13 @@ static void
> hsw_wait_for_power_well_enable(struct drm_i915_private *dev_priv,
>  		return;
>  	}
>=20
> +	/* WA_14017248603: adlp */
> +	if (IS_ALDERLAKE_P(i915) && intel_phy_is_tc(i915, phy))

I did try this but it ends up throwing a kernel null pointer error at intel=
_phy_is_tc
which made me float the version of code I did.

Regards,
Suraj Kandpal
> +		timeout =3D 500;
> +
>  	/* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us. */
>  	if (intel_de_wait_for_set(dev_priv, regs->driver,
> -				  HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> +				  HSW_PWR_WELL_CTL_STATE(pw_idx),
> timeout)) {
>  		drm_dbg_kms(&dev_priv->drm, "%s power well enable
> timeout\n",
>  			    intel_power_well_name(power_well));
>=20
>=20
> > +

> >  static void
> >  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >  				 struct i915_power_well *power_well) @@ -
> 517,7 +545,7 @@
> > icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> >  	if (DISPLAY_VER(dev_priv) =3D=3D 11 &&
> intel_tc_cold_requires_aux_pw(dig_port))
> >  		icl_tc_cold_exit(dev_priv);
> >
> > -	hsw_wait_for_power_well_enable(dev_priv, power_well,
> timeout_expected);
> > +	adl_aux_wait_for_power_well_enable(dev_priv, power_well,
> > +timeout_expected);
>=20
> A function prefixed adl_ should indicate it's only needed for adl+. This
> change is misleading.
>=20
> BR,
> Jani.
>=20
>=20
> >
> >  	if (DISPLAY_VER(dev_priv) >=3D 12 && !is_tbt) {
> >  		enum tc_port tc_port;
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
