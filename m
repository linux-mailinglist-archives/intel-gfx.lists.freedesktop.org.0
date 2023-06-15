Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 955E173180F
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 14:02:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E907710E4E1;
	Thu, 15 Jun 2023 12:02:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5315B10E4E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 12:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686830548; x=1718366548;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AQtP2m5xe64n3Mn2AjRic2H/Gfkcwd2syvGsY/md2TE=;
 b=QX3nBqPQbgSfBjLslFY6C/s6rKExWhzXOvCeFpeAFfLHmzzBCLC5RKYZ
 kd8uLFDSHCmPHnrKoaGcBhw8PhonCiu9G529WRIIsu6hig6zXyXG4D/7P
 DGQVlzgeQxG3/AXoIxtFRdUE/0KO8wA7/bH9Gx8wkwiA6eXofCuhVptqU
 piQjESoUPFx3kHlkdPE/HuIAd5ioFeoISqueKhoee0RiAEHmJSxVe4EGn
 XtIPrx23NVIQvwDpuN/tnPxXkZFsZ96EnsvKHTSKFWZtBYi6L5b5LNscu
 iofaLJ6lmuuLD0GecqRKWmqBrY03eJ/fmC3Bb45h3DMs3wH+2pF6p94jb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="338518479"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="338518479"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 05:02:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="836591572"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="836591572"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 15 Jun 2023 05:02:16 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 05:02:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 15 Jun 2023 05:02:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 15 Jun 2023 05:02:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 15 Jun 2023 05:02:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKc8z1dSI8EmoJWT4pQKYiQze8su96srEDy5eoqQb5K1Ri9LKnxPFSVGw8bb4qrdX3Zf0BrjXN3fYXJEniBN92pzgFAvokhyNTRKUC0CZR/AI4fQYCgVbhxv9WG4z0VN2rpsaEtvowKWh92umid3Av//SaBHZLSul3OQAL/UCLT6d6oFPu4tLcCcPqP3Nwc9vtlMlgcSqAZTvik/qywRJqPx8QZ9rFUp2QzLkWQTz9RleRybrO2ej9Day57EgEi2MDLeq5uRX4EbnPU/I8//u1zs2FRH4t2ClAbRZCDVDuH0EcUVXr0xChN+o96Qic7oOA0mQcz0eMsj2rzGrgDt8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/NJeaSaYPHK8qvAL9DiDiXIcbcENJ+3mXvtsMHA+C1U=;
 b=kF9+vfJuuel3Pl/yWUqqTmQIVabxT6V+cnKyI/t7liDXM8pPez5etEKxjRFs0OsWGNT34CEytV5Zt5P0FYIOTPdGq23k5TEniRzW1NPzFRwTF/A1x2f5+X44x/uXgSMSr0Z4/bk/ePOanIYYVj0QANlBIoxThFNDEwhv6l6d5XDx8bKZkzeqpll4glbpENV4fnppfQO1OyaCydojhDv6QYsjvScPveCh498j4QUGEigoa19JGGF0MlTAa9bXZjrwJnTditg3todYDwquciUs+pPiqvbcl6GXfFGnnD3sYOk8rn+0JqoUpWMaNNej90dhIxX5aDVKB7ErEauWOq/BXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB8328.namprd11.prod.outlook.com (2603:10b6:806:376::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37; Thu, 15 Jun
 2023 12:02:14 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::5671:364e:5c39:3284]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::5671:364e:5c39:3284%4]) with mapi id 15.20.6455.037; Thu, 15 Jun 2023
 12:02:13 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>, "Jani
 Nikula" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 2/7] drm/i915: Introduce device info
 port_mask
Thread-Index: AQHZk8aac7xx0bAhtE+fGXQeGVh8Yq93kMWAgAnInwCACoAcYA==
Date: Thu, 15 Jun 2023 12:02:12 +0000
Message-ID: <DM4PR11MB6360172FEB5BDE8830E72B4BF45BA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
 <20230531134806.23065-3-ville.syrjala@linux.intel.com>
 <87sfbadkda.fsf@intel.com> <ZIItqNUftDCYIqnl@intel.com>
