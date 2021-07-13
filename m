Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E28C43C7594
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 19:14:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4959689DB9;
	Tue, 13 Jul 2021 17:14:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E071D89DFB;
 Tue, 13 Jul 2021 17:14:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="197395344"
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; d="scan'208";a="197395344"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2021 10:14:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; d="scan'208";a="487405779"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 13 Jul 2021 10:14:24 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 13 Jul 2021 10:14:24 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 13 Jul 2021 10:14:24 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 13 Jul 2021 10:14:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iI5+7bWPfRM0+mzWh75f8zoEXz7iLVL08czmqGBAXmG2/JjuPvFtLkk/F3gN0OdrHNvp2mURirRfaU7pUA4KeOWoeikSmNBldEnV/ocY4qwRdt+t65J0PpGbiW6fpFwO326VLdZQcDkLVGILX1xwo3jVtTZdmqGi+CqahmcQSmHY48qEDZ8FYrsaX+JQ4LtLC2AJ9cjNL219RKU3bZPBMyRQhSmQ+zR7JYDjPvtdodaUg7qP38GQK+dHWYIYtfbth350vqXDBJjak+EHmC1ZFw+9bxROkahemIvQK1tr6x34Q0/bBa+PDmI2XM/c2KA8eF6WQwYmm8bvkCMit86wzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZApHlmSk9g1PkDfcmAnXqLlZZ/Qo5xsm9RNbaUQascE=;
 b=Kv9J3zxE/aXWZfvF5P5wCYqkB/ikolxIgqYZIOIcwR3Oix4ehu6PEa3aZfgUkBCpw3PAds1Mlt6LNaLBn8jZXmcVmU4UGptRKFb26mKhH2fpjLJbDy5sniW2d/RemXLdBbBFkYNrb+AdYL/Y5c98sy+u8C3/3n4zRxnIp9bQhk7Rc20erkW6IZ5KXVtPzF53sq+KWRb9zmdUY7MW1oD27DoXCt5/ltVFjvyrbY5L5Ua2bmjUl+WKlxgxnutjjuyFVHB+Pbp+wGsWVuceWdLxHqPNhX91u+T5Ob6xz6FohARtjse1q6+BPm8leO7H+hWo2S/5lJkvMu5VNcZlPjnZKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZApHlmSk9g1PkDfcmAnXqLlZZ/Qo5xsm9RNbaUQascE=;
 b=ZBkiik+w36seqTsmXNXtzKyQKLusZBrbq48nSVBfFlC3t5lKQJnjCMmBa9k/8mtoLmehKsruQIJkeexc4BTo3uAufJuOBPh73XGvGCE1o4bvsh8QrhB6glxaGpm6F92Ea7cqvozAXfHMyrwJKSaq8FfGhOUd/uaOBywDBp0W5w0=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by SJ0PR11MB5040.namprd11.prod.outlook.com (2603:10b6:a03:2d6::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.21; Tue, 13 Jul
 2021 17:14:18 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::8109:b283:489b:b094%7]) with mapi id 15.20.4308.027; Tue, 13 Jul 2021
 17:14:18 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch to
 64 byte for Intel platforms
Thread-Index: AQHXU3wUP1wR5ZwOHEeqEEBbEw3F66r9qGyAgAAGtjCAK8XfAIAX98Uw
Date: Tue, 13 Jul 2021 17:14:17 +0000
Message-ID: <BY5PR11MB43728F704DB5A7170101B1A189149@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176443-12682-1-git-send-email-vidya.srinivas@intel.com>
 <YLTv/Z8j9rCf2koN@intel.com>
 <BY5PR11MB4372AB95A5AC6DE9AC0FA552893F9@BY5PR11MB4372.namprd11.prod.outlook.com>
 <SN6PR11MB34216722158A9BCB2AC4CCE9DF039@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB34216722158A9BCB2AC4CCE9DF039@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c4adad79-6277-4ac3-eb11-08d94621a60d
