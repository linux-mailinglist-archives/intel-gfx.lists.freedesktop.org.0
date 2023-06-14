Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D297309B0
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jun 2023 23:18:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA7EE10E46D;
	Wed, 14 Jun 2023 21:18:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 130CF10E46A;
 Wed, 14 Jun 2023 21:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686777499; x=1718313499;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JrncUMYl87hOVF5lJT8P7XH6PRurXcIhpAPLEgATr5M=;
 b=mA7sl68voQTSMP94Yq+ssuopADpD57CjsIo9gGIxLH8uYP1g/6++hhgu
 1BMVr/IiPowiz1gOQs28V/dEQyJm8tTkqp7DAaBtSL6cJnu8HSpEbJ2X3
 diIkRYRghREkuX5gjxcDObffvLsEeb998O2df4AqkgiU+zCfH5pLSFbNn
 9m3mhthTxfwHZ/vp4ip0wRE+oAW2fDQYIyCxYshUfWPp3IGOguFOd5hgC
 pPjfu1h1utDqQ8GU+mI/Gn3jkUegnvQBEVkZBlCD8v3i5rvwKFiFde7Ao
 9nNh2f6a+mxVFEx/dX2Cx8cDxuhG2Etwa9yCXU4kofuARpORtd5fQTpRB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="422339795"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="422339795"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 14:18:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="824971708"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="824971708"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 14 Jun 2023 14:18:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 14:18:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 14:18:16 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 14:18:16 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 14:18:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SEViWyOMEkWHAgEzl1zR0K/xhgt97rvDde5wvoctHcBGkV2kR1KERCGYsdFrMzidZmjxy+RZqAVGMLUS+hyF2Dwx8T68nbqrdyt4mpJ4WwQaY6QFeKn3XKg1AJcEaU0jK81UHkT2a5F3eFUmyVnk08V5Vc7mIUQnNP0nW/fXURNihyPk+5BrFy5RiDdHt/heb17T8TWkuGp+S1zlYlIbfGsC8vq8i4edHqOZp4k3l6yOrZWmBEhVINPbXrXHmGnsDZUQRYczt6S8BkRFXedXUSV8/57YfCeb7oHK+h6o32riaAWyyJam+9uIKjZHc2BCaneCHEbA0LvnSdLCwART+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xFgnMnd9D0FJrcj8+Bb/MeUIblaoz3JCotpAnHHD4Ro=;
 b=eG66AgH1o/bkYtIHqPiGIFjIoAQXvxaoURuXd6rW+J46WSp9Srfbg0yXfvkMUBG/l1pq5Kg9+bJf687FW/ic7kDmBO510bbCC1ZqRnXDT4/JDKQqUAzNQvlc8eOHnA9yyWccx3f9nLm/VEHjpC3e18lxIDKkZgTbKcJ1Lfw4lH3ySguBUgGd8+eUl3xKsyxMoUOecYWQ55yCcuIxStYY3bkp5RVE1dyTY4EIGgqpduWBjvklbayLnAZNiyKxO5FpTuDJMBQt37ZtRGDLnWsEoujacfnN5WtUhYehRJR90KZxjyyJMBRZkU08D/EWqODT8lx4sgwo46PWmrhSN/FQBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BN9PR11MB5355.namprd11.prod.outlook.com (2603:10b6:408:11c::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.37; Wed, 14 Jun 2023 21:18:08 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%5]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 21:18:08 +0000
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [RFC 1/2] drm/xe: Move mmio read/write functions to xe_mmio.c
Thread-Index: AQHZnlU55xqv5RUSC0uZkjVUYHTp8K+Ji+QAgAFCvyA=
Date: Wed, 14 Jun 2023 21:18:08 +0000
Message-ID: <DM4PR11MB59710147B394330BD5421E87875AA@DM4PR11MB5971.namprd11.prod.outlook.com>
References: <20230614001315.1552497-1-radhakrishna.sripada@intel.com>
 <20230614001315.1552497-2-radhakrishna.sripada@intel.com>
 <20230614020232.GS5433@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20230614020232.GS5433@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB5971:EE_|BN9PR11MB5355:EE_
