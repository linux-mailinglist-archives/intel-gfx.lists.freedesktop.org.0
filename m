Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC14A7C8396
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 12:47:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C85510E5D7;
	Fri, 13 Oct 2023 10:47:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D4C410E5D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 10:47:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697194050; x=1728730050;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B7t5rTD4FJ2q1qQwkW0FjsZrVooBnXxXFz4yLU0+FpQ=;
 b=VOnY+Xbh63tdSiJ897REnjTuh25orGbKrWV+/Q91M69+UsB2GJOjsH70
 We2lGcGnHsGOuLNfpEwwd68aI85ZGJ/p/KRRlLDYRwdzphkk4+Id/fOfC
 +KOpTVsJu84Klh8VaXHvn/8UcZj5WJmydY4NDpACyZlxcTB0Z4lCb6HL+
 AKYagjN7I4voOGmqMbocc7f2vgmeZs30zo87t6f+X44hIRq665Xnmig1/
 55P4KiQuBJcEcx7do9z1hfooK1mqJ5GfHe25alguVlojBg2pvQlTdu5FV
 2bTm23Z5741WQW5Br9Wc2+26DfTOxRmsMoT5BnhQgT6AzCEhUXTkJks2l g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="388004507"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="388004507"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:47:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="825016928"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="825016928"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2023 03:47:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 13 Oct 2023 03:47:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 13 Oct 2023 03:47:21 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 13 Oct 2023 03:47:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d5caxQDbbBslZkDm8m7E60V5qPBalzuM/H85T+KRrGNN81TQ1kT8w6OUzdzdgUO0pXR1XOgb0Xl+8fyioGg3toW5mBTaIoDCY772j/RoO8aTfquHNdEcYuwCPjOljIt9bYhcHk92ggAkRjLsV4a9EA0A+J7GgsKlxjTUKgs+iv0DMFCYNpNPlelQVGj/2nX8RBPBWjehgkdkBQKJyDqyW8yG//jRZc+aI55wdVwu64az2ZyODx7MH1BKI3JDL4jLPAye/sMmflw/lHNCI1auqOFboan2znJHWsJLi2yzsB+K4HXnAwk1y2/5qJJGkHQkhFb1UmQjFq04fok/vbtDXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XGTE7EBIsE4f1VdQmIq9GkvxxqDzIKkOvuDiiCiVueM=;
 b=TvV20cQI5hRLiSiHzzVLkovVA2nCv6udR/OtjwdYZCiqkcsX7lnfhKE2mguJW7g6ANg3GV+OzyUftz3VDyYrjhPj/SNKoVWs4npO6AE+7YIB4zv1qqfTNcRVh4uutHnzaQD3OB0sxKhwNjJZeOOheaD9m0TuyEwwJP3yizAbbkGgpZBiYxlHK/Xth6Zf6rwBRr+6y0E2I3FtpF/17WkkhE5TH/f1YJM3XMzpNc75YE5A7ayJPfEoD+MT88vNtwnz/flC4zQ1B/P5lgbbLqZ2FN36HPdY6CVBNTFI3MRTsRaZSQZzc5lmAL02ZfRi2mtoF4/eH7sg5Ka51VKz4Ekynw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by SA0PR11MB4639.namprd11.prod.outlook.com (2603:10b6:806:70::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.45; Fri, 13 Oct
 2023 10:47:19 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::b2f2:b2f2:1133:ffe6]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::b2f2:b2f2:1133:ffe6%7]) with mapi id 15.20.6863.043; Fri, 13 Oct 2023
 10:47:19 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
Thread-Index: AQHZ/USkdPm03iK+HU23IDwKUNaLHbBHib8AgAAATDA=
Date: Fri, 13 Oct 2023 10:47:19 +0000
Message-ID: <DM6PR11MB4204FE76BE459FC4DF07904589D2A@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20231012193000.11917-1-vidya.srinivas@intel.com>
 <ZSkfYh9hhca-o0DL@intel.com>