In-Reply-To: <ZIItqNUftDCYIqnl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB8328:EE_
x-ms-office365-filtering-correlation-id: 027b8884-9c65-4f98-06dd-08db6d985adc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Vt1FM/5J3ZNPeYKhtfdbZ0IHLr+7+F/d/GiMrJrkkRfLSp8Lp97y54+mPS2Gz9e52CA3lgMwfgpfNqjLmLQdu+XM/Ovb0KbV1pULQkC04hT7HLnvnEoOR7F1W+oHNLwKaVhYYiGb3Ivzzet39mFdnlUWo9HYMzqjsr6rDarVp6NZl5O5JYS1K/8RvJ297Dt0vxOjpIPEe+sdSGb8c7mxrnk3C1rUQNR6ZYj5U09ny7vv/4pOHWtSAkkh9JbAC4dBeodP/YtxQZh0fWLrjDg1jyqw3vdInn+hu254ig2FqXzdnz7amR9mIJjfTp7hKVV3Nraz3wqmSQZTJEsJZxMkIpJWK8svluOtPvINr+igu0J4Yv8LNiX8jALiTqLcVmGMaZqctWCfjYZPTXjWaPn6cF58tLC1nWQcIEfb/Nowwsy2H9G134WFUER6tvkXNYqucnfY3q3XY4Vg/cxWRkCqF7y6WYubdJ1660j3CoBQt+j5aXqg2XJeYg+lUPbgKjGQttIUQcYsvSYw3YQZ1EO0Dv+DLzj5U6OPpve5FDWcmwqoMzeuEB2Jv36pvL+FPjjZ1Ppluxory80Mx3N/De43dkIbDpQI0zGUhfjiqP4giJrLUNznG/2ad/gEIoJa/7UV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(366004)(39860400002)(136003)(346002)(451199021)(55016003)(26005)(53546011)(9686003)(6506007)(38100700002)(82960400001)(38070700005)(122000001)(86362001)(186003)(33656002)(52536014)(5660300002)(2906002)(71200400001)(83380400001)(110136005)(41300700001)(64756008)(8936002)(8676002)(478600001)(66556008)(66946007)(316002)(66476007)(66446008)(76116006)(4326008)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?fUEC4VqMvvNNvhth5tyc7c7tPjA858h/jxnB9za3rGqpg15AOsLb43YlT9?=
 =?iso-8859-1?Q?uDIQZho+VIl+gpJMXL1xN9W0ARRu4FrhtqwYnRjyiLsCdlqCfesIAYUq3T?=
 =?iso-8859-1?Q?TiwF9mtsG9QN8NCcIylOqfyvVxdeppKAXLmEXYZ2Z9mzTOdUqu5I2fj8or?=
 =?iso-8859-1?Q?Sik82oQpIj6HpgWU0mMeKOGOTpqcVi+h/EveNnALea70FL3hG9sCM17+3e?=
 =?iso-8859-1?Q?VFK1j0OjXR02r5TsTyjX1Xu68XHfY3btNdlN70Y50Q2U1nyCumHq2G0PaR?=
 =?iso-8859-1?Q?aJoKq2OAJ2t0Nn0fIoVSP6ycxwKJ+mbZ/tNFfxJT24e+OEVeWWGnpxBxgK?=
 =?iso-8859-1?Q?OsoZ6TZeWf2tesb6gN8+s1SK6OjV6KFmLUrOgWRti0CHWhQ2eVYQ0KIy4L?=
 =?iso-8859-1?Q?/e2WECPQLyXnp3tix5eJG80+rU/k42BFFoNAVYhGXkWHegqDycqjVvzZrR?=
 =?iso-8859-1?Q?ASWBRKtrQUCkkOIZ+Ei4j6j/79J5INB5RzF0fqY3HrOqxPvdyOQ8NWipPH?=
 =?iso-8859-1?Q?7AJMB1ODCdFUWna2zGq9Uiv4v+bVe+4NOFG8TWTNw8V/NI/+VLHE+xgj+x?=
 =?iso-8859-1?Q?D9gVo/qc5FGlTsDbV6n1fLXndW+M7zaeqBSQgpuTy8GO+v089QSamfS44+?=
 =?iso-8859-1?Q?Dj8SC9HEWWNMcZ1i4Vr5gMo5g5IfA8GSDqG4hwAiVidNqjooNMSYg3+wuy?=
 =?iso-8859-1?Q?E9Q5coJcbsbmn8GEJeLLaiwZlpux87cAPtwqXlf/tJNm+lkBKrdHxZM37/?=
 =?iso-8859-1?Q?We+U9uEGL7LCjfTC7DPM1IBXIeHZ+dSd/wZztyylVgUzKxRmSFUG1Bh/6A?=
 =?iso-8859-1?Q?iHII9Wkl1t1bBq4I+At/qpUmNYeGC+VE934sarEDrlPsn/r3nxJB2tUpDI?=
 =?iso-8859-1?Q?0uNsBixhHtbwhZCSoArJYAs1SaSFh4DT3YCFFj5/npFP49/hCbmoBnJ15g?=
 =?iso-8859-1?Q?D5LcV8dALHVjQzhkelyMch5SCOZZ1sWmhNjYmMW3Oi2cxyh7WnVrcHQuZW?=
 =?iso-8859-1?Q?vwlELiajC/vvfAmXrfGammWVMgW1RebL60E6zxLJlAbnIY+2AQ4Q6Kml3W?=
 =?iso-8859-1?Q?//gLtZTRAmI+uxGGE0i+8OwloUFyQzyqIjbB60WCDkFp8pHG7V4MUeKvgy?=
 =?iso-8859-1?Q?UcpVZ3D0mKFDW1zhQEa7SFN+n+T9Kw1RBvBA+a6vS9R2UcPyKH6RGf6F0r?=
 =?iso-8859-1?Q?t1iB0gAuIhScgIIY1xWf6Zgly/jL1OQznTjvPBhurbmHkq2Bk6P6OVeqji?=
 =?iso-8859-1?Q?1Rrm+k1LtInDbOu4Sx8KGjR88J3O72qFImXASRF/cjX2uu7PeP1FDy/mrk?=
 =?iso-8859-1?Q?B9xwiEMaFmx2OV6Q1YsU0Ueve/uXjsXLEeK8Le7s3GhtHN3Lvb07C2mwlb?=
 =?iso-8859-1?Q?lMk4TLbIqAacivHhVJtzxo+jypBnnYip/4caLgWMNSSmbUqAhcpUYiDYRu?=
 =?iso-8859-1?Q?Z+GZXZ9+xP0X2M4Zho5cJaq2wiE6EYyEX/29qEtWtByky9/b+KbUDzPM1N?=
 =?iso-8859-1?Q?yXMFxJHmiBc5CIeywOWLdhwNZTipyxUHsGVw9TcTw/ezGEBW2TzFIDOxqj?=
 =?iso-8859-1?Q?bZMywV7uEdMcKx4xRS/cXCbycBauLplbqgP7lEWKHJ+ZABrjcQ+jpYzBPe?=
 =?iso-8859-1?Q?dgAL/D7JXYfUp3PkpjcKSthZbsRWI0DsrO?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 027b8884-9c65-4f98-06dd-08db6d985adc
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 12:02:12.9738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pA5iwxgE7n4qzpwLu+SZkAhzH06KPiRHnGJvAWEW0SoLYkhgWt9XoksefUwrN2mkBhnHgIV27DSdM3sn/CUHkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8328
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915: Introduce device info
 port_mask
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Vi=
lle Syrj=E4l=E4
> Sent: Friday, June 9, 2023 1:06 AM
> To: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH v2 2/7] drm/i915: Introduce device info p=
ort_mask
>=20
> On Fri, Jun 02, 2023 at 05:11:45PM +0300, Jani Nikula wrote:
> > On Wed, 31 May 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrot=
e:
> > > @@ -556,6 +590,16 @@ static const struct intel_display_device_info
> > > gen11_display =3D {
> > >
> > >  static const struct intel_display_device_info tgl_display =3D {
> > >  	XE_D_DISPLAY,
> > > +
> > > +	.__runtime_defaults.port_mask =3D BIT(PORT_A) | BIT(PORT_B) |
> > > +BIT(PORT_C) |
> >
> > Where does port C come from?
>=20
> From the spec.
>=20
> > It's not in intel_setup_outputs()
> > currently.
>=20
> Hmm. Based on the history there seems to be some kind of screwup in the c=
ombo
> PHY code wrt. ports that are not actually present in the SKU. The spec sa=
ys we
> should rely on hpd to figure out what ports are actually present. So look=
s like the
> combo PHY code needs quite a bit of redesign :( I guess I'll leave this o=
ut until then.
>=20

This info on what ports are physically present is advertised via VBT curren=
tly.
But based on spec, we can declare the capability at setup and intel_ddi_ini=
t should
check VBT and proceed.

> > > +		BIT(PORT_TC1) | BIT(PORT_TC2) | BIT(PORT_TC3) | BIT(PORT_TC4)
> |
> > > +BIT(PORT_TC5) | BIT(PORT_TC5),
> >
> > TC5 duplicated, TC6 missing.

Yeah some typo here.

With the above addressed, this change looks good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> >
> > BR,
> > Jani.
> >
> > --
> > Jani Nikula, Intel Open Source Graphics Center
>=20
> --
> Ville Syrj=E4l=E4
> Intel
