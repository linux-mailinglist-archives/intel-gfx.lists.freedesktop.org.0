Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E4B673F66A
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jun 2023 10:04:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFC7610E29E;
	Tue, 27 Jun 2023 08:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81A9A10E29E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Jun 2023 08:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687853086; x=1719389086;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=NY7yYlUbEaqvIdOw5C6UhSWvRM9gvaM+9dxGgjrJIns=;
 b=fTiUte3d7oyAhhuQ+tV0czaPltd7rPe6/N1hGDIo0BZQV1Sg8C/utX9P
 FS2n8tMZA3AdpUKaAbZg2BuBxf178ux2Rr99hCDmZYi8lbEycR2N/n4Rw
 QXztaFxqzQrelxrlIt5sSmMhhghmLFEpoKOzJZxGOANAw0keHfdqYIFz6
 sOyfURaOgkIF/pGBqPfQdn5tojr3hY7W78npMNfyoLw3pyO3+HOuutVVe
 rpyFe8+gV7FYCasCy7u6YwJ0V2N5oLEab3Y6WbvB/l8e7xqc313IgQVLt
 LSsNst3M559sqw4qhJ437unynKher6LFQRaDv0i0RaXY7uJhvoieyRbKp Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="425174496"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="425174496"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2023 01:04:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10753"; a="693754842"
