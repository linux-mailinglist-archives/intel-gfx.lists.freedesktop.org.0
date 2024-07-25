Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00F6C93BB04
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jul 2024 05:00:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E01F010E228;
	Thu, 25 Jul 2024 03:00:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KMG5WFsT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 564B910E228;
 Thu, 25 Jul 2024 02:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721876397; x=1753412397;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6FqM17cSb7GTfDfaYBmzeJnjuOZVCxTo7tRur59Yu8Q=;
 b=KMG5WFsTcXqYxXcDDtHFdyZqCf+hQwP/juqKF0fInKQUZZvpHoTkgvDu
 WqCWBNk5pivhScWr/Y7ODNuP2qEK2A4H0Nl2IwL9+NfIz5IcFrLhouKgt
 XDidbbdTQ/eRIhKH6srOQr5N5V/CFGEn4gUsFpRo/8xdmJFdbf0QGnmqB
 MI23XzcJZ8o3L9O4GgP+gFNsLRIdqEMQFFYLkGxx2g4nIpgYOj7oPMFum
 swp+F/e4S2ygVOKRfUrMBByD7sR8By0g7vAH7y7ANEbgTtvsQ+E7LT+ad
 3CV6MdsEmKnFN2utEnaxo3pnj2CVkauyEg9nxxX+L+g2H6lRVrGVgyfcT g==;