In-Reply-To: <ZSkfYh9hhca-o0DL@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4204:EE_|SA0PR11MB4639:EE_
x-ms-office365-filtering-correlation-id: d097078d-f61a-40fa-e8bb-08dbcbd9c631
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WBnykl05pJQeVsJI2GPSf7+QNQk6jziBJpP75898XgDkeEXUOR9S/CB4sAfAYnxfC5Jb7/Ui/aEFmj3Fsy5Uo/dwWR1yJqprzlaII59SigjVY0vMYCkKlFddlFyjxoZ2Sqp+B4hDSYivDg/7EjGPPkARoH/w0bNv9cRga3zas9SmjuHaDQ+zOM6kIRjmWZ9UlmpX5tw4WlkTbEkjDipFe/SBX97Ok43kXYHzHTHNch6ijWwJpeqLGvn7x/GYyJVOkW7ofB7hGYg+p5g7jgTpytAywu1lvZhIhRQy5KddXkNNmhOq7tz9W4J/W+edj7JcyAIoM6AHrER3/marL5imRT7FQ1N7ymy9NCJMtpybPC6YP8s0yKWDXRKjKTvO4ds/4gyXfgSF1L+3h15R7RUohgXCJgWvId8s4hQ+mPUMn72JpvYo/UrzXEIqkDL/zcZHX53D1jI2GnlWi9WHBhMRd7LDlA7cCVoqs0sxzC3P9aJRFWl2lQMuAOBqdkXhF4KnKxfl7tE3iJD5STPiaVO7e/lJm4RWz/RmW1+VZIFtWYIoBtw0dCgzyXdXEZ2mT1R3YXRz+4rXnnjNkMYtV5NXzehzulVjhHDGBzM2gxa+bKMhc2apcC+HjRJj90MhfV3p
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(376002)(136003)(39860400002)(346002)(366004)(230922051799003)(186009)(64100799003)(1800799009)(451199024)(82960400001)(33656002)(66574015)(6506007)(66946007)(55016003)(7696005)(76116006)(316002)(83380400001)(66476007)(64756008)(66446008)(66556008)(6916009)(38070700005)(9686003)(122000001)(86362001)(38100700002)(53546011)(478600001)(2906002)(71200400001)(5660300002)(52536014)(8936002)(8676002)(4326008)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?QxYpuZbfhfHyCfgbsWESzHbrS5O6OVNIdfDdAFuxegwajPbPg7tyfFQdkw?=
 =?iso-8859-1?Q?T0rsiCTQabWyT3oUY8ovRZ1rWPu2bypGyOGhYnQ7CfstV2SS4ta7Q6pEiT?=
 =?iso-8859-1?Q?TyHC0GljuZl2f/ehkSJUJgR/eSCAdy0SbnrXAcplFYpexDXhBVTn7YNvv7?=
 =?iso-8859-1?Q?BFyieMWRlPhUcBQRv8Oy7Xtvxj8FyS9r5PpFrCbEdNqpwmJ2UnjtkKAFcF?=
 =?iso-8859-1?Q?IujLC3zUQs7xvPeU43wJr8bnkTSriIHnS4Ez8N0p6itfhXTeFTN7TyWOgu?=
 =?iso-8859-1?Q?RUhcjIQoMLIPgcQ+nO5nXQKYaYxUcVverL+5gQtNqppxOmNs1EcDGkkLoo?=
 =?iso-8859-1?Q?F5fO+s5NHejbetTmiTjy5WtYYLTv5Hk9aloCTSfk74BAOaKZr+KAIP2c8f?=
 =?iso-8859-1?Q?ztWZeDlqpKIIVyTq+Adx2Bq3cbt2p+TwlMuMMzStzgTTMy3HieHc3CeI/Z?=
 =?iso-8859-1?Q?zglGL+N+fZ5oDC+YSFgN3wKaGcE13fk2DvR0Z/7zwIJrNKjvuLmSbMS6ek?=
 =?iso-8859-1?Q?1EDKvz1Nmn3WynzA6stObBBfeUs4o3bwG4o1TCiwb5yhAIzYkPgn0ID0lF?=
 =?iso-8859-1?Q?sgJu2EUVUm0acr8EkD+L5Nh6MZOIsZ9gY2Fe0oXtALmr2jlc89WNDY1oj0?=
 =?iso-8859-1?Q?NNXe32Umqodt+7NK5scrdq6uGjFS5h6FicHsHqnyqjW2vrbfww1Z5B0vud?=
 =?iso-8859-1?Q?mSLdXv1ZTj2O2zizF3/v4LNGdbY+ixDwE84pVxZY4ClGhPwneav2WOJl8a?=
 =?iso-8859-1?Q?N8Zq6+t9CiultIprSOhewW3dYlxgvnNO4l9A25wUopZVzJNYMSgIcAHvba?=
 =?iso-8859-1?Q?kItHss3s9AuXfDQ7s/CkmqGTlIkBMdv+BRYRd1j2TVYBEP78UC5xHB3Voo?=
 =?iso-8859-1?Q?ngPUpw4eedrdQjXdvNRjTHuBxZfYrlMdqVKnSmQhOhBzXB8oekMf4B+kHy?=
 =?iso-8859-1?Q?yyA5dwbu5z/Cd/1rVohxUbig4izB3T5IwndrpD1S8so4dV5QEt1HJGlVKU?=
 =?iso-8859-1?Q?m/yqFhJ7YH3IIfMyVmgcKIckWzPNaYe2WATuA6tKAfrPiEXm4LUQDFtgdJ?=
 =?iso-8859-1?Q?Pe6C7lX3lsL5sEyB6jySVj29gUKN0am/eXhJAOO7RNxepIE4PaBGQ/44Fs?=
 =?iso-8859-1?Q?aJ+qokYpZqLvN2OyuHZEQv/peAxZ/LK9meNRTFP8Zi9nCP4k5OeiM8OE7W?=
 =?iso-8859-1?Q?v1VnQWqJcFWGFJA8fhEkqVEVIsdSL1w0YKrFI04O4okCJr1xGTYG3uqAi9?=
 =?iso-8859-1?Q?gsFBVVm58g54P2ehbxLqonXz7KRux/Utm3LC810q/Cl99HF1o4tFDks+Vl?=
 =?iso-8859-1?Q?QTlQjRIn1GYnUsQw+wFXdgkPPZTavIhq/0yeFZL0SWzZQmjCUUzHYi+4k8?=
 =?iso-8859-1?Q?bJnkHxNmtgR3sMkfFbF0g60G7lozKybV/bURE5q2tQpbxTIOteGceTFfks?=
 =?iso-8859-1?Q?CvMlkGXHi+At7JAUI495VOf04f8pElJZN/7UyyMbXoLKxHUavNqzIXPcIy?=
 =?iso-8859-1?Q?3xjOXzxlvx2S8+lufdUtrng5XszPEGab+CdEmQTDFhvQlkShy0DEWGheEY?=
 =?iso-8859-1?Q?rTOfjzTev5+nDsM1oSSYPv2roVaCU1LRoKUwHDUqdjN0xnRW6Q0l1tUrBi?=
 =?iso-8859-1?Q?uuWrZvN/ZniBL1cc1kvKmhmSfZgxi1EXRlOqQRs/Ii1HA4hLC9rR0LOzUI?=
 =?iso-8859-1?Q?YQcF12Ii1iUa4iBasUV2xoebQv2xwp8hCKKPvylt?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d097078d-f61a-40fa-e8bb-08dbcbd9c631
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2023 10:47:19.5954 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lcQBAqr8T7mnyskHmICVjQfz8WD59g8/97yvZ3HBxp7w419eLqU/uDMfeuipabm686ufl0E9J9+XLEyhx0hZAzb+Zr4vCIYxomoqEQG1Wik=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4639
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, October 13, 2023 4:14 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
>=20
> On Fri, Oct 13, 2023 at 01:00:00AM +0530, vsrini4 wrote:
> > Patch calculates bigjoiner pipes in mst compute.
> > Patch also passes bigjoiner bool to validate plane max size.
>=20
> I doubt this is sufficient. The modeset sequence is still all wrong for
> bigjoiner+mst.

