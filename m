Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4D27DB57C
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 09:52:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4146110E24C;
	Mon, 30 Oct 2023 08:52:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B4D10E24C
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 08:52:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698655964; x=1730191964;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cSLniMk7v58fmZMl3SgUtHfDp7TqTnwXWdTDCLESN8g=;
 b=g7scf2AFGciX6nA7ojDm08o9RVJtYuVvgYDETKHzC4j/pv2glnWY/bAV
 vATJ9Ev7E0BniBFpGSwh46s11hjcHGn4e3KYV7k3fgaaxrsINqEHbDvxF
 XjHgjn4TZIqDs50+dY4LR9YJq3RUYWWQEGusaIhZuQw2Je4kgDTE1FmbI
 Lo6iqWaRZFqvMCGmKydsSk1aJbzSnNkYWaJSHIZWXP+Oyrh4TbLTNP4oy
 TtVQWUYEQVim6dKQEIq3/YLlVXxtMQu/6ORQPnaWG8hoiUl3+RdSSvUvm
 fRvdX7oHD/Pw7XAYk3Bh2VdV6XbRjDEdVucBshudpVtZOpGMkD3lJLKhv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="901237"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; 
   d="scan'208";a="901237"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 01:52:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="877065540"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="877065540"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Oct 2023 01:52:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 01:52:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 30 Oct 2023 01:52:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 30 Oct 2023 01:52:38 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 30 Oct 2023 01:52:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cUJ7zXKGUddbEDqXrGV7Jp2t0Q66kED66BgczE7hV9HJRwKdschcIY5f6tviAvYaOCvRkhB5Z4COHotSHCEUSkPBJs2FG9zKOJQtBexmox/YIabKCBC2J4ejbis83/uArqydtWrPjUuEPLfHclsDrto8C98IjSO5TXmJYNGakTxNXO8yTIVzteajcU5beVKyXtj/VUr9SNDrm+MHCYDe8jt5oRHYHarcrG6qhT9qbCQL0twekbd01AVJgoxYKMON7zCfuwzt5HohTCCuok2becgTIwTsxk18hDeicdLBZHXha84Ovekum770urmeIeWso1+qfm88AJ7YsSlgWqsy+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CqTROe6J7ZDW+qrZk4qDHBHDrJsH0W167twP7xWtJX8=;
 b=b4sI2WLC1gnsdCIgv3FBFcctS84kFZ6n+fi5B90ia+LdPqUnEvOQVfgOHsKvoYG35+enrgqjs2lHkEaDvwN8vafPyViyDnh4xO1yQ7+/NztV5vc/9gOm/G5/FxjaSKT7dHRT2qh0b7N8jEDgF5YzcJWp8Xp2tjr6H4mXharsCjHc8nRdLGUzFmmj6xXTS0hzidwMVkfCXxxr1G/JGxv60X0Ut1FGA8aSkbT7kjDl/t4FUzq1VnV5qDgPHGKg88z4a+1GP4G9/ZPy49pUVIkwRV3XBMXPEFfm9U8jPMz49S3kxueNs20R+LRJmwTQ4hh8m1gRxkuZD9H9eRPfh5YLzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by MW4PR11MB7032.namprd11.prod.outlook.com (2603:10b6:303:227::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.26; Mon, 30 Oct
 2023 08:52:35 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::d35c:f42b:fdf7:36bb%5]) with mapi id 15.20.6933.022; Mon, 30 Oct 2023
 08:52:35 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHZ+dGOHcLFEmZeB0uPflZoX2Fuq7BcPumAgAEBBaCAAH1mAIAEaxTg
Date: Mon, 30 Oct 2023 08:52:35 +0000
Message-ID: <BL1PR11MB59799F393D6499A392294CE4F9A1A@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20231008101206.1665236-1-animesh.manna@intel.com>
 <ZTp4ib-FKyX0r9ct@intel.com>
 <BL1PR11MB5979B66B0F9B7A336FA1EB51F9DCA@BL1PR11MB5979.namprd11.prod.outlook.com>
 <ZTu1lLZ3M-nV-Dxn@intel.com>
