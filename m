Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DF473961F5
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 16:47:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87BFE6E944;
	Mon, 31 May 2021 14:47:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F4AF6E945;
 Mon, 31 May 2021 14:47:55 +0000 (UTC)
IronPort-SDR: 0+gksTA+UD5k7NL6bgmGitBP7h026gaMdh5ndaKi6GT3jZYRu9lRDD2wUfSo6yXYpxyXW6XA6X
 NDUfwPwsJeeg==
X-IronPort-AV: E=McAfee;i="6200,9189,10001"; a="190485350"
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="190485350"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2021 07:47:54 -0700
IronPort-SDR: TLVlpkRlGKsclhY9X+7r8YoOIRJVBc4gmTV3EtIt1wDCmDVBUGSb0UoNUqC/C/yWjubsOzqB/P
 dyLGeReoHTfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,237,1616482800"; d="scan'208";a="616553595"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 31 May 2021 07:47:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 31 May 2021 07:47:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Mon, 31 May 2021 07:47:52 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Mon, 31 May 2021 07:47:52 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Mon, 31 May 2021 07:47:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPllyZ6TVMPI2/tNiTOvExh4x4j9kKITiLbK7zeTz81yHwaMrLmdXvkKD2gvpuwc1igKiwq7CnnqzWT0JcdmyjvJULmWW/RxkzSqQjoahGS+9yzYIG469i+ckZiSyM56WUmPyiegv3YkDuaRWCGmgI1bZJy9w7r0IceusgJ1fw0CFdgn4Pm0qNmVgHmEicegD1o1bVyODOciLuIjHb1TC7TuxMI02R5sICP0JL2qRTSKmw6gP+elS8QCG/eQtGaCREg9Z2yBv/V7W/nZRY4Xv0jHbbr6O44gvgUEMBBqgQauUeMWsoE36No2izgxg/AnLj69C7HHHucoHBFQd3sZ+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V88KndAd39Ui0v3meRt5JOHZrzfUv7IJRRBRK1OFIfQ=;
 b=FOfEkgl49ExOC/nQuRRZz+0vvs5QTCwHtMAmNetWNE7F2Ck171ozNwCfEqP4uWETsVAbFRT26qOVqH3uXbbF57cWBoAYDqGUGTxcOX0yrocSSDF703vjAfcG1JCrrwrAGXmU4+J2GB5/hwNM69yNYHOpGMvA2KVPGMLOVTwwyzweMSdXp9RO9dcl0YTU05EPrJlDmPwDaNptnubkOGGB8eXBuqoUMV/w6sA1s+nzOmWqxdSC73IpCLK4kO61bG4a/XFWUidceo7txVNyKnbbrSXeTwtDLwWrfpEvl4mdF2b2i+rbkocxKZUT1F5pQ7ZCgfaiMNxQG7HvX1UVLjfkQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V88KndAd39Ui0v3meRt5JOHZrzfUv7IJRRBRK1OFIfQ=;
 b=x4GMcnLgwz8Y0Z8s24O7O8gUCU4AmNaJuB2jNjSo39biRI3K5/roeUoiL8HtjHePhBVk1jnKhLr55WqaclXBkKbNmQPNrTAHhwFvdaRLSTTDGxORgxtSx1y0WEHNGwnM1j6JQL8YjhMezwncNmxqBxefSNrFPjYbR6SpOXM1ovM=
Received: from BY5PR11MB4372.namprd11.prod.outlook.com (2603:10b6:a03:1bb::25)
 by SJ0PR11MB4959.namprd11.prod.outlook.com (2603:10b6:a03:2de::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.21; Mon, 31 May
 2021 14:47:51 +0000
Received: from BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626]) by BY5PR11MB4372.namprd11.prod.outlook.com
 ([fe80::f1e6:d3d4:9f66:1626%3]) with mapi id 15.20.4173.030; Mon, 31 May 2021
 14:47:51 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [igt-dev] [PATCH i-g-t] [RFC] tests/kms_prime: Aligned pitch to
 64 byte for Intel platforms
