Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1492E7EBE
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Dec 2020 09:48:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D691089AD2;
	Thu, 31 Dec 2020 08:48:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF2C89AFF
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Dec 2020 08:48:11 +0000 (UTC)
IronPort-SDR: 4dWqgMqIgbHBZFRQK/+PzrngpVBSwRXSrU0TuvYQO7OhonwyQAADoaailHBw/qftJyz+gCmctB
 9min006ZDLog==
X-IronPort-AV: E=McAfee;i="6000,8403,9850"; a="174107595"
X-IronPort-AV: E=Sophos;i="5.78,463,1599548400"; d="scan'208";a="174107595"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2020 00:48:10 -0800
IronPort-SDR: LCryENOmaIwZ+YCy+9za8WewHWxoOh82zAdRAKAsz2CggcZAM2h0ajVCtjpdabIZjaaAI8v3Tr
 Smgedsmuy34Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,463,1599548400"; d="scan'208";a="393726037"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 31 Dec 2020 00:48:10 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 31 Dec 2020 00:48:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 31 Dec 2020 00:48:09 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 31 Dec 2020 00:48:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fhGP3qgsAWjLZxgm0zCa3ctg4FVkjCT7Ofv2NuCJpffEXW6UyHPPwYnRwe/zLk5Ds+hTonbg17TBeiP4McPxE8x/gCiFqsY+VqvQBH0MYers+joLab34T1kxYwj6klPampmIKIdOmLfPEjtZgiu5NIkehWBb5TaSJhdQDELSWRwz/HNd/zNojYqrugnQiE9ZiXPuvCL/R/d115Ghz+vmkwZGjuXnSwVVu336dD0Mc61yHV15ljSOexi1WWOtUFqfyssSwVdT8ReEMnoAaF7Rh+SGf7S2wyCy+aqFhIA5FJcs/zKAmRVRkw5hbputTfrHw0VE9MeivcsR66jLyEJOfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lg4NnayFD6m/Lxw6TIjJ+wZ+hFPIUt77tTva2ERNz3o=;
 b=FyC1iZ5ScSBvOARHLjh5OOnZEHtVipFSwTXJ4IgA1/iXhJVQzjYPEMIWziXVacRR4eVY9CSJxGLvh1Wwkd5ENHbCtH5AyQ6GB1YnA5CwkSmHBBxmrlMG9xuX9jXcYiUB7nYknDui+RloddZORIevhFx1Ct2EEUr2btJG7jHqur6EekxkCTKPk+aVX8XAHjStb6Uze/r/asF8na4uqQvCf4bLeJEZIMK+ASlDZ3jo0SINDIVlp7uixwDMtRW2jGjzK3OTbGNYg2YTyQovwIpHs9P+mRX8gVsfGoqB1S+Y1JjBUwl0XXSaZuk2QDBsDAwERJ1ugo7YX3S/Ak0JUWbRFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Lg4NnayFD6m/Lxw6TIjJ+wZ+hFPIUt77tTva2ERNz3o=;
 b=Byr6Z4CHQQl+CkUy1C3uk186KqDdVJnmZvzzyxIBpCWUg8NhtG9FOgAZr0A1B2BFsOpn4bniGx9kp9uOBWn6fkJTKZc2g/CIRaEiZ+Gr5elVEZ5JNIhDSaTz6ukjlC5ikSQ5WdKZ8vAEtTwwBFKiV0uhZoFnbze/f+OqujioMRA=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SN6PR11MB2736.namprd11.prod.outlook.com (2603:10b6:805:5a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.19; Thu, 31 Dec
 2020 08:48:07 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce%3]) with mapi id 15.20.3700.031; Thu, 31 Dec 2020
 08:48:06 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