In-Reply-To: <ZTu1lLZ3M-nV-Dxn@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|MW4PR11MB7032:EE_
x-ms-office365-filtering-correlation-id: 30ab8fab-d4a0-4303-dfc3-08dbd9258fd7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IWY0k092y5GC9Yi3IKxKkwwuXt6kttup6Z0CMvL6TBGe/UoSovAQmwWlNRd6OVBVRmBIqctjeddQJpJnPj5spRGMrkBqgn15va5n4RykEL9DiJvHyjl1gS/MoGHUG2gPjLH6s11wX+dKWopJxo20krDG1Jv7szv7WK9YkJp71IJlizMWgZPSctlwCbBtMKz/zUYeRaKwgt42CFNwr/Z+Kb5bm9i1DqSpd28OBVI7MBdgv5j/hQRFOj0EC2ZO47T0YYa68lXBeYuISmF7VplLsQeih4p8QYieE5hbSO1FMauINluHPo8Bqw+L3cSz4w4or+pX1MUppiKI2d/njybvS8uCTrye54VFGmO1CXV7sGaRoNTHYuyeXVZPGe4BNEm7LosMsx6gteczshtvYmlVbhhElULGOBDhp8E1pOMA8tcNioLRziA0SryE3HVdgoA81JcZy4Z73j02DhcZlNMVenx/kxd+0hL3/H/8GK95N3fQWqRXQ4sv+OH37iKJBRpHHOsMOAqX7ON8epFGM7DnmEKFlxako8I3wTXUOFCgkBqFCjWD4wOO3X9pz2HO0WBmfV/RAAx45GoNyIbEDvmB5Hy3aqhUIKu/Z6dR2ZBAFy2U1TfBqm6wmHnj1dNU7ZgDkn2A+pXo7BZZ996dJi1ZvA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(396003)(346002)(136003)(230922051799003)(230273577357003)(230173577357003)(64100799003)(451199024)(1800799009)(186009)(30864003)(86362001)(33656002)(2906002)(41300700001)(8676002)(4326008)(8936002)(52536014)(5660300002)(38070700009)(478600001)(966005)(9686003)(55016003)(122000001)(38100700002)(6506007)(7696005)(71200400001)(53546011)(66574015)(6916009)(54906003)(66476007)(64756008)(66556008)(66446008)(26005)(66946007)(76116006)(82960400001)(83380400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?v5Z1Tt1QrU+tzfQjY5O9X9aKyXhYeGUblTk1qchJL6DuCZieG8gnNPncyJ?=
 =?iso-8859-1?Q?Yho0TGDthkceRth+/gsri3MUgOgSl9CREQ7h2g+8A6m43Io7Q87GMlg7rf?=
 =?iso-8859-1?Q?2MIT2zKFrzx5+zP5/7Z1fnT3eACNh85vmkVi8N2M6R8N4Y2/yQ2EL0MYML?=
 =?iso-8859-1?Q?JjWx8JySjCc8x2EyJxJmgbzJAPtS3ri+v4tIWwCYoJ5jZLlg3KI1vB3crY?=
 =?iso-8859-1?Q?Wuj+CPAGzR5lAMV9PbIZAtonl6ERdlR2uq0jlCEs4gvriG9Jm6Zqvd+A2e?=
 =?iso-8859-1?Q?r4CG3DKM3PQ1pu2EnC0zQ7XVdUvGRhrRb5/uijKFqbZiwYEpwFQkJ8I6zJ?=
 =?iso-8859-1?Q?o7EaIdKAYEs+uKwIfKczPiGtZfLkTtjTRXYLSCAqN06GpoasSUdhDRJdY/?=
 =?iso-8859-1?Q?PEJkh7fLZHScw3UpltyV85Qflo/fkFdfM1Vv92tisdcWIoQ30lm1w1tlfx?=
 =?iso-8859-1?Q?qgZGicAKTVLogOqWUBrhj633IfKqGowkfWAtTLIl9s+qIEzweVvXK32XAi?=
 =?iso-8859-1?Q?WjdBm6RsNsrjbARfBc2iELMS1qOCFK0aU98Tzbvvfnkp06hLfkWQ0RKGRr?=
 =?iso-8859-1?Q?8iC0Rdx3GzEBBTLdsWu4Vj7uj4yQX4/9mb1YwAQTtZsPmJLmGUcSk648KX?=
 =?iso-8859-1?Q?zVaMTA8tFIxNZHCS6j1F6u5z+a/lOm4gCJZPBwMrTwtumcON4J10PWpFsw?=
 =?iso-8859-1?Q?oLqBkE1CQjpvYpJWYhsn/Zgdkx4LSku2V1EmBeEH4lVGyT+lUkYZSedhX4?=
 =?iso-8859-1?Q?1NxpNozu2dLxF9Mdkq2ZVQQwrUrQs8PMJMi0iaAucF7BN5W1Stbt0P1oML?=
 =?iso-8859-1?Q?j+6UGObp5ctbC3batvMa8yzl2QOYzPRUGPpmTeHAKq+3wuSI7RSeoOU0MG?=
 =?iso-8859-1?Q?XeAG70L+d3i4/Jx3mzoJV9cVcpLsYR/jdxbEn7UeobnS2b2Eb6Fd3WY+tP?=
 =?iso-8859-1?Q?Uh1g7WWGGPChfrvLHz/j2Mvrd8PJu/77D4aj2C86Vki2Pu4XqToh5ehtCu?=
 =?iso-8859-1?Q?eSICkUaQvb5CiLbFkINCNwXK2aowZIxN/eyH1ZV1nBj3KLQnTpvKp4l5ke?=
 =?iso-8859-1?Q?Ueo/7Ouk27Zsbiapa+xUmpQRSTqsFdIJoeZax2nO/9Sgq3yTWNbNVQaqYm?=
 =?iso-8859-1?Q?EAX5NpR0vftPvtCQZpApBmj48S2IoDSzLjCf1R+9/PcvLSK8+lWiJAwixH?=
 =?iso-8859-1?Q?Zk/SMsOvAeMkFrkcNQLPTgixwsESnNiB3B77Suxm1Gzs5bnw+sqlo21Pt6?=
 =?iso-8859-1?Q?lc2mVM1tMrtOJ0ex9ZHUlu2GhVz8cFBY2B+MKgjG025LjLx7GcBWKxoCee?=
 =?iso-8859-1?Q?fbQnDwTrSGeTU+4ZyDemzp9JRdM1r3xJugPyW24b/vm/oWZBPcm/ZyQUA7?=
 =?iso-8859-1?Q?IH6XEkEbxULHkV+Hwn/6px3k6iWi/GILedA0G7gDXZqcyqrZtEMfRzt4E5?=
 =?iso-8859-1?Q?akWp5irFYK8aJPjmPdu8gEybssWJd6NuGh+NjudyEWG74DNI17qDhme37n?=
 =?iso-8859-1?Q?XrKU+k7hAVfzF2S2ewh+iim4jPOJivARO1GC4oVmYioqESVZeCs0zTuRNR?=
 =?iso-8859-1?Q?mAIgBt+foaa4GiwcnlRHbzZFluUgHZmEaZgr3rJ06M1WyTpWzOsKPk1R0y?=
 =?iso-8859-1?Q?rKQZRDIAtlape4YwgRuxChTcCzCLZnaXz/?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30ab8fab-d4a0-4303-dfc3-08dbd9258fd7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2023 08:52:35.3257 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FII6shy4wCi5FFTHXLTq5QEUhjwGUSe0RQRABPE+6U6slJEZw5PX9T2K5ngDAnCSkTXZmi61YxCtZ9lhwZrswg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7032
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, October 27, 2023 6:51 PM
> To: Manna, Animesh <animesh.manna@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani <jani.nikula@intel.com>
> Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
>=20
> On Fri, Oct 27, 2023 at 05:59:45AM +0000, Manna, Animesh wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Thursday, October 26, 2023 8:03 PM
> > > To: Manna, Animesh <animesh.manna@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Nikula, Jani
> > > <jani.nikula@intel.com>
> > > Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code
> > > refactoring
> > >
> > > On Sun, Oct 08, 2023 at 03:42:06PM +0530, Animesh Manna wrote:
> > > > Refactor DSB implementation to be compatible with Xe driver.
> > > >
> > > > v1: RFC version.
> > > > v2: Make intel_dsb structure opaque from external usage. [Jani]
> > > > v3: Rebased on latest.
> > > >
> > > > Cc: Jani Nikula <jani.nikula@intel.com>
> > > > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/Makefile                 |  1 +
> > > >  drivers/gpu/drm/i915/display/intel_dsb.c      | 84 ++++++++-------=
----
> > > >  .../gpu/drm/i915/display/intel_dsb_buffer.c   | 64 ++++++++++++++
> > > >  .../gpu/drm/i915/display/intel_dsb_buffer.h   | 26 ++++++
> > > >  4 files changed, 126 insertions(+), 49 deletions(-)  create mode
> > > > 100644 drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > >  create mode 100644
> > > > drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > > >
> > > > diff --git a/drivers/gpu/drm/i915/Makefile
> > > > b/drivers/gpu/drm/i915/Makefile index dec78efa452a..7c3f91c2375a
> > > > 100644
> > > > --- a/drivers/gpu/drm/i915/Makefile
> > > > +++ b/drivers/gpu/drm/i915/Makefile
> > > > @@ -260,6 +260,7 @@ i915-y +=3D \
> > > >  	display/intel_dpt.o \
> > > >  	display/intel_drrs.o \
> > > >  	display/intel_dsb.o \
> > > > +	display/intel_dsb_buffer.o \
> > > >  	display/intel_fb.o \
> > > >  	display/intel_fb_pin.o \
> > > >  	display/intel_fbc.o \
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > index 3e32aa49b8eb..ec89d968a873 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > > @@ -13,12 +13,13 @@
> > > >  #include "intel_de.h"
> > > >  #include "intel_display_types.h"
> > > >  #include "intel_dsb.h"
> > > > +#include "intel_dsb_buffer.h"
> > > >  #include "intel_dsb_regs.h"
> > > >  #include "intel_vblank.h"
> > > >  #include "intel_vrr.h"
> > > >  #include "skl_watermark.h"
> > > >
> > > > -struct i915_vma;
> > > > +#define CACHELINE_BYTES 64
> > > >
> > > >  enum dsb_id {
> > > >  	INVALID_DSB =3D -1,
> > > > @@ -31,8 +32,7 @@ enum dsb_id {
> > > >  struct intel_dsb {
> > > >  	enum dsb_id id;
> > > >
> > > > -	u32 *cmd_buf;
> > > > -	struct i915_vma *vma;
> > > > +	struct intel_dsb_buffer dsb_buf;
> > > >  	struct intel_crtc *crtc;
> > > >
> > > >  	/*
> > > > @@ -108,15 +108,17 @@ static void intel_dsb_dump(struct intel_dsb
> > > > *dsb)  {
> > > >  	struct intel_crtc *crtc =3D dsb->crtc;
> > > >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > > > -	const u32 *buf =3D dsb->cmd_buf;
> > > >  	int i;
> > > >
> > > >  	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
> > > >  		    crtc->base.base.id, crtc->base.name, dsb->id);
> > > >  	for (i =3D 0; i < ALIGN(dsb->free_pos, 64 / 4); i +=3D 4)
> > > >  		drm_dbg_kms(&i915->drm,
> > > > -			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n",
> > > > -			    i * 4, buf[i], buf[i+1], buf[i+2], buf[i+3]);
> > > > +			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
> > > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
> > > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
> > > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
> > > > +			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
> > > >  	drm_dbg_kms(&i915->drm, "}\n");
> > > >  }
> > > >
> > > > @@ -128,8 +130,6 @@ static bool is_dsb_busy(struct
> > > > drm_i915_private *i915, enum pipe pipe,
> > > >
> > > >  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32
> > > > udw) {
> > > > -	u32 *buf =3D dsb->cmd_buf;
> > > > -
> > > >  	if (!assert_dsb_has_room(dsb))
> > > >  		return;
> > > >
> > > > @@ -138,14 +138,13 @@ static void intel_dsb_emit(struct intel_dsb
> > > > *dsb, u32 ldw, u32 udw)
> > > >
> > > >  	dsb->ins_start_offset =3D dsb->free_pos;
> > > >
> > > > -	buf[dsb->free_pos++] =3D ldw;
> > > > -	buf[dsb->free_pos++] =3D udw;
> > > > +	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, ldw);
> > > > +	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, udw);
> > > >  }
> > > >
> > > >  static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
> > > >  					u32 opcode, i915_reg_t reg)
> > > >  {
> > > > -	const u32 *buf =3D dsb->cmd_buf;
> > > >  	u32 prev_opcode, prev_reg;
> > > >
> > > >  	/*
> > > > @@ -156,8 +155,10 @@ static bool
> > > > intel_dsb_prev_ins_is_write(struct
> > > intel_dsb *dsb,
> > > >  	if (dsb->free_pos =3D=3D 0)
> > > >  		return false;
> > > >
> > > > -	prev_opcode =3D buf[dsb->ins_start_offset + 1] &
> > > ~DSB_REG_VALUE_MASK;
> > > > -	prev_reg =3D buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
> > > > +	prev_opcode =3D intel_dsb_buffer_read(&dsb->dsb_buf,
> > > > +					    dsb->ins_start_offset + 1) >>
> > > DSB_OPCODE_SHIFT;
> > > > +	prev_reg =3D  intel_dsb_buffer_read(&dsb->dsb_buf,
> > > > +					  dsb->ins_start_offset + 1) &
> > > DSB_REG_VALUE_MASK;
> > > >
> > > >  	return prev_opcode =3D=3D opcode && prev_reg =3D=3D
> > > > i915_mmio_reg_offset(reg);  } @@ -190,6 +191,8 @@ static bool
> > > > intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb,
> > > > i915_reg_ void intel_dsb_reg_write(struct intel_dsb *dsb,
> > > >  			 i915_reg_t reg, u32 val)
> > > >  {
> > > > +	u32 old_val;
> > > > +
> > > >  	/*
> > > >  	 * For example the buffer will look like below for 3 dwords for a=
uto
> > > >  	 * increment register:
> > > > @@ -213,31 +216,32 @@ void intel_dsb_reg_write(struct intel_dsb
> *dsb,
> > > >  			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
> > > >  			       i915_mmio_reg_offset(reg));
> > > >  	} else {
> > > > -		u32 *buf =3D dsb->cmd_buf;
> > > > -
> > > >  		if (!assert_dsb_has_room(dsb))
> > > >  			return;
> > > >
> > > >  		/* convert to indexed write? */
> > > >  		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
> > > > -			u32 prev_val =3D buf[dsb->ins_start_offset + 0];
> > > > +			u32 prev_val =3D intel_dsb_buffer_read(&dsb-
> > > >dsb_buf,
> > > > +							     dsb-
> > > >ins_start_offset + 0);
> > > >
> > > > -			buf[dsb->ins_start_offset + 0] =3D 1; /* count */
> > > > -			buf[dsb->ins_start_offset + 1] =3D
> > > > -				(DSB_OPCODE_INDEXED_WRITE <<
> > > DSB_OPCODE_SHIFT) |
> > > > -				i915_mmio_reg_offset(reg);
> > > > -			buf[dsb->ins_start_offset + 2] =3D prev_val;
> > > > +			intel_dsb_buffer_write(&dsb->dsb_buf,
> > > > +					       dsb->ins_start_offset + 0, 1); /*
> > > count */
> > > > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > > >ins_start_offset + 1,
> > > > +					       (DSB_OPCODE_INDEXED_WRITE
> > > << DSB_OPCODE_SHIFT) |
> > > > +					       i915_mmio_reg_offset(reg));
> > > > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > > >ins_start_offset + 2,
> > > > +prev_val);
> > > >
> > > >  			dsb->free_pos++;
> > > >  		}
> > > >
> > > > -		buf[dsb->free_pos++] =3D val;
> > > > +		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++,
> > > val);
> > > >  		/* Update the count */
> > > > -		buf[dsb->ins_start_offset]++;
> > > > +		old_val =3D intel_dsb_buffer_read(&dsb->dsb_buf, dsb-
> > > >ins_start_offset);
> > > > +		intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > > >ins_start_offset,
> > > > +old_val + 1);
> > > >
> > > >  		/* if number of data words is odd, then the last dword
> > > should be 0.*/
> > > >  		if (dsb->free_pos & 0x1)
> > > > -			buf[dsb->free_pos] =3D 0;
> > > > +			intel_dsb_buffer_write(&dsb->dsb_buf, dsb-
> > > >free_pos, 0);
> > > >  	}
> > > >  }
> > > >
> > > > @@ -296,8 +300,8 @@ static void intel_dsb_align_tail(struct
> > > > intel_dsb
> > > *dsb)
> > > >  	aligned_tail =3D ALIGN(tail, CACHELINE_BYTES);
> > > >
> > > >  	if (aligned_tail > tail)
> > > > -		memset(&dsb->cmd_buf[dsb->free_pos], 0,
> > > > -		       aligned_tail - tail);
> > > > +		intel_dsb_buffer_memset(&dsb->dsb_buf, dsb->free_pos, 0,
> > > > +					aligned_tail - tail);
> > > >
> > > >  	dsb->free_pos =3D aligned_tail / 4;  } @@ -358,7 +362,7 @@ static
> > > > void _intel_dsb_commit(struct intel_dsb
> > > *dsb, u32 ctrl,
> > > >  			  ctrl | DSB_ENABLE);
> > > >
> > > >  	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
> > > > -			  i915_ggtt_offset(dsb->vma));
> > > > +			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
> > > >
> > > >  	if (dewake_scanline >=3D 0) {
> > > >  		int diff, hw_dewake_scanline;
> > > > @@ -380,7 +384,7 @@ static void _intel_dsb_commit(struct intel_dsb
> > > *dsb, u32 ctrl,
> > > >  	}
> > > >
> > > >  	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
> > > > -			  i915_ggtt_offset(dsb->vma) + tail);
> > > > +			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
> > > >  }
> > > >
> > > >  /**
> > > > @@ -405,7 +409,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
> > > >  	enum pipe pipe =3D crtc->pipe;
> > > >
> > > >  	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
> > > > -		u32 offset =3D i915_ggtt_offset(dsb->vma);
> > > > +		u32 offset =3D intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
> > > >
> > > >  		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
> > > >  				  DSB_ENABLE | DSB_HALT);
> > > > @@ -442,12 +446,9 @@ struct intel_dsb *intel_dsb_prepare(const
> > > > struct intel_crtc_state *crtc_state,  {
> > > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > > >  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > > > -	struct drm_i915_gem_object *obj;
> > > >  	intel_wakeref_t wakeref;
> > > >  	struct intel_dsb *dsb;
> > > > -	struct i915_vma *vma;
> > > >  	unsigned int size;
> > > > -	u32 *buf;
> > > >
> > > >  	if (!HAS_DSB(i915))
> > > >  		return NULL;
> > > > @@ -461,28 +462,13 @@ struct intel_dsb *intel_dsb_prepare(const
> > > > struct
> > > intel_crtc_state *crtc_state,
> > > >  	/* ~1 qword per instruction, full cachelines */
> > > >  	size =3D ALIGN(max_cmds * 8, CACHELINE_BYTES);
> > > >
> > > > -	obj =3D i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > > > -	if (IS_ERR(obj))
> > > > -		goto out_put_rpm;
> > > > -
> > > > -	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > > > -	if (IS_ERR(vma)) {
> > > > -		i915_gem_object_put(obj);
> > > > +	if (!intel_dsb_buffer_create(crtc, &dsb->dsb_buf, size))
> > > >  		goto out_put_rpm;
> > > > -	}
> > > > -
> > > > -	buf =3D i915_gem_object_pin_map_unlocked(vma->obj,
> > > I915_MAP_WC);
> > > > -	if (IS_ERR(buf)) {
> > > > -		i915_vma_unpin_and_release(&vma,
> > > I915_VMA_RELEASE_MAP);
> > > > -		goto out_put_rpm;
> > > > -	}
> > > >
> > > >  	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
> > > >
> > > >  	dsb->id =3D DSB1;
> > > > -	dsb->vma =3D vma;
> > > >  	dsb->crtc =3D crtc;
> > > > -	dsb->cmd_buf =3D buf;
> > > >  	dsb->size =3D size / 4; /* in dwords */
> > > >  	dsb->free_pos =3D 0;
> > > >  	dsb->ins_start_offset =3D 0;
> > > > @@ -510,6 +496,6 @@ struct intel_dsb *intel_dsb_prepare(const
> > > > struct
> > > intel_crtc_state *crtc_state,
> > > >   */
> > > >  void intel_dsb_cleanup(struct intel_dsb *dsb)  {
> > > > -	i915_vma_unpin_and_release(&dsb->vma,
> > > I915_VMA_RELEASE_MAP);
> > > > +	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
> > > >  	kfree(dsb);
> > > >  }
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > > b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > > new file mode 100644
> > > > index 000000000000..723937591831
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.c
> > > > @@ -0,0 +1,64 @@
> > > > +// SPDX-License-Identifier: MIT
> > > > +/*
> > > > + * Copyright 2023, Intel Corporation.
> > > > + */
> > > > +
> > > > +#include "gem/i915_gem_internal.h"
> > > > +#include "i915_drv.h"
> > > > +#include "i915_vma.h"
> > > > +#include "intel_display_types.h"
> > > > +#include "intel_dsb_buffer.h"
> > > > +
> > > > +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer *dsb_buf)=
 {
> > > > +	return i915_ggtt_offset(dsb_buf->vma); }
> > > > +
> > > > +void intel_dsb_buffer_write(struct intel_dsb_buffer *dsb_buf, u32
> > > > +idx, u32 val) {
> > > > +	dsb_buf->cmd_buf[idx] =3D val;
> > > > +}
> > > > +
> > > > +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32
> > > > +idx) {
> > > > +	return dsb_buf->cmd_buf[idx];
> > > > +}
> > > > +
> > > > +void intel_dsb_buffer_memset(struct intel_dsb_buffer *dsb_buf,
> > > > +u32 idx, u32 val, u32 sz) {
> > > > +	memset(&dsb_buf->cmd_buf[idx], val, sz); }
> > >
> > > What's the point in abstracting that stuff?
> >
> > For xe driver the memset implementation will be done differently,
>=20
> Differently how?

