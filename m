Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A93945A5B9E
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 08:16:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 483EC10E49F;
	Tue, 30 Aug 2022 06:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D47AA10E56B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 06:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661840158; x=1693376158;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tSU+9SMW24HqCJGzm76tXyP/MC3IwfxtB4kZEt6YCMA=;
 b=EbTKaPWr2yysIt101sVCWvueTHbDShZQ34CWeCRb3dkSmRkkWFuaQ6BZ
 sZjSo1niVncNG7/61eH7NJdIN4VPxatUCULZBmbsuw7MwdZqmq2Bilif3
 mm9l88QKAaZFmXq+jVlRxtyChwpvYhP9vooHfa8V5G2M9XFgx+4cylHcL
 lG7a+1yI0fGdS9eBHIT6MKQeQWaStVJCZnku+y35X1tEe2cg/JixDJBJR
 VFVXdjWsYQUzoKdFUtXPwriS8qvMhrhlInSMv+NXGU1F4nHHh0UZ0djIp
 SUdi8Z+L5EtQTzMe7f1XdzlGUr8U/MFGRlT1txtNAaOmOkZwrIAoVjfcH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="282064150"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="282064150"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 23:15:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="614491575"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 29 Aug 2022 23:15:57 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 29 Aug 2022 23:15:57 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 29 Aug 2022 23:15:57 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 29 Aug 2022 23:15:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EcPosKgnGfoEhBe912zQRs/TGT7QOKKCfrBF4eCDizFp1fe126p47/1JwdLs9o1fR78929HAwO6PQdVPJE4AHepggPj5/D1K2DFyp3Ea5wnzXK5iliMV5lJA34kGP8vGuU/8JuqXE/cyxpp1DvXLhisOKrtEVhZjD57U7xjXF1gf/iQIUJBzirsS+GjUgMDRY2lfyaW30kAuyAQWXwuVwPutfa43bCoaq+cS0X8VenPoJeYMBWLkLZ5FZ5YnybROHZ5l8cwA/FTbEvwO52kjKm2NMioEzhuZPKn9fVW/N6d8cqRw/vm4vDMmh71GyQGZCST3kw8kpAa/fc2KnoOD3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tSU+9SMW24HqCJGzm76tXyP/MC3IwfxtB4kZEt6YCMA=;
 b=c5012TePBk9mee/cBWfHsSu8zInnKCcp9mnYpJ2ZH1QInXXBR/N7HV69Hz2WAguNWt3j5bvPAZhm09C1thosU0ztWLf4XWBpJanA3goz735NY0kbOeu2NRaLJ40G/1bj1xt9/WWUQu0DpXeYEwGmDkQK5r9k+KMy0jA77C4FqLlE1ew+ettj4NLrQw+6V8JDk3f8jirDszwA8NCoJYMaXldj5c6Zk8cH4tdUxmM1CTOxEstuoHbohA01EdaqooxIM92te/2COLgcxuVJenY75m5USW8rN61LFPe02FkQeOGv6fLi45R0DecgqhqZgQT10zJk7yZbFGO6maOGWS0UyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB4057.namprd11.prod.outlook.com (2603:10b6:5:19d::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5566.19; Tue, 30 Aug 2022 06:15:44 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f491:53c1:acd5:d8ef]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f491:53c1:acd5:d8ef%3]) with mapi id 15.20.5566.021; Tue, 30 Aug 2022
 06:15:44 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYj8Fkt9meJM7X2US4ugUo7v9Xka28wCwAgADq2NCAAJyNgIAJAv8w
Date: Tue, 30 Aug 2022 06:15:44 +0000
Message-ID: <DM6PR11MB3177D7567C42D8FAE0C3F52CBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
 <YwTOoCLIBf8KhjWB@intel.com>
 <DM6PR11MB3177E2D112D3A3A589F650D8BA739@DM6PR11MB3177.namprd11.prod.outlook.com>
 <YwYW826HW9xjjVnE@intel.com>