x-ms-office365-filtering-correlation-id: 59cb9c4b-6799-483f-7fbb-08db6d1cd9f0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7qtMdX1+XFTqqM5vNFZmeMd/IyRVcAnWBdHXlwVykhVj6Pzu+ACe6THI3weO2lxUmC/jsdkK64s8emgruLLfAv76/fuT8EvMth7ZdzTIqnYTMjdbFaEvdjZcwpZwyunWVCMwGJcczjU355ULS1hMSdLHKP6t1So2hidNAkiKLW43KjNO7XHtJI2m3yFltGNIeUvKib6NjGxwgG7mSAt+0xDmrW0HFBzotacKW4OrQ5cw+hZKo+pbZnfAB2nnP3uEFuVqjpaFuNUaVQOFzMEg3eNYDdQn27nXCCXrDVPT1cvMbLEJmr2lIJ6GyGtZSj8ixIYlL8075oAlWh2t6KBAGdiZmaWQguErSxDC6BPi2+VtgVr52rBLtCQykg2gKkt0G3fgQbkGQjgKhtKQORhCuaypaWokyz2q6IaMjrpmT9ori7r0Zn7mQuJOZwamrmut7Zfuzuo/0aGBTJw6/1CXACxoOb6Vj4aQSwfPoeElMYrll7utDamE0MgFtgJk2FfKLzM64g31qa4eGXj8yOd6vqwmmSXHFHv2tDx0rDJl61PUcg6sXALq42nowha2weyN6PoZtH6LxHzNdKFiAT4SLAW4AabOmOYBPl1fC+lxtBiWrUQxqipWsnTq2ghKj2OD
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(39860400002)(346002)(376002)(366004)(396003)(451199021)(86362001)(38070700005)(2906002)(33656002)(52536014)(55016003)(7696005)(186003)(83380400001)(53546011)(107886003)(26005)(6506007)(9686003)(122000001)(450100002)(71200400001)(478600001)(82960400001)(5660300002)(54906003)(76116006)(66946007)(64756008)(66556008)(4326008)(6636002)(66476007)(316002)(38100700002)(66446008)(8676002)(8936002)(6862004)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hBQ3Iv/FPIdScU+Yw7FSS+pGYaOmvKOqoy5eV4z4hB8a6vOX31n5J0LV34sW?=
 =?us-ascii?Q?zR5B3LArMJggUEWR1wgJ5qZGM3K4rLrbXFAR9HTNh6JgSmO5w5ATbrpcFkwu?=
 =?us-ascii?Q?XJTVuOCGCIz/JVGhX9bfgjPs4uCmeYEJaunaL/Oxynvk06odPk3yxdya3J8Y?=
 =?us-ascii?Q?5bXFnd4gNnvbldzfmzUyaaZCCWFYKkmm5RgECUmWx7Z7C7uptGb91v35GlOM?=
 =?us-ascii?Q?e+zPb6+4zhLMCyqob6ALGPGjVGZwSYuBMuD1lVxfe/jeqH1nvHbSc6I/tgLX?=
 =?us-ascii?Q?h+kAzVnqjkNy6zzxjFWIF/ZaML4R49TrKbe/L/J3rioa2RrT3y5ZUZUVd16R?=
 =?us-ascii?Q?NS1abUWvLuMp34WDxw8Ezost3SX/eIKXRJpkjw3bDS+JJVviP1gtAgw53DsS?=
 =?us-ascii?Q?9aw2FLniqEUD+yBJC7qfpsBtzc6Lw9IdfJoHpF1X9ogP+97yMcgbq2Bth1ti?=
 =?us-ascii?Q?cU8wFdQ4FWnxOcDJY+WR4p2tKbAM609Woac28lRVxkuQ3/GyF2elJIdWQ4mS?=
 =?us-ascii?Q?UIHb3eUCYUiYv0ZYw3C7mMtU9mJ5OVDPJN6oxk9R8XI6cOx62wrlxJyc9YBT?=
 =?us-ascii?Q?jNNzJ217DHir2RNbtm8vMttU4fUD5ZfdMsyD6gCmVY+ooYoxSZgoooJ5zkcz?=
 =?us-ascii?Q?2J5dD6yAcUVw9/FSVMFhgfHPlK6hx6G3Sd47ozzFUidkE9HN2pWpWFm+TLPt?=
 =?us-ascii?Q?VlvJ+pOSEfG08G/SNjwzsOj4dm6qaxT6jhyb0mhensNE1jLULETuup/gxxa1?=
 =?us-ascii?Q?vARadfWLUaaEcuESu6LMX4eTEDkFU4jPZypaV3bN1TT2VsJ/G37+lb8NK6Q6?=
 =?us-ascii?Q?im41DQTuOlp54SRXsu0w13skSx2AzAWk+xoApE+IgrRYJWsTrjjc0uZnlOEB?=
 =?us-ascii?Q?4D/rJab5jtCa99iq3XW56c2W5Tn56GeSWsSx/rIjh0a4ExQu2hX3K+ckRN6/?=
 =?us-ascii?Q?ok/lh8HLdK7oRpmugXmWTsYitAx0gJj3yMwVm3hi5g8K+/6OuS8yzdZYt+3Z?=
 =?us-ascii?Q?Kow3DeoPLOy30hiIl5Om35VNC6L0g3C0XOlGgUPl3lfohj3n809LMSVZ945e?=
 =?us-ascii?Q?8h0TZi/iyX1HnXyBfMd9/gTGAVWYZjrtweBqAp0b2Q1K8bSuy4zR7Qln4dWV?=
 =?us-ascii?Q?f/i/mJ4sLLYI0vJrhMMlU5jAXBWRBuv5pFrEI4SESKz610Kl2DugygFPMhb3?=
 =?us-ascii?Q?ZuVImdZLYZeeESa2j2+hq/g6T3n7v4dKZzuMOY8OrZWb4kre8LOFH+F8gph/?=
 =?us-ascii?Q?bCRTyC5PVQ3bQh5R0qQ9A9jBe8iMW2X5CJwcLFXLSNDUxDcTmE/1E2UIEcxT?=
 =?us-ascii?Q?HnOPMqRNhwWJi6NtmbQXGCTfD9+tlrC8c/MqmnErXXs6RNsPK2N5UynBiEHW?=
 =?us-ascii?Q?ojC+dPeSQx5YrLw5nAujaB6CMJeORlCLn1HqdrpS0SYIPx8Bp9vj687I1G1d?=
 =?us-ascii?Q?LptYmYGjLHbXolSnfFnn+kAs2M0JRSAI+oQLiiO5ghAwwpDw7qYQNtTK2hpq?=
 =?us-ascii?Q?tGLBiM2NIIzx+EfYMvWIVbvcWIksdGj4U0r4jWvLac9jwM6U5caEJqW2HZsy?=
 =?us-ascii?Q?MUklXsgIcoJtuyH7td0JAGypkNsJGjvD402lqiGeHavSQLrBbYi+GM/hu6f1?=
 =?us-ascii?Q?5w=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59cb9c4b-6799-483f-7fbb-08db6d1cd9f0
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2023 21:18:08.5624 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ybRLI8/D5H/HM1sP/Lgmnf7YnD7u2LtBqfbj4Tsk4nroKUDvIPsKA+pZQoxEn0+CdgYdh2ytlu6C6ILFqkXJBMFEtKCIJSVgjK88guf9ZQs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5355
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/2] drm/xe: Move mmio read/write functions to
 xe_mmio.c
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "De
 Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Tuesday, June 13, 2023 7:03 PM
