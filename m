Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8EF51C4BB
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 18:09:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98D8910E7F2;
	Thu,  5 May 2022 16:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249F610E7F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 May 2022 16:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651766985; x=1683302985;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IM0aeN58yHQlwny5vcK0BU4NgdwLdX1n1llvZe91RLU=;
 b=eQMIQKjsydJDUQUe4IH5PHSjU6sbas2nTsOr9WMpt+JXEslwsuQEFB5/
 nFzTTAkNUNvIMl8m3qL/3mRZ9rXVe6LNK040RFYcn9qlglbfbbQkejPx1
 q0xljjPkaW5vqXl0h6V/UlkB5V7xMashngnzOPP9ttI0HuEd5ZNbV6jDf
 cudxEMZyUh54V+NEnBZYkwR/Tu2wsdic1tKqeGKxfVjC/HrrE1nIXmWNK
 jZYlBpiAApxVLCRtgAuiN3rT70TyF4NAzHdhAKTBOIb7fQWC2rFjfk+fY
 9WtWciD1D3S11gL/aYUR77FcuJtxK8FClxpp8QWig0YGjA5x83NOCGFGi Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10338"; a="328706375"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="328706375"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 09:09:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="537411718"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 05 May 2022 09:09:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 5 May 2022 09:09:44 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 5 May 2022 09:09:40 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 5 May 2022 09:09:40 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 5 May 2022 09:09:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R5xlBXPnHMhdmn4Q/6m7boF2usFKmc54G5QzUb4fPyhFOJZfww8D9Z6ffJZjfX/rh7hkoqLBzdZuSDHGTeJEFT2TbsvGm1SfkK197DB9n2knTw4OqbycnwCUhM1G3KwZY+HcOna8GHoWeAhd+iFd6+eM7d2+K7SxRd8+ocdPZx75XuiZ3k+OsqQnP8C1rZQoR04uKUuQAK/Qhbzk+bwLgsWFFtBrEOhWuLyI8wpiSq5qSSzZ3uVH12qp6Wj6+Xwl2W6+aegXEOG6QdTYuYqLgq6zWYZ/afRAUuiPnWxw6OKQIuigFyENBnQ0Z9tiXJ42Pgv7dGymKvQ5rvEOFVrD5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IM0aeN58yHQlwny5vcK0BU4NgdwLdX1n1llvZe91RLU=;
 b=RWm+7CB7vl46m0O0kxSw5QzwBPAfpLnEnrMZEO9hXBTKGQxTeA4LBU0E0lmsVUC9I8QbRb7DlbYufe1hi8b0C8cQxeQDWIGgLfTPEgmXGD3E7gyIFc6NMMhdRdN930EZWzl+qGPr3jVHF6yjyZ66MEdJ2qHEHro4TSs+VobPZT/LG5oHyw/2vVzh6lqGJYMpHnUGa6PDKlQtHtDgNNxUktBEGXWzRBr7xz014n1Rk0w8iIB/28Mh0+8O3WJohv+KsxN3VW+V4AnqhHQMApu15vOF53oJztMImFuMjwgPqGO3/PnppbrWMS7guFBO2SUU8KydzteB+aQLNJLpVhp0zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BN8PR11MB3779.namprd11.prod.outlook.com (2603:10b6:408:8a::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.25; Thu, 5 May 2022 16:09:19 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::dc18:9af3:5549:4d3d%7]) with mapi id 15.20.5206.025; Thu, 5 May 2022
 16:09:18 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Support Async Flip on Linear buffers
Thread-Index: AQHYWWXWrvMGjms3kEmwnEgqBlBTi60CgGEAgACO2+CAAJpEAIABJquQgAsQsFCAAIS1gIAAG0+w
Date: Thu, 5 May 2022 16:09:18 +0000
Message-ID: <DM6PR11MB3177D20CE483373FA770A422BAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220426120407.1334318-1-arun.r.murthy@intel.com>
 <Ymg2uBjovjgVAyC5@intel.com>
 <DM6PR11MB317721EBFA40865B0898F40ABAFA9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <Ymkv9sCuA9SwUIvj@intel.com>
 <DM6PR11MB3177FDCC1F636934C2650DFBBAFD9@DM6PR11MB3177.namprd11.prod.outlook.com>
 <DM6PR11MB3177F94FBFC7A99A1BD4A2EFBAC29@DM6PR11MB3177.namprd11.prod.outlook.com>
 <YnPes/sz/l/MmnW0@intel.com>
