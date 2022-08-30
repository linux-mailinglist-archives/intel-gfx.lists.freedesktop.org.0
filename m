Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8606A5A5D7F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Aug 2022 09:57:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2315410EA1F;
	Tue, 30 Aug 2022 07:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C189710EA30
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Aug 2022 07:57:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661846244; x=1693382244;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cww5ppYsK2Llx6bkKCfUYkVyle5C3+1HnGkOuYuFm4M=;
 b=JC12C2cIhGQPRIYf9qKppamS7JgIUnOFNfwfi7gavcze6oBmP7hfg8Rh
 IIMuplhRPBUETc5p/QuCHpj7w4Y87xU1fdJ6XUQPJCGTe8olptoMh+9mA
 gjFSttbum+x9E8kqsoH+mTLSQBnfDKFYYk5YuDFJaogR8PNHQzQKEJoHc
 y+ZSliWD0+pVN3s5s85WnnAkC7E+Z5AtEEUi2oNXmiSRGzgiZCpdw14V8
 Y7MeShW5MTF1ofFhs3ik5Pyi3Aw7MDlwC8Kg71y9lp9sb+kpfasiYn2F3
 6w0Lvj2l8s10WjJrWMGV1pH16PJScqwWviO9RWSWwrAJKl7pGLlBAgQSs g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="356827019"
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="356827019"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2022 00:57:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,274,1654585200"; d="scan'208";a="562549415"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 30 Aug 2022 00:57:24 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 00:57:23 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 30 Aug 2022 00:57:23 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 30 Aug 2022 00:57:23 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 30 Aug 2022 00:57:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ntdXacQoQ/qRDoaJCu5c7i+NrMQ9zCoVagAwdZZrgRJgDVjlBeRbwUerdCazMFOe9Ses+PfAvhXO5wi9cyauGQ3jDzUmXOqs+N5tutnUg5Kl2ulIRcqzQQ/pOvZ4l6KqW+gOcjzdTwRTFck/WqpFXuSiOa2yFDN4mlLfAr5kPZK2XiTCsAYS4cOuTz3o6YXYF0X91rMGVdT64UIoyC0TW1V57OSjbncEqS39ATMx2GhhPEeNyMnwosGXiuNNQxe1CpRXlVD19U3TrLPk29VXBltNolr2cT7iguUkH/RaLzb18v4L8DEukJKhcvbwSwEFVSd+JzmRcktuW2Na/IbDhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cww5ppYsK2Llx6bkKCfUYkVyle5C3+1HnGkOuYuFm4M=;
 b=OJ/SR19qDFdKLQDMcfU2cRelcI+uZ5eI07Xf2AaoWmuVchpw/TSPSSgjyOADrEemB4/Uzs6PHdL7z6/C0H5r1bH8Tm5+zGH4X4FbMzGudYBEblIEnIBKVskGF4mAKpu7bNq9oefzLhaRANpux28/W8FZy+n6I3JBmUAEb7Y6SX5RFdNxHGgvKs0kS4UCQKJoC/pW/U+4vbx986Syp0O2hvbAwmSDL9PcTLE7uQAwGpRjsg4za9FxBemx6Q6ZqilcY4FQGP2l5CFJUjbe/iK3/6XWSgi2Uarw/7ILrc9sm14ZT/RXEQ4A8V7OiTn/KCiZ4WrQHQCAROw72rnotCQYVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL3PR11MB5748.namprd11.prod.outlook.com (2603:10b6:208:355::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.14; Tue, 30 Aug
 2022 07:57:15 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f491:53c1:acd5:d8ef]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f491:53c1:acd5:d8ef%3]) with mapi id 15.20.5566.021; Tue, 30 Aug 2022
 07:57:15 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCHv3] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYj8Fkt9meJM7X2US4ugUo7v9Xka28wCwAgADq2NCAAJyNgIAJAv8wgAAexACAAACvUA==
Date: Tue, 30 Aug 2022 07:57:15 +0000
Message-ID: <DM6PR11MB31779B3FBE9945476890F37EBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <20220704161548.1343042-1-arun.r.murthy@intel.com>
 <YwTOoCLIBf8KhjWB@intel.com>
 <DM6PR11MB3177E2D112D3A3A589F650D8BA739@DM6PR11MB3177.namprd11.prod.outlook.com>
 <YwYW826HW9xjjVnE@intel.com>
 <DM6PR11MB3177D7567C42D8FAE0C3F52CBA799@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Yw3AArq8Vx1LrFgl@intel.com>
