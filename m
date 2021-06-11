Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F563A3D4B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 09:36:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B687C6EE3E;
	Fri, 11 Jun 2021 07:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 440106EE3D;
 Fri, 11 Jun 2021 07:36:04 +0000 (UTC)
IronPort-SDR: 0DxiocKZcGow/zVmVaMFLeZvHRkkpadEJ72NFcK2w0EIZ0047uUacG8lPY7KhPm4+Q5b1JKdl7
 4ZkaO6xL+JFg==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="185171137"
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="185171137"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2021 00:36:02 -0700
IronPort-SDR: j3PwfaB9Ww/AFiL2gF6S6E0FMN1aW62PDitWredScLJRtEcqg6JgaLUlDPkv0c63O2fLDUPlgp
 uo4HqzlylhuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,265,1616482800"; d="scan'208";a="441490298"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 11 Jun 2021 00:36:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 11 Jun 2021 00:36:01 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 11 Jun 2021 00:36:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 11 Jun 2021 00:36:00 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.104)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 11 Jun 2021 00:35:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Qc6DZCnT2HqR1E/xXSgBrCxtnIaeLnsgUVluCYqvR5pfZMgMdZZXv+ChgR+pNwI2XPSpxD//VGfPGCdxHsau2jJLcIWIvFk+HAzecaTK1wBKLfeBNabx/usYNxOrIRi/ire64FMXQCv6uGX9OU0wL2Tyiw1CiQOb7jpmBT6yk3IrJVL23d53d4n69LNBuK10xL0EJgVvjtj1PEBzRPHDER538DgbhAjh21s1zI2aOy7w2MjvQEdPBqy1YDH9CB/jmX98Pm/mQruLutKOLSBkzeAjucS1n4zq+svvy4APFiG2u3Z2q7NjKZIxwMXoZDrlnY/dZ9CuAq2jU+F5DmZMnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hzfMs9F+H8/WaACbzS4EMVcqy0+RsgueHAVnMUucY9M=;
 b=eWMasqSWayI6i24Xi/578oMlHjp9ioxlVb3OHxquJNOW/R4bJBjawkYr1/gPEU20ezN53Aw5ky1rnupiCy57yRlyF/xcw1MURl56SnkC4pjR58KVkK1Ps9bHOV6/cFnz/AZNfPuLkVyKVsPzJTCKxmDAlMiLP/xKIcJwir4yXkNDhLr6GIRnUzJ3E9b+1veXuxwzUFddnyId7lx+1kB4J8qC1Cqt2UCiLAdYH/022aytiaxmEAa2bQQ9kGxUyzroPSEP+QymDCCSf9zs3wLs5+PInx3/hawjbVjtENRsYwlSu02HAhPlDdclMRQn8WhfQNmmNOJiJw4MHs3Jwttlng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hzfMs9F+H8/WaACbzS4EMVcqy0+RsgueHAVnMUucY9M=;
 b=D1Ua9yEnWOKr8Vf8TXFQ+1IK0RSTVcRacBfHz6+w3PWxot9uM9p5r5KrEx0daxojzfTvus5lR/NigN9qUZJfxwREcacntPkJs1oh+P9+99TTu6/qM3L5fazvf5pxkHuXEvVDbjvHkL/YN9b3ZEOR9OEC30DSkMwJp/gL4nkHfhM=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by BY5PR11MB4467.namprd11.prod.outlook.com (2603:10b6:a03:1b9::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4219.22; Fri, 11 Jun
 2021 07:35:50 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4195.032; Fri, 11 Jun 2021
 07:35:50 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch to
 64 byte for Intel platforms
Thread-Index: AQHXU3wUP1wR5ZwOHEeqEEBbEw3F66r9qGyAgAAGtjCAENE/wA==
Date: Fri, 11 Jun 2021 07:35:50 +0000
Message-ID: <BY5PR11MB437286165E0F03D39B5D146689349@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176443-12682-1-git-send-email-vidya.srinivas@intel.com>
 <YLTv/Z8j9rCf2koN@intel.com>
 <BY5PR11MB4372AB95A5AC6DE9AC0FA552893F9@BY5PR11MB4372.namprd11.prod.outlook.com>
In-Reply-To: <BY5PR11MB4372AB95A5AC6DE9AC0FA552893F9@BY5PR11MB4372.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [45.127.46.22]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 761cb7a6-1cdb-4f9d-0c38-08d92cab893a
x-ms-traffictypediagnostic: BY5PR11MB4467:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4467B4AA1A5767BA3307CDEF89349@BY5PR11MB4467.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kmMHLM2Rp5kam3EIdx85C0+ne2o+5OudRoMn6gAJM0+LViXxwQ4JF4o3/rqXmcPsH8284h7p6l9PZmOcB8R4j1Y6grPAqQ55MWJU/vubkbpEPL8hUHPrgT/3pHBJkyBJnyOT+eHWGER596fIriZVmn5G5JDjatjmb/dWsXn7hrSGg++rBcAy5NthqT4JxqL81sl1DlAusfCe6pPGRDqyWf9DULTXPryGLtiEoAmyT9j7CXPv1/AffiCLx009Kf64cZ0ruorhO2mfHZ++cXaxunr1pUElOBnrQ7ektVDK2ZYiS2+I8JZy09Ea/76V83rn5YWFYjz8f5zCal9n/y5NpqT9jHRfRUyh/JZHPm8H7X5tUCr4ZSrcewDnXLEn47n13I+iIL4+z8E/atXIbj7zLT7pY0IEhVyDc57DHWqcDTWO0K04kjCU6qqbCaZ0idmk1AW5Nb4GVPhM2l+z4WG0TByr19yKsUuE+ev0c85bWeU4TtajVBq5sD4g9hU+VYrLfNm+/3e6IOQFiFPauz3KLqO3uyw3fVaavDfZLxa1X2ek4s3Zr+wjtBmiWHq+MWIUPr+jlZyE6FWi0NtQLSWA5MroMHke+mhuWjApq4TgOMUIny8K8dg4Bicr9BeUxHrg0SPS+pQFB4Wx5Co1xXBXng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(346002)(39860400002)(396003)(376002)(366004)(71200400001)(4326008)(66946007)(6916009)(66476007)(122000001)(26005)(55016002)(64756008)(66574015)(52536014)(66556008)(7696005)(6506007)(54906003)(316002)(66446008)(9686003)(83380400001)(8676002)(186003)(86362001)(966005)(8936002)(478600001)(2906002)(38100700002)(76116006)(5660300002)(53546011)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?iXysYhg2DpHBRvkNR4bbRn9Ym8Gn391qmSvg8Q+cLTuP5tzfUu6Aol/7Jo?=
 =?iso-8859-1?Q?Aeg9T97wH2f7cGR92Lt1x2o4DCKQReqUNFQwVpRjGZvCRtH64DKdm9kMFS?=
 =?iso-8859-1?Q?3XkfWW6nOTTUa4HE3cn9S4w0cuC44M+NszD7M2s4l2bp/Hr+9ApStIcLD4?=
 =?iso-8859-1?Q?ShISvqCaOaTrFQlZlJHvRD4nM28akf0j0Wlfd0EWcjnKn54VOX9g3ZMPBj?=
 =?iso-8859-1?Q?8bNgwOWh1Aa/eY06wpJShJ8y2R6ymQUS052NM3EHixOq7XCAojNW4yUYxK?=
 =?iso-8859-1?Q?AVf6Rq7rcvyTQ6S82cp2dzzW46jnG6YvA2BkoDgNE1EC1tsnLwQZrmo6Ki?=
 =?iso-8859-1?Q?Q7tHwXMKH5qd07ZNE+hiaBjIVBhGnA1QrLrvdlxAmm6zftVPbtZCTRWBLe?=
 =?iso-8859-1?Q?GW4xVqod4Gxoig8m1eyplAiQUAvdcApwgZfA3pNVz5fApRtjuvKsVKOf/l?=
 =?iso-8859-1?Q?3wNUMPiFaJb69vJsAup5kiF9sjFalV3WLKyny8rjNYrueXiJUEhaEogKfk?=
 =?iso-8859-1?Q?56kpV7m/fc9m8Idcor3JoDH5/SQVYBZicqRaavgRR2fu33z6H5o8cKniBX?=
 =?iso-8859-1?Q?sLG+5ZltjLK3ET0N31+vyZmAdIXksYiWfe5K29rHzHwoi2BNmn4yJ9aNd3?=
 =?iso-8859-1?Q?f5EEZoa2l8ZvecSZNbAi7bW1duXkfhx08tfFM64i7lkx7xPuVjcLvLFKpV?=
 =?iso-8859-1?Q?ssHVEu/5bhyX4xfNxnXxElUajK+/KVuvhsxT28sK2+bQ4+fCLjtS1g3lYS?=
 =?iso-8859-1?Q?tHjaMp9eD69XUIOByN+oY62ILzNveiBZ4Nxip9dUWHmTM2+Azc/2+2OnFy?=
 =?iso-8859-1?Q?OXLyTRU0cQsQJUM8WPnt5PMxSZGxeD2FudaJONxjdPW1KCDtPBBfj/n9jT?=
 =?iso-8859-1?Q?c/FuTzY/2qmscHmBmjBilKMMVtn+bf0bbBz8FH/s4LMoI7r1+kYWkPQiiE?=
 =?iso-8859-1?Q?wQKEt7O56F6S4wAHtV6cqunx+I91x27Rs8o0eHUHLv7Rr26zmFwQRaOX4k?=
 =?iso-8859-1?Q?WGFUx9w8RY6baImvIfDlh3m/BcLPq0xsrYzpq9/w0DFPBgMJ1/CBWfndj5?=
 =?iso-8859-1?Q?CJCYgzHFYwId3wNstqQoezyKIhAO+KC9obAslL9WCa4e+Ow/jyESkRXEpR?=
 =?iso-8859-1?Q?TfFB4AZC8XsgdAYX1ITyxRWnarT+UItsV5h37UkP3ZE9ZQSAHk6qUzfysY?=
 =?iso-8859-1?Q?UQ91AVxjKLZcwhK0mQmeilpuuqAMnzl2RKzlXPaUXsQX5xJ+rqckl3jzr/?=
 =?iso-8859-1?Q?P1Ah4JUhp0Qm6mS3v6hiYi2MVxlbq00exbDpg42EVADOwKESS1Tun8Ys3A?=
 =?iso-8859-1?Q?8NGXOO5jvuRNOlAW8CZyPaqsc8SMPkqlWuttQ3kqlsPaTFkgddjLQZuQj4?=
 =?iso-8859-1?Q?iUeJYkTUqt?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 761cb7a6-1cdb-4f9d-0c38-08d92cab893a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2021 07:35:50.2139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mKiJU6mH1QtWghRZz6hw9h1p2KQSJsRCrh+1Bt4pJtNIQUbdWoLGE5Q7VkvZshNy8pdtKvGZ8/TNsyn6Qa+9pe4oHFPqWBTHiwi38zu9P94=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4467
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

Hello Ville,

Apologies for bothering you.
Kms_prime goes through vgem_gem_dumb_create where the pitch gets calculated=
 which is not 64 byte aligned.

kms_prime->vgem_gem_dumb_create->intel_framebuffer_init which reports plane=
 0 pitch (5464) must be at least 64 byte aligned.

We have submitted this patch for kernel https://patchwork.freedesktop.org/p=
atch/436199/ also for the same.
If we try to align stride in IGT after it gets back from vgem_gem_dumb_ioct=
l, Kernel gives error - [drm:intel_fill_fb_info] fb too big for bo (need 42=
27072 bytes, have 4198400 bytes).

As a workaround (if the above kernel patch does not go through) we submitte=
d this https://patchwork.freedesktop.org/patch/435794/.

Can you kindly help suggest which is the better way? If not both - kindly g=
uide us how we can address this issue. Thank you so much.

Regards
Vidya

-----Original Message-----
From: Srinivas, Vidya =

Sent: Monday, May 31, 2021 8:18 PM
To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; Lin, Ch=
arlton <Charlton.Lin@intel.com>
Subject: RE: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch t=
o 64 byte for Intel platforms

Hello Ville,

Thank you very much.
Before reaching our i915's i915_gem_dumb_create, it goes to vgem_gem_dumb_c=
reate for kms_prime.

The pitch gets calculated there and it is not 64 byte aligned. Due to this,=
 intel_framebuffer_init reports "pitch must be 64 byte aligned"
and framebuffer creation fails. I tried submitting vgem patch where 64 byte=
 alignment can be done in vgem_gem_dumb_create and that also passes. But we=
 did not get approval yet as few of them felt, vgem is generic and other pl=
atforms might fail if we do 64 byte alignment there.

Kindly suggest. Thanks a lot.

Regards
Vidya

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
Sent: Monday, May 31, 2021 7:48 PM
To: Srinivas, Vidya <vidya.srinivas@intel.com>
Cc: intel-gfx@lists.freedesktop.org; igt-dev@lists.freedesktop.org; Lin, Ch=
arlton <charlton.lin@intel.com>
Subject: Re: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch t=
o 64 byte for Intel platforms

On Fri, May 28, 2021 at 10:04:03AM +0530, Vidya Srinivas wrote:
> For Intel platforms, pitch needs to be 64 byte aligned.
> Kernel code vgem_gem_dumb_create which is platform generic code doesnt =

> do the alignment. This causes frame buffer creation to fail on Intel =

> platforms where the pitch is not 64 byte aligned.
> =

> tests: test run on Intel platforms with panel resolution 1366x768
> =

> Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> ---
>  tests/kms_prime.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> =

> diff --git a/tests/kms_prime.c b/tests/kms_prime.c index
> 8cb2ca2a9dc3..fdc941fe8100 100644
> --- a/tests/kms_prime.c
> +++ b/tests/kms_prime.c
> @@ -51,6 +51,8 @@ static struct {
>  	{ .r =3D 1.0, .g =3D 0.0, .b =3D 0.0, .color =3D 0xffff0000 },  };
>  =

> +bool check_platform;
> +
>  IGT_TEST_DESCRIPTION("Prime tests, focusing on KMS side");
>  =

>  static bool has_prime_import(int fd)
> @@ -101,7 +103,7 @@ static void prepare_scratch(int exporter_fd, struct d=
umb_bo *scratch,
>  	scratch->bpp =3D 32;
>  =

>  	scratch->handle =3D kmstest_dumb_create(exporter_fd,
> -			scratch->width,
> +			check_platform? ALIGN(scratch->width, 64): scratch->width,

The dumb_create ioctl already does this for us.

>  			scratch->height,
>  			scratch->bpp,
>  			&scratch->pitch,
> @@ -262,6 +264,7 @@ igt_main
>  =

>  		/* ANY =3D anything that is not VGEM */
>  		first_fd =3D __drm_open_driver_another(0, DRIVER_ANY | DRIVER_VGEM);
> +		check_platform =3D is_i915_device(first_fd);
>  		igt_require(first_fd >=3D 0);
>  =

>  		second_fd =3D __drm_open_driver_another(1, DRIVER_ANY | DRIVER_VGEM);
> --
> 2.7.4
> =

> _______________________________________________
> igt-dev mailing list
> igt-dev@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/igt-dev

--
Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