> To: Sripada, Radhakrishna <radhakrishna.sripada@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; De M=
archi,
> Lucas <lucas.demarchi@intel.com>
> Subject: Re: [RFC 1/2] drm/xe: Move mmio read/write functions to xe_mmio.=
c
>=20
> On Tue, Jun 13, 2023 at 05:13:14PM -0700, Radhakrishna Sripada wrote:
> > Move the register read/write apis to xe_mmio.c to prepare for
> > adding tracing infrastructure for the same. Adding tracing support
> > in xe_mmio.h messes with the compilation of the display code.
> >
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > ---
> >  drivers/gpu/drm/xe/xe_mmio.c | 113 ++++++++++++++++++++++++++++++
> >  drivers/gpu/drm/xe/xe_mmio.h | 129 ++++-------------------------------
> >  2 files changed, 128 insertions(+), 114 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/xe/xe_mmio.c b/drivers/gpu/drm/xe/xe_mmio.=
c
> > index 475b14fe4356..70ad1b6a17a0 100644
> > --- a/drivers/gpu/drm/xe/xe_mmio.c
> > +++ b/drivers/gpu/drm/xe/xe_mmio.c
> > @@ -435,6 +435,119 @@ static const struct xe_reg mmio_read_whitelist[] =
=3D {
> >  	RING_TIMESTAMP(RENDER_RING_BASE),
> >  };
> >
> > +inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
>=20
> We shouldn't have 'inline' on non-static functions in a .c file (and
> generally we don't really want it on static functions either since the
> compiler can generally do a better job of figuring out whether or not
> inlining would be beneficial).
>=20
Sure Matt. Will do that in next rev.