x-ms-traffictypediagnostic: SJ0PR11MB5040:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB5040522B7C4C5C89305BDE5689149@SJ0PR11MB5040.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2WcVVMpcRIHpiOcqY68BSrx6r8v9FAslG+/BeVxY9No+AyNCRN+nYPgb2prbBN5QG1DVOjJffjAP89tuVDuixefSwOGwr40+B6IwrHTSFSn7Zhd765DxU4615/F77keuEnGysvMqm0DQOE/dcQQ6dZZQAIfUdeLMwBZHXFMsEzxqaohZ/nK0QUZzMVuu1B1RRSnGhW3sSVB7N8uw8QB253ocoYSG9fdjHMCK7vRB/R3qUNEBH7+CUmcNbIaS6yfobTlLV6W8ooPkV0XRXoQgsMa7Dcqfr8j84M2LBaLi+XEfrDEOSg0pchuwdktkP81Ya7wvIiXi508iTGGhHqHHfVuWdW1gVcUz7a2Z1yKhxkUZHpj7/w2WrCUxokPWTe1TZ2MS4gRJk8tmecD1dJ4NPoarIkBXE6qbjTMPJfU/9Kv11G8MfgSSJ/gw/PMbCz9MDATvFk3JCdfkGv4BjucUgCbqozIgXnAVxfjuWmkZMnDqISY2c3ksA3AhOvLYlGCL8ew9XJFJEliOmUUz33D77rn2DOSbmSgWaD+TYbPx8QbA5ipwJdtNEUdMd3xkAN2lrqHQZQoyxZN6SVHjKfo0XAeC3hMEbivpuI2ra3HZDtdtO89dA9wYwdb8E6S5bB2SCv5CcY5q6Jk7g1ZQPZFbJQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(396003)(136003)(366004)(346002)(376002)(39860400002)(52536014)(26005)(186003)(66446008)(316002)(71200400001)(55016002)(66946007)(66476007)(66574015)(8936002)(38100700002)(5660300002)(33656002)(8676002)(966005)(4326008)(86362001)(64756008)(66556008)(54906003)(110136005)(478600001)(83380400001)(2906002)(122000001)(7696005)(53546011)(6506007)(9686003)(76116006)(84040400003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?hj9ul4HOFwsu2N2MYDiFjubjPix/fCGjnAzUo4T1FQl3Xl3+qMVERD2JZb?=
 =?iso-8859-1?Q?pH5XyKY1kBq+epDw8oIoeh56G3lXVmwFrBBZEMlsIbm6IkiZ1K0lFPfX8E?=
 =?iso-8859-1?Q?FixKx9MUelTbOqDRxI3XfsPToKDme7Z6/WRM+6s1N14YmG/xzmF6x9VSQj?=
 =?iso-8859-1?Q?dgrcNfyJPV3AnKN3RbGaXydsQv5odIa+bLJ64vZCm8+nabE5WRCzd6h6f9?=
 =?iso-8859-1?Q?Q42yA0xR9204YMDX/6jFS0A4j7gu9niU46438gL64fINVUbFH60wPjMOjv?=
 =?iso-8859-1?Q?NF0kE20GAjZsUzZomDVGh1eigQP3yeRBGoMqRUJwCCTFzS7ZIM87gnSp6f?=
 =?iso-8859-1?Q?rOV/vNxafXa3NTlft5leaXoBnkWzhOcJV8Mq/JQFy7TNxftUruLQ2p84Q+?=
 =?iso-8859-1?Q?WlVvoCZ0PLjxW84V+WIlt8/EcQVOlhu1ptmarpBqhlZ1qI8l34QhpmrUEF?=
 =?iso-8859-1?Q?J+EtsjI5+tQe7hszzRoyZEV1GysTGS29NX1GI0jzz40Mt1hUGHv5uol0v1?=
 =?iso-8859-1?Q?G7c9HOGyMna3/Nb2sBmZ7u2fXotoQ1wF+1IjyxYZZiFxZn+zbnHHPFMu65?=
 =?iso-8859-1?Q?rR/hwTMo9B/IWox02e5LwtdWaf+0C6eByXmppRx1/JmCh//d0LywY5yo1O?=
 =?iso-8859-1?Q?hZvkIxBOdLaikXbKJWbvTLYOA26i9NjwFqSupZ8dRLhb8fQhoIpOmKvKtU?=
 =?iso-8859-1?Q?wlmuIlGUuo2zhOvnQOoehJ+8esosNZBWKndgcjKpuF2b6chUjkzzSRc6QF?=
 =?iso-8859-1?Q?46+Dz3JZg/s1cc+Vt/RI9i2Dcg+kOtNmTpwhteJFaB3b9AC3TOxQrnhfA1?=
 =?iso-8859-1?Q?lD1I6X5/9/kXqqokEgf/lyeYHVYFvxUQRqqvweNDtcwpuzaJ6bvzWpB8CU?=
 =?iso-8859-1?Q?aLxivmkbU1/wqeZAQAVYu0A27CQdPOxB1D2k0b3afQKV6fIkvH6+apX+FB?=
 =?iso-8859-1?Q?T5WLnQ+nrR+P/2W4hoTM5Wmyl4EkY7nLtQ6J+MhSS/HOm2LR4l8Y5GFxuC?=
 =?iso-8859-1?Q?JWHX7bgrxsoUwFFVw2BG05MpeitJNu+fZzchBlWVEJYvmEkb5IluAC6ooW?=
 =?iso-8859-1?Q?NeEHDg5fBCD1nbxJTjGHp/1OmKmyCbdNyWaGBnKn8T0ONJlBujAOcpD7Co?=
 =?iso-8859-1?Q?oPxn4ktFeFDddxkW7do3hmKvrcKjuHfS7fBVf9CneOS1JFqBRSWQia8meU?=
 =?iso-8859-1?Q?EWq8cHXQGriMSyODNUnzB01Vmrfm80gm9HixBzZsb2at2SJKPuusVL6CB4?=
 =?iso-8859-1?Q?JFl92X9QZL+d2LkIl7053EJedGmdrAx2weGJSzJUv46h6pf2yIB9huv35X?=
 =?iso-8859-1?Q?TaCqMnFwjA+iT0DjcxyqHkw1OvgcQxwgQkhNjy3Ateif5qy+J2qwvX1pdR?=
 =?iso-8859-1?Q?ntsIlINIjK?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c4adad79-6277-4ac3-eb11-08d94621a60d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2021 17:14:18.1482 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: m8EwePozD0A980wV/lbUrSIoMvNUQqZATfO/q9p7+H1CvHcSix/tcqbX+74yyg40bDxuYFIXIIjCWACdW6til9Cr1GZdoPAu3zCxbVNsb7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5040
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime:
 Aligned pitch to 64 byte for Intel platforms
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Lin, 
 Charlton" <charlton.lin@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello All,

Very sorry to bother you all again. Kindly can you help so that we can clos=
e on this please?
We have submitted both IGT and kernel patches. If none are okay, should we =
skip the subtest for panels which have width not 64 byte aligned for Intel =
platforms?

https://patchwork.freedesktop.org/patch/435794/  - IGT patch (we are aligni=
ng width itself as workaround due to missing alignment in VGEM before reach=
ing i915)
https://patchwork.freedesktop.org/patch/436199/  - Kernel patch

