Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 983FE391C82
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 17:55:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6526E0E3;
	Wed, 26 May 2021 15:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0271B6E0E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 15:55:27 +0000 (UTC)
IronPort-SDR: nAotbwIv1R5WjwycMNmPX9gR0/cqhHO6jlwC89r6tOX6AFUbu9cpWaH4EIfdryNeCcoFsS1Oy1
 LZkHTzFhmslA==
X-IronPort-AV: E=McAfee;i="6200,9189,9996"; a="200601772"
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="200601772"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2021 08:54:29 -0700
IronPort-SDR: ipqqxeiRUxLFGcNetHeIm/3KO3S4710h3SYSO6yT2SRhRjOE3TbmFA+y648iZfKV8vpcB4lLab
 7BYpxHYlq+6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,331,1613462400"; d="scan'208";a="480101798"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 26 May 2021 08:54:29 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 08:54:28 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Wed, 26 May 2021 08:54:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Wed, 26 May 2021 08:54:28 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Wed, 26 May 2021 08:54:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RiIi6CzgeUt/SiRCC+yVNSAH4WIBFR2Jaq/TocgRiycCQQ8AJbm74AMH2bBEMvoHl7y//daNtZmOIlU1W9qJSAA8GZppW3TK2VwewIPf+mOkckLuzPhC3iV4Mcm6p0i+qntLZMiCVwWnkSgqbbTueyoi6Tcynw62nGnBE8Fmo4uZWtL5mcKDj1HpX8C5seKAd1huwq7cl5puiJXVnW6tOU8VROR63+0k1AOZPYkhOGPQqIKTL6yq2sHLQD+KqpHkmUsBgmo3Y3LyqPmDTzISbY31wTOvGO6o+r1L3QsNef2R23QI3KvSsJbNcnr+UZFEHqv/tXI8d28BCvzMLZ87nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZd0sn3CB8DALOLVaEuVgOwSMMDJNMVpeRYgQVimanY=;
 b=OlXTAdqaiFLaenmYH1nMKTl1+p0KSYCTHG6JNs4XQXHu6ZqVP6GMmMvqQtfj0RGHCVtWNL/JJNAQdiH7ULkMOowClCriC2tVPYoH52moXtm2AGXrFUD3GKTJkObhdsAdBWDVwpcOtSv3KLd//pu2CA6mXmjO6hz+09I/ewa/VTgpRRC9Eo2Bvig1fu/SrPKyQX3EuKuqUhXcZacZjX5+qmiSMob+WxBYhn6JlTJ0jA4uIFOA8JV51L5FLWFA0XAfhxWse1gzOkUzXim9MTvRDQT0/EFaHNK8nA+tHxXnHb6EznnYUCapVJWvauG5HuvHgs/8Z33gZos5tCiExnNkhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZZd0sn3CB8DALOLVaEuVgOwSMMDJNMVpeRYgQVimanY=;
 b=CO5LqPRP0XRdqKqIxI/rIvLCj6FxzahYC/2MuvUiMlWS5AGdBkoFVz+NompenT27afv7coSaJ56by9S7gzjqSVFfhvCdO44r3XYSc6zMHrmjgvrFr7ZvbYDFOKGs2kMTMVQfczU4cs5RSCHSsvJWwDtulHFFvmyWEHhYdGkM6KE=
Received: from CO6PR11MB5569.namprd11.prod.outlook.com (2603:10b6:303:139::20)
 by CO6PR11MB5667.namprd11.prod.outlook.com (2603:10b6:5:35b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Wed, 26 May
 2021 15:54:26 +0000
Received: from CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514]) by CO6PR11MB5569.namprd11.prod.outlook.com
 ([fe80::2d63:b94a:89c5:4514%7]) with mapi id 15.20.4173.022; Wed, 26 May 2021
 15:54:26 +0000
From: "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Varide, 
 Nischal" <nischal.varide@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Gupta, Anshuman" <anshuman.gupta@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
 status via debugfs
Thread-Index: AQHXUhnk8ZmJR5ZE9025Rhc+oC5nbKr10igAgAAHlsA=
Date: Wed, 26 May 2021 15:54:26 +0000
Message-ID: <CO6PR11MB55696FA42DA6C2D477EA8C898D249@CO6PR11MB5569.namprd11.prod.outlook.com>
References: <20210526181728.14817-1-bhanuprakash.modem@intel.com>
 <20210526181728.14817-3-bhanuprakash.modem@intel.com>
 <87im35bmfj.fsf@intel.com>