-Radhakrishna(RK) Sripada
>=20
> Matt
>=20
> > +{
> > +	struct xe_tile *tile =3D gt_to_tile(gt);
> > +
> > +	if (reg.addr < gt->mmio.adj_limit)
> > +		reg.addr +=3D gt->mmio.adj_offset;
> > +
> > +	return readb(tile->mmio.regs + reg.addr);
> > +}
> > +
> > +inline void xe_mmio_write32(struct xe_gt *gt,
> > +			    struct xe_reg reg, u32 val)
> > +{
> > +	struct xe_tile *tile =3D gt_to_tile(gt);
> > +
> > +	if (reg.addr < gt->mmio.adj_limit)
> > +		reg.addr +=3D gt->mmio.adj_offset;
> > +
> > +	writel(val, tile->mmio.regs + reg.addr);
> > +}
> > +
> > +inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
> > +{
> > +	struct xe_tile *tile =3D gt_to_tile(gt);
> > +
> > +	if (reg.addr < gt->mmio.adj_limit)
> > +		reg.addr +=3D gt->mmio.adj_offset;
> > +
> > +	return readl(tile->mmio.regs + reg.addr);
> > +}
> > +
> > +inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
> > +			 u32 set)
> > +{
> > +	u32 old, reg_val;
> > +
> > +	old =3D xe_mmio_read32(gt, reg);
> > +	reg_val =3D (old & ~clr) | set;
> > +	xe_mmio_write32(gt, reg, reg_val);
> > +
> > +	return old;
> > +}
> > +
> > +inline void xe_mmio_write64(struct xe_gt *gt,
> > +			    struct xe_reg reg, u64 val)
> > +{
> > +	struct xe_tile *tile =3D gt_to_tile(gt);
> > +
> > +	if (reg.addr < gt->mmio.adj_limit)
> > +		reg.addr +=3D gt->mmio.adj_offset;
> > +
> > +	writeq(val, tile->mmio.regs + reg.addr);
> > +}
> > +
> > +inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
> > +{
> > +	struct xe_tile *tile =3D gt_to_tile(gt);
> > +
> > +	if (reg.addr < gt->mmio.adj_limit)
> > +		reg.addr +=3D gt->mmio.adj_offset;
> > +
> > +	return readq(tile->mmio.regs + reg.addr);
> > +}
> > +
> > +inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
> > +				      struct xe_reg reg, u32 val,
> > +				      u32 mask, u32 eval)
> > +{
> > +	u32 reg_val;
> > +
> > +	xe_mmio_write32(gt, reg, val);
> > +	reg_val =3D xe_mmio_read32(gt, reg);
> > +
> > +	return (reg_val & mask) !=3D eval ? -EINVAL : 0;
> > +}
> > +
> > +inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val=
,
> > +			  u32 mask, u32 timeout_us, u32 *out_val,
> > +			  bool atomic)
> > +{
> > +	ktime_t cur =3D ktime_get_raw();
> > +	const ktime_t end =3D ktime_add_us(cur, timeout_us);
> > +	int ret =3D -ETIMEDOUT;
> > +	s64 wait =3D 10;
> > +	u32 read;
> > +
> > +	for (;;) {
> > +		read =3D xe_mmio_read32(gt, reg);
> > +		if ((read & mask) =3D=3D val) {
> > +			ret =3D 0;
> > +			break;
> > +		}
> > +
> > +		cur =3D ktime_get_raw();
> > +		if (!ktime_before(cur, end))
> > +			break;
> > +
> > +		if (ktime_after(ktime_add_us(cur, wait), end))
> > +			wait =3D ktime_us_delta(end, cur);
> > +
> > +		if (atomic)
> > +			udelay(wait);
> > +		else
> > +			usleep_range(wait, wait << 1);
> > +		wait <<=3D 1;
> > +	}
> > +
> > +	if (out_val)
> > +		*out_val =3D read;
> > +
> > +	return ret;
> > +}
> > +
> >  int xe_mmio_ioctl(struct drm_device *dev, void *data,
> >  		  struct drm_file *file)
> >  {
> > diff --git a/drivers/gpu/drm/xe/xe_mmio.h b/drivers/gpu/drm/xe/xe_mmio.=
h
> > index 3c547d78afba..2aa2c01e60dd 100644
> > --- a/drivers/gpu/drm/xe/xe_mmio.h
> > +++ b/drivers/gpu/drm/xe/xe_mmio.h
> > @@ -20,120 +20,21 @@ struct xe_device;
> >  #define GEN12_LMEM_BAR		2
> >
> >  int xe_mmio_init(struct xe_device *xe);
> > -
> > -static inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg)
> > -{
> > -	struct xe_tile *tile =3D gt_to_tile(gt);
> > -
> > -	if (reg.addr < gt->mmio.adj_limit)
> > -		reg.addr +=3D gt->mmio.adj_offset;
> > -
> > -	return readb(tile->mmio.regs + reg.addr);
> > -}
> > -
> > -static inline void xe_mmio_write32(struct xe_gt *gt,
> > -				   struct xe_reg reg, u32 val)
> > -{
> > -	struct xe_tile *tile =3D gt_to_tile(gt);
> > -
> > -	if (reg.addr < gt->mmio.adj_limit)
> > -		reg.addr +=3D gt->mmio.adj_offset;
> > -
> > -	writel(val, tile->mmio.regs + reg.addr);
> > -}
> > -
> > -static inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg)
> > -{
> > -	struct xe_tile *tile =3D gt_to_tile(gt);
> > -
> > -	if (reg.addr < gt->mmio.adj_limit)
> > -		reg.addr +=3D gt->mmio.adj_offset;
> > -
> > -	return readl(tile->mmio.regs + reg.addr);
> > -}
> > -
> > -static inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u=
32 clr,
> > -				u32 set)
> > -{
> > -	u32 old, reg_val;
> > -
> > -	old =3D xe_mmio_read32(gt, reg);
> > -	reg_val =3D (old & ~clr) | set;
> > -	xe_mmio_write32(gt, reg, reg_val);
> > -
> > -	return old;
> > -}
> > -
> > -static inline void xe_mmio_write64(struct xe_gt *gt,
> > -				   struct xe_reg reg, u64 val)
> > -{
> > -	struct xe_tile *tile =3D gt_to_tile(gt);
> > -
> > -	if (reg.addr < gt->mmio.adj_limit)
> > -		reg.addr +=3D gt->mmio.adj_offset;
> > -
> > -	writeq(val, tile->mmio.regs + reg.addr);
> > -}
> > -
> > -static inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg)
> > -{
> > -	struct xe_tile *tile =3D gt_to_tile(gt);
> > -
> > -	if (reg.addr < gt->mmio.adj_limit)
> > -		reg.addr +=3D gt->mmio.adj_offset;
> > -
> > -	return readq(tile->mmio.regs + reg.addr);
> > -}
> > -
> > -static inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
> > -					     struct xe_reg reg, u32 val,
> > -					     u32 mask, u32 eval)
> > -{
> > -	u32 reg_val;
> > -
> > -	xe_mmio_write32(gt, reg, val);
> > -	reg_val =3D xe_mmio_read32(gt, reg);
> > -
> > -	return (reg_val & mask) !=3D eval ? -EINVAL : 0;
> > -}
> > -
> > -static inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, =
u32 val,
> > -				 u32 mask, u32 timeout_us, u32 *out_val,
> > -				 bool atomic)
> > -{
> > -	ktime_t cur =3D ktime_get_raw();
> > -	const ktime_t end =3D ktime_add_us(cur, timeout_us);
> > -	int ret =3D -ETIMEDOUT;
> > -	s64 wait =3D 10;
> > -	u32 read;
> > -
> > -	for (;;) {
> > -		read =3D xe_mmio_read32(gt, reg);
> > -		if ((read & mask) =3D=3D val) {
> > -			ret =3D 0;
> > -			break;
> > -		}
> > -
> > -		cur =3D ktime_get_raw();
> > -		if (!ktime_before(cur, end))
> > -			break;
> > -
> > -		if (ktime_after(ktime_add_us(cur, wait), end))
> > -			wait =3D ktime_us_delta(end, cur);
> > -
> > -		if (atomic)
> > -			udelay(wait);
> > -		else
> > -			usleep_range(wait, wait << 1);
> > -		wait <<=3D 1;
> > -	}
> > -
> > -	if (out_val)
> > -		*out_val =3D read;
> > -
> > -	return ret;
> > -}
> > -
> > +inline u8 xe_mmio_read8(struct xe_gt *gt, struct xe_reg reg);
> > +inline void xe_mmio_write32(struct xe_gt *gt,
> > +			    struct xe_reg reg, u32 val);
> > +inline u32 xe_mmio_read32(struct xe_gt *gt, struct xe_reg reg);
> > +inline u32 xe_mmio_rmw32(struct xe_gt *gt, struct xe_reg reg, u32 clr,
> > +			 u32 set);
> > +inline void xe_mmio_write64(struct xe_gt *gt,
> > +			    struct xe_reg reg, u64 val);
> > +inline u64 xe_mmio_read64(struct xe_gt *gt, struct xe_reg reg);
> > +inline int xe_mmio_write32_and_verify(struct xe_gt *gt,
> > +				      struct xe_reg reg, u32 val,
> > +				      u32 mask, u32 eval);
> > +inline int xe_mmio_wait32(struct xe_gt *gt, struct xe_reg reg, u32 val=
,
> > +			  u32 mask, u32 timeout_us, u32 *out_val,
> > +			  bool atomic);
> >  int xe_mmio_ioctl(struct drm_device *dev, void *data,
> >  		  struct drm_file *file);
> >
> > --
> > 2.34.1
> >
>=20
> --
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation
