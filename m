Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B3A809B35
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 05:52:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF44510E161;
	Fri,  8 Dec 2023 04:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25DAC10E161
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 04:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702011158; x=1733547158;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aBZKk8C6cmtxFrU09vZOTOWReuFL3XNhNvmFLOttbYE=;
 b=AdLe/FRtp9LFMvFTP8cFi32RdIDevypjdJsjOOW9V6VqIQOlz3jtippB
 3otY8LaBpHci+JnHWo07ZGbdu8xfylwIKAZsnkZHsuNCZ3IbebGd4u7ay
 +YG0e0F666LciDgQBlxQWTDN/ulQ+Zl8rCkoS6EfpdRbvK0tYwQl0WVVl
 7ZAyijl7hqMeQ7ro9BDkzZ0FYmgZYXzXWycOcs+KLEYDj+qwm4eMAQrNW
 G+6mBwr4M+uRuIQtH7YoZ/ZdBetyEukVMQ8cJa8lIPA1mHW/PIiahFyRt
 9N3HRIE7Eb1LO4Q7d+sbYJyTg4gNTj+bAZhehJBMbjbdbtjG+Fx8zbZXY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="460836230"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="460836230"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2023 20:52:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="1019215174"
X-IronPort-AV: E=Sophos;i="6.04,259,1695711600"; d="scan'208";a="1019215174"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Dec 2023 20:52:37 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 20:52:37 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Dec 2023 20:52:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Dec 2023 20:52:36 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Dec 2023 20:52:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OLVAUSYUGjzdTn3JnXks/nB4OYUg9pkmKp+z+K02OQ4DAkL78EaNmKizjAqW2U0l1UQq05MXmL7XKWoS9IJoq8ZeBv/s2AU0v/4f7ob/4Vc9LU9d28alYaaRZsWBEQYlX2la3bs0Rdzfl4OcCey9fImd6jhDpczXYFKqLsrUqKMsiR42NneXXco8vDMMO8p16ThemdzeqxpUGVky/URmzQGu+tswJE47roMAiGrDyUtG22fMTfKujtuaKnokaeg79eMv0r1SNrJayO0eZ6UHo+GZ8cfAhAUHEc5l0LW1cFppq0v+lJkZKezS+oak4zPmcFvP6hRjMmkvOgYCfjGa9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q5GbmArj3RQvXf8ESSmyLaf/xpEwOlGDKMSr4yLD4+Y=;
 b=fSr12l6agJwLJoffftsxE3SfsNaNcASJRLbXJ2IK2lN4Y1CetntY+Ki7tDbfICHrM2Bh7O67UG2ICWcyvBW0sBiWKgoa+v3N7fFCMSN9j4uQIs2VckRu/pSmdP/ekA6ur+TfIEcnnRNej7b5OCKzyWncaCzh77SHucwicGSm7FQvd6/mTYr1+LB4PPGEH9GpeKf9xrOPBW8myrLnMG/oEUhVuS8umnTHeEH6OZ3J+NLHoOxnzjo9eu8fex4Fgrre24ywvc5bdQG2Z643uvrDjqKxX2Y9F0bSTR7flPE+L3NOxA92B3NgHmQFAEfYDovNBIVzEsrcNYBlX5KL2eymxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8740.namprd11.prod.outlook.com (2603:10b6:8:1b4::5) by
 SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Fri, 8 Dec
 2023 04:52:29 +0000