In-Reply-To: <YwYW826HW9xjjVnE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fa94c1c4-6d9b-458c-8a65-08da8a4f12b7
x-ms-traffictypediagnostic: DM6PR11MB4057:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Tb3pHTUoXfn4suge8W0qWpEPZ21nzLYis2nTBIItkIw9HtyOLkBq97KZd9dlrG4kJE38VGTgWE7Oa16Vw8SjVHU4q91MUQ2omvXzJCyAUOEHQ4jEkVgSL5jbyxhYB+SZWbS9MiswGyfBGHOW4AfxqOwxtSFClWCtGeXigxp9hgxC0H/puaUNawSgAKTpA8yw3LBZM3wyqUgo0S93i0LuwuvAhNpROY/2LLj8fRxc2pt6CI0by1iZ9cIB2A1R1+DZH2lZg1HxiX01X4gQqcB+7q8quf+EeTNCXOjsr1eVDhCigRqJQ0uK3CQ+cKno9QdPf6xaYM172yKT6roqD4CN0VFXbyXunPivB611bqQ+lII9Mv5S6owhW6pIwr5y35//a6a5MBWofOLBXqQM71SQ0Dggq7ufOnQdV33bX/flY9OOWXpTKGqFkUAyrLoEVl+7EKXA2xp92WhJwWukgXvAERNx1xAqE0KJa29jH00jd6jDinI2JqrsOLZWaZTBhBmuev0n9+EKVeavZOdYNCSkaJKPgtGqL6K2p79ZZvoscP97tVo7ORE2HvQ11lPIMB9J7N5fJGuOgVYWK/tutlR5ZfSYxhhkqNO+3IlxaYulpPLpSlA/RcZcXk82uucRJhNXyB6mwaKwTKRu0L10WJ5iCjytRxTuweKRR8J5DJPJfZtfn+YrGDpiKpReoiGdj30fH3ErpWmU/IPjsmDHqtfPZA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(376002)(39860400002)(346002)(396003)(366004)(8676002)(4326008)(64756008)(8936002)(6916009)(54906003)(76116006)(316002)(66446008)(66476007)(55016003)(38100700002)(2906002)(5660300002)(66946007)(52536014)(66556008)(86362001)(122000001)(33656002)(53546011)(55236004)(7696005)(6506007)(82960400001)(26005)(38070700005)(71200400001)(478600001)(41300700001)(966005)(83380400001)(9686003)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?kwRhrskkqplcOmYZMFZS02DI3/klCjzZ6yVmX0uxK8pOYz4E9exPrFuWcY?=
 =?iso-8859-1?Q?Hi2dGQQR1qbeI7vVG6kB57jjR60a1ExmRLafUYbodlcSdcV87kguMtz7f/?=
 =?iso-8859-1?Q?POsD2eRldYEVZD4GyazZI5kJpvuYzFnwqAHKweL0MddIN4bdNL7WTUy0HY?=
 =?iso-8859-1?Q?JF+k7x+M6JIAdis3+cZ0lD5IHCLplzPG/KgfrdztVe/p3lpKVexWZx2XuV?=
 =?iso-8859-1?Q?zJimHDKnzdmoeUKu223UKiPpSl7a0ppwFXt6kSIe/HBToHm36fqP9D+hEk?=
 =?iso-8859-1?Q?K1+FmwK4PbrGvzCfLG2jvvrEwTw46b9Frxs4jH/pdhwdXHiSXVjZ5Q6G/L?=
 =?iso-8859-1?Q?OKr1z9sq+nKRw6Ht9lWyxwhufqTaadUmuJ2rBf466i8WcQvWvNoE400hcD?=
 =?iso-8859-1?Q?6tDfgEmfMWm3401rRWX2bhR7AV5BAGos3Nv2dpJl2lP/MV1M/DJUEApa7l?=
 =?iso-8859-1?Q?PVj8js8V83Bix0SoI4PYIDrfGvksq7cO6Qc1CQ75CffcPzOU8dNciBwA/0?=
 =?iso-8859-1?Q?DO+XWZCTyMDyE58mCiEoC2bfTH/a1yG3iyXiORzVkgIFvsdkaLKxs5z7GX?=
 =?iso-8859-1?Q?VUsULqdnZ0g49618e1b+RTgWnnLz2BrP9ArR2hD3KmC/QFAOpLt/iJ46I3?=
 =?iso-8859-1?Q?Pv8jsRrkxyshSI7c9bxmFNjlHtOaxHlwCdbfrIJOnTSERHj5H3kie9Ue4l?=
 =?iso-8859-1?Q?/M8AFf0Hcr3lUGDl2v/BCFcNzd4eN9GbBXzbRnlrdlSy1mq0u8Q+55xGZV?=
 =?iso-8859-1?Q?TNlvetJ4z8LFwM6b5QN3pS3u1VGNg51UkMlb1b8JjRhVdHY2CueFCtbl7l?=
 =?iso-8859-1?Q?Ing78mMgG4eXvPNyNDIUptk2eML+SunkJoPCnHgHNJVrdGmhPCP8kwKXjT?=
 =?iso-8859-1?Q?mAGBe9fNsaBQDV8TQ7ygnomEsC6N46YncExLEqy1fMyfvz49kusABwjfeg?=
 =?iso-8859-1?Q?LXU2gTxOFU2mde+RELe5n7vRjRTae+TGI27MiKNUzYTmaEMy7/l2iHwA3g?=
 =?iso-8859-1?Q?n9KUQZPw2vJbG3nL47LpX0/k04q3BpPMlbAPtPtpCAvTB9SIa6kyoit/jG?=
 =?iso-8859-1?Q?dD29Wggr/Bc6mDvd284BtNelcenxhMXMihKwwmqWcR0yTB8kTgriA7xn4y?=
 =?iso-8859-1?Q?xlw9Lkydi/jOoMFrl4r3bIsVGn+xov+z9WT8uq8LosavPJ/bITVYzEF9vd?=
 =?iso-8859-1?Q?qlGZxYTiUnVqD+kzs2JaGJJgwvcrkMROE4sL83OtH1KWAEvtMNsJJNqz9r?=
 =?iso-8859-1?Q?9JOpH/va8PCSInYzreu0eCOvfL4uYePSZFMQz0EkTwNOUCf1ISOMAWXiUg?=
 =?iso-8859-1?Q?evmmpY6cH3YjwYthB7lY/8qABYPKKKgmDlUwLP4mpJm9y7O/Rpg5Vucy4a?=
 =?iso-8859-1?Q?H8veZtjTja5/oIX9/YIEQzFP4bBRzxQonx23MSzk+/G1+myEcRrMxRtKMX?=
 =?iso-8859-1?Q?Uem1wAZoF1UlgLc8/0zRVCfkSdtlJzldYe+u0XfB8osGRF12GStiHSUVj4?=
 =?iso-8859-1?Q?1Hu1sPbD2oBuEzDEkM9eHRnkzOwWotZuazpf1NIdOTwF55HC5CteyyhjSE?=
 =?iso-8859-1?Q?hC0ndt8R4Q5GMpmOvFpIHVNO3SmaUexluxVOsKvogWOZBwZPYH8mm5a3kZ?=
 =?iso-8859-1?Q?MLMXvnRKUaHobGj5v5WK9nx2V5HYHf3yPH?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fa94c1c4-6d9b-458c-8a65-08da8a4f12b7
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2022 06:15:44.7101 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uSQg4uszWpz2+E9kHy+4mMm4w2Bk3njcokFxz+4sj/I5tVLh2UeiTnaGxBIcNLdPleOfFGVpLpY1QgEKlL6u/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4057
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCHv3] drm/i915: Support Async Flip on Linear
 buffers
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
> Sent: Wednesday, August 24, 2022 5:48 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
>=20
> On Wed, Aug 24, 2022 at 03:02:33AM +0000, Murthy, Arun R wrote:
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Tuesday, August 23, 2022 6:27 PM
> > > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> > > <uma.shankar@intel.com>
> > > Subject: Re: [PATCHv3] drm/i915: Support Async Flip on Linear
> > > buffers
> > >
> > > On Mon, Jul 04, 2022 at 09:45:48PM +0530, Arun R Murthy wrote:
> > > > Intel Gen do support Async Flip is supported on linear buffers.
> > > > Since we didn't had a use case, it was not enabled. Now that as
> > > > part of hybrid graphics for unsupported hardware pixel formats,
> > > > its being converted to linear memory and then flipped, hence enabli=
ng!
> > > > This patch enables support for async on linear buffer.
> > > >
> > > > v2: added use case
> > > > v3: enabled async on linear for pre Gen 12 as well
> > >
> > > I didn't think it went all the way back to gen9?
> > >
> > It's the same as other buffers. I have just added support for linear bu=
ffer in
> the present async flip path, so the platforms on which the async flip is
> supported will support linear buffer as well.
>=20
> I know what the patch does. But I don't think bspec agrees with it.
>=20
I initially had this async on linear buffer support from Gen12 onwards. Wil=
l add that check back.

> >
> > > Also we still don't seem to have any tests for this stuff...
> >
> > There is an IGT patch in queue, once this patch is merged, the IGT patc=
h will
> be floated.
>=20
> Do the igt stuff first. Then you can at least get some CI results for thi=
s stuff.
>=20
IGT has be floated. https://patchwork.freedesktop.org/series/107871/

Thanks and Regards,
Arun R Murthy
--------------------