In-Reply-To: <87im35bmfj.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [157.47.93.56]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc2ebe56-6496-4ac7-1443-08d9205e89d1
x-ms-traffictypediagnostic: CO6PR11MB5667:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO6PR11MB56670DF5D688B52836696C7C8D249@CO6PR11MB5667.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cP+ymOgv8F1pfdkjfSydXvH3Lvnn4jcS5+/VwIsxDH1uZlrddmm4RET97VE5NOc/JsGohwnwNdafXPb5nrP4RZlsqR/iz5crphkMxOp7oOAp/8eNVyO3P5jzBIUn0Op3GS5zt3TgLkS9noHKKOju+7Wo5G8nZV4ZD2lGNqORFdwEeXLunrzi12T+EkGWQ+Gi9peaLo4gJydNpAQE9UNa8hJRigAv4gsLRJ/S7yhHnhudyJAC6wZ3qf61/yMOg4+7zNZlA7r7JsgyP1R8RcnZhAGewo7HCofUoM/LMHzD67/ZRnJzwIjLtvzN9IfFGRaepm19CqyQqKqFJyT2m7UNl8fDFFDKNz2iooEzkE6loI/FW1y6pcep9GiIue64PlOfvz9trpeHK/5JHq2n5JQYm4GAPTQL6E2rPTq6Z2jsmwF5rE1UuS3zYx6M7tv1pvDuSfvYNaYUFaS1SXBbimsT9ENIu9BbW0Vp6xvmUl4F1Tbcc9Zna3xOFQC0YkPTT7cfrg6/dxKq4HR0bmm2z0pyrx/dSd5yJVS9WBepXOLZ5Atg9nABouPUT55wukVUywt2G4XcBzKT6RcVYUr5LaYVGil39k0WkzVmZ9CXsf207QQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO6PR11MB5569.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(366004)(346002)(376002)(396003)(39860400002)(83380400001)(6636002)(478600001)(38100700002)(55016002)(8936002)(8676002)(33656002)(5660300002)(9686003)(66574015)(7696005)(86362001)(52536014)(122000001)(6506007)(53546011)(71200400001)(66446008)(76116006)(66946007)(66556008)(26005)(64756008)(66476007)(2906002)(110136005)(316002)(4326008)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?g2zO26JdtTs7mmBqVrM+sQ4y0WTSKrrQ8bjXhXgZ3q1jZgbjGdL6/lM6tU?=
 =?iso-8859-1?Q?vpVeDbF+7Rdhu4s5ypwJsSOIQw+9p7W3kMeNsX2vKH3l4xNlydLJs8+L2m?=
 =?iso-8859-1?Q?i0NdvKVJzSpTxU1Y91gYhvPBLu1kw0eaZsHiLsVpoa3Tmrl4mKEciCaxOk?=
 =?iso-8859-1?Q?k6+8xongFhe/HcIdBNF7MLFPCF2R3HlOqJkn4pmrRLJV+4tQAl7QdzNrKo?=
 =?iso-8859-1?Q?GKgULJn4VTAgYgLeFEkCwTwgGIm2OWjIfGOkYikLpfVr6xeHp+W2ao1qvD?=
 =?iso-8859-1?Q?di0j9X+EhPBdcBf4ZrS+/7s2qoyZUenX3FLKGP7Wda/uNGUM7CFqAhrxj3?=
 =?iso-8859-1?Q?Ixg1jpgRJMn2GDoBPTIWwXP+8A3YXVg9BrNdkinMFj/mGg0O2LlIiJXpwV?=
 =?iso-8859-1?Q?JyEQZ1TYiKnpFlYO6T+8XDDmATGi0geO7h+AhuxoK66RryrnBoJGdZ33DV?=
 =?iso-8859-1?Q?GtBWBEw+TYOdG0ys/uNzC7rLHNPSkqawF3lo8ePqfu6NXyTVseoXDgs543?=
 =?iso-8859-1?Q?ILVG3/lFashBo7F0gRbdb1lbZ0Xset7SwHLV0at4cFeTzB0SXr4zmyLyjN?=
 =?iso-8859-1?Q?EIbC44eVTnzE+8ENxu+t2IhxaHSGRpZiiWjMxHku7+KOpOCzoDFNj6Kpgt?=
 =?iso-8859-1?Q?x4EzhOxnVotbBFEGpj267En1Be83KfRvM0grBq5irtOCVCGfvSBLQZ+C4d?=
 =?iso-8859-1?Q?ZslNdt91XR76zZ30g4QWijxVRcOpACP8WSkn5YOcirIpmSmw57k/Aafx+m?=
 =?iso-8859-1?Q?Si70p1Vnj2xX53+okI7pggEPWCXZPDUaUa0Rk87+F5yXtPow7BGTZ360Kc?=
 =?iso-8859-1?Q?2Xgd1P0CDHBh/pH5fJODT11GmUqyZYv/oaEXjEgYeTpVRjyLWVUG3mgkbx?=
 =?iso-8859-1?Q?daNRfheTn7CeP4KUfwn3dDy13wvXPmNYf7fhu+Wx88klDsqxoHTMEVOmTn?=
 =?iso-8859-1?Q?4YHgUZicgWeeh7m6vLCH2y16bRpZaDFs9yBbroX9DrIsDvvBxz91/zeuHK?=
 =?iso-8859-1?Q?CoJASFDQ8NHYw6T3+b1NhjN2iFoUSwP5d2CzKcAjVCXiwuFZJdG46B+Q3l?=
 =?iso-8859-1?Q?Bpr/mboDwvooBIZAipAStNRSU12Hj2B+xljXSGnK8cGnnL5o2F7uOOXzeJ?=
 =?iso-8859-1?Q?dw5bUs6ReA502PE3ahzIDWQqEneBmFMPwcRgO0quoON+IkKLIG+dnf/81Q?=
 =?iso-8859-1?Q?wKfCVLwxoDsgZpmBVYqpl+ndsC3h+pVhNFURoOnqYZzSB/Khwo6XqqIMRC?=
 =?iso-8859-1?Q?XiMybsyBVxdvZQk64QV8lsNiXOKapzOuQOAa0ER35Kp8tVL1f8Dk2PNaRI?=
 =?iso-8859-1?Q?OjHzX+7oTte4QoQRDE+Q0aWOSiBdyb77hE6n4OR3lBbg4+E=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR11MB5569.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc2ebe56-6496-4ac7-1443-08d9205e89d1
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2021 15:54:26.0353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c3YnxBYKzasx4FEP9VMKv7ZOWRj2zP6d+aV2YEL6WTKH0HCv3b2hGAW5tdVGrkI1NjWU2jVDaXXrqtuVqRCcKnk+b+odwBz29qavEAyo1rs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR11MB5667
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
 status via debugfs
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Wednesday, May 26, 2021 7:57 PM
> To: Modem, Bhanuprakash <bhanuprakash.modem@intel.com>; intel-
> gfx@lists.freedesktop.org; Varide, Nischal <nischal.varide@intel.com>;
> Shankar, Uma <uma.shankar@intel.com>; Gupta, Anshuman
> <anshuman.gupta@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/display/debug: Expose Dither
> status via debugfs
> =