iosys_map_memset() is used instead of memset().
Repo link: https://gitlab.freedesktop.org/drm/xe/kernel.git

Regards,
Animesh
>=20
> > so created this abstraction. The same thing is followed other xe-refact=
oring
> code as well.
> > If you want me to change the code any specific way please let me, will =
try to
> modify accordingly.
> >
> > Regards,
> > Animesh
> >
> > >
> > > > +
> > > > +bool intel_dsb_buffer_create(struct intel_crtc *crtc, struct
> > > > +intel_dsb_buffer *dsb_buf, u32 size) {
> > > > +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> > > > +	struct drm_i915_gem_object *obj;
> > > > +	struct i915_vma *vma;
> > > > +	u32 *buf;
> > > > +
> > > > +	obj =3D i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > > > +	if (IS_ERR(obj))
> > > > +		return false;
> > > > +
> > > > +	vma =3D i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> > > > +	if (IS_ERR(vma)) {
> > > > +		i915_gem_object_put(obj);
> > > > +		return false;
> > > > +	}
> > > > +
> > > > +	buf =3D i915_gem_object_pin_map_unlocked(vma->obj,
> > > I915_MAP_WC);
> > > > +	if (IS_ERR(buf)) {
> > > > +		i915_vma_unpin_and_release(&vma,
> > > I915_VMA_RELEASE_MAP);
> > > > +		return false;
> > > > +	}
> > > > +
> > > > +	dsb_buf->vma =3D vma;
> > > > +	dsb_buf->cmd_buf =3D buf;
> > > > +
> > > > +	return true;
> > > > +}
> > > > +
> > > > +void intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf) {
> > > > +	i915_vma_unpin_and_release(&dsb_buf->vma,
> > > I915_VMA_RELEASE_MAP); }
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > > > b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > > > new file mode 100644
> > > > index 000000000000..7dbfd23b52a9
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/i915/display/intel_dsb_buffer.h
> > > > @@ -0,0 +1,26 @@
> > > > +/* SPDX-License-Identifier: MIT
> > > > + *
> > > > + * Copyright =A9 2023 Intel Corporation  */
> > > > +
> > > > +#ifndef _INTEL_DSB_BUFFER_H
> > > > +#define _INTEL_DSB_BUFFER_H
> > > > +
> > > > +#include <linux/types.h>
> > > > +
> > > > +struct intel_crtc;
> > > > +struct i915_vma;
> > > > +
> > > > +struct intel_dsb_buffer {
> > > > +	u32 *cmd_buf;
> > > > +	struct i915_vma *vma;
> > > > +};
> > > > +
> > > > +u32 intel_dsb_buffer_ggtt_offset(struct intel_dsb_buffer
> > > > +*dsb_buf); void intel_dsb_buffer_write(struct intel_dsb_buffer
> > > > +*dsb_buf, u32 idx, u32 val);
> > > > +u32 intel_dsb_buffer_read(struct intel_dsb_buffer *dsb_buf, u32
> > > > +idx); void intel_dsb_buffer_memset(struct intel_dsb_buffer
> > > > +*dsb_buf, u32 idx, u32 val, u32 sz); bool
> > > > +intel_dsb_buffer_create(struct intel_crtc *crtc, struct
> > > > +intel_dsb_buffer *dsb_buf, u32 size); void
> > > > +intel_dsb_buffer_cleanup(struct intel_dsb_buffer *dsb_buf);
> > > > +
> > > > +#endif
> > > > --
> > > > 2.29.0
> > >
> > > --
> > > Ville Syrj=E4l=E4
> > > Intel
>=20
> --
> Ville Syrj=E4l=E4
> Intel
