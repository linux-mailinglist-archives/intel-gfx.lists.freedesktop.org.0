Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C34594F4D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 06:14:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DE43DB6A1;
	Tue, 16 Aug 2022 04:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 014D2DB684
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 04:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660623203; x=1692159203;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sg0Bna15ezJ0d2kWSq/2pX3Da8i3HNmty0qhO68G/1s=;
 b=gH5HQ36mAZlaWA+Vl4L8jP5P5fjVtfup+EZaExZ7lVYAlTjfLJagKEVb
 kLw9XaiticjsAGjRA1SxHkoVC54g4J3rXhTp83Zdn5JMMTcJN9NHMCAO+
 qlh+CSheTWhhYnbvROdB808bA0+FvELnoga7IzCLQ8rj46+2lV2DPimhF
 wXcxXTyRjBEbFwOUCVqxc6D9nS3YUkzdGOM0KoS13Yq45JhSkrpqQCnTt
 vr7IMFGhd3eDlBR2croUxbZjCkVkcq07AJ3u6EYB6zH5zNZvwqZ/ds4Te
 Ev+sn94rfm8BacT0GNt1YoRGbPbORV+RR1da17SPvP3m3OVEXEJEt/JpA A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="279081532"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="279081532"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 21:13:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="606887075"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 15 Aug 2022 21:13:21 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 21:13:20 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 21:13:20 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 21:13:20 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 21:13:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J/Meu4TwrDVECr+AmN3Xcx30IIAiyPgJBqROhXXsNHXmv6EWiXmLKYgcNvxhtO9dSgfpwJidIz0ZlOuQbWvS7U1TAhW+mqn9hvD4GtoEm1JA0EHu+vcv6uPsOGY1PLSI6kNT1u5SrTlyQEw/eShxcZh81a01cwdZU75xmoj5AOU7N2okgwHhagmjguNan3GQj4nEtSkDGtEJP8bQUx6xiwgiGHoGl+9b2cu+aGtJeFtRWp4+rq/y1jehAwKfAz/SAefKZEM0Tpp/nno6I3s76iaY7zLsZqMyCE4YEJiE0l6fZwBlqbSfQFp+MK6jJVCUJjHOv6M7fdP7pC4LZ5zNUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sg0Bna15ezJ0d2kWSq/2pX3Da8i3HNmty0qhO68G/1s=;
 b=b3Ca8Xgp+KqEXOaebUyGFo7LXOiHjOwJsDHf1+m7gFzyfquRB+04Q+DWHb9zIRCY+hbJp8eXIdqJKMrXgkR258eb9TTUxIN0we2CbcfWl3ns9V7wQInuodEmPixsD0Cmtju0upJLYH9wsg7fHd12Y6HhEd2nvewGGTdIL+BMwscTIgZ9ajLLKc9ynQ0q6w8Mx6v4CoQWLe3ngaGKaS+H+3K3n+iyO2rikHb7dVYy1pSjc4RBNbioVMfwJpzTYzXDi3Wgg7+iLiFE9fyIQDPojCG7kkNJbY6SJUeVy/C5VsZDxEysnkd2UsalUpkAHJ5rKyEUhu1cBfXGBpZJwjJ2SA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB3545.namprd11.prod.outlook.com (2603:10b6:5:141::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Tue, 16 Aug 2022 04:13:18 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 04:13:18 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
Thread-Index: AQHYrZVuNq/VAOfpUEWgx10VSAO8b62qtWYAgAAir4CABhh/YA==
Date: Tue, 16 Aug 2022 04:13:18 +0000
Message-ID: <DM6PR11MB3177D1EA57E1C8F1AE2EE845BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <d7de23e80cb3a3fb488b76a092ad5f6d94d97416.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A0CB978DD0EA0717418BBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87k07erlj2.fsf@intel.com>
In-Reply-To: <87k07erlj2.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 6212e1ad-1565-4f7b-24a2-08da7f3da618
x-ms-traffictypediagnostic: DM6PR11MB3545:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ywGn3hcHlfQtGF+EXsVytsLFVwCwH5+re3Hi0yifLNao/Qfak5B6uh4m9pFklTelxpgnzDPzQB8by6I8/c+na1L44jZWnJ2UFIJ7RIvCWMqNmzjWkkDOtk4r4CFuT2OiNBktb27yUZ5LFeCLrdI8vk/5kx6/LOhPXMbM1ZBnyH1JvSFsYg1PSitQxTlNaeVxzndXHvJLAioVtmEI6VpxlSQKVw5aZBSMVwAhULZCMoNvKPdRQx6C+QYVI+9VrcLQIPofRweBPQ7a/FNDCivKm0eTW+KYSH5lBlEaTwjHzG1nrNfA1SPiw4YuWVmP1MP9TFWCmMUcolH0S8Zp03S3N+QAxVTEBoXDYu7AmQGL2poOJnUrzzsynYodZs4WYhaiD5/ScBvF5sI7YZMG1tlZjvm+whX/PDQXSeYImtZ4KifUKRKoGiK8NdZWs9wc+k0nZ5M2QD9tR5Lk60U+gf0dWBOqn5jKdPheq2vfsgBxPRyQFsi5/PZAM+8gwkWFwXmo88gXSy1hZPieDFFZhcK9+WducKgmq033h+ab89atXuaFy9CJw8tGUUifp0dapxSiY6SiLLjZEPGu9lq3oZWMS7AVghMLnRPQx3z7BWj+dA75KMVx3i75qgKsdnc4mZLuJpQ88TWjlE5p+3eoy6lyKdhBJjWWpUCCNwxIGjh3uKXz9NkSYq4ygqIfjTXeJEcQXyVqk1PVLNaKC5bdYqqyc0TSRstILKtBQARtea4aBo1kobDmB3Hr6TqpwNIsGDntKJWaJU8d6q78k8TJYkTd6e91YnGZJGlXR+93uPZxNu3IJ7um6PflClpkf6iEBr0H
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(136003)(396003)(346002)(376002)(4326008)(83380400001)(82960400001)(86362001)(38070700005)(122000001)(110136005)(66476007)(66946007)(66446008)(66556008)(64756008)(38100700002)(76116006)(316002)(52536014)(5660300002)(8936002)(2906002)(6506007)(53546011)(26005)(7696005)(9686003)(8676002)(55236004)(186003)(71200400001)(55016003)(41300700001)(478600001)(107886003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?g2Dz6RnjjJ8uBCOcyJAtQpY1rO2l3X3bTF72RxDOfI7+fevWQCqHLNT1iWdb?=
 =?us-ascii?Q?5lfThBh61n5LS9tf19D7P+YGFZkckf0LGhxB76uJau0TjgiJ/heZd+E4zlwd?=
 =?us-ascii?Q?/KR3ldkPYpp2q8d+0Xac8yoZgUD8BevpXpFnsbJVSYGGp711vctt2+yv8leo?=
 =?us-ascii?Q?r1ysNOBm7kKMc9W/HwknAUSHQ6GBKOSuyOyT6MUQY2pfBFKDRFWM7V6xKAHZ?=
 =?us-ascii?Q?BgqkW7yI6flRvn9JdGiYQnQZguH9TY9af92NladJB8s93ZPoP+M+7xG+KFY7?=
 =?us-ascii?Q?C2pQZkbG/m38YcLsKggQ/KnFEAxlrk3tx4pxvRvKxhHD6VYprWMCshoBKFYL?=
 =?us-ascii?Q?Fbm6R1rUNmd+/M13CPfqfhpnhlr81W6JwFQ5K8oIDWEDZnIpV4XFeDqUX0FZ?=
 =?us-ascii?Q?R/HTQS0WvP9bwCrFDuIKYFGYnkzXaxCFlWzPQK4dC2P5KPgmBqaTduEv3lKL?=
 =?us-ascii?Q?k4ODFcYLDjGkKc4fxYGipwr+8iU+fKlI9w/lXSk0YVHjTIP7W9rw8kUA8p4Z?=
 =?us-ascii?Q?kOGemv/IgLySPjeI54XAjqkteX2nG6TjbqzN0k22H9yqs2ifg6Ye4uv2yhUQ?=
 =?us-ascii?Q?bbeZ2cM+FqGqxLcn8CP8tWtfvyQiMUxdf8/5SGi1XQukfbfy82C3tImiSYQu?=
 =?us-ascii?Q?rusJU0cEw0VQvTzIazkd4ZBQ1fs7dPefenKLqU+RaHn4nlwjoZSAZtxvNX4B?=
 =?us-ascii?Q?ZmrC3zbw+V+j+zBIWdTwGk7MNbCo7RPaQd+XXcfiqIvR3cVDw3U+r17Qb/tQ?=
 =?us-ascii?Q?f0HVjJOotDKzGF13MZ2BtLQKpmHeiUFi7EfkuZjJgIM+pOczFNqjnBcvTehe?=
 =?us-ascii?Q?DLrEk40pJKKpwi4WNTWc/U7L1KwXUMYQll7krDqIaj9JU2eJXN74qMGkd55q?=
 =?us-ascii?Q?+wsCM0mw4ud6dOdOb3bc90P6Eu4wyrpxmpMbYaTlrq/U/ZC67bWRv3qkrLBz?=
 =?us-ascii?Q?OpSilk03PCdT3UYkV9xY2f1xL2TOlaNGFcIaCDMXfGRiKmdeVBaQs6+q0QPf?=
 =?us-ascii?Q?fS0ukaH/kuXZ8xKb+m+pK7I4oLaQa3bN5ly6eD9hjrM7YyFGBoP8dINw6y6u?=
 =?us-ascii?Q?N2PYufrPEMjdTmHaA/AuXEMO2F8vvMZnZvIOogn7pwbfzwlyMOPr6CSg+SZh?=
 =?us-ascii?Q?iq38WjRGVahRynEKg5tkapr5lJxUcvG5g+cd7YdpuZ3krF+GySlP5fdliUrj?=
 =?us-ascii?Q?xAcgKgI+cnMmt6JcFH7bAxVaJ6jwf/R9L+AX3rwaxL3Ag6ZrxoyyIdOu7qqw?=
 =?us-ascii?Q?k+ie3VRiSeUaJC561I8SeI7EDCjIL3FnbwWtdnhd8ANE9pMkQh99lGVF+ZKc?=
 =?us-ascii?Q?oP0V+694LLavne7tr+0iFILyytgE5LliCYkKBFbDJvJlS0Ns+OgzhGxm+smA?=
 =?us-ascii?Q?3NiDHl4pEPmZSwWunO3oLZB46ZPsNS6QU5z6OM9JFvhw9V7oG5o9Inn2Taf6?=
 =?us-ascii?Q?0bLRFIOSU3vlTi1VkdHKdd/++9GoSQ0kaj6cX8bKroYwo/mY95zIj1YULCX5?=
 =?us-ascii?Q?YCbEOjTZp6aQECJaT+fUeigz5lOotb85/YxZbbwYhWchY/K6vRWaIqqzXxBA?=
 =?us-ascii?Q?qcVvgEkfefoE4eeofkWlJr/IY4TJk7po/OMMhInY?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6212e1ad-1565-4f7b-24a2-08da7f3da618
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 04:13:18.2210 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ENJWUscxXokisMCKHCUB61FUgeElOFW7mGDtWpS9lEfUVRt42dUnUbWZpr1Z8qIPrwya3/yw/AEH3IBsnj2DAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3545
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio under
 display.audio and display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Friday, August 12, 2022 12:33 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio und=
er
> display.audio and display.funcs
>=20
> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Thursday, August 11, 2022 8:37 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> >> <lucas.demarchi@intel.com>
> >> Subject: [Intel-gfx] [PATCH 12/39] drm/i915: move and split audio
> >> under display.audio and display.funcs
> >>
> >> Move display related members under drm_i915_private display sub-
> struct.
> >>
> >> Split audio funcs to display.funcs to follow the same pattern as all
> >> the other display functions.
> >>
> > Audio is a feature as such so wouldn't intel_audio struct stand paralle=
l to
> intel_display?
>=20
> For i915, audio doesn't exist other than as a display feature. Display is=
 a
> higher level split here, parallel to gt/gem.
>=20
Will leave it to you, since you have started this huger series containing t=
he cleanup and understand you also have some more cleanup in queue.
My small suggestion is not to mix audio with display and let this audi resi=
de in i915_priv and let it leave in parallel similar to gt/gem.=20

Thanks and Regards,
Arun R Murthy
--------------------
