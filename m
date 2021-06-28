Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF7093B5CF1
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jun 2021 13:09:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E5576E42E;
	Mon, 28 Jun 2021 11:09:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6FCF6E42A;
 Mon, 28 Jun 2021 11:08:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10028"; a="207749924"
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="207749924"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2021 04:08:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,305,1616482800"; d="scan'208";a="456283793"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga008.fm.intel.com with ESMTP; 28 Jun 2021 04:08:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 04:08:58 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 28 Jun 2021 04:08:58 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 28 Jun 2021 04:08:58 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 28 Jun 2021 04:08:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SAr4Nf15VkW1bZNXBdPxxUaPGSmF0P/4dqmPDHjNeCtWYCKINUR+lSgrcLSRIZpkc16eKkzna1uOvkXUNaCQvKaGK/h3mTumwZQpbh7U8XqdeR88M2Xe/U/NGSO2dOjUmf5RwFhUzk9UkpvtQsSx56+NnEEA3aMJ9F6+ibt94dowplMDDt2vGJMHFyxD/GnUZITa6TaofPPk4TRqZr+0h3Jf30YZzdDKa54l3kqLK7+Il/6v9ms2laK+H+xR5u3CNFROTEA/Qsa8QoKC41FouhpU4BuLu28NDNqycfUU1mSjuVSE6xwG/hVT9hzd58a9gRlzdPvVyc0Z/HEHMo5rkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R65fevas7mDcQGz5HFUF8tzmIGRhTq/fTTh1gE8Dmpw=;
 b=K2wwLVil/irVjCJG80e/ey2/sURswc49mdhMHuVMNQkqrhc1IJldj5DJeGCDsQn3WR/9Y97s4f0DSfzb63vlG7YAGux61cY/VyKRqc5taPOcOhZdOvWrA3ps1+1qg2+nHP7doxz21R3pepCmy6nkbuXLKioYyJxnn9CEitUavFdNJQS2H3FW9xE9pWKcLjrQauGyhik1sKn1ehKC9Bo3WpO6g8wc7n/Z5Yd2Kt41sJfycmVktqef+YXrsazMZ+FLY5NC/mtCJNkonjNVBpyL5e15CcDN7kM7ggpoBsvFvED0g5v+Z+jF8vFYWR9G3h+EwpecQldOQm2B9gQP512lUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R65fevas7mDcQGz5HFUF8tzmIGRhTq/fTTh1gE8Dmpw=;
 b=OxpzWxqf7XbcB8AbdQt2425acHH+g8MkQhAXsVq/VjVPAwxKa+Y+rD1fJSc6PdrJJ8/iAvnaynoBX+V1QM/dHyBBi2INdgdcfp4WlBp5QAsj5Gjfwa3NuZeGS+Thj9LB4hs8g61EIRc+n+9MXZvX2ZcRI6BicWfk7vPb/iqIuJQ=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Mon, 28 Jun
 2021 11:08:56 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::5c0d:c982:3e51:d948%4]) with mapi id 15.20.4264.026; Mon, 28 Jun 2021
 11:08:56 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>,
 =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch to
 64 byte for Intel platforms
Thread-Index: AQHXU3wB2LOkzTb0sEW27Vn+Zd6vDar9qG2AgAAId4CAK78AUA==
Date: Mon, 28 Jun 2021 11:08:56 +0000
Message-ID: <SN6PR11MB34216722158A9BCB2AC4CCE9DF039@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <1622176443-12682-1-git-send-email-vidya.srinivas@intel.com>
 <YLTv/Z8j9rCf2koN@intel.com>
 <BY5PR11MB4372AB95A5AC6DE9AC0FA552893F9@BY5PR11MB4372.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB4372AB95A5AC6DE9AC0FA552893F9@BY5PR11MB4372.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [43.250.157.255]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b0e8ec6b-51b5-433e-0d35-08d93a251f92
