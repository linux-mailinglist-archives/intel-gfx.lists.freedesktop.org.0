Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D882B74F47D
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 18:10:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 286F489CF6;
	Tue, 11 Jul 2023 16:10:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 302AF89CF6
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 16:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689091805; x=1720627805;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aLw9UH744cumgKSYmXSrMVh3cc9VT0nC0PeuksQqLt0=;
 b=amaJA2HA/VJOVAJ7RJhLfW7quujaUY2sVUQn2ThnmBG+lgf7NHLzKUt/
 9vctPwGblX+A2U9AgTpgmY8iiLiSPTHaWXcYpzvFipy0w8mTrltbjzllJ
 za8yCY1Na+097viJHeUgUB8m/f8UXeuiBdJwVXqk0t67b43GHhZCSQgPN
 A7+uiCrNAX3QGV6ZhkmFIKHGtECnUcuW2iPC2id5TYFlYgDPPbYel/OR8
 zFgm0x9IvIKdqGTtQT/7Yi2zimknt/SXtjmCeCjfJnxxILhyPWXtlkvoE
 O+SZzvIoGN8yXZLXLCnRWLXiSSMVakRCsHMeZ0LtqleEFwcCgWMwolIzt g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="354524333"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="354524333"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 09:06:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="811252469"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="811252469"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 11 Jul 2023 09:06:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 11 Jul 2023 09:06:49 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 11 Jul 2023 09:06:49 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 11 Jul 2023 09:06:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a7QXFTcJH5k3lEv4D1A2OERn01nujQ/rWEzo4qkghFkIs6BNWZ2YA073RV0XEnZi2BKwcvlbdrk3VQL6PPmxu5eHUjFC5Oj9vsaklJqDIFylxEdsUX5WQrAijy2X9T/NeHmD4D6AYhK2X4e76Va6Y6wKOHwVCw/3B710AUQtOEAFdl+v2q8ruBr5Bb5mB7NWwFeEUzl44mZNhS8jznXdzYJWJQUcysiqekvKQ4zKGQotGiVzQu0RXlsnDHt3vj1ckQeuVm0fhehe4cUPc5ZDPoY2ifC5bjWlwUZdbl2d89O5QttxG5O2LpSudXn8fzvgaOvngH2Tj7Llg8uom6roPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=77J6z5SVSjbzp4Izoz0WmGFVo9OcuGiGuG8Z+uyn3hU=;
 b=i0lHnWT1uU7C1kgcVwitsK+ySZjUV3t/qM2wHct9kcOouCXGZl/qjtFTLlothcLGrdEsgeVh2nZEoyxfvTFsubaYFFGsMUWA5SiRDngNUU9IfmUeHzTvDPulEjoLeDHobmUsOWwChROOkF3AYwgusdSOzdbpr2QMI0BWB70wMGnRg8ikAiAmZLKC9RYLUIZrpth69xBWZMSrSrFp12vVk+zNHTuOEL1V7zugBi2RAuTAuKMagvEJG/ZIkBlrvUbCoTni00wG+0xq8RA5o8BfMG4OcK7oK7TXFF4N5TjAVCQQH73+2LTBAIel2dZovOKaCkmX51wCzR/Qjem9iDtm5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by CO1PR11MB5154.namprd11.prod.outlook.com (2603:10b6:303:99::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6565.31; Tue, 11 Jul
 2023 16:06:45 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::a6c8:499b:361d:ca6b]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::a6c8:499b:361d:ca6b%6]) with mapi id 15.20.6565.028; Tue, 11 Jul 2023
 16:06:44 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Allow panel drrs modes to have differing sync
 polarities
Thread-Index: AQHZs5CWXyt1cCKow02QYixtBw1CYq+0u24AgAAAPuA=
Date: Tue, 11 Jul 2023 16:06:44 +0000
Message-ID: <DM6PR11MB420471A12BFCDC02B52547F88931A@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20230711002529.9742-1-vidya.srinivas@intel.com>
 <87o7kih1uh.fsf@intel.com>