In-Reply-To: <YnPes/sz/l/MmnW0@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.401.20
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 515c03a4-6a48-42f8-46ba-08da2eb19bf7
x-ms-traffictypediagnostic: BN8PR11MB3779:EE_
x-microsoft-antispam-prvs: <BN8PR11MB3779CAC6F162C82D57FDD3F7BAC29@BN8PR11MB3779.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uEV2Ai0GRPmepI2wW2IAzOmdl3rAf9z/VvCTIrkAMtk4GAk0cFygxRSCEMpzO8wdrrzvP0jZFqSlPEXKDfIfxJGaFnF6VGfyeUpiKKf6RUQ8L9xqd/8jI61VgS9yLLxDU1lU8B+Hay3nq17nF3bwyB7el1zOsNKs9HIVF2Eh6EkIfnsYKoiu6fOmJq+useNo/OgUbgoPl7gpqJImRYC7+u//OHy6Lr/7IW/7/WyZemd9giUh6SwAUZRXZjvhZht9iaZst3bOL8ltPS9DY8uockZieQHLXpAjT930b2q9UMkx3AZf+verhJwhzb/LdKmQMvN5+Qa3GGYAvv3jOVeFKSVbXX/ve/9qlMkaKXvHrPaZRC7pxI4eOg4lRiSv9Fyj4io7cvgOqcN7MpUBseZpd3hw+0DOigv2ntifoyJz+y9gC7Fle4RppdXiH6tnGfPvWqWvX1Zo+ll0tBVvZQ04z2kxCMC75fqSecsVrZa8ve8KdZ6ub0dzKvVJEL8jymszad3ujl4c5Z9pu9vPvXo0MZgyZSV0IZ/GG5/c+U9hylgxTNdVSUJh2jPGIaBp2PIj5Jwb3Rd41KMAvY6i621onlR+KPrLmBUF7Ll7Oo1wCwx0r+lKj2NA7lW7gAcsaa7tCY2RQtkp3Bfix6YCx9iZ3MRzRsDeDbB/LWUUZYtJiSbYZuJH9ehH7hXOLXDVktll5nez8i9GOfMJlv/FUZEmeg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(7696005)(83380400001)(6506007)(55236004)(9686003)(55016003)(26005)(71200400001)(33656002)(508600001)(186003)(4744005)(54906003)(5660300002)(6916009)(8936002)(52536014)(86362001)(2906002)(316002)(66476007)(66556008)(66946007)(38070700005)(76116006)(122000001)(8676002)(64756008)(66446008)(38100700002)(82960400001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?KaJKWHye8DjcLIQyxZycbMgf0rV6oNzN9/wKW1MmknVWdm/QoX8xQzsWqJ?=
 =?iso-8859-1?Q?F4Rp/j144CEimoGLIK7BjiKrUQmU7BiU1osAsk7YXhql3fB9CRRr2qm/uT?=
 =?iso-8859-1?Q?7K4GcqjQ7+mF4ec329ymfsgNZjBZoouNi2b/lbcSbTiLdNPyMsI9f3MuWM?=
 =?iso-8859-1?Q?m30ycZEDqhUCUGr6coTrHohfNJrDFjiK0U+vRF5TfnjQ83t+62Aqe5cv/l?=
 =?iso-8859-1?Q?KMRB8AJFvXhNucEUk6LkxELI4bRAG+95AQoQDmndbYx1hVaZSVFgD8Yj0q?=
 =?iso-8859-1?Q?hNWBOXzOFdh/KBptga+OBhlnq0J82idu9YK8vUlJmo1qzSopiFAVt8DMeK?=
 =?iso-8859-1?Q?a8DTjAzIfqllHNGBjwKjCo/Gl8g/8gvoPprxilrJKMM+n/37pIA79nz8vy?=
 =?iso-8859-1?Q?hPppgjdruIN2fSZ6Upgf0/QSPBo5BhqeXVEQDkwcZPbvj5PrE9UStEAbwN?=
 =?iso-8859-1?Q?QXBG9rHib1c33ohLucdGJoo6BT0lFywK1FCSkb1OShV/tETtPN+lzkrNXh?=
 =?iso-8859-1?Q?JkjacFszvee7Ro0rJ3qL5OoLvzBqkweA4nwJhTesd9HRgYWOMPvFO0NIuW?=
 =?iso-8859-1?Q?a/z6kuNfdylO33LemgvgbgPkgZGgFps3XZlBsFTN1rnTLpML3i6dr6lr76?=
 =?iso-8859-1?Q?QkDk+QWipPerAE9lZxOOLbD19dFEBOKProLVV3nyu33pDYRXBiUNZmYld+?=
 =?iso-8859-1?Q?LsRWZC1H4ahYgxfMTkpky8hUdjKfCZNKfWmpXTNJAnQnNJnXwoVzUQedhX?=
 =?iso-8859-1?Q?Lwpt0cCWgGp4L4MEdcijU09ILcI6GkxQdah+3RLE6U3LxWQ3jdINCyujbI?=
 =?iso-8859-1?Q?6FuQN+nhf1dKaQwbV8Q0NRI1dSHmkSW5rqZffuONJFHwjCQCCuAHPXyx4Z?=
 =?iso-8859-1?Q?hXC+HhTDKYaNqWI/i4DIGf7w3FXNsqj8qKMjuoBQw1LadWS1cPCAPtWGZz?=
 =?iso-8859-1?Q?gQG0HyBC8X1T2de4VnviDE4r6nL0qnK94aID1IZFZKAWDvzw9njL5NVcW+?=
 =?iso-8859-1?Q?/dZRltB9uAunTid0RqPbsRHqAYJQdQWddtjqPdknyZ0I1pu9/0kiqyCGmT?=
 =?iso-8859-1?Q?WOcYXgfD87Rf/hClawmuqcB0ptDSRJiXs03dHla0vBQPOZf0M/BjjaJG+q?=
 =?iso-8859-1?Q?9t3R0PxgPnJba4fdqT/qF5VOQkWjnkemf259GwY5/WOmvUSaCUKAj7wQns?=
 =?iso-8859-1?Q?rvhYlsDlQp4hPFXMtlGdDtIxPfm33H9+fCZIwwqb5Ko7k8+3wNeAb7KLBb?=
 =?iso-8859-1?Q?gspbjC4wFh6cxA7iswIA9APh2pTXYir4p3kllEUeJ5oi2BHaM4x2C8A24r?=
 =?iso-8859-1?Q?4TFPv9WNzKpuj9tIgXknVK77yPFVx/7LbQE18vs2Uf672DeDH7D+oqCM7O?=
 =?iso-8859-1?Q?st5GW4yz7W85XXuZAPBlvjsYluj6S6NDtQ889yMcI0AlcP4jnSEx6iFjO+?=
 =?iso-8859-1?Q?Ozebd3zq5iFkkizYWxKq2GdbjKTpQV5nrEawsF0bbCQ4CUJliWQZwfy3V2?=
 =?iso-8859-1?Q?c4TtF4jy4juHJdekdW8Ka8oKuczvOtFVxb5gPrWqsbYgHTzolpiZMkPTZO?=
 =?iso-8859-1?Q?9WhbZs/ExMoe0FsKYpXVthcgBNxRMbQ7Uo0va2uw7EJ4wqLGteJqkLHTK1?=
 =?iso-8859-1?Q?xwZNQUFeZqB7441SAZjeFkNaBoCoH5NfqofG9uC6m5ph8Iz8RsKoMgyQIl?=
 =?iso-8859-1?Q?3UpCIaZ5lf4oBlE841MQDxCTIj5021wOGD5yUy1hlzf0GHt3Ucq4Qm1upE?=
 =?iso-8859-1?Q?mvXQDidlFKE8XMm1BaD5OKhk3UHr3fDXhBt0CbXzDS7ljBbHXNamgh8Qmp?=
 =?iso-8859-1?Q?Pf/yyaIqiw=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 515c03a4-6a48-42f8-46ba-08da2eb19bf7
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 May 2022 16:09:18.6797 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c/kB5SyES/g0lx+BG7glkw4ffRhe4MTHhRgB6OYbdzQFVoQcnqQlhKQH6IZClVBh+2YJEN2bCGObThGVIJn53A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3779
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Support Async Flip on Linear
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

> > Can I have your Reviewed-by for this patch?
>=20
> You didn't find the GTT alignment restriction yet which to me syas you di=
dn't
> really look hard enough.
I checked in the BSpec and also clarified with the hardware team on this.
>=20
> And you haven't answered what the actual use case for this is.

This is a required for one of the platform and has been
assessed in JIRA.

>=20
> We also have no tests for this AFAICS.
I have modified the existing async IGT test case to use linear buffer
for validation.

Thanks and Regards,
Arun R Murthy
--------------------