x-ms-traffictypediagnostic: SA0PR11MB4623:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB4623A200CA9601567A210E38DF039@SA0PR11MB4623.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F2E36xf6oR6RVkMiV5cK1lEZRkMqa1MD6WPPbsGdSyuykc6kUzWMDNhiT89T4dNpnPnJLbHdcNFfMInHbbvEP5OGbiShneKI/xODmF5arHq/7tYwDoR+0gq1idDHljAvzuit1UHZ4+IkNnzFDYnQIprvEwDi+FXc55vtI6k8XZ5F6pQjKl/X7ToXu3j+gITd5GT6dxA9E9/VShkSKJrZau85Xc1mG1jRXcWMgY+387DN+PW0xhj3BqzWcZxlCKwEJvUe0l9HCh+pqm5hpX6mRCaEi6ginxUHebDcasaW9xoRrELBOS1pE1FIgEmftJZ3YOJ9r3q5EilIgQZjwxV4LUiYwPxy/8wQEr2/iOO38YuA4WBuWnA39KYGuRgv6k5iOjfHB+TI2HH1LX1sBtOgCgBBZWO4WiaoNjkyI7umMlz5kdrYP9SImBboAzVVXk1qQbqjIjMaAhm3JRSUl9JWBSLCUDmTAZ+An1JhJajVlNok7b+c/5RSFzVab/LBEldCAg9wm0jjin/rEBXROs1UQHp/JEkb0GmTUAgu+PxH+ireI60bt7Itp6X8tYsgnw8Ko7rcg+jCTVWyhQP4FJyNvt4QYBfHaD0EnrMrmFfIESiA10MCSIG94cNc3xJR/y3E8X3O+MLhnJPFDppi051nmodb6tgj671O7TL3riCW/I1EUnOtQDhRPoSMYuKFoDrb
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(396003)(366004)(376002)(136003)(39860400002)(71200400001)(2906002)(8936002)(54906003)(110136005)(966005)(4326008)(38100700002)(122000001)(316002)(8676002)(478600001)(76116006)(33656002)(52536014)(9686003)(55016002)(26005)(66574015)(5660300002)(186003)(66946007)(83380400001)(66476007)(66556008)(64756008)(66446008)(7696005)(86362001)(6506007)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?Yc5ZshapQ/JoiKsjmhDAInsJ8mrZDEfHPfSzm3OtgA4X97bt7vvZCd18mR?=
 =?iso-8859-1?Q?wJMwbvZI5M78UlbHMN32amaxr+QWpqcYcwKYTUzGEgNpx/LPK1p+nle3sR?=
 =?iso-8859-1?Q?PkOSXn6424BrGfjA2pke6GYCZWU0aMnh67JcXYDhaUBzBw24ENkrzydrf7?=
 =?iso-8859-1?Q?RqK/12P/HaqUIH68M3hd5XzIYDpSc1erQs+AIYlF1XbuLmhTZm9MC3AeBL?=
 =?iso-8859-1?Q?ibQUZyVjeG0j9WrS8NGChSHVxTDSpUo6fMTIvL3F3F5nj+NEesamXx/mmS?=
 =?iso-8859-1?Q?LfqR8ltWzJCMrr6zlJPf39cfDRH25EB8LHji9jdUzUwH9K7v2LUHbsopRn?=
 =?iso-8859-1?Q?nFeuTZmRflMXeWxMoj11QY9/E/76nq1Tjz/LcpLg8/dcyyvBvCObjHNZHo?=
 =?iso-8859-1?Q?i4zOJX23xBvPXdpHqnqvLiD6FpaxJR4r6ehmwyOWNeCcAsQioYGsO9Y97M?=
 =?iso-8859-1?Q?rN9/rs2w5t9kELLK4Nh+4f2mZ1QCf5PNFLb4dGtQMU5R3tOnUpx9Tm0obq?=
 =?iso-8859-1?Q?YiuUMxRIprzlRuesjLlmFD1DO4yHJ/S6PLy9c6FHF12TGtSQ+fxgx5d4Bh?=
 =?iso-8859-1?Q?DSdVrWKpIsIcWECQ/+BqgDLd22cGh5dtIcXQmZr9TyD/HeHSI95/9g3Pct?=
 =?iso-8859-1?Q?/WUF3dystoADj4BsRtjbBSnI7yAzUC+iJTRZY9sBMS7Jrb7IPUU331XHsh?=
 =?iso-8859-1?Q?g4i+nsyxm22YD3PyRUTzzWxo1Zy7HszvAh8U7EDGo4y30nuBmwwYAl/Zvk?=
 =?iso-8859-1?Q?z0oLVoHm49AbOM5K1WcxoruFqVZ7Zjd++2c0I6XUTCrGBi5zyg0EyQdoWI?=
 =?iso-8859-1?Q?zI/twkg80k0/66PdfJvDjlKrBxJ5rh8puzzjAB/DUmkqbNrVsfkD8JsA37?=
 =?iso-8859-1?Q?+32NB4ZSnUz71ZhbzyGnU1lxNp1f7oTKPNS2EJciJfhxZf2b8EEPOOJv/E?=
 =?iso-8859-1?Q?pgmsCSxTpA0DdLqPTpRuD9NNJGVOrGRYJYWo/aqR+eGBnPGGoLimIzd3Sm?=
 =?iso-8859-1?Q?TL8956T1rzE+9r+oXkDhWh3fiFcx1c2UgOvzWpluvNhlehA+gfXBIZwbC7?=
 =?iso-8859-1?Q?J/xfeUHAXEIJzpM4LSE0X5s+XuC07hAMypIe5EwHHV4pCCMS22pT4tusdI?=
 =?iso-8859-1?Q?Y5KO8cwTgQzqEKRp8IG42QwqlEHRJxqy+UMAWZa6ZjC5F1or9sE1l69oxT?=
 =?iso-8859-1?Q?SFV31mpDjDAvDX+1dQMNHFs/T5S5aeChhtCpLpbqrcT5b3ZtomSMZ/N8d5?=
 =?iso-8859-1?Q?wbJs+iWEbF/Od3dVKga64l65kAF44NpZU0IddDdK+rkLQqO6vmXOLLOvhf?=
 =?iso-8859-1?Q?m4ovhDY5HpXYTiseKa6qXJTonfoyEm6vDsr6wJVMMH7OFgFKDKkXvuoOE5?=
 =?iso-8859-1?Q?LTfYD4xwrP?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b0e8ec6b-51b5-433e-0d35-08d93a251f92
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2021 11:08:56.6932 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pvlueJZiITj01rBN+hp+N5ZSECV4+OCiTmeZXmHl/C5rNJ0mWVyAHB/oPmHoHXsONqcqW9ahuxXPz/xmjGlRoFlf5qClpyULePppzNv5TE06nywrwk8SocXqadvDVP6wgZhzxc5ljXzuHikqqry7JA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
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



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> Srinivas, Vidya
> Sent: 31 May 2021 20:18
> To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: igt-dev@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Lin,
> Charlton <charlton.lin@intel.com>
> Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: A=
ligned
> pitch to 64 byte for Intel platforms
> =

> Hello Ville,
> =

> Thank you very much.
> Before reaching our i915's i915_gem_dumb_create, it goes to
> vgem_gem_dumb_create for kms_prime.
> =

> The pitch gets calculated there and it is not 64 byte aligned. Due to thi=
s,
> intel_framebuffer_init reports "pitch must be 64 byte aligned"
> and framebuffer creation fails. I tried submitting vgem patch where 64 by=
te
> alignment can be done in vgem_gem_dumb_create and that also passes. But
> we did not get approval yet as few of them felt, vgem is generic and other
> platforms might fail if we do 64 byte alignment there.
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
> Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; Lin,
> Charlton <charlton.lin@intel.com>
> Subject: Re: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch=
 to 64
> byte for Intel platforms
> =

> On Fri, May 28, 2021 at 10:04:03AM +0530, Vidya Srinivas wrote:
> > For Intel platforms, pitch needs to be 64 byte aligned.
> > Kernel code vgem_gem_dumb_create which is platform generic code
> doesnt
> > do the alignment. This causes frame buffer creation to fail on Intel
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
> >  static bool has_prime_import(int fd)
> > @@ -101,7 +103,7 @@ static void prepare_scratch(int exporter_fd, struct
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