> On Wed, 26 May 2021, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wr=
ote:
> > It's useful to know the dithering state & pipe bpc for IGT testing.
> > This patch will expose the dithering state for the crtc via a debugfs
> > file "dither".
> >
> > Example usage: cat /sys/kernel/debug/dri/0/crtc-0/dither
> >
> > Cc: Uma Shankar <uma.shankar@intel.com>
> > Cc: Nischal Varide <nischal.varide@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_debugfs.c  | 32 +++++++++++++++++++
> >  1 file changed, 32 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > index 94e5cbd86e77..a6fefc7d5ab9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> > @@ -2158,11 +2158,43 @@ static const struct {
> >  	{"i915_edp_psr_debug", &i915_edp_psr_debug_fops},
> >  };
> >
> > +static int dither_state_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_crtc *crtc =3D to_intel_crtc(m->private);
> > +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > +	struct intel_crtc_state *crtc_state;
> > +	int ret;
> > +
> > +	if (!HAS_DISPLAY(dev_priv))
> > +		return -ENODEV;
> =

> Unneeded.
> =

> > +
> > +	ret =3D drm_modeset_lock_single_interruptible(&crtc->base.mutex);
> > +	if (ret)
> > +		return ret;
> > +
> > +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> > +	seq_printf(m, "bpc: %u\n", crtc_state->pipe_bpp / 3);
> > +	seq_printf(m, "Dither: %u\n", (crtc_state->dither) ? 1 : 0);
> > +	seq_printf(m, "Dither_CC1: %u\n",
> > +		(crtc_state->gamma_mode & GAMMA_MODE_DITHER_AFTER_CC1) ? 1 : 0);
> =

> Are you looking to duplicate the conditions for enabling this CC1 mode
> in IGT, and then checking if the driver set the bit as well?

From IGT we just request a flip/modeset by setting "max bpc" prop with
different values & check for the dithering status. I found debugfs is the
best way to get this dither status info, since we don't have any KMS prop
to expose this info. Otherwise, we need to read the registers and bitmask
to get the dither status which is hectic. =


- Bhanu

> =

> I thought the direction has been that we don't do this type of
> validation in IGT. There is no end to it.
> =

> Ville?
> =

> > +
> > +	drm_modeset_unlock(&crtc->base.mutex);
> > +
> > +	return 0;
> > +}
> > +DEFINE_SHOW_ATTRIBUTE(dither_state);
> > +
> >  void intel_display_debugfs_register(struct drm_i915_private *i915)
> >  {
> >  	struct drm_minor *minor =3D i915->drm.primary;
> > +	struct drm_device *dev =3D &i915->drm;
> > +	struct drm_crtc *crtc;
> >  	int i;
> >
> > +	drm_for_each_crtc(crtc, dev)
> > +		debugfs_create_file("dither", 0444, crtc->debugfs_entry, crtc,
> > +				    &dither_state_fops);
> > +
> =

> See intel_crtc_debugfs_add(), called from intel_crtc_late_register().
> =

> >  	for (i =3D 0; i < ARRAY_SIZE(intel_display_debugfs_files); i++) {
> >  		debugfs_create_file(intel_display_debugfs_files[i].name,
> >  				    S_IRUGO | S_IWUSR,
> =

> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
