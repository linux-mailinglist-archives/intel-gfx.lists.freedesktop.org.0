Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AFAF665DE7
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 15:29:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D9BF8945A;
	Wed, 11 Jan 2023 14:29:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D82B8945A
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 14:29:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673447383; x=1704983383;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=tnJblPLP+j2s5rZN9h6llRPLMKqFyoZPca+ZIPWiVY4=;
 b=nQtEJqAm61poktNAj/Od4CmNnTgnNFuK9vSA7ENqgAHhxlvj2Q+Todvi
 tENYrLQhjrjz9E7Y5hESgqz24A32PkVqfGVhslh1rHr3I3S0EDFQxuBg4
 QhQJZ2RYAVaPfTLQ464AUZ2hbNecfRrYlAQ8OS598pr0U1T2/xZP33A0C
 pFGt8vzDWwEXp7aX/tU7vcA2aXopjjL/JRJ2qgMRRWEjLfMktQurWrOVS
 w+Sfr6LSZfnQgUTY1phVJdY2rIFUL1jzwhc9v7n75ACI9jdksUp0/piH/
 8F6YMDmohawSJiqKlgs9ZZlJvbQp/crAUJ4Fc//XB5VzXOANwobMTNHVy A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="409668012"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="409668012"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 06:29:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="902775206"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="902775206"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP; 11 Jan 2023 06:29:42 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 06:29:42 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 06:29:42 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 06:29:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NGg+qNDwcvR+l9Jz9PtnbcvYb8NgTubOV+/kAYN7rtXVm0ITOMoLTRWw4MnHsCKPNpHx7vct/IT3SI3alrA2NE/YeDP2T4ejvPYCD2IMFq0eNOuMd0RaI8YTyMzGVSW1a465BqzQfBIMLtRgJSuOgi4+SiMPoaSwJaymBUqUDjX/I7fz4Qe8D1f7a3n5QxAJnWJvBkQw+e6E2ly0fYCyD/UjC1F3REX9IO08OJtS8WcUvtRGH1+MVRcBPono1Z8E+r8m68GBBT67UaJILb9bgbihTC3ybySDoo9JUebfsLTqdd9yItBAVUXr674x7TnUrkak9GZI4BqJSNtWU4K8fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sx0ZSoOWzaw6OKHXpretVqvwf1NA3wbjBo4Fb4akSC0=;
 b=QwzdHYN9yEynR3xbCuR7PbPLvxkdWD+1QJ/2SsOmZ2M0TC8tru82zoecM9sTA53Ei8SDkyFZXlwqF/u8KierNItCGIpvrBQwlQ3UyjMRggOzkIZQSPa80eAiQmE5Grhq0wyvF1ZkDIwb2dIKFOyr7m2c06p5aBPvQfEGk32siOCGRasylli2tWBU37tpyKYrj0YcVpiUBXSRKscmfD0ZwhgOhkBurb+XofZyk7xG1ZU6vuUynp/1Yq70bsXck1nZAOsj6V0K2Y8dZcI5dl0AxjzaWa03RDHacpDxd87t4peGb1KKLsCdsu8htAgqRHWgDSCwq6HEeZ8PxcBJ1WOTsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM5PR11MB1739.namprd11.prod.outlook.com (2603:10b6:3:111::22)
 by CY5PR11MB6161.namprd11.prod.outlook.com (2603:10b6:930:2a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Wed, 11 Jan
 2023 14:29:40 +0000
Received: from DM5PR11MB1739.namprd11.prod.outlook.com
 ([fe80::ba54:60bd:570f:7547]) by DM5PR11MB1739.namprd11.prod.outlook.com
 ([fe80::ba54:60bd:570f:7547%7]) with mapi id 15.20.5986.018; Wed, 11 Jan 2023
 14:29:40 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v6 6/9] drm/i915/vdsc: Check slice design
 requirement
Thread-Index: AQHZJX8soY0jIQoJzkWcSWQIxanb6q6ZOfIAgAAM9lA=
Date: Wed, 11 Jan 2023 14:29:40 +0000
Message-ID: <DM5PR11MB173978075F8EFE4E99647446E3FC9@DM5PR11MB1739.namprd11.prod.outlook.com>
References: <20230111053837.1608588-1-suraj.kandpal@intel.com>
 <20230111053837.1608588-7-suraj.kandpal@intel.com> <874jsxi3x7.fsf@intel.com>
In-Reply-To: <874jsxi3x7.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR11MB1739:EE_|CY5PR11MB6161:EE_
x-ms-office365-filtering-correlation-id: f397c4ad-9b97-4252-e940-08daf3e04671
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I9EZa8m6CoVody7p3/M6ZHl9/7HhUueNtUfyqkSqnIfErQFvSORvjcGcOrVc3v+28SLgm7b5fPsTbXZ112/oJ9nmZaf3RcicNSNjmCREEluYVOIJnDZaPISG/sQVspfKNjnup08Si5PhTvC3Hx6uat+5ha1obbjCshIuMX82qdNsmSFtdL1ULDMqTu8tJPGw9GXVaYxaIAtb0KjBEjsi1fw6J3EgCH1E8nqqcG+LCPLvG8/m2qjqIHioEfJccx8rchKVfgIf/i5K9YEApm6RFiZg0S5VyVsMZXA4HnhQ/ZRuy2/nIIO4FWQtTEYbnY5l9pKVKPmQDNQ22PDx1LrR06LR2m65m5sod/JAOP2+rmx5UJKfzHVoy2C9N7Q/RER7ZX160L1QTf5r7aLsKKrU+5zhurxqz2tWr7ONduv3hNgp+5S9NRjZFz1cwqQFwpLSL0JGqfsSaQMdPFF/PrYDs/TfW2pyDK6JiRQ+PO6psBNTQ81p2RJqtPt5LedxfSFNPRlslD+aur4XUavq1rMc462ZJjVhBGcaW0u+4LLOp5UOc7ZWCVZWBP5O0tBtt6wskz+xALyRrNW+eF6hGxTG4v8dlyHOtrADRGwPWwc1F196iUfOsWyjaf3PA9B/DpezbHt8wut5vOqlzaEkEPxhbp+50gJ8imOy9CIvdGSySU4x7LTIal9fjuLx3o8Ns6OUeC4yeppZFL4itAvcijMc8jkAzYM3VPu85/v3+qnLwVI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1739.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(136003)(39860400002)(396003)(376002)(451199015)(41300700001)(6506007)(8936002)(5660300002)(2906002)(52536014)(83380400001)(33656002)(71200400001)(82960400001)(122000001)(8676002)(66556008)(76116006)(38100700002)(64756008)(66946007)(66446008)(66476007)(38070700005)(316002)(7696005)(478600001)(110136005)(966005)(55016003)(86362001)(26005)(186003)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dPtZXAEOCvRZiqUDV0y9mTbTYM2UBmvyUFqmqW3EQBfeRFDQ3JF3zf2lgDni?=
 =?us-ascii?Q?p98p2HMhVW3vD2PGOGA8EQViTkWfpILeBFMzV61RJeRDG3GZCf80MuxiZCv4?=
 =?us-ascii?Q?vU1AqYvbhpygY/CXwZaexpjs3cP2J2CIJNAtl1T+uWtE8Jwm/6CrwiTzWMoQ?=
 =?us-ascii?Q?Jau3cXfUotprWSy7v/jVY3aaoMaktI5axlss97gdVpp61NZwRfo9JEBe9cNf?=
 =?us-ascii?Q?wpJQXdxELffAJiwyeY/faBDr17WMn5eUkM0XPdKDHccYehMk8ZQvMPdrtB/s?=
 =?us-ascii?Q?KqPYOIfSmPMIbZNe2plsk2stCqYekVfG2X/LpcmqavskJ4w2UX5CJ46wKvsc?=
 =?us-ascii?Q?nvBJzXSDnT22YoVJdy7bUdO16KT8AMXoiCxCyKJcQMEgzGpSCBEDux2iqDKe?=
 =?us-ascii?Q?2eojxppAof/5R/kLv2Vhj9ejMEOUwHqDN/BPuchhYLbBYknVPJtWGVsbpCzi?=
 =?us-ascii?Q?8WNSH1gtf6elNVNTM11ty98htjyMobLgUMo2wTrw1ov7jnZ+pgAkIChVws/J?=
 =?us-ascii?Q?9eu1Ibzn4coT6kScijLekgbbQdYgoV7Lshm0lnQMf7wCkhYKjKYAjpjxkxYi?=
 =?us-ascii?Q?oH6SVBkdZ3Df3fExMKdZJokm4GkRz8cAdupXdxOhn10AlgHYta9Te2Bjx6Z9?=
 =?us-ascii?Q?YUD/IDaN3sTsq79gfG9umSi7+VqrR6dAwgV2KcqVuQUOxY5HUBlyjJRcbmJM?=
 =?us-ascii?Q?lnQusNsxBw5Stdf0aywy1Z9WjD54A65KYN3fLsRVmCbEd7pHPNa9+RZzg12a?=
 =?us-ascii?Q?EZ0eMTCQeCHHlheKa/Pf1Qr+E0ywfDZ1O41ro6jfvs2Q7YR1e1KqPBiuczCP?=
 =?us-ascii?Q?BRyHMcO1wwOseDzcsgY6UOBIU9ydTZWX7Uq7scWgPeQzky6asc7/e/jjynQK?=
 =?us-ascii?Q?bEdYLu7C/96a2OHOoOw4sNd2NJ6zkUKMa9fOKPlOFOw0RD8fzN0zVK+BEEOF?=
 =?us-ascii?Q?zmFM1WfERmSb0akh6kv36tRFNXi5mY5DWQwjgg9ny3kl3XAcProf2Yk/o1H2?=
 =?us-ascii?Q?rXfkkK1mmPxmYlbwwQVCaoxWfhvoTkbMB9BcVdPrLtJ0ubbRvu/vbmTEkbdZ?=
 =?us-ascii?Q?53wJL7HIk5RVzu0V5/X3Ht+zsu6CwrB5a6HgKHBuSBNvcmv+nUdPdyfOza+u?=
 =?us-ascii?Q?irIgLY+X7TmkH0k1HV3Hv/ZmwkcjzGsgc4OojTr6tS2XlhssslOJRHBP9Ml8?=
 =?us-ascii?Q?FfVkAMZ6yz2zGQsUYWy3w3DGKkVLFnWr7zZXV78E5H+7cldOZwnP6EX4fcwU?=
 =?us-ascii?Q?R4Xp/hIp9q7e15UNv2njQsO/M+UkCOy3LHoF6c6vWOTlj2Ynp9r9yK39ORWz?=
 =?us-ascii?Q?z1Og3Kz9hiNwTHSxD2/nAtNN/J10CQ0Aq5ljEimz8j7HYRAdUXjpK3RSzJtM?=
 =?us-ascii?Q?FqIdQOmyPzUKzBCeqoQvmBAaZ9XgHFz/fAQwOjN+Tf4xsAqnd+kheH0v32Wd?=
 =?us-ascii?Q?J4XfSIcwsF3kcTMvAwx+zbd7M57devRXFznRsV7OEIePG9sAm2aYJuufYw3Y?=
 =?us-ascii?Q?N8WuaMG8EhH+ekOlTW2WjvixSyXNpB8ZR1x0nxbAjzA5f1oL00ngRiEbx8Iy?=
 =?us-ascii?Q?LSF8AMJiZqaxBZauQvG8lyzUEk+DrLhLLXVwLSNm?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1739.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f397c4ad-9b97-4252-e940-08daf3e04671
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 14:29:40.6284 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3nZ0dhP9VmGen9DDcp3gF38VgEJuCPQwcyN6OgNHVURQUZ80bwaAL7Jn6owMutnKnaSAff8WIodruiWnwfInwA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6161
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 6/9] drm/i915/vdsc: Check slice design
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

>=20
> On Wed, 11 Jan 2023, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> > Add function to check if slice design requirements are being met as
> > defined in the below link section Slice Design Requirement
> >
> > https://gfxspecs.intel.com/Predator/Home/Index/49259
> >
>=20
> Just add this:
>=20
> Bspec: 49259
>=20
> and no URLs.
>=20

Ohkay got it

> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_vdsc.c | 32
> > +++++++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > index 52a82d8b289e..0a683d6dff33 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> > @@ -447,6 +447,29 @@ calculate_rc_params(struct rc_parameters *rc,
> >  	}
> >  }
> >
> > +static int intel_dsc_check_slice_design_req(struct intel_crtc_state *p=
ipe_config,
> > +					    struct drm_dsc_config *vdsc_cfg)
>=20
> Bikeshedding, I think "check" is generally a poor verb in a function name=
.
>=20
> intel_dsc_slice_dimensions_valid() or something like that?

Sure then ill go with intel_dsc_validate_slice_design

Regards,
Suraj Kandpal
>=20
>=20
> > +{
> > +	if (pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_RGB ||
> > +	    pipe_config->output_format =3D=3D INTEL_OUTPUT_FORMAT_YCBCR444) {
> > +		if (vdsc_cfg->slice_height > 4095)
> > +			return -EINVAL;
> > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 15000)
> > +			return -EINVAL;
> > +	} else if (pipe_config->output_format =3D=3D
> INTEL_OUTPUT_FORMAT_YCBCR420) {
> > +		if (!(vdsc_cfg->slice_width % 2))
> > +			return -EINVAL;
> > +		if (!(vdsc_cfg->slice_height % 2))
> > +			return -EINVAL;
> > +		if (vdsc_cfg->slice_height > 4094)
> > +			return -EINVAL;
> > +		if (vdsc_cfg->slice_height * vdsc_cfg->slice_width < 30000)
> > +			return -EINVAL;
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> >  int intel_dsc_compute_params(struct intel_crtc_state *pipe_config)  {
> >  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> > @@ -455,11 +478,20 @@ int intel_dsc_compute_params(struct intel_crtc_st=
ate
> *pipe_config)
> >  	u16 compressed_bpp =3D pipe_config->dsc.compressed_bpp;
> >  	const struct rc_parameters *rc_params;
> >  	struct rc_parameters *rc =3D NULL;
> > +	int err;
> >  	u8 i =3D 0;
> >
> >  	vdsc_cfg->pic_width =3D pipe_config->hw.adjusted_mode.crtc_hdisplay;
> >  	vdsc_cfg->slice_width =3D DIV_ROUND_UP(vdsc_cfg->pic_width,
> >  					     pipe_config->dsc.slice_count);
> > +
> > +	err =3D intel_dsc_check_slice_design_req(pipe_config, vdsc_cfg);
> > +
> > +	if (err) {
> > +		drm_dbg_kms(&dev_priv->drm, "Slice design requirements not
> met\n");
> > +		return err;
> > +	}
> > +
> >  	/*
> >  	 * According to DSC 1.2 specs if colorspace is YCbCr then convert_rgb=
 is 0
> >  	 * else 1
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
