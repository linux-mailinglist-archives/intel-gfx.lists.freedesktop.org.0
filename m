Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB18811FCD
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 21:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 444F010E81A;
	Wed, 13 Dec 2023 20:18:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C022F10E81A
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 20:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702498721; x=1734034721;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nJtl8AjakOrZ8aqda6NwtkbbolcuBEwQpzCFjq8ENY8=;
 b=lahthG38knWD/9LBCDvimpziXsemZ9CoujhXYPYRrLdL3xSaoho+Z+Lo
 QVFU1LcfYNAUo4m2IO2ZIdfXObajvqDml4IeX9yiIB215lPf8aOYHtSKU
 DFqW2ef3S4EPEoI3wjM2FqKYjtk9WmK29Hx+6mNMlgKSepZjxcMFPypjL
 gkBiNzLaAEJ6uq3ec/YsPbSSJRsimsSe/r0ogdYV6i03G61Ur0Jtctbde
 owh86lmzHhirPjtdpPgG6tllhK9ojd8qn23/SQ6us3YOmplApAqjMNYGi
 wiMNFZ+jEiSSzP2TQymgThYF8nh42J3j0DMv8FQQrGVuFKTe/Y5XQ9esp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="374527707"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="374527707"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2023 12:18:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="1105428050"
X-IronPort-AV: E=Sophos;i="6.04,273,1695711600"; d="scan'208";a="1105428050"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Dec 2023 12:18:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 12:18:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Dec 2023 12:18:40 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Dec 2023 12:18:40 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Dec 2023 12:18:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Wdsj2zXi4mWqNa1X0Hq+hM+QcRQ9CKkredPRF3PiFvqu/KxxbfZD3wzJVlbdT0N4ECLfa/KtqLshFH9aRDhsfxNbm45GU2pYK6CNpqGsWoDgPDzDqeDSe169O6U09EbcX+E+SZJWOK98+kyWaWc5N78zQwSnc6NT/v3d1/VMDjc+fGbpJHe9qtIV7I5UGwp9xpbTxYm1HY/60JTWbwz/6jfj5x7c3xQS4gTaK2fJqoTlgpi0e5lEKxj7rFOGrWn9ICnQcy7ViNtSorn3b49RsXArTOuUOvoxoRdKTNSz6MnRVBQH2LmS7xuMj6Z4HEyXTX7wk2y3eVKaOqo2Y4Wqhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xvJ7mRosaNC/TY7T0IUg3UD0bc0nF25DBqVC7eNccoU=;
 b=IvVF4OhTENW27cnQhZYUmqk/WdMOFZHhW/2xJhoqMOurZNRpgtj2218JE2jvwnbsQ0XpgTu6rptpNbflSPCs1NTqPS+R5Rea5R6lPI4BcIDsrapZMzDqT1R1716gkY81EJ2xrYmkGKmHhtc2R/9aTg2I/fbSg/wayz0jQQKvhUfBaCAwC0bnqYF9g/pR/kuveXGWnlm8BnWhTjb0vKBwhsCFAK3hf1JqQ90I+COR12q0Qc7/edV87OCIo+liQsgF1coCFv0TvUQM9RmkoLLBapboW6rAbZLHotSQIv1seFAnL0YK2UM+xHfCEjpbxRph9yHzu0i962GTuF7wZRuXuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 DM4PR11MB8228.namprd11.prod.outlook.com (2603:10b6:8:180::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7091.28; Wed, 13 Dec 2023 20:18:15 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7091.022; Wed, 13 Dec 2023
 20:18:15 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>, "Das, Nirmoy"
 <nirmoy.das@intel.com>
Subject: RE: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Thread-Topic: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL stolen
 memory access
Thread-Index: AQHaLV1ehsLMotduQkmac2IgjlhoXrCm7XcAgAAFwICAAK2RMA==
Date: Wed, 13 Dec 2023 20:18:15 +0000
Message-ID: <DM4PR11MB5971E509F696DC0883F3D904878DA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
 <20231213004237.20375-5-ville.syrjala@linux.intel.com>
 <170245857881.24445.6579832987498048224@jlahtine-mobl.ger.corp.intel.com>
 <ZXl5pclbJJRWL68T@intel.com>
In-Reply-To: <ZXl5pclbJJRWL68T@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|DM4PR11MB8228:EE_
x-ms-office365-filtering-correlation-id: e19f06a9-e7f5-4f8c-14a2-08dbfc18a382
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hy2HX3jUuGazT0sAm4eOTdvheXcZUY57IO82V7nzHIMtkvaXVMhi0//+wGUnCpq3hHL1P/G53w3gMNwSTagZ6fqFswX1npMvOM1IuneALof//RtjAIj0qXxMxF7UBDkzeAQLkHrIszQ3qGrUm/3ASnY55cvCxIcf+F+Vyczr294jiNlywN3m59cYg1h+fF5HDl8QiRksQXej+fH0Dp55i4JXgyWHXn2ESl6DcanjGh54n+0izAT+9Wv5YwusvFQREZAt991LTgFj6OXT21L4n9F/Ia12br7uv72H1eSRKsw6Pypqn+/D3x6gDdEZh9+GqtbV/4sVUv7Cwco534GbfI/kHvKN4LEEoVPjneep0IMXE5Wd6AcjPXvcsOAhj9NETuSmQ8q1bh3FfsHOok+5D1pAzFZcFp/xKB23EJN6ORo7ZoS7F3yLTitoqH/COvQhFMLWFzqw3rrP0ksQUzyAD+9CVyXBnWvpXvzZmkqQSucx6p8xaBtCbU4xTpieF9oVGo4Mjiq5XOTAvO9d+ru/ZAl70/TT2SpA7bJPHPXTPSIlSKNUQsp+veBNeZe9pi1QsLdl9vrjhROYY2PT9lOB0bhnJR44HhgB5LSRsmcN3BRhqtuLscunt2LDXCwPsoCqOtnIOUOBjHu1NWIVc9QCHQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(346002)(366004)(396003)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(26005)(66574015)(6506007)(7696005)(71200400001)(9686003)(53546011)(83380400001)(5660300002)(52536014)(41300700001)(4326008)(4001150100001)(2906002)(478600001)(966005)(8676002)(76116006)(8936002)(66946007)(110136005)(6636002)(64756008)(66446008)(66476007)(66556008)(316002)(82960400001)(33656002)(86362001)(122000001)(38100700002)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?fgflQv9hhVlJxQp+v76qnnC+dEGtirBCkmEbt/8lTkXVCgERecQZZT9YY2?=
 =?iso-8859-1?Q?d4WMu24LoGKPXmZ7YvSFUEcrsXmtUImKi4B2I2uAwdZKVdbqvVdiUbXFNZ?=
 =?iso-8859-1?Q?wNqacvZapWtTjUNYghQ4GXc7SUwoK0/XQICkufJPZ7rMtpAQOfPaekMIub?=
 =?iso-8859-1?Q?Nx8aR0ZdUsGctOR1YqZEzNXliuJJP8H9rAN6qdCVeXUtPXsQpxJq0oJniL?=
 =?iso-8859-1?Q?wML+RLJQaDh+e6Soxyb14do1V8M++ZOTI2XH4LQL/rVDbGTvj7LuV2O7MM?=
 =?iso-8859-1?Q?wsVLSML4Hcat+H51KS6pLk8tHy7NljDoPT4hNWTYDl2OHRauWAms5od99I?=
 =?iso-8859-1?Q?vG81ZDRjGaa3DJew75om/+SyF5QqRACtxtGLsepqTVpambDtJJVh76MOQR?=
 =?iso-8859-1?Q?JYgNDaaQWv2QQm5YE7eLQP2vgQAE/9AF0junho40GIlP62zFDlJnjel9jp?=
 =?iso-8859-1?Q?UxuXQFR8YRfYB2BzgBwIjaQ5GZDBfvzZOh9+qPR0MDfeo9B3HjJA0+HKnT?=
 =?iso-8859-1?Q?kqLGfKNxP97Tju06yiQ/BrF2w3RikfBpn/kepTTyk/a5WndJ5qgK8AMdAI?=
 =?iso-8859-1?Q?sM7EdF4sRHWK7sFHqMJIt30zgr0wKZCPtafnilenkQxv3oIzb98eS7yRVO?=
 =?iso-8859-1?Q?o4DaMM/2ILI2qJbNylPriZI/0TR2tz6E0dyoYPDxhN9gDGUfshwj+lDBK2?=
 =?iso-8859-1?Q?8tYES+a8n4I2iunJmSBaxq/Nk274noWx5wZGp6jKalu+Icx4cJADWS5po0?=
 =?iso-8859-1?Q?R5oYcDXbL01LUKme6mUsWieHr6BpWfUAMeGbp77mosaARqOmwjwzAW7KX7?=
 =?iso-8859-1?Q?7Z1I2GnU61h9Duain1PZH0qB7XhJCQAKRaoyi6OcutpX253xYwoG6uJWWd?=
 =?iso-8859-1?Q?tMWzN6tuzWm/eTY237aqNOMhOIBWT2CPV+gS7F+rGugP8pqcaVIXpAbl41?=
 =?iso-8859-1?Q?kIeFUoNyUQG0TxxrnHSMCynWaEOSFrbb+AKwMHkSlQR5CoD5IvaVDlbIFz?=
 =?iso-8859-1?Q?6bponEy0nmwwc1NDToCh+OkOVEUXCQHyv/60MFN49AEwtVRsluVi6rSU80?=
 =?iso-8859-1?Q?UYVeaAoFCAkDevlTPQewREsRrIpR6h8omphLGeYqBspH1c0DEbnl2QysSF?=
 =?iso-8859-1?Q?5jH769c1cXhVJmUhDBAufjfOWxpVJ2t6VjPSdQYLSN6Z5nT7cffWD2FLOF?=
 =?iso-8859-1?Q?dewaiFj3P8e5Rc8/5s2hHPWZ6MbAj+qUGkoSsBD4bMNkAh838d2mfO00md?=
 =?iso-8859-1?Q?9Iw7/NdhPy3PbYOicSLcXw9wOufwYjFqY7ANWNGGPsS0k8mzX3crKumwfI?=
 =?iso-8859-1?Q?amshBgvQxPl75nWWK1mdBmMs+8e9YATdmXLLqm+Fqb0lQq4r3bWjBUBAyr?=
 =?iso-8859-1?Q?YZtaYOp00YJ5Jl2dkiSNlTWCmEk1mAnm9GktFZMIamY7Jd/1UIOSle8bFd?=
 =?iso-8859-1?Q?4xMFJkP95ZYfA6kex8bnpxX/+NIm7wq+Ut1aqKYbdqlhW0a7nUxiVBeh/S?=
 =?iso-8859-1?Q?ZuBIN//bn6aW3RK5s7MW5Og7ttUc0JlIu7fqW5Fo2eT5W09soTcfmf7xEo?=
 =?iso-8859-1?Q?BSGAaWd9EZctiWaiCAxWaxzaUmjANIdghK+WeHS2bMx7z8dpM+mCp+s4rD?=
 =?iso-8859-1?Q?EzJZgoV00ZpwHTognD2tlfQa7e3pSvLde/XBxfR7K3lBTqc1qv+pjUdg?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e19f06a9-e7f5-4f8c-14a2-08dbfc18a382
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2023 20:18:15.3192 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TvtlF+PbGI9cW3FfUC1HMd/HtncK9oqGAbjNpe+uCeNqhEgdWmIWdY0KrrJq55ObGThCY16ATQbp8YtQe2u9HczBbv9cNmcmDIB+YbGHqwk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8228
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

Hi Ville,

+Nirmoy

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Wednesday, December 13, 2023 1:30 AM
> To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> <radhakrishna.sripada@intel.com>
> Subject: Re: [PATCH 04/12] drm/i915: Bypass LMEMBAR/GTTMMADR for MTL
> stolen memory access
>=20
> On Wed, Dec 13, 2023 at 11:09:38AM +0200, Joonas Lahtinen wrote:
> > Quoting Ville Syrjala (2023-12-13 02:42:29)
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > On MTL accessing stolen memory via the BARs is somehow borked,
> > > and it can hang the machine. As a workaround let's bypass the
> > > BARs and just go straight to DSMBASE/GSMBASE instead.
> > >
> > > Note that on every other platform this itself would hang the
> > > machine, but on MTL the system firmware is expected to relax
> > > the access permission guarding stolen memory to enable this
> > > workaround, and thus direct CPU accesses should be fine.
> >
> > Shouldn't this have a proper workaround number assigned?
>=20
> I think there are various numbers, half of which I couldn't even
> find in any database, and the other half I couldn't access for
> whatever reason. So dunno what situation really is apart from
> the firmware clearly implemening its part (since I can poke
> DSM/GSM directly without killing the machine).
>=20
> RK do you know what we should call this?
Nirmoy previously used Wa_22018444074 in [1].

There were some associated issues Wa_13010847436 and Wa_14019519902
which Nirmoy quoted in [2].

Wa_22018529850 is derived from Wa_22018444074, is targeting the latest Gop
driver change which is installed in bat-mtlp-8 hopefully it should help deb=
ug the issue further.


Regarding the patch itself,
Do we need to carve out the range from e820 the area around DSM if we can d=
irectly access the range from CPU
without the bar?


Thanks,
Radhakrishna(RK) Sripada
1. https://patchwork.freedesktop.org/series/120683/
2. https://patchwork.freedesktop.org/series/123329/

>=20
> >
> > Regards, Joonas
> >
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 11 ++++++++++-
> > >  drivers/gpu/drm/i915/gt/intel_ggtt.c       | 13 ++++++++++++-
> > >  2 files changed, 22 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > index ee237043c302..252fe5cd6ede 100644
> > > --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> > > @@ -941,7 +941,16 @@ i915_gem_stolen_lmem_setup(struct
> drm_i915_private *i915, u16 type,
> > >                 dsm_size =3D ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> > >         }
> > >
> > > -       if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
> > > +       if (IS_METEORLAKE(i915)) {
> > > +               /*
> > > +                * Workaround: access via BAR can hang MTL, go direct=
ly to DSM.
> > > +                *
> > > +                * Normally this would not work but on MTL the system=
 firmware
> > > +                * should have relaxed the access permissions suffici=
ently.
> > > +                */
> > > +               io_start =3D intel_uncore_read64(uncore, GEN12_DSMBAS=
E) &
> GEN12_BDSM_MASK;
> > > +               io_size =3D dsm_size;
> > > +       } else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size=
) {
> > >                 io_start =3D 0;
> > >                 io_size =3D 0;
> > >         } else {
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > index 21a7e3191c18..ab71d74ec426 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> > > @@ -24,6 +24,7 @@
> > >  #include "intel_ring.h"
> > >  #include "i915_drv.h"
> > >  #include "i915_pci.h"
> > > +#include "i915_reg.h"
> > >  #include "i915_request.h"
> > >  #include "i915_scatterlist.h"
> > >  #include "i915_utils.h"
> > > @@ -1152,13 +1153,23 @@ static unsigned int gen6_gttadr_offset(struct
> drm_i915_private *i915)
> > >  static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
> > >  {
> > >         struct drm_i915_private *i915 =3D ggtt->vm.i915;
> > > +       struct intel_uncore *uncore =3D ggtt->vm.gt->uncore;
> > >         struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> > >         phys_addr_t phys_addr;
> > >         u32 pte_flags;
> > >         int ret;
> > >
> > >         GEM_WARN_ON(pci_resource_len(pdev, GEN4_GTTMMADR_BAR) !=3D
> gen6_gttmmadr_size(i915));
> > > -       phys_addr =3D pci_resource_start(pdev, GEN4_GTTMMADR_BAR) +
> gen6_gttadr_offset(i915);
> > > +       /*
> > > +        * Workaround: access via BAR can hang MTL, go directly to GS=
M.
> > > +        *
> > > +        * Normally this would not work but on MTL the system firmwar=
e
> > > +        * should have relaxed the access permissions sufficiently.
> > > +        */
> > > +       if (IS_METEORLAKE(i915))
> > > +               phys_addr =3D intel_uncore_read64(uncore, GEN12_GSMBA=
SE) &
> GEN12_BDSM_MASK;
> > > +       else
> > > +               phys_addr =3D pci_resource_start(pdev, GEN4_GTTMMADR_=
BAR) +
> gen6_gttadr_offset(i915);
> > >
> > >         if (needs_wc_ggtt_mapping(i915))
> > >                 ggtt->gsm =3D ioremap_wc(phys_addr, size);
> > > --
> > > 2.41.0
> > >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