Thread-Index: AQHXU3wUP1wR5ZwOHEeqEEBbEw3F66r9qGyAgAAGtjA=
Date: Mon, 31 May 2021 14:47:51 +0000
Message-ID: <BY5PR11MB4372AB95A5AC6DE9AC0FA552893F9@BY5PR11MB4372.namprd11.prod.outlook.com>
References: <1622176443-12682-1-git-send-email-vidya.srinivas@intel.com>
 <YLTv/Z8j9rCf2koN@intel.com>
In-Reply-To: <YLTv/Z8j9rCf2koN@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [2402:e280:212e:21b:55a2:172f:5c8b:a7de]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3c929f1b-f750-4b63-0d6a-08d924431100
x-ms-traffictypediagnostic: SJ0PR11MB4959:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB4959CFC2B2D14B8ABB629C0B893F9@SJ0PR11MB4959.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1051;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TV3I6LNmXTZ3yAFkNLOljK+viNxPzbFd58UzXZz7FN2iLUzmdgUdiHH1f9+0gwYm9BY2xdYPPe4zRUltXYzggdxNuUSmYCuJMj+MQHdWzSldelMQFuimovLHljtsNvImxuCZc+HJyF17EfLNsENenDRd3rUNSv9N0yq5esLxx9HRbTtV8/Bq30rytgO4G5TAMIdXschDpgCWqOjHsT/CQyIC2iixWFMH0RhoebBlIJiEnhv2DFeAH9YU5YXJC/z3yyfDRdft6cqjuPDaSr9rySQQDbi3N0C/awrVUfmNxbU1ljVM4ymoz1xiIcpySaXPycpHyRcjIMtWMQBOT9AfLSKlUP7cOcZwMpU2bdJuU32UcNj/52Ql0EBp+GJ7ggcgTPV2mw2zdXD0EhWvLB2A0ET+hts3CpAIugRQ8d5fUOmd/uk8jRzJBXxx0N3YU9SZ7rqOHQGC7qrm8tXHwI3tGtsKYH1SDtgWsT0gS87VQ52CcWuBxfDVIs8DBzBc47yWc8iGQe1TuQQ36ATD6UGChkw84NhT/kPkPO+rsTvll5ew3x9ojcz7U+biAiUeB3txBYmglYqb3BpnIsShCzcby/VIjrOvTr9fX7MADJSQM2yJVM2GWCOm5sYpxoFJGqW0s2Ytldf0fyD/uKC7tJ+qZQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4372.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(376002)(39860400002)(396003)(366004)(346002)(136003)(478600001)(71200400001)(66574015)(7696005)(33656002)(76116006)(316002)(53546011)(8936002)(52536014)(6916009)(83380400001)(8676002)(966005)(66446008)(66946007)(64756008)(66556008)(86362001)(4326008)(9686003)(5660300002)(6506007)(122000001)(66476007)(54906003)(186003)(38100700002)(55016002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?iso-8859-1?Q?JFJIzei7nKO9dXc5sS48S2fjZ0P1BNsj5mnTBqwGyq96/HOYjufgTcfS1K?=
 =?iso-8859-1?Q?xbDsx4uV2zvEUpRkOQtPXlzHhJ7RH465j8nHtoM6UGpbDyYWlollDi2S9Y?=
 =?iso-8859-1?Q?j0hMuW3gDRM1DfBhXWysIqZfhyYhcwwNmy6vFHbyqBK1bVRblNSttHMPTg?=
 =?iso-8859-1?Q?Z9TaawPCgZjlDTORQpLpDgFHeNhUFFMXrk7sfaD5jG4Q3EtA7PgeKHdLsw?=
 =?iso-8859-1?Q?vVYn769Li8rebzqtRdbJ/sh/JVUFxsAMTiQeSYUEfffx+mPBQY8Sbt7uaj?=
 =?iso-8859-1?Q?yeZ+nRhO7cDCSxNuUZgrCMW5giwd1Ej+RxaIwN2ZPXjq0gjx9mJbwftjxB?=
 =?iso-8859-1?Q?1OrXunBW9fVMK6hWrnW+52tjkJCD6iubRrC8F6tMruVKYcYWGxfdXZpqPY?=
 =?iso-8859-1?Q?H/Cvg6nE/3NeKAkrs/C2MupF5TiRYuvTj1RZvh++Q3tcqNCblsLgKC8kda?=
 =?iso-8859-1?Q?oSRc8oh/xK5MwKe97YNfLR/w5MvqDShO+TsbcTtPmTgIscnWtgjCnPZd3l?=
 =?iso-8859-1?Q?atLvBP9UIIPSSUBiQffPk9bhGfMbJrNSU9Z+R5v1AMfBBxV/q0yfwelOqu?=
 =?iso-8859-1?Q?vcJcz5Mnr2Afkd80u6K/fLhawlAtFFH3ulb8/gjFMNUCJ5a5flS4SWQcUX?=
 =?iso-8859-1?Q?n0WGT0fcfxHm79zFGB1bMKb1+sRXLaYlDeUotdV824ntZ21Mvy3cA2I5OK?=
 =?iso-8859-1?Q?QbHH7QDVun3oH3k1HIUZmzcgAhWFPdgXmmElI+S5axkB3Wdh64JuGMi/Vu?=
 =?iso-8859-1?Q?pvtDvSovXv3Uo+zkRpIdrBiY0oXbbzpYCkREUikCWljlUV6VmBRp8X3LF6?=
 =?iso-8859-1?Q?QxGkSC3NTSg+GpqPZpnpmOoKPnixeKvAb+jyj8z6Gd3C9lIdP+5NRo1GLg?=
 =?iso-8859-1?Q?wCWui4cbnqjAI+dJAGmifq7SJcbXwqQBlTQRZb7IXwsg+/7ZRkIK30U/AK?=
 =?iso-8859-1?Q?Sn6YN1fyK54U/oNNo2zoj5Q4gLTSjJQz0NbjJaxnUEF+Mng7t8TS1jpQ8F?=
 =?iso-8859-1?Q?K4Tbo0TL44JJwd7TZJpJa4jGGaqvEO44aWqzMDt8+LHEMTVWaSdrE1GjNM?=
 =?iso-8859-1?Q?50wBaMl/WBqeFmaKWNmVnUXn8uvV32odLDzg7fzw7pCS6OHCWKqmJEebZM?=
 =?iso-8859-1?Q?XQ9yaDNRIRBhQiyDJ3nDa9rLuLFRfHZ+Q8j9tBCWSF6qCXzswdFN4RDLCT?=
 =?iso-8859-1?Q?P01SAPY9bDZsxBCuBIBswyua/aPK9lNWvhMAryskzvwPiY6vyGvegUIRGN?=
 =?iso-8859-1?Q?A2MuCE0s+q/vE0SqM6uioaNrBw8TbDD3mZLKON34CTInrPSg7lGn6NH/gy?=
 =?iso-8859-1?Q?CdV2cn3RsXFZ2E9Pu2JONsbTyo2Qu9SnsIq4E1fsH3xYPOalwMLjJ+ucui?=
 =?iso-8859-1?Q?koL4hGUx0ilxEtTLKxWeKN0PAjGV72BUP2drIqQ3dICb6ApFfkPSfGiZ62?=
 =?iso-8859-1?Q?eDKACinON4RjY9lW?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4372.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c929f1b-f750-4b63-0d6a-08d924431100
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 May 2021 14:47:51.5111 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9nSDyrwrLiLS0ESubxOCyjIcpgD43bMNwWD95NWw7KsIzxrPiVhvcwK5zw4r8cVw900r1KMaMeigOEDd/4vjUB9cv4fPq76+pt9wbWznEfY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4959
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

Thank you very much.
Before reaching our i915's i915_gem_dumb_create, it goes to vgem_gem_dumb_c=
reate for kms_prime.

The pitch gets calculated there and it is not 64 byte aligned. Due to this,=
 intel_framebuffer_init reports "pitch must be 64 byte aligned"
and framebuffer creation fails. I tried submitting vgem patch where 64 byte=
 alignment can be done in vgem_gem_dumb_create and that also
passes. But we did not get approval yet as few of them felt, vgem is generi=
c and other platforms might fail if we do 64 byte alignment there.

Kindly suggest. Thanks a lot.

Regards
Vidya

-----Original Message-----
From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com> =

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

> diff --git a/tests/kms_prime.c b/tests/kms_prime.c index =

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