In-Reply-To: <Yw3AArq8Vx1LrFgl@intel.com>
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
x-ms-office365-filtering-correlation-id: dad486d7-eac1-4b96-b3e1-08da8a5d4149
x-ms-traffictypediagnostic: BL3PR11MB5748:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4hWzh/zFFYJj2YjE28ruDvZd6BvAuF+pxlw8MnpM2unRTNmJvKCTz+ADgUZrxYQ1hNX9+Ew3ct7b6p1H3Z2Z7du0A5VcLQtHi2wfVkzFk7/j91EG4KrB4Jc+laIRDvsItqvUb4edy+49eZzloxqgq7i+bL55NSMxoaYuQZ+M1/JJVH060i0g3QyJnD298noBz4TU6IcepYmAlKbMbGjH8r8WCjGu5qWJw+QCYPp6D9SFNSe7xiPwS0qnKLRfB6kedm53CNf65UBR5cqLOzgVB/0/ZA/qGDxek8zUm30kKplrHVFKm73KutdJtYD2idHPshcMympoqyGVcp2cbm+G4FsjqvOdxpHb5yR689xQMYCmw0xyjBLchBRfSiCO6rV4zy0dc4fwHl502acJuw5VM8/n4dh04FXdUwchhhXfSLDuOsKgqtF2UPL96FgMKkNOB/b3bX0EDPMeHgbK37bj2jn5qbXH38nMwwZwlFAIvq4V+LDJpp0KHjeK3Q4qWHUGsIKS30wMWJiI0ApI0eR2P85nJ6/8r0mnEG9bv1495Z8dkT+7+8RmH2b4POlJeVvmdzQCzOyBf22Za+lACtpY4aDN5T8sQl4WvYg/UTGvTE5nWzDqYl+Ot2+EjFTFE7uBAaDp15LlClQQfSV0oFMci5vLsUHbWP2wvLEfhUEIUB9m/GVsVUsytU08zgHLc6H2msaTTJsBnu9uENmKeOZOjw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(39860400002)(366004)(376002)(346002)(396003)(76116006)(186003)(64756008)(38100700002)(4326008)(8676002)(478600001)(66446008)(316002)(71200400001)(66556008)(82960400001)(966005)(54906003)(9686003)(55236004)(41300700001)(26005)(86362001)(66946007)(6916009)(38070700005)(66476007)(2906002)(122000001)(6506007)(7696005)(33656002)(5660300002)(52536014)(8936002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?dnxlagVb9UKVyVwApyBxObL+etOY4RbqcDbyA0asc9Dc1HLf4Lr8MNVjcC?=
 =?iso-8859-1?Q?LLLOD2Nuropb1/k9jEeeBsPeO57mIKpgtSs6exncK7VIlRm1H7eL+Eo7L5?=
 =?iso-8859-1?Q?TvOcV/02M8/pFiXjXDhJiSashclieLZr/31w4S5DBXjofr805Zni8zMb8H?=
 =?iso-8859-1?Q?NSQP0yTtGYFc0bRbz0OFz7CGIHAtdUZZF6ZS42v5BIV8JaEETiPbokpUrF?=
 =?iso-8859-1?Q?veYZbzyNInPvMxjvt+XFp6Ohkxelw6aC+jzzYGMZ7a5/ialRqozn9rxTNT?=
 =?iso-8859-1?Q?G5pcYMpuXt0+2sHI53brNaeDv/KVWJCzE7I641l71iriOz17zdXaWZbVQi?=
 =?iso-8859-1?Q?gmjk68CyBD4aFcFR5ThzmfgFMAN7VrGBmUB6uyFDfVsN9jN1isDcAyIRn0?=
 =?iso-8859-1?Q?AqkViHLabieN2brSshEK20rjbICdpZeg1zUDRHW7aZLa/NIdRlgl0u2Vsh?=
 =?iso-8859-1?Q?vXkAz0c/SpOkMoZkcYK2VBiQGOYAhGT+e1OBL5ufja78AF1r9IYuyFlYuV?=
 =?iso-8859-1?Q?gMfDllQB3U7S0Ylhnl0GGiUS1nS+r754cY91eN6pTgFxucr2uR6xpeSuk2?=
 =?iso-8859-1?Q?fvz+KnmTiaa5Udv02MVdvOIseRIlYTY6d3v7gVY+7R0OXJ+/sRuipEA9s6?=
 =?iso-8859-1?Q?I8az/4mt+wTmb9HUFGqZ4Jo7OscML0gm66Pas87+6sk6VDH4zKgbPdGgfR?=
 =?iso-8859-1?Q?yIoNndi58yMasO/5nHxHoalbmY0t9g1iGpr+9MZTAwhdoRyP+MXeToOiZ6?=
 =?iso-8859-1?Q?Cnxp/PHJElrcJ0OjWwJHsZxsJpzSZs3kyC4Vv8p5boFX2xyMTEDv3vDgRy?=
 =?iso-8859-1?Q?AaImcbqh+ZIVaOsPmN1a8QNocIAcKmmyoNuoKGo6q7jYiwLwK/iDZMUAMH?=
 =?iso-8859-1?Q?RKPsCb7jjoVzL3OjZA7eMUjsBFxwTAMz+SGOsKYFYZa4Z+y5snrcO0jUW0?=
 =?iso-8859-1?Q?vrxbDIQZl/rjWUvtVv5bj4yjBiCHEvDZ+lOUcf/WDvSjr8l/j3KKbd3rQS?=
 =?iso-8859-1?Q?zurU2lnL8nwME4PM9/vXkWXSNh98HmmThsVnb7h89WHvronlzbanViVXTU?=
 =?iso-8859-1?Q?M1pUR/RY8FKA89Q3byQ+coael/zknPRWFJbAkRxliW7DqwIWDJsYiZg4Sq?=
 =?iso-8859-1?Q?u5wHHOTYTQ4KJalYQfTB4shWUM3jZpq+azRQeV0kvAvs4IdbxjNgNmImNG?=
 =?iso-8859-1?Q?DaKmPay7mew67/d5Xn0XWGRsAgHei8IhA+jNJlZnXLEg5soiIwHcFyabMV?=
 =?iso-8859-1?Q?M4jd6bkjNdbCYWjKu8PqZFCndcqsG/iGn/SOHf8paPH+5rs4Zz7NLNn9DL?=
 =?iso-8859-1?Q?pm7qspy7tSqYIe3UG1xhcLk7P20X4EzhZagrr/7EnMGlhvrnqxTGkUp7iU?=
 =?iso-8859-1?Q?GfYkT+DborueqEO8sOFJOjLqBlWTY2AHjhm39PeGcvZ6SkF7yJBAx359uN?=
 =?iso-8859-1?Q?FBvMGtQvF6jlVQ4LaaJ2b5jXlA91EA7LmJiZB0Z/kyYzjcNF1Ak6q4qbzL?=
 =?iso-8859-1?Q?gsheqkr4d+TB4VuklR0Qo7vRK/N6h/0Q0csU2K0QnbbH44eRa+sBKao/li?=
 =?iso-8859-1?Q?Jxxg003kcTnBTdQagm1ueE0GUl4dg0JYiF8f4rQYWxw7eHL5R7Rf9lHh6X?=
 =?iso-8859-1?Q?t/vcncDr/zBQDhoZBstR2A8xbMp6Wu8i1f?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dad486d7-eac1-4b96-b3e1-08da8a5d4149
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Aug 2022 07:57:15.7818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wOKjJRpgCTJj16pb3dIzak9IdLfCTHGa7ffGcwjmVTW0CGQh6wNxHn7f11KTdjBbSLImH7YMzuwFvSJ6Lky/9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB5748
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

> > > > > > Intel Gen do support Async Flip is supported on linear buffers.
> > > > > > Since we didn't had a use case, it was not enabled. Now that
> > > > > > as part of hybrid graphics for unsupported hardware pixel
> > > > > > formats, its being converted to linear memory and then flipped,
> hence enabling!
> > > > > > This patch enables support for async on linear buffer.
> > > > > >
> > > > > > v2: added use case
> > > > > > v3: enabled async on linear for pre Gen 12 as well
> > > > >
> > > > > I didn't think it went all the way back to gen9?
> > > > >
> > > > It's the same as other buffers. I have just added support for
> > > > linear buffer in
> > > the present async flip path, so the platforms on which the async
> > > flip is supported will support linear buffer as well.
> > >
> > > I know what the patch does. But I don't think bspec agrees with it.
> > >
> > I initially had this async on linear buffer support from Gen12 onwards.=
 Will
> add that check back.
>=20
> We're just going in circles here. What I've asked repeatedly is actual
> justification for whatever gen check or no gen check there is. Ie. please
> *read* the bspec and include the appropriate information in the patch.
> Otherwise there is no point in me even looking at these patches anymore.
>=20
Per the BSpec async on Linear is not supported on Pre Gen 12.

> >
> > > >
> > > > > Also we still don't seem to have any tests for this stuff...
> > > >
> > > > There is an IGT patch in queue, once this patch is merged, the IGT
> > > > patch will
> > > be floated.
> > >
> > > Do the igt stuff first. Then you can at least get some CI results for=
 this
> stuff.
> > >
> > IGT has be floated. https://patchwork.freedesktop.org/series/107871/
> >

Thanks and Regards,
Arun R Murthy
--------------------