Tejas has submitted another solution https://patchwork.freedesktop.org/patc=
h/441967/ (256B alignment) - this too works.

Regards
Vidya

-----Original Message-----
From: Surendrakumar Upadhyay, TejaskumarX <tejaskumarx.surendrakumar.upadhy=
ay@intel.com> =

Sent: Monday, June 28, 2021 4:39 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>; Ville Syrj=E4l=E4 <ville.sy=
rjala@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Lin, Ch=
arlton <charlton.lin@intel.com>
Subject: RE: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch t=
o 64 byte for Intel platforms



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of =

> Srinivas, Vidya
> Sent: 31 May 2021 20:18
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: igt-dev@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; =

> Lin, Charlton <charlton.lin@intel.com>
> Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] =

> tests/kms_prime: Aligned pitch to 64 byte for Intel platforms
> =

> Hello Ville,
> =

> Thank you very much.
> Before reaching our i915's i915_gem_dumb_create, it goes to =

> vgem_gem_dumb_create for kms_prime.
> =

> The pitch gets calculated there and it is not 64 byte aligned. Due to =

> this, intel_framebuffer_init reports "pitch must be 64 byte aligned"
> and framebuffer creation fails. I tried submitting vgem patch where 64 =

> byte alignment can be done in vgem_gem_dumb_create and that also =