In-Reply-To: <87o7kih1uh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4204:EE_|CO1PR11MB5154:EE_
x-ms-office365-filtering-correlation-id: 091893d1-f782-4b58-8146-08db8228d2bb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FCGyceXhnTrydrntJwdD4LnQvrdkkWSDGYxjmgTmGEOnSBSZsYyDrD8OapWJdn2iKmVMjk7xKDBWrED458JIVHtUszFNZtvrN+DJJcO+r+SKlkNBXrDP66Q4L3pIyW6EPtQC7C8jH/QpwLRCsEaPgftC49Pftuq/jborj+pYJoL+OGHqVh1Z46jTQ4KzVno/b4RPWRQyhbFVXEzk104C3o9K/4yHPnvlmA0sp3ilvB72jL95vbuvm1BppgpxElJHZNs/CoDYRJSNPkURn65m80LwZnotWa7HfSHDgNrhn68BkAdDYuYwVl1+ElOQBH+HEq85JBr4JYClswPp310+OKlSXTpJB58hbF9UoqBDI9tHhmuGXyMc+TF4dQmrtYx5HEJB1zGP5tdZhgLP1ogPbPom+yNBJ5p1bVTj/FKoWZ6BPx2U4HwY10Ulqd9Sxk1uX5GkfzbxfPI+eK8RKnVJj+mI8zynDbbn7Rp9dSQ6TF/3pOCduP8FEg2T0GEAIjk14NPUBEB276DSJqFd+tESKoNiahnMJbMI+7ZPBnGao2yLNJTXMGO1gwZh1CPuUjgpjesxqIaBWbTLLAIxksJL3HNrK15XyMUZmQ6Rd71vWXNdv3f5hZ1XtDUfJ8p3CfJiVuzkvvXqsqCCWa0u1GD9Wg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(376002)(366004)(396003)(136003)(451199021)(53546011)(6506007)(9686003)(41300700001)(26005)(966005)(83380400001)(186003)(478600001)(82960400001)(122000001)(110136005)(71200400001)(7696005)(4326008)(55016003)(76116006)(64756008)(66446008)(66476007)(66556008)(66946007)(38100700002)(316002)(86362001)(33656002)(38070700005)(8936002)(52536014)(8676002)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?opQXwAAQyCVowLcnsdSOc+SuW5bgkbG/OwBcbWr+RHEWiOqVt8t5kzoKSCH8?=
 =?us-ascii?Q?ZBtBJpCDq43dSJxMChmGvtyPMySVssvh+LZEg3tVA9cA+00T9LwVuA0eLqzv?=
 =?us-ascii?Q?pc1xIPy1NtXlxPofZ0Lr2rJmzZExORii1lcUuVZHS+a8KsLxBeZd83qnCnd3?=
 =?us-ascii?Q?GdVd/hvfkF1NxtKXXkChjjNR3tRKQiWrfG9uW3VH5TaA+Zt2A4gfa1i+kFSW?=
 =?us-ascii?Q?fSDc4WHku/QbkdIBJ84fBlqcR6KRoRvtmbPL7+ZKyvc62vPuAyTyFXxTyLSo?=
 =?us-ascii?Q?fc7AMX0f8TZAkCJ1W82kPManeAAPbDR+4UzKGQizWPF22bsjJ+gtBz8egi4E?=
 =?us-ascii?Q?a/jtIoQrbBFQ3aHOuf+NuJO5XKKeE9GPXahp2M5yU6DXyh6jnNH1FIQuHy+i?=
 =?us-ascii?Q?N5bOVQKq0LnFiIuU8lD26ExI1iuWEHN3XufAbEwXoR5bi2FPcEtTz+2jfR1W?=
 =?us-ascii?Q?KjC5iAUV1pyMMU9VDJE54XGvMewLgtMbmz7gLzOHOhLQd+P4MrWDU1Cepurn?=
 =?us-ascii?Q?oJbw7z61xN2xmZmjtw69rMP5zpiVuAbtJHVFdFQViRaJZ7/f6Pkull1M3D4M?=
 =?us-ascii?Q?uC+VEhf1GIGrKLMGitT76Ru9JRZqFztTOMdXKjLk/4WQYd9mOh95LWuUaa5s?=
 =?us-ascii?Q?b+cm2Y8ox/HufiIDbpxOm8DiftVwCj/zBj4znvzOSlvMbRQF+iHiRzCHbaBB?=
 =?us-ascii?Q?ja+u0f9WQLwHZymlDxvjI830GaUg31gqELxfqvInTzM1dvYG2rZqEKtZ3jw0?=
 =?us-ascii?Q?Jab7qMyEY0wS7cjA9cq7jM6YS+cU3D/pyOZ4dGWjMrlQGwIwJXvzWsjnn+Q1?=
 =?us-ascii?Q?2asfDPBVEHZpMiVsFPnmHzrNHbHsDhyjgS6MFdxwW85nsDPy8sNQirjF7xtZ?=
 =?us-ascii?Q?quXcFmKY9rWidL08hX0eqKARdNsTPP6Bjr/XdVAXs1p/MVQqbGXI87XunFLn?=
 =?us-ascii?Q?ZSbLbowruPGmlBVACzbqG2t9RCIWMYg2dvhtDP8Wj+/dXYJ+08dnciRkhamE?=
 =?us-ascii?Q?PQ/BYXi6Sa9KwDRzjrRx29COJEZWp90Ca6RkGXO35qtRJ/HJ7hMYqmwDtvoV?=
 =?us-ascii?Q?fXQKtcGkfA7GyQKQZXtVNuVHQdk2gk+8ABkS4FrHtha7Hi9FbMgE8OkhlygE?=
 =?us-ascii?Q?jvgJxHb2fhShes1OLCJMyzsjEPAgZfV0y1c50ntcpeFUE8Yaat3cj1Lcjvbu?=
 =?us-ascii?Q?8VdWMtimdSbm3d8XTBUKh83pzDeOev19Gok9MrHEfF5TVfyf3CbzJR4Jl0PN?=
 =?us-ascii?Q?ruYHNFk7FE7uJ2DC9znjLFzEzfsyFh2u+HjKA2mkIyLekwj94eK4XcDrOObr?=
 =?us-ascii?Q?4K+aDyCZqpVlwba1SO7CermOPApclzXOGCuTYjMP3OWpe7y/zop54+nbHmoO?=
 =?us-ascii?Q?KPcVYGzaIuRDy/To4TUyl4e4ULrcyN4uVCSL0qvwYqpJS8CNXoLE+XZ8PpXZ?=
 =?us-ascii?Q?9AHaPrQQRscjNxegCw3xrG1Wu/U8wlbYqCKo2FBD+7/trbBC7vLga2am67tA?=
 =?us-ascii?Q?JWn1Z2FOT+JEtAhIjhEGIIOdRyxQ2uk9vLhkUTsJyIVWNXlAetx0Jtk0kXqx?=
 =?us-ascii?Q?JvLftvxv3jsBSOCMs1dXO3lykiOnVHUiYLz/m6C/?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 091893d1-f782-4b58-8146-08db8228d2bb
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jul 2023 16:06:44.8458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nUpEL9NyUR1pYBLQiJKD7XUX1JDvYKdF/L39Py+/wconGj5tU2+uSaeQ+6MaC40W0Fl8nS+UWp31NIyDsuCADUmVQEmy90uzv5GzsWRCzc0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5154
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow panel drrs modes to have
 differing sync polarities
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Tuesday, July 11, 2023 9:34 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Srinivas, Vidya <vidya.srinivas@intel.=
com>
> Subject: Re: [PATCH] drm/i915: Allow panel drrs modes to have differing s=
ync
> polarities
>=20
> On Tue, 11 Jul 2023, Vidya Srinivas <vidya.srinivas@intel.com> wrote:
> > v2: Add Jani Nikula's change for quirk for sync polarity
>=20
> This was a quick hack suggestion to try. If it works, I think it works by
> concidence, because a fastset won't update the sync flags in
> TRANS_DDI_FUNC_CTL register. Did not check whether they can even be
> updated while the transcoder is enabled.
>=20
> > CC: Jani Nikula <jani.nikula@intel.com>
> > Credits-to: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
>=20
> It would be useful to have a bug report at fdo gitlab with the EDID attac=
hed.