X-IronPort-AV: E=Sophos;i="6.01,161,1684825200"; d="scan'208";a="693754842"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 27 Jun 2023 01:04:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 01:04:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 27 Jun 2023 01:04:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 27 Jun 2023 01:04:44 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 27 Jun 2023 01:04:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d6zh7aotOOvri0xCsCR5aFek9NmnFYxWuhj8MuDc7SlW34Xm5GNARAZpzyq3Ur/bQV86r3ES3YGiyMqklOsFnIvOl1d46LIRE9Axc74v2nlVdNN4bdnPU159ae7O9yzUdXpkzp3jW5s/ZzH/cmimZA8Vao1SiWgvSafg2vQ48pqbwOzT4+2F7ufgJ0sotSdduX/t8Ao/eIvKynDJHqYOIhXTAETDxXcTZH6mUVsKZHoy+c1NUfFF2XnM50BRBE+p5JnVWMx5blD544wJbe5EtNZguQW3PJVGBEgFns9AM9y3DxI2n+cG2ARMkSPVShvPo5b5OtnG6Jt/CbyRjs0d0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lRqni+ZvJZu6iKilxhzJgW5vC66cxk2m1e0BiU3hb10=;
 b=kH3D3kisVlNI7CACX2ONPWYwtGVLVrQ1pzl90d8Gqb6jipjcmN5ikftE+yxFC3rgti2q+/bimiTfaz5Lmk0Bq6MyKrCbBGlsxWpcJAl3GFRL5JSlJdbqXdKkXOjLkUVeo7KzX05yqFL64BzEU9pTUIxlws04RQ5wxfsJPmHtIBwAWVlrQf4j4dieg7EK2dyxKsu6F6IpY5x/5EM+NSmz17v5ZXkaqq3UWPg1yTOMU/keIhjRP/J9W6OCIyK4gBkq5sO5lX7hMV2xQjzj1FvYhM0vwxsyVyX8lZ/J9vCm1M++OV/IpwUm8S5BCWhblb0VbnIk2MpgWTmZ+UPLhGaLnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7826.namprd11.prod.outlook.com (2603:10b6:930:76::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Tue, 27 Jun
 2023 08:04:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6521.024; Tue, 27 Jun 2023
 08:04:42 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Add forward declaration for struct
 seq_file
Thread-Index: AQHZqAOcRqNBe3L1hU2owMbMt6rrAq+c/V6AgAAaUfCAAA8UAIABIsQQ
Date: Tue, 27 Jun 2023 08:04:42 +0000
Message-ID: <SJ1PR11MB612959F0FB18371AAB0C5BEFB927A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230626061043.1162688-1-chaitanya.kumar.borah@intel.com>
 <20230626075254.1183894-1-chaitanya.kumar.borah@intel.com>
 <87r0pyv34w.fsf@intel.com>
 <SJ1PR11MB6129D9B5056D11F447C5DEDBB926A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <878rc6uw9z.fsf@intel.com>
In-Reply-To: <878rc6uw9z.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7826:EE_
x-ms-office365-filtering-correlation-id: 857a56d4-ccc9-4fb8-8ccc-08db76e529ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HlXQh3SUYtl1/iaJ1n1J8vI9GBl19He2VSgAz2GIGbgXoCTAX72Ohzm8RYuMfPfpGkyCOxIT/ofapHtznD6hTsTso80obJ4WUXQPzvrtZ7fjuONSl+CVkUraxzvMsmCwNFWQ1ALRBieUpVbztu28YQEh3axoFwUf85Yvrb3zUupBRvosVXwADSl0eIKI6Ps7+LVqokmPPO4XFjCT3iDFdIkwFl/zF+rv4yHJJytRv0wCTDR2VTFW9c0QMuQmUO0fiTrSRMsj+7DixoClwP6x1jk1u8YQRUvD22o19sMUx79hW2Wu/+v+OemTBPgHmyBVk4a43qS0KS860ERLXU4iD/VFMTvsJCC8piWykE5+EvFSYNC8rGJ/t/zAEx50FHbjH7jmLEWt4vATk5PW1yyE9T7UpTljma/X+26ZWKm5MYKTbASlMXxBUznZzr8yt+dqnVfvjVjH0kuPhcGxQ00VkJ8RUuyRdHHAgM9lG+dX7AX7SoKPDuKsf6qisPTMNdMxn4BIRwUmBhxdc5zFKaSR+MA1h+Tnq2IaRcgAMkzZkptCbrG+0VieUbLLZ0OgRjPlxTgUc/k/QunUhKi0NKDnSdMQLQrpze3xuRe9mJKC0dW0v5SI1FU1QHqbN3v+QQjn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(39860400002)(376002)(366004)(136003)(451199021)(5660300002)(52536014)(66946007)(66556008)(66446008)(4326008)(76116006)(66476007)(64756008)(33656002)(478600001)(316002)(8676002)(8936002)(2906002)(110136005)(55016003)(54906003)(38070700005)(86362001)(41300700001)(7696005)(71200400001)(186003)(9686003)(6506007)(53546011)(26005)(82960400001)(38100700002)(122000001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?vqSdtuMXy5R9IeQJ/+UGmLCU4Dh4XVvVZ8tVJhydUa7KOZ1WQwdizcUDss4W?=
 =?us-ascii?Q?ukLwAiDMdNSV0RRpbkgXCzcKBaj0z5/efcpHVDwyR/u3u6kp5ulEWx5u5b89?=
 =?us-ascii?Q?/S0LKE1+Od7dcbzQBcG3NrBeuIZ8TLO7Pb5XJyCRmsFs1TPD8mbVoRRKSNNy?=
 =?us-ascii?Q?ReSY4wXnvjxLhgkQSMA5qixkB2Wi40eVrqHhhJcEu/64CrM1NI2zFmslMGK/?=
 =?us-ascii?Q?MZVE6qYr29oF1oCwvBSNbY3dyRdgOe6uCFT19PfA9wm29AXBGOD5ukC6+XTv?=
 =?us-ascii?Q?FSYQOkL0X+X2CZSB/oIBj71ZAffxQZeR4Iw28PgB421QBn8QXaY0aOOK28Tn?=
 =?us-ascii?Q?se+e/EW57hYccMJ9HRyNGl7prAOW64C4D6NlaZPM1t8VOpuNedNlEo9sy3pH?=
 =?us-ascii?Q?L9wl0S/mzEmQ4j024o8LNIiL8jYOp9YGP99wHcSKgUDfuniFIIEhrQO7T5r+?=
 =?us-ascii?Q?uxCrMk24VJW00sM8qKbf7+c6OPwBaICn8GpenW0i+3iYrdbahx0SRmgzW+Q3?=
 =?us-ascii?Q?kVUWtTdPSfhDby51QtJXKA+cM3hKIOMeAufCWChd2FbozOY7OfhGpDdSZ32n?=
 =?us-ascii?Q?NhIs+ClTGRV7DRZf+wWIOPZ6IG88AuCLnnACJG03vACkCQ0ddMbk+Z6OGyss?=
 =?us-ascii?Q?TGSzJTVAzkTICh2zHTvOn9dEDt2RBqSfCtEmMUdvzPlL0CJa9aK/SvXBq5Iu?=
 =?us-ascii?Q?fRcAZhySwENFsUPEwDxxz/Agli7LF0rw8nmyo4oiIpPwPll2gVpHSK2Vq56S?=
 =?us-ascii?Q?MCc06ZM+ZXz1bS1LlWUDi7rTEE74bluahT/H6n+q9t2aB5OnUxNxyeyeM850?=
 =?us-ascii?Q?tw1SD+tG7aRtzNEGXRCo6YpEl0KQjOongbrdX5BOZI4nyQEQok1kEyXZz+OV?=
 =?us-ascii?Q?CYY0Ns9Ncakn7i902KmSv8Mpo7t8FjEg0Q4n1V/q4Lx2gd+B4c9PwTKHR9nF?=
 =?us-ascii?Q?VC4L5LJF216OXV3qt5mIgV3n2pI/X9gTUXykXbkZoL/jOZB+t1ePqPo17aB4?=
 =?us-ascii?Q?DVr1YxRdF4Bp7V1D4btvV9LAp7E7uKTMd71G5+AmOCE1scOKUl27vJUaRRAp?=
 =?us-ascii?Q?jpTYVunLrL3hAMw7+FReC7Tww9fnn9zrVG6kvfVjLXedyCfc+Y5liyh/xITA?=
 =?us-ascii?Q?YzAE9py4vh8ACxwaxF0Cl0EO5mb3eSyV1/SlGbP4pMvE6SfEsxZLE0b7gFXv?=
 =?us-ascii?Q?43r/a4uo0CJzhiseMBo2VToqBPTCI0Qzj9ZthgvKNQ3WnLRfSobWUD939A2w?=
 =?us-ascii?Q?xJHMBHFOwHqvklhrjYvQpXPFS3yH4KJSYXPJMqnHUl5oXO0Bsjp8sa9/Ms9S?=
 =?us-ascii?Q?lJEAIOmMCeSL+CTOCFhP2CD/04SfDLTg6TZAId59PTVgWstu2WuSXQaD+4x7?=
 =?us-ascii?Q?Sqvs/hEpK00R4BOh08f4gLegK2xbnu15ANSW7u1nbIftOumwzhZt1m0cClLk?=
 =?us-ascii?Q?UTBNGdYld24tKwKgXqV8BrOKm7koZ/6uA50WRj5Ho/A6ID79RVTxIOcX0e/6?=
 =?us-ascii?Q?OOvCLtUaekQFupeIiNl2/apxtnWjPdlEOcHyz7Rz8WGSle48K7mW8CmtIrop?=
 =?us-ascii?Q?3kUP+MSonDt9IV9KP42WTwqm6W6RLl8QHD/+CWWPgcNqXLqvMoLjihC6JwWG?=
 =?us-ascii?Q?Ww=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 857a56d4-ccc9-4fb8-8ccc-08db76e529ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2023 08:04:42.1861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GHikIGy+17VWUBCX8YHDBmHKnVMIZuMfxETGlYo6peyhNuS6KmLyUHB9GHSX0HjSQnTAVOVrUULTRwOyVRXfKDfB3CadSs5+n99Cx72Ny2E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7826
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add forward declaration
 for struct seq_file
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

Hello Jani,

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, June 26, 2023 8:05 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Add forward declaration for struct
> seq_file
>=20
> On Mon, 26 Jun 2023, "Borah, Chaitanya Kumar"
> <chaitanya.kumar.borah@intel.com> wrote:
> > Hello Jani,
> >
> >> -----Original Message-----
> >> From: Jani Nikula <jani.nikula@linux.intel.com>
> >> Sent: Monday, June 26, 2023 5:37 PM
> >> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> >> gfx@lists.freedesktop.org
> >> Cc: Shankar, Uma <uma.shankar@intel.com>; Murthy, Arun R
> >> <arun.r.murthy@intel.com>; Borah, Chaitanya Kumar
> >> <chaitanya.kumar.borah@intel.com>
> >> Subject: Re: [PATCH] drm/i915/display: Add forward declaration for
> >> struct seq_file
> >>
> >> On Mon, 26 Jun 2023, Chaitanya Kumar Borah
> >> <chaitanya.kumar.borah@intel.com> wrote:
> >> > With change [1], visibility of struct seq_file is lost in
> >> > intel_display_power.h leading to build errors. Add forward
> >> > declaration.
> >> >
> >> > [1] ef104443bffa ("procfs: consolidate arch_report_meminfo
> >> > declaration")
> >> >
> >> > v2: Use forward declaration instead of headerfile inclusion [Jani]
> >> >
> >> > Signed-off-by: Chaitanya Kumar Borah
> >> > <chaitanya.kumar.borah@intel.com>
> >>
> >> Hey, thanks for the patch, this would've been fine, but looks like
> >> Imre just pushed commit f4fab137dd2b ("drm/i915: Add missing forward
> >> declarations/includes to display power headers") which adds the
> >> forward declaration among other things.
> >>
> >> Sorry for the trouble.
> >>
> >
> > No problem, Thank you for the info.
> >
> > Sorry for my ignorance but will this patch eventually find its way to
> > linux-next or do we need to do something special here?
>=20
> It'll show up in linux-next once -rc1 is out. But I'm not sure that's the
> *question* you want the answer to, really.
>=20

If I understand correctly, the patch will get merged with linux-next
along with the release of 6.4-rc1.

The pertinent question is when will linux-next builds be fixed?
We are missing out on regression tracking because of the build failures.

Regards

Chaitanya

> BR,
> Jani.
>=20
>=20
> >
> > Regards
> >
> > Chaitanya
> >
> >> BR,
> >> Jani.
> >>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_display_power.h | 1 +
> >> >  1 file changed, 1 insertion(+)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> >> > b/drivers/gpu/drm/i915/display/intel_display_power.h
> >> > index be1a87bde0c9..0ba268e566b0 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> >> > @@ -16,6 +16,7 @@ enum port;
> >> >  struct drm_i915_private;
> >> >  struct i915_power_well;
> >> >  struct intel_encoder;
> >> > +struct seq_file;
> >> >
> >> >  /*
> >> >   * Keep the pipe, transcoder, port (DDI_LANES,DDI_IO,AUX) domain
> >> > instances
> >>
> >> --
> >> Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