X-CSE-ConnectionGUID: Wt+audUwSBybxsvM24fcmA==
X-CSE-MsgGUID: GCtehi0ERJ+7k7bTQ/D5zA==
X-IronPort-AV: E=McAfee;i="6700,10204,11143"; a="30210164"
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="30210164"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2024 19:59:41 -0700
X-CSE-ConnectionGUID: 2CmXccKsTqq7g6vqxWEDlA==
X-CSE-MsgGUID: QLa23ChSTa2r3sRbhs4A+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,234,1716274800"; d="scan'208";a="57915131"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jul 2024 19:59:41 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 24 Jul 2024 19:59:40 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 24 Jul 2024 19:59:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 24 Jul 2024 19:59:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mK5hlmsw/yV8852+4prVBsoGgGiOmrp7IyfpxZmTNVBI9HC4H8Zplx7GmjOp+vSySeMjS+hBWTNCLBMR2DXlVM+kn1bnWtzFMSPeC7HvWgGy4S6aMjf49bABpyIElQPJDt5+IR9UmG0bdi0fexLOViB7j3f3A6AbbONo9Gd843iX10aHgk8k67ViGDRRAJuPlAuZdC1Cq/8ddudHRGZ/9Fgwk8SjjNycN9FPN2nnE9ghaSmybDA3uvlT13OxVcqnEnM2CeMhVZXI/CR0veNTtd+8SI4D95JZlN3ZaiWynLJQH/WqJ/c8nKcb1CXPn4evtwOeg6OM0Hc+EfgXic/+FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MiFV1mRp2MT49AcZqEi0GdMmq/EYeGV1fTp92bCu89U=;
 b=k5gXf5a06g5tz5UzKlPagkfypsWBMMckBC6c0fyJJi11rTNFRPpwxf/KWHZs9cfx4iKh+9t/CkRICuuxQirKSXrhWOJYyI17mNklCGq38c6GT+yj8zX4A3QdMIEP5xTu/Put6osM3CmMglx3C1fJO9Iq0XXopEZZylZZdZ3o5ZMjmkB25cTF7H+KjkVnbvu5LAumyY5mbDDpVvtJ4eFVGc1zfm04GgneTWP0+5njsYwD4JeVf3ZAG4aQZ2puhBQVV59X/MkoOAf6Mzzc+kx1Dx9EWNuHdHZZDFIpy06yAPFs7f0ECbAe+bPjHTDFk0ES0/qS6FsX9MdOZqyO0EU9tA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by IA0PR11MB7401.namprd11.prod.outlook.com (2603:10b6:208:433::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7762.29; Thu, 25 Jul
 2024 02:59:36 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Thu, 25 Jul 2024
 02:59:36 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>, "Shankar, Uma"
 <uma.shankar@intel.com>, "Garg, Nemesa" <nemesa.garg@intel.com>
Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Topic: [PATCH] drm/i915/display: Workaround for odd panning for planar
 yuv
Thread-Index: AQHa3cpeOsCTahR/20ygsMUYXK3FrbIGGHLAgACpN8A=
Date: Thu, 25 Jul 2024 02:59:35 +0000
Message-ID: <SN7PR11MB6750F8EAC34D5E3F8B124F83E3AB2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240724130607.944085-1-nemesa.garg@intel.com>
 <SN7PR11MB6750C83CBCE7C661FD887D71E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB6750C83CBCE7C661FD887D71E3AA2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|IA0PR11MB7401:EE_
x-ms-office365-filtering-correlation-id: e6e5cb67-275e-49b5-8a5e-08dcac55d11a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?ZtlI6Ih55KvnhHcHc2m/HDjiQKPmJHcFjS4U5jWykHY9x2szJ5hu453Gx53l?=
 =?us-ascii?Q?/o0dnGOlsxWCBXitah0/dQrjs0J2aFNRmmtwvlMlYLRuyXt6esZMtcEF3t1n?=
 =?us-ascii?Q?PPjVcLZqVNL/9EMSbHxcsDV7Ft/Px9w0NpM7Knr1yGQPRixR3h1DByLM4ALS?=
 =?us-ascii?Q?AJzt6GHSQIJxXpYtbcUPWH20KZ/49IrPfqXng1FTMpJBy617J3CfxkU4G1kH?=
 =?us-ascii?Q?ZmuUJm5jqkLoqT3HkfSMJhCGG71I2gOlDA+32IzoyY2SEdjzYzt8ZOphRGaq?=
 =?us-ascii?Q?GQjZ+tg5DRa0LMvhRveXO8S3VLlz3kBNrOzIxvOOXOvWadnegT76kPlMdfV9?=
 =?us-ascii?Q?EDMnbpdr8saulr6ysPQsabuT16TFj0I2Y6qqmbx5DkDfAlJRwATQatLK20ky?=
 =?us-ascii?Q?Ln2VfO8/u1YOio6hqbebAfA2CVtvt3Wdl8UxulCMhUyY8nY9jtcGA6i2Tl+2?=
 =?us-ascii?Q?VBzEqNtocDM5xDxOrwe6sWJnRtdsjYnLf38OzHN5+nz6BVlMYx5fQw7w+AGK?=
 =?us-ascii?Q?Oe3hig2/iysOmEFJn2K5EcSL/kFoL43MHyXFzeFnv2EcGqIEH8MEKlU2GRsE?=
 =?us-ascii?Q?T9ITUSkiWf74oNMqq9vf9mg46wAChMShXIzE8oUd1b0AOpvU9mhtM13QAKLj?=
 =?us-ascii?Q?3l4eirAsN4hY+pU234dG3ayXVAjPD+rdj74SBAXXtEIQ1BrEMpQqCrgRI3DC?=
 =?us-ascii?Q?8+yW1JzBLwuJfch3J2q7kRAVhXrFqV48BtRYXx+V5oitwyI1JjeWl6Q7V+aY?=
 =?us-ascii?Q?WQaOUNGzn2uu1K2AGt5pGgJ9JSvDPACnYa3DQMjQxwpOZ/qfvUSw9mr3OTvP?=
 =?us-ascii?Q?YFd/x0tSvoUrOFlvGuRPIvYbInVqJI5e+yAp0M7/Qoh9WewVm2vc95RD4D1L?=
 =?us-ascii?Q?miwRBi8pIRwFTUYYmMNmT6FVsEgcsY4zmbz2YMqK24Y3wXue09QsmRA7DCBf?=
 =?us-ascii?Q?HV8MEMbgvQDgI4HaYRMmqBAJrxRQGF4qOgBJkz9ED2xxWrZNIbYZaFfN44ld?=
 =?us-ascii?Q?bx/qKGsAGYSswzfhe/cfD56HVMskaIo6/NMTY3CkwlBuW3VjdN08v+lPnuSw?=
 =?us-ascii?Q?KhMYSSlyFNHqBAwBs/nH8IuZoHiaLEtHfYboqCFxOlsA/ItRiOJfADFZdyOh?=
 =?us-ascii?Q?xd1hCHmIEHxPC+oxyOWjB8mjd60vrRYQuFBVlvJ5E1/NSqe0nFvPao6wiSOR?=
 =?us-ascii?Q?Hf656MEQ0GGU8QNdO9aE8ycoEi0x7NOeEMoe9ykgE62DWLOQvKsa/lcopy6R?=
 =?us-ascii?Q?v4hVi2oyQ2DFxVzwc4EAxv8HQGTPDBlz3LhFdfAJG9Fl8tmb8FRJZkZEtlx7?=
 =?us-ascii?Q?Twi9L4d7ueEPb1xa+9CGayqO1E2jARUTw/yQ7ChwDFujZccUlKZl4AoA/Fq4?=
 =?us-ascii?Q?kXozkjuISY+FeoL++QSPuZzZeuQ9iPg441FjpTqQD4HYhl/feQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0FQJkrZsCt46JIgPXFtEPKfS9cb4sWopGf6UbURbZNR00q+RDsHnv/DU3mXh?=
 =?us-ascii?Q?UT1tkxVX0oAT/Kd5564BWmCXd7LDBnmBuoJ4WIXlm7O4y0YbkeRYnHMgAWqx?=
 =?us-ascii?Q?xvdymq2LkmU0SnEhfCbAQAZ2iyGqIm89rw2Tk4ure/zzZG/BY3nJC5Y0qSWe?=
 =?us-ascii?Q?Cn6CrAg8akYCeNH+IXMVRJXt1V83UqPPnEQ4KZ8tW9YEj6CSYCgtko5YyDmN?=
 =?us-ascii?Q?Txu62d0JbbrGY/WkKKK/AVoKcgScC4rflvTRyq21iQFIbbcfuQpS8fG1nNRb?=
 =?us-ascii?Q?WMdXENto6/k9q6YKjpVcnaq4RsFF3S79YE8+4lf+PYJ0ytdWsNwTPTE1/jD+?=
 =?us-ascii?Q?+fblsR0mgMBj9Y2KaO+EfdUT2SLQ6w9BkNFqWTjgIq9ISduB6/ESE/AE+h9S?=
 =?us-ascii?Q?+AgHJ2CsGLkALDQKAWvRtFeV6Nf/PC/vApn6bVBgpOYu+jaggxiC7dOMSJFn?=
 =?us-ascii?Q?DIkIhOkpHebPyk2PwZhJJXl6aKFirFJLzaS7XKfqENxj4nsG0pip1xKtw/xj?=
 =?us-ascii?Q?JWVsGJ8VLzKLrlntQK6ltNme3G5GWO6uSM+s6bs2cUhY2iBfngauJsOEUMva?=
 =?us-ascii?Q?kU1GlfpEU1zoa7ySY+a+nNsw690mKosYF1SYUQo9E7B3fhMFTg3tOOPZG6eb?=
 =?us-ascii?Q?H3i6MYI9HiSYMpDc+n8xAUfY818I6nxzlPhgEIvSBVqOiH/FlnO49GMxJfaU?=
 =?us-ascii?Q?+zYYEO/rtxQ3x5JKC7F6JZ19MlWBoLM/3SwDIZ3CJ7D0bEi6L387EhVzE3X1?=
 =?us-ascii?Q?dm4yVWJKoLmesHnFNO6tzLC02pjQMZfth9YpqBENcAJI00bAlBfxpUZYTRDg?=
 =?us-ascii?Q?qDpUfQkKhFEQZoc6WGAC+QKSDDlPR0jDaIpi2J/WN3H/JXJc1jybihfAfE+i?=
 =?us-ascii?Q?7J/5YF+qJ8KDGtEet6xpLeL/eJzMAF4mw3GzazxgueUZOy999SIYY0OH9wMA?=
 =?us-ascii?Q?Pczh4Q0faJ3cMiB6uCut6agPWlO0O7ToBmBFzyIz9Zzcv+yTGHqPHFFed16H?=
 =?us-ascii?Q?YY0RnPNCIT7SaRa8KDFcmxkVvahCw6JLnLntucMBYtkSp6Eu8QqEs0430325?=
 =?us-ascii?Q?XpXDUke0CTmLOKVid+pZbiHJcZ2LtwOxOOQRVOT0WSA/QPDeFQ1V9hsEaVBA?=
 =?us-ascii?Q?Fk73S/H5ld56iQX0yQ58IfJjr5bVItjVcHI86+eHSlslShiHhyj0qz5bEkND?=
 =?us-ascii?Q?ADK9djJfEV8FeiacujLrXS8QSjkVQYjVDWr4T6UdCguKKNmJtBKZiTc0KhVj?=
 =?us-ascii?Q?MEljdiGHnMUq3FEzQqORyoaqEwnPbFsF0YN/YnO3tql+5ws0zf8ZC24KX2A7?=
 =?us-ascii?Q?qpM+Y6tBC0Yoxg91nj+SKS4lwpe2GG7oW17e+h+yMEo14HnywGS/pXAdFptJ?=
 =?us-ascii?Q?PUarijhWwb07QDn0TVObrmjg9NS9eBOCImrQBjzjbdjIFB2AzFrfCoDtkEs3?=
 =?us-ascii?Q?4ZTIoigdEpyJXwI5zmtYShiY/vFrKQewLepBC/7s3twUyW1G4kjb83tK0GkZ?=
 =?us-ascii?Q?qsoZ54wqdmnIyEwYsCAfu7JETfz+x/bGJwX5ocgJPvXzNyywS9OcjhhlIUtw?=
 =?us-ascii?Q?/6yM7LJBCuj7E7T2rJKU83ieaZ5XVEXDMZZMQKwF?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e6e5cb67-275e-49b5-8a5e-08dcac55d11a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2024 02:59:35.9621 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Hss+uEZTBE4qEJSlE6y11OGAK4qZsuLqO4r1D+OeRblGgjE2bF9HBIX74HEWhmEtfJNqu/CQEXTPMUk0xpVDIg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7401
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Kandpal, Suraj
> Sent: Wednesday, July 24, 2024 10:32 PM
> To: Nemesa Garg <nemesa.garg@intel.com>; intel-xe@lists.freedesktop.org
> Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>; Garg, Nemesa <Nemesa.Garg@intel.com>
> Subject: RE: [PATCH] drm/i915/display: Workaround for odd panning for
> planar yuv
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of
> > Nemesa Garg
> > Sent: Wednesday, July 24, 2024 6:36 PM
> > To: intel-xe@lists.freedesktop.org
> > Cc: Heikkila, Juha-pekka <juha-pekka.heikkila@intel.com>; Shankar, Uma
> > <uma.shankar@intel.com>; Garg, Nemesa <nemesa.garg@intel.com>
> > Subject: [PATCH] drm/i915/display: Workaround for odd panning for
> > planar yuv
> >
> > Underrun/corruption issue is seen for NV12 format for odd panning on
> > LNL due to hardware bug.
> > Disable the format.
>=20
> When describing the commit for a WA no need to mention what the issue is
> that is described In the WA number only describe what the patch is doing.
>=20
> >
> > HSD: 16024459452
>=20
> Better to write this as
> WA: 16024459452
> >
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 ++++++++
> >  1 file changed, 8 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > index e979786aa5cf..f927e6a0b28b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > @@ -1029,6 +1029,14 @@ int intel_plane_check_src_coordinates(struct
> > intel_plane_state *plane_state)
> >  		 * This allows NV12 and P0xx formats to have odd size
> and/or odd
> >  		 * source coordinates on DISPLAY_VER(i915) >=3D 20
> >  		 */
> > +
> > +		/*
> > +		 * Wa_16023981245 for display version 20.
> > +		 * Disable odd pan for NV12 format.
> > +		 */
> > +		if (DISPLAY_VER(i915) =3D=3D 20 && fb->format->format =3D=3D
> > DRM_FORMAT_NV12)
> > +			return 0;
>=20
> Also is this the correct implementation of this WA it says to disallow od=
d
> xpan and disable even xsize I don't See xsize implementation anywhere.
> Next is if we disable odd xpan shouldn't we then program it to allow even
> xpan this returns without doing anything
>=20
> Regards,
> Suraj Kandpal
> > +
> >  		hsub =3D 1;
> >  		vsub =3D 1;
> >  	} else {
> > --
> > 2.25.1