Hello Jani,
I have requested gitlab with EDID attached https://gitlab.freedesktop.org/d=
rm/intel/-/issues/8851
Kindly have a check please. Thank you very much.

Regards
Vidya
>=20
> BR,
> Jani.
>=20
>=20
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> >  drivers/gpu/drm/i915/display/intel_panel.c   | 10 ++++++----
> >  2 files changed, 7 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 43cba98f7753..088b45e032aa 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5234,7 +5234,7 @@ intel_pipe_config_compare(const struct
> intel_crtc_state *current_config,
> >  	PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >  			      DRM_MODE_FLAG_INTERLACE);
> >
> > -	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)) {
> > +	if (!PIPE_CONF_QUIRK(PIPE_CONFIG_QUIRK_MODE_SYNC_FLAGS)
> && !fastset)
> > +{
> >  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> >  				      DRM_MODE_FLAG_PHSYNC);
> >  		PIPE_CONF_CHECK_FLAGS(hw.adjusted_mode.flags,
> > diff --git a/drivers/gpu/drm/i915/display/intel_panel.c
> > b/drivers/gpu/drm/i915/display/intel_panel.c
> > index 9232a305b1e6..b9eeaedabd22 100644
> > --- a/drivers/gpu/drm/i915/display/intel_panel.c
> > +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> > @@ -112,10 +112,12 @@ intel_panel_fixed_mode(struct intel_connector
> > *connector,  static bool is_alt_drrs_mode(const struct drm_display_mode
> *mode,
> >  			     const struct drm_display_mode *preferred_mode)
> {
> > -	return drm_mode_match(mode, preferred_mode,
> > -			      DRM_MODE_MATCH_TIMINGS |
> > -			      DRM_MODE_MATCH_FLAGS |
> > -			      DRM_MODE_MATCH_3D_FLAGS) &&
> > +	u32 sync_flags =3D DRM_MODE_FLAG_PHSYNC |
> DRM_MODE_FLAG_NHSYNC |
> > +		DRM_MODE_FLAG_PVSYNC | DRM_MODE_FLAG_NVSYNC;
> > +
> > +	return (mode->flags & ~sync_flags) =3D=3D (preferred_mode->flags &
> ~sync_flags) &&
> > +		mode->hdisplay =3D=3D preferred_mode->hdisplay &&
> > +		mode->vdisplay =3D=3D preferred_mode->vdisplay &&
> >  		mode->clock !=3D preferred_mode->clock;  }
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