Received: from DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4]) by DS0PR11MB8740.namprd11.prod.outlook.com
 ([fe80::bca3:68ba:7857:1bf4%6]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 04:52:28 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Subject: RE: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state from
 the flip done irq
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state
 from the flip done irq
Thread-Index: AQHZ8iC6yI3+rJ/8mkOS+FmMKsMBL7CFHyqAgBaaoHCAApLSAIAA8xCA
Date: Fri, 8 Dec 2023 04:52:28 +0000
Message-ID: <DS0PR11MB874051E5E93E160C2D278F56BA8AA@DS0PR11MB8740.namprd11.prod.outlook.com>
References: <20230928152450.30109-1-ville.syrjala@linux.intel.com>
 <ZVy1r7Z7JwR8JQIq@intel.com>
 <DS0PR11MB8740B1CB1D1ECA45E4276D89BA85A@DS0PR11MB8740.namprd11.prod.outlook.com>
 <ZXHUhAQS9mFPgVmh@intel.com>
In-Reply-To: <ZXHUhAQS9mFPgVmh@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8740:EE_|SJ2PR11MB7573:EE_
x-ms-office365-filtering-correlation-id: 25bb2756-9322-4468-68be-08dbf7a97a8e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4FynVX87APG+OLy3nVz58mrnL9oz7Je7uSrkCjc28otuxS+e9Ny3FZiSNZGvFzcWnPUxlE3uhfsEmr80Vq1lgb4+bpsPxrF1DW9p24UYkzGSren5rwlWBb0g+OICfpWdv3ae5O1Nuk4AvcdgTomGHLDsD0OvoaEq4AUkuJYem8p1IjI09E6XgB92HXlCDDLctfW/M/nedcYpJn48u/AoRxLc1i9X3FcrsSSYgUiCnucYNR03YbKyQom8UgBnFnrHcgrcwzYs1g2B2tX7Noln6K0A05QCMTzFgNgqHY6gtoX2x4YoiEyfDPI0Gp0m13LSqE4JDOF6sRMGtDVxR/xyfGpLV/kofD8jwbFufZgk8Ae1Wsoj7G/yYjzEcvVoO/Dxoq87BtL+S5rbbyNCtPPJuGnuvCm7aVtCY5YUlWYEmPv6arpvVQoH12Mxsl3d3rMEWwE6EoM5QK3rHLp1WFomxyFuAUnXOMcZddhVUvC4QcPT2B6FtXmoXlTkeDdhogLNlQvKuNB0gvedAWWV1BPaUCvPbnz52gaoxwVZiNLq8iqckYolwBjf4RxkTrVlgGNFYfIuHDpFZ1bGL+I+1mTDx6RgzLbWEDVV32UaRPUJBBo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8740.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(396003)(376002)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(33656002)(2906002)(5660300002)(122000001)(52536014)(86362001)(8936002)(4326008)(8676002)(316002)(76116006)(66946007)(66446008)(6916009)(64756008)(66556008)(38070700009)(66476007)(41300700001)(38100700002)(82960400001)(55016003)(478600001)(71200400001)(66899024)(66574015)(7696005)(83380400001)(53546011)(6506007)(26005)(9686003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?GvzEsOon5wvkmXFfLxDyxQRBm84r0KPO08DtBhhpcBZP0V9gXD//7jR+Vi?=
 =?iso-8859-1?Q?KCG3PGSyHDWzG/cC+AatEyov8sF5dy5wWgL+9ED1Qdvhjv18f2p4jytb8f?=
 =?iso-8859-1?Q?Nl0ZxRLRoAeqHtv4UkZlcCqoWbHf4F0scHH372vLif+6lW50zTR70FNdZh?=
 =?iso-8859-1?Q?YaX9Xyg9PeM+/hGY45BI7bsTSt0YVLt+5AI5WRaiaSpzaBiwxeDBV2QiDr?=
 =?iso-8859-1?Q?V6+q4LNeS3CXwYSF72e+1tDoRooySGVazYKFeAzcwXONZWjFrf+0pp55d7?=
 =?iso-8859-1?Q?yJMd4YN6aoflKtYZoGGbsNqpgfp8hS9J4GxgjfY1OwceMras/51iJj5u4l?=
 =?iso-8859-1?Q?F9aDbIUVLrFzph8uWGpatbNFLENSKVY+sT/QuLH97gBfCgj06s/+AmCz2M?=
 =?iso-8859-1?Q?07RVQ7eWh/FY0wYkhI2vBANf6PxHPs9YMOg5qi/JszDqNUQYqvrgdY+wW9?=
 =?iso-8859-1?Q?TDRSJ/Ls96ZP2LeXE2xphIxLM/WnMfrkgClNHE6//kVULUt7d+2BwzrquC?=
 =?iso-8859-1?Q?FGATbZ7ODkk0ut8OSD50Lwaa4R4dvStrNiMj//M+zeuqmALraOfPl3+TbJ?=
 =?iso-8859-1?Q?pJ4Lh6kB1QUeCdlwoAPUWO25c3DQmljJzFmIVV3EmSyycr3soNYDILaDDw?=
 =?iso-8859-1?Q?Y1ML+iTFNBbTgHtIFx83JN4TBls2emJffxZ0sWpXP4R0zaB6HcthAHvVZa?=
 =?iso-8859-1?Q?/wkg/r19yLRZ46twDC3I2a/gA48wMs9+JzDVfM0CiDZ8ezod1bPiXtVbS8?=
 =?iso-8859-1?Q?/1ZJTl/u5QL3+vkK2GxCsaKpuimQpRgxnDzvR/xwZB+L8gwHA8NDSYX/+1?=
 =?iso-8859-1?Q?CgjJhlnel+8PIxIHFFf467EE6t7Kzxp1jO6Xou1Kcr9xOXLUEXTKWj9eSF?=
 =?iso-8859-1?Q?2Lj5vj2cTxuZBkLE+sNGZYrr9Mw10trXx5G5nhIk/JasKV/N0oRvTiEgd/?=
 =?iso-8859-1?Q?Crmu7ZZxo2cfWGVvzIPIBosJOH/P1UBpO/XJJK9qkDBsupEhZkeN5PwW/L?=
 =?iso-8859-1?Q?8QtpVWEjbGul0RgB3VyuPlyazxDFnG4jhoZQ34vJom1AWWA/yMX0lqBq1v?=
 =?iso-8859-1?Q?Or5oIWcBP3UxDG9oFGY1uehdveJlqVMMuLyvTnPmcGUhht0iBNeYQbTGu0?=
 =?iso-8859-1?Q?qaExySOMfQvVSIw8pC0neZ7Gh11tYkYs1DihEcZhR0h3lbwwjdyUCSBTOD?=
 =?iso-8859-1?Q?kMt44gXmhA2txwk39MYSOc3d9+5W7eM7Fl3fDGFt3NYLK3OayEV/5PshmK?=
 =?iso-8859-1?Q?7TS5ljGeYzeBEm0Bi2zfn+MtAZU51OaXuO8G5mciv85NFAovnxAicUE8Ko?=
 =?iso-8859-1?Q?jRt7dX5kA5t9U5y9Tr7Z/zjUiz6+MDY2h9nPiE0NCixUKnVGi5syub6vg+?=
 =?iso-8859-1?Q?7jUbTmCLP5J+mjZtiMqMjkyeV72P1/KWPlt+5dSMy9zYxZpWmnEgm+oQm6?=
 =?iso-8859-1?Q?jpwTv5I0wfMu2yPG7bYLrA3nnetHytA+rLigU61XyGW0kG7NNsZw2S1Fx/?=
 =?iso-8859-1?Q?16kDytCQ65KvUUdnC4DMbohCZLnZpUfW3B5W0UJwCTEkEQf4zosj1BS0fY?=
 =?iso-8859-1?Q?7O3ntT2Ekhdk4jgJZhfPXMPxH42yzYNgH83d9sxRb6+DPqtjnEFaS4PFhA?=
 =?iso-8859-1?Q?wd4nq0qgQ4VXybnOxE/338ezv2MdAB5Hnk?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8740.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25bb2756-9322-4468-68be-08dbf7a97a8e
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2023 04:52:28.0546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d9vxWR1XWEINgi2MCIiLH3B70XL+O1aFZFeyBWgoBFtMTe0Aj8vka1hEyyx13drnNUENMs1DTSjBr6jCtlSZuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
X-OriginatorOrg: intel.com
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
> Sent: Thursday, December 7, 2023 7:50 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing crtc->state=
 from
> the flip done irq
>=20
> On Tue, Dec 05, 2023 at 11:16:58PM +0000, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrj=E4l=E4
> > > Sent: Tuesday, November 21, 2023 7:21 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Stop accessing
> > > crtc->state from the flip done irq
> > >
> > > On Thu, Sep 28, 2023 at 06:24:49PM +0300, Ville Syrjala wrote:
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > >
> > > > Assuming crtc->state is pointing at the correct thing for the
> > > > async flip commit is nonsense. If we had already queued up
> > > > multiple commits this would point at the very lates crtc state
> > > > even if the older commits hadn't even happened yet.
> > > >
> > > > Instead properly stage/arm the event like we do for async flips.
> > > > Since we don't need to arm multiple of these at the same time we
> > > > don't need a list like the normal vblank even processing uses.
> > > >
> > > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_crtc.c          | 9 ++++++++-
> > > >  drivers/gpu/drm/i915/display/intel_display_irq.c   | 9 ++++-----
> > > >  drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
> > > >  3 files changed, 15 insertions(+), 6 deletions(-)
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > index 1fd068e6e26c..8a84a31c7b48 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > > @@ -553,8 +553,15 @@ void intel_pipe_update_start(struct
> > > > intel_atomic_state *state,
> > > >
> > > >  	intel_psr_lock(new_crtc_state);
> > > >
> > > > -	if (new_crtc_state->do_async_flip)
> > > > +	if (new_crtc_state->do_async_flip) {
> > > > +		spin_lock_irq(&crtc->base.dev->event_lock);
> >
> >
> > Would it be better to use irqsave since we are dealing with events.
>=20
> One uses irqsave/restore when the we must protect against irq handlers, a=
nd
> the code can be called both with irqs enabled and irqs disabled.
> Here we are always called with irqs enabled, so the save/restore would be
> pointless.
>=20
That's right, I didn't notice the next patch where irq_save/restore is remo=
ved and added this comment.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------

> >
> > > > +		/* arm the event for the flip done irq handler */
> > > > +		crtc->flip_done_event =3D new_crtc_state->uapi.event;
> > > > +		spin_unlock_irq(&crtc->base.dev->event_lock);
> > > > +
> > > > +		new_crtc_state->uapi.event =3D NULL;
> > > >  		return;
> > > > +	}
> > > >
> > > >  	if (intel_crtc_needs_vblank_work(new_crtc_state))
> > > >  		intel_crtc_vblank_work_init(new_crtc_state);
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > > b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > > index bff4a76310c0..d3df615f0e48 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> > > > @@ -340,16 +340,15 @@ static void flip_done_handler(struct
> > > drm_i915_private *i915,
> > > >  			      enum pipe pipe)
> > > >  {
> > > >  	struct intel_crtc *crtc =3D intel_crtc_for_pipe(i915, pipe);
> > > > -	struct drm_crtc_state *crtc_state =3D crtc->base.state;
> > > > -	struct drm_pending_vblank_event *e =3D crtc_state->event;
> > > >  	struct drm_device *dev =3D &i915->drm;
> > > >  	unsigned long irqflags;
> > > >
> > > >  	spin_lock_irqsave(&dev->event_lock, irqflags);
> > > >
> > > > -	crtc_state->event =3D NULL;
> > > > -
> > > > -	drm_crtc_send_vblank_event(&crtc->base, e);
> > > > +	if (crtc->flip_done_event) {
> > > > +		drm_crtc_send_vblank_event(&crtc->base, crtc-
> > > >flip_done_event);
> > > > +		crtc->flip_done_event =3D NULL;
> > > > +	}
> > >
> > > I just observed an oops here due to e=3D=3DNULL with the current code=
.
> > > I *think* I've seen it once before as well. Pstore also caught what
> > > seemed to some kind of spurious DE interrupt, which might explain
> > > the oops. But not really sure what happened as the machine died befor=
e I
> could poke at it more.
> > >
> >
> > Earlier the event was set to NULL and then drm_crtc_send_vblank_event()
> was called.
>=20
> The question is "how was this called when the event was NULL?".
>=20
> The possible answers are:
> - spurious flip done irq
> - some kind of race with multiple commits, but can't immediately
>   think how that would happen as we still signal hw_done after
>   flip_done, and drm_atomic_helper_swap_state() will block on
>   hw_done, and the flip_done irq will not be enabled otherwise
>=20
> >
> > > >
> > > >  	spin_unlock_irqrestore(&dev->event_lock, irqflags);  } diff
> > > > --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > index 8d8b2f8d37a9..a8ae1a25a550 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > > @@ -1461,6 +1461,9 @@ struct intel_crtc {
> > > >
> > > >  	struct intel_crtc_state *config;
> > > >
> > > > +	/* armed event for async flip */
> > > > +	struct drm_pending_vblank_event *flip_done_event;
> > > > +
> > > >  	/* Access to these should be protected by dev_priv->irq_lock. */
> > > >  	bool cpu_fifo_underrun_disabled;
> > > >  	bool pch_fifo_underrun_disabled;
> > > > --
> > > > 2.41.0
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
> >
> > Thanks and Regards,
> > Arun R Murthy
> > --------------------
>=20
> --
> Ville Syrj=E4l=E4
> Intel