Hello Ville, Many thanks for your reply.
Could you kindly help on this issue. Just floated this patch for reference =
only.
As you said, Monitor lights up but inconsistent also. I am not well-versed =
to
make a proper fix. Request your help please. Thanks a lot.

Regards
Vidya

>=20
> >
> > Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
> >  1 file changed, 12 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index e3f176a093d2..f499ce39b2a8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -308,6 +308,7 @@ static int intel_dp_mst_compute_config(struct
> intel_encoder *encoder,
> >  				       struct drm_connector_state *conn_state)
> {
> >  	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> > +	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> >  	struct intel_dp_mst_encoder *intel_mst =3D enc_to_mst(encoder);
> >  	struct intel_dp *intel_dp =3D &intel_mst->primary->dp;
> >  	const struct drm_display_mode *adjusted_mode =3D @@ -318,6
> +319,10 @@
> > static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
> >  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
> >  		return -EINVAL;
> >
> > +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> > +				    adjusted_mode->crtc_clock))
> > +		pipe_config->bigjoiner_pipes =3D GENMASK(crtc->pipe + 1, crtc-
> >pipe);
> > +
> >  	pipe_config->sink_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->output_format =3D INTEL_OUTPUT_FORMAT_RGB;
> >  	pipe_config->has_pch_encoder =3D false; @@ -936,12 +941,6 @@
> > intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
> >  	if (ret)
> >  		return ret;
> >
> > -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port-
> >full_pbn) {
> > -		*status =3D MODE_CLOCK_HIGH;
> > -		return 0;
> > -	}
> > -
> >  	if (mode->clock < 10000) {
> >  		*status =3D MODE_CLOCK_LOW;
> >  		return 0;
> > @@ -957,6 +956,12 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
> >  		max_dotclk *=3D 2;
> >  	}
> >
> > +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> > +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port-
> >full_pbn) {
> > +		*status =3D MODE_CLOCK_HIGH;
> > +		return 0;
> > +	}
> > +
> >  	if (DISPLAY_VER(dev_priv) >=3D 10 &&
> >  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> >  		/*
> > @@ -994,7 +999,7 @@ intel_dp_mst_mode_valid_ctx(struct
> drm_connector *connector,
> >  	if (mode_rate > max_rate && !dsc)
> >  		return MODE_CLOCK_HIGH;
> >
> > -	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode, false);
> > +	*status =3D intel_mode_valid_max_plane_size(dev_priv, mode,
> > +bigjoiner);
> >  	return 0;
> >  }
> >
> > --
> > 2.33.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