Thread-Index: AQHW3OHbIlWzn98EYEqwXM+t5Vq9fqoQVkqAgACONIA=
Date: Thu, 31 Dec 2020 08:48:06 +0000
Message-ID: <SN6PR11MB3421FDA5F04C9ED11F44E49CDFD60@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <20201231000103.GD3894148@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201231000103.GD3894148@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.240.169.222]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 59633528-7ba4-4cf0-ce5d-08d8ad68cad0
x-ms-traffictypediagnostic: SN6PR11MB2736:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2736331E743423431CC2159FDFD60@SN6PR11MB2736.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mXYUqATgZmSpIF6ypBKe3Wt2xyxDs6aot/GWdhYIXT8wtc+E8AtEy9Uppm3mHudHxwehmuUr8C0Qm7zielA3Tf7QAMKNrFzmBz1neQY5vQ06WdG2SFWsHzAqhnzaV/UwjI3Rtasi51fUcmmDV9gBDXUapcFu3lDOy9+j9EkipKiWTEEab1GMw1BXwB2DhBJBfLQoCIKGVexMPcNXfX7zoAo0YuYmRyV8pFfUfrRsfb5UvBrTGKc/2jHWaGSRI47Nn4+3GNUgmrCNsDc84eyWcgpqjvZxguqzMPiVVg3tQHaf/5E0FUGyh2sd3LFsmb7GH2LjUdiG0M2QsiOYLm0gxQVLSxRHZCyMKvpa1T8RMhJyIcYON8Di+R6lIv8ZsssL/LOW0K7A+199U8X8y2CnT6h/cHO3uYozCI2zaOmOFw+wcdBEX7PF6n/frxdvea+RleqVwTSgLAJF977N54QNAG5MGm5A41iuNxcy3Zi+UV0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(396003)(366004)(376002)(136003)(346002)(71200400001)(8676002)(54906003)(7696005)(4326008)(5660300002)(52536014)(83380400001)(76116006)(8936002)(107886003)(66574015)(53546011)(6862004)(6506007)(66446008)(478600001)(66556008)(64756008)(966005)(66476007)(66946007)(316002)(33656002)(86362001)(6636002)(186003)(26005)(9686003)(55016002)(2906002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?YjUzhbS4ngCcj3QwcBRjzk9ouF9NNTHWe9nR1bSqj1pk+OBiqRQIZPrXjN?=
 =?iso-8859-1?Q?ArH4t69iLe5A3zxCoyL0KEMvjMaqfW54BfYV1gt5PKc2ImftDXGFuzq0T9?=
 =?iso-8859-1?Q?jFNoi77+HLDYltiiStYcCHc7kGtu1dEs302B+FFkD5xo7VD+1cZ8+CXsw3?=
 =?iso-8859-1?Q?zooZH74cMPSUnJ1lDZmqzqVS0B5DtUfVING/ExnjpCRGlcmqGwE5RtyUhH?=
 =?iso-8859-1?Q?CQIz+T4DF9JeqZKe4Pj90xY9SPpJ6yRgTsAwQpejxtFUbCq3LWNEf0pzHb?=
 =?iso-8859-1?Q?JF3DaHphzUPSgKQbgWIt+cvTUIPkShKQRCIKSDHSTmMBc6sIdsF81yQ6QV?=
 =?iso-8859-1?Q?mI5i02n5oLKIsFQ4G0rzWf1puzfhmG/XtZZge+Ymu91tTR/RxvlAG53wQI?=
 =?iso-8859-1?Q?LNRglWH3EAKVxfg8B0CTdqRm1sKP+KlGTCOnoET2Hy9qf52sXBP6ESFl/p?=
 =?iso-8859-1?Q?V1ripofo29pEI+tFk/TzxXqTCbZ3KJw3bIQXv2/5Or/rIMs/5tWB40JWoe?=
 =?iso-8859-1?Q?xxJ7RT8pAeK+qVyz5JNuootfyQN6olbDSaUxg1Ojqpm9FlYU0XAjB4FLGA?=
 =?iso-8859-1?Q?fxGVXH5e9pscv7p9Cz22uiHCnm4TMy2gNADf4q7EBDpEzJjbLPGZby+U95?=
 =?iso-8859-1?Q?v9JgVcONm60ix9URfn7puKoUtBvbPfR9GvmVugstBdl+gUR/nA+DuuAuC7?=
 =?iso-8859-1?Q?E6rOvr9zQ5tSvBetVMcwKj4XoFi/cdDXw5XBkCzC8Nvi0tUBp/Duyb+eHs?=
 =?iso-8859-1?Q?jCo3/AhfYrsz9e6DkGmFFE6gjrr/7K6WLIP7T61h6E+8bEBJNJX3IRTcRA?=
 =?iso-8859-1?Q?96OtZ93qrMz/cpdb23Z6swdzbfX5iJjTaa5J6BZumQsEm30K2JHmB0wFsV?=
 =?iso-8859-1?Q?a7QhvwZBNjnUbSsuU5PqXOxiu8kCEfGQ+hLlqGn+Qje8oGgvPsBXEvXfKB?=
 =?iso-8859-1?Q?ILf3m+OL7xRC1eC+9HlVvuvzggCfq+w2/r6QKTMJmihHZlaKuHHMh7IAK5?=
 =?iso-8859-1?Q?syqlJ3Y5DfRcukUek=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59633528-7ba4-4cf0-ce5d-08d8ad68cad0
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Dec 2020 08:48:06.2062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aPQxJxky9ytxIRRjQFvjphMqvglw/jYmroF6dl4m8z6NfHSqUagZpr50IEQPWpanJxCC17LfV0LNx0xRA66VWGgWPqz5cAfoGOs6TbET9HNQ8OOxxZ5gjEJE9NCn6cV49aRrDdt3+EFpgeyxkvR2JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2736
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Pandey, Hariom" <hariom.pandey@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Matt Roper <matthew.d.roper@intel.com>
> Sent: 31 December 2020 05:31
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Pandey, Hariom
> <hariom.pandey@intel.com>
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
> =

> On Mon, Dec 28, 2020 at 11:42:35AM +0530, Tejas Upadhyay wrote:
> > We have TGP PCH support for Tigerlake and Rocketlake. Similarly now
> > TGP PCH can be used with Cometlake CPU.
> =

> Based on the 'compatibility' section of bspec 49181, I think the TGP PCH =
can
> technically be compatible with any gen9bc platform, not just CML.
> Although it seems unlikely that anyone is going to go back and create new
> products with a SKL+TGP pairing or something at this point, it's still pr=
obably
> best to write this patch based on GEN9_BC rather than CML.
>

 =

Tejas : This patch is generated to support DELL's requirement where they ar=
e using CML CPU + TGP PCH. But I agree if we want to change CML with GEN9_B=
C. Please have a look at https://gitlab.freedesktop.org/drm/intel/-/issues/=
2742 and this patch has been verified by DELL as working for all of their p=
latforms with CML CPU + TGP PCH (Off course it worked after I gave local wo=
rkaround of Lee Shawn's patch https://patchwork.freedesktop.org/patch/40130=
1/?series=3D83154&rev=3D5). Also this patch + https://patchwork.freedesktop=
.org/patch/401301/?series=3D83154&rev=3D5 (Lee Shawn's patch reviewed by yo=
u) + Adding IS_COMETLAKE check to Lee Shawn's patch needs to be merged by J=
an 4th to complete upstreaming for CML CPU + TGP PCH. DELL is having critic=
al requirement to finish upstreaming by Jan 4th.

> >
> > Changes since V1 :
> > 	- Matched HPD Pin mapping for PORT C and PORT D of CML CPU.
> >
> > Cc : Matt Roper <matthew.d.roper@intel.com> Cc : Ville Syrj=E4l=E4
> > <ville.syrjala@linux.intel.com>
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c     | 7 +++++--
> >  drivers/gpu/drm/i915/display/intel_display.c | 5 +++++
> >  drivers/gpu/drm/i915/display/intel_hdmi.c    | 3 ++-
> >  3 files changed, 12 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 17eaa56c5a99..181d60a5e145 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -5301,7 +5301,9 @@ static enum hpd_pin dg1_hpd_pin(struct
> > drm_i915_private *dev_priv,  static enum hpd_pin tgl_hpd_pin(struct
> drm_i915_private *dev_priv,
> >  				enum port port)
> >  {
> > -	if (port >=3D PORT_TC1)
> > +	if (IS_COMETLAKE(dev_priv) && port >=3D PORT_C)
> > +		return HPD_PORT_TC1 + port + 1 - PORT_TC1;
> > +	else if (port >=3D PORT_TC1)
> >  		return HPD_PORT_TC1 + port - PORT_TC1;
> >  	else
> >  		return HPD_PORT_A + port - PORT_A;
> > @@ -5455,7 +5457,8 @@ void intel_ddi_init(struct drm_i915_private
> > *dev_priv, enum port port)
> >
> >  	if (IS_DG1(dev_priv))
> >  		encoder->hpd_pin =3D dg1_hpd_pin(dev_priv, port);
> > -	else if (IS_ROCKETLAKE(dev_priv))
> > +	else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> > +					     HAS_PCH_TGP(dev_priv)))
> >  		encoder->hpd_pin =3D rkl_hpd_pin(dev_priv, port);
> >  	else if (INTEL_GEN(dev_priv) >=3D 12)
> =

> I'd suggest leaving the RKL condition alone since nothing here has anythi=
ng to
> do with RKL.  Instead change the gen12+ condition to
> HAS_PCH_TGP() and update the TGP-specific handler to do the port mapping
> described on bspec 49181.
> =

Tejas : Ok.

> Plus I don't think what you have here would map the ports correctly anywa=
y.
> gen9 PORT_C/PORT_D would map to HPD_PORT_C/HPD_PORT_TC1 with the
> logic here, whereas the bspec says they should map to
> HPD_PORT_TC1/HPD_PORT_TC2.
>
Tejas : This have been taken care in tgl_hpd_pin() API with right HPD pin m=
apping and its tested working on RVP as well as by DELL. =

 =

> >  		encoder->hpd_pin =3D tgl_hpd_pin(dev_priv, port); diff --git
> > a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index f2c48e5cdb43..47014471658f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -16163,6 +16163,11 @@ static void intel_setup_outputs(struct
> drm_i915_private *dev_priv)
> >  			intel_ddi_init(dev_priv, PORT_F);
> >
> >  		icl_dsi_init(dev_priv);
> > +	} else if (IS_COMETLAKE(dev_priv) && HAS_PCH_TGP(dev_priv)) {
> > +		intel_ddi_init(dev_priv, PORT_A);
> > +		intel_ddi_init(dev_priv, PORT_B);
> > +		intel_ddi_init(dev_priv, PORT_C);
> > +		intel_ddi_init(dev_priv, PORT_D);
> =

> As noted before, this relates to gen9bc in general, not just CML.
> =

Tejas : I will add GEN9BC check here with TGP specific handle.
 =

> Is the only reason for this block because TGP's instance of SFUSE_STRAP
> doesn't have output presence bits anymore?  If you want, you could keep
> using the existing gen9bc block for consistency, but make the SFUSE_STRAP
> checks themselves conditional on a platform that has the presence bits.  =
E.g.,
>
Tejas : I am not much familiar with STRAP, can I go ahead with above approa=
ch GEN9BC && TGP PCH check?
 =

>     /* ICP+ no longer has port presence bits */
>     found =3D INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP ?
>         ~0 : intel_de_read(dev_priv, SFUSE_STRAP);
> =

> >  	} else if (IS_GEN9_LP(dev_priv)) {
> >  		/*
> >  		 * FIXME: Broxton doesn't support port detection via the diff -
> -git
> > a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index c5959590562b..540c9d54b595 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -3174,7 +3174,8 @@ static u8 intel_hdmi_ddc_pin(struct
> > intel_encoder *encoder)
> >
> >  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_DG1)
> >  		ddc_pin =3D dg1_port_to_ddc_pin(dev_priv, port);
> > -	else if (IS_ROCKETLAKE(dev_priv))
> > +	else if (IS_ROCKETLAKE(dev_priv) || (IS_COMETLAKE(dev_priv) &&
> > +					     HAS_PCH_TGP(dev_priv)))
> >  		ddc_pin =3D rkl_port_to_ddc_pin(dev_priv, port);
> =

> As above, none of the changes in this patch have any relation to RKL, so =
it
> doesn't make sense to update the RKL condition.  Instead just add the gen=
9bc
> port mapping logic to icl_port_to_ddc_pin().
> =

Tejas : Ok.
> Plus, it looks like what you have here right now will make the same mappi=
ng
> mistake for C and D that the HPD logic did.
> =

Tejas : It is doing proper pin mapping. Its tested by us on RVP and by DELL.
> =

> Matt
> =

> >  	else if (HAS_PCH_MCC(dev_priv))
> >  		ddc_pin =3D mcc_port_to_ddc_pin(dev_priv, port);
> > --
> > 2.28.0
> >
> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> --
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