> passes. But we did not get approval yet as few of them felt, vgem is =

> generic and other platforms might fail if we do 64 byte alignment there.
> =

> Kindly suggest. Thanks a lot.
> =

> Regards
> Vidya
> =

> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Monday, May 31, 2021 7:48 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; =

> Lin, Charlton <charlton.lin@intel.com>
> Subject: Re: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned =

> pitch to 64 byte for Intel platforms
> =

> On Fri, May 28, 2021 at 10:04:03AM +0530, Vidya Srinivas wrote:
> > For Intel platforms, pitch needs to be 64 byte aligned.
> > Kernel code vgem_gem_dumb_create which is platform generic code
> doesnt
> > do the alignment. This causes frame buffer creation to fail on Intel =

> > platforms where the pitch is not 64 byte aligned.
> >
> > tests: test run on Intel platforms with panel resolution 1366x768
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > ---
> >  tests/kms_prime.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/tests/kms_prime.c b/tests/kms_prime.c index
> > 8cb2ca2a9dc3..fdc941fe8100 100644
> > --- a/tests/kms_prime.c
> > +++ b/tests/kms_prime.c
> > @@ -51,6 +51,8 @@ static struct {
> >  	{ .r =3D 1.0, .g =3D 0.0, .b =3D 0.0, .color =3D 0xffff0000 },  };
> >
> > +bool check_platform;
> > +
> >  IGT_TEST_DESCRIPTION("Prime tests, focusing on KMS side");
> >
> >  static bool has_prime_import(int fd) @@ -101,7 +103,7 @@ static =

> > void prepare_scratch(int exporter_fd, struct
> dumb_bo *scratch,
> >  	scratch->bpp =3D 32;
> >
> >  	scratch->handle =3D kmstest_dumb_create(exporter_fd,
> > -			scratch->width,
> > +			check_platform? ALIGN(scratch->width, 64): scratch-
> >width,
> =

> The dumb_create ioctl already does this for us.

I915_dumb_create does it for us but "vgem_gem_dumb_create" does not do 64 A=
LIGN. And kms_prime is using "vgem_gem_dumb_create" never call i915 dumb_cr=
eate() as the IGT creates buffer through VGEM driver, see below IGT snippet=
 :

/* ANY =3D anything that is not VGEM */
                first_fd =3D __drm_open_driver_another(0, DRIVER_ANY | DRIV=
ER_VGEM);
                igt_require(first_fd >=3D 0);

                second_fd =3D __drm_open_driver_another(1, DRIVER_ANY | DRI=
VER_VGEM);

Thanks,
Tejas
> =

> >  			scratch->height,
> >  			scratch->bpp,
> >  			&scratch->pitch,
> > @@ -262,6 +264,7 @@ igt_main
> >
> >  		/* ANY =3D anything that is not VGEM */
> >  		first_fd =3D __drm_open_driver_another(0, DRIVER_ANY |
> DRIVER_VGEM);
> > +		check_platform =3D is_i915_device(first_fd);
> >  		igt_require(first_fd >=3D 0);
> >
> >  		second_fd =3D __drm_open_driver_another(1, DRIVER_ANY |
> DRIVER_VGEM);
> > --
> > 2.7.4
> >
> > _______________________________________________
> > igt-dev mailing list
> > igt-dev@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/igt-dev
> =

> --
> Ville Syrj=E4l=E4
> Intel
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
