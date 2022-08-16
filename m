Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 30763594F3D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 06:04:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47778DB388;
	Tue, 16 Aug 2022 04:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1747EDB35A
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 04:03:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660622620; x=1692158620;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+GaDZUlCRwNHWwkI8ioAS1GIARm59dOO+tfpzosk91o=;
 b=PHSsSvKYRXrwjtXOnaZmGOosYwViqChP8X0/odIkNKNt9BFPA0DhkyVQ
 lY7VzpkGr9Df0sEGXVB6BJuzrtFm/E8xwZjr6TQnLKkDMYeUoBAnqHP3h
 sicOkCY/O1EkydaErORsOdUxSsmoek0pz1CRJtzX1N0/VOlKvADZAIic/
 goLJSuG9/CWiAui4kegylojFM0zB/ToFVGlFF+GotLyLk3zTRGiWQqT1u
 exiBTAcxqcupwAQcMO9hlARfhI6+StvUInQnawJATZve19hBicMalYoQ7
 sY3T2gAkqqnSJHSTp+2AhCLsqM+D23It1TTg9WKyfeHAdwTduCKVf5px5 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="356122135"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="356122135"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 21:03:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="639881424"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Aug 2022 21:03:39 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 21:03:38 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 21:03:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 21:03:38 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 21:03:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jBJodv4I91uL0V3MfOfob5KAkpDoflBUR86F0hBp7CS3KJjCbPSBJSNX8G6sPA6HJv4ydYidNEpu3UzARvsN6AcmaokVobRFUmPT7yINWUxMj+phoI8cZ4r6citbs5kxjGomqwwt35U3F5B0+QWpTGEOH9ARsfS9/Iy7kPYOSYB6uCKXNonS+3ldUcz6SIsjEipYW63eSbbZE1fA9YCaWNzH/QRo9An5AWLdMJ/zRaVDVg/jwDoyoEu3pq0bwrwj/voakAAMzYnHkV25m3b2K8WgDMMntwVVlMepn+H6VMjLGWOQyku8NuXsLtrf1D6rlfmf7qVWIFueqqF5zFNUiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=po31axxNGD+viwCCNN82vTGksbZk8fABm+vc6JpADhk=;
 b=L3JeIjKoklRdiet1CPLbzamcZ9QLzH9zp1pFgzBw6tdcAl4Qqm6yjRV0DxopnqzARuSBdQdRMqdPCXBYoZbxRurJNytU8IlgBhdWUjkO06lfBeksDCU25uhOeutIQOpCW1xr1cTG37nsXQzILahI6I4g9sxE4x0JQ9ik8UI9G6vNmSgyvdJOsO5zRC34DBHDzI915wdxC4apJVrGkSFAePEpbbLy3c00colpSXpoV9K2sJTbmK2y/hV5zyEEPhEw+ZOn5EfQ5MCkoKNV+QOgMrr8jQwIMkhbgPWGcx4xFEWJhvSkW+D+OXm4q2MIsVlVH+STpuIam/TuupuXMYlfdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB3545.namprd11.prod.outlook.com (2603:10b6:5:141::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.15; Tue, 16 Aug 2022 04:03:36 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 04:03:36 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
 under display.pps
Thread-Index: AQHYrZWrjw/dhPlSaEWVchxpB1mp2K2qs8yggAAizgCABhe2kA==
Date: Tue, 16 Aug 2022 04:03:36 +0000
Message-ID: <DM6PR11MB3177EF8330A3BA6CA0509229BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <b4e59508841a110f16d76a8da08ad94fdfd3a4b4.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB31774748A084ACF353F837E0BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87pmh6rlrv.fsf@intel.com>
In-Reply-To: <87pmh6rlrv.fsf@intel.com>
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
x-ms-office365-filtering-correlation-id: 21727aa6-14b3-4940-0848-08da7f3c4b1e
x-ms-traffictypediagnostic: DM6PR11MB3545:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PRXF66frepIY9RsYEq7f9UhhCZlTw1v00RMSadjedSl9abDwQRPiOFAUhBiQGZzDeprfqSPe3S782YH1Xw/vAUUUKAGjHl1c8JPFbAFHtDOKhQCO9O4xKM1RXCdeb4L7jMZarXvtymeQ+nICNnP1A2kWnwlnOXQRGpl3Ge4EKdUJj+LtCQ9bhHAJrAU2cnXtnejeBp2anuq1Z93yCtgdhRI+VLHfJKkB9XI1KB6oFO64z1UrqQbQiscHs76dcF8MGo8MltMb0OWjrxKbZgDlq2H2A149pblBXX3ZxtCCAl6iuQMyIuIHVf3tCJVAqnG4P/nGuy6PyzConvNPLSrattdWlQvw1PtUOfSNzVAFCjgW1ibKnSIqATDTEos+6wRf8yKVm8zJRMKTVMC+gsu/tf+Np9k+zg8Au2jhuL+NeXpWk2ka0ZS+BVJQXaL05hKS/biS6Dg46AZfE1yVdC8a4Ftfz4o9caI+m/6nJLgrhbtdmzw/zQXjvaVqBd22HwjH7WQxri/G1ZtW5deovbHjZ5vkbJ3+PcOQOnb9neHdueRypTNadmGJZSkfVB+KKwora46MbG7ZTSlfm2SuF7LD0tAj+QqwUBmEX6rn5ZDzk6UMEpex1YhsbR5XDjsEoS9oUd4MXOmgPeR7EwrpwPXUpB+AA0DRHJKGQTWKfQgmcUjweVxzOa5nnHV/cSPZ9r/7jhhT7B9farzMmz1EZKR4EhwzXzTNhRiF9MPe0pa5ZHMDEcPIC1ZvZ2CpuQpYBd1jKIjf7NstfT53e/V20VE8xHCir2supDDkfSi7P0a5XH6fP3Gg44znsJBGW12Iuw/s
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(136003)(396003)(346002)(376002)(4326008)(83380400001)(82960400001)(86362001)(38070700005)(122000001)(110136005)(66476007)(66946007)(66446008)(66556008)(64756008)(38100700002)(76116006)(316002)(52536014)(5660300002)(8936002)(2906002)(6506007)(53546011)(26005)(7696005)(9686003)(8676002)(55236004)(186003)(71200400001)(55016003)(41300700001)(478600001)(107886003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?B+zFQorhO/iDoBhwHi7VGuQ+AszDPuI2PBKy311mPhnvYm6wej1f/zmSWefo?=
 =?us-ascii?Q?7/ORUUw6xb5f/5+kXSRRZAuiGy2XP/zVbxLhP6VttZA+5VMO/yu7K3RWJizH?=
 =?us-ascii?Q?pMQZyvFV5mpApmH1Pid8+TDL08q5YCO1O0XEeXRxtkx1xlLZip5dCv7IxFOv?=
 =?us-ascii?Q?FOfkc9JZnQCuqy6aw9+Z7kOfo29R/iXiukutLhkI76VvKgrq4/73oLld8DII?=
 =?us-ascii?Q?rCysGe0GB6qtO2FhBxP956Ezr92vS6Vwz0HHvLqMHHFK0I6QakEDvWEQ2yYF?=
 =?us-ascii?Q?14XmZgzp15XGno3PiOzgvdvrMSNhfFuMrRGZG5oi46Po7JZ3kT+M4FsVKz7D?=
 =?us-ascii?Q?dvGNQmaqMLVJJZEIno6PVsYqYkpJmfvgmpTNsCBGQ9XdgWYUmY7zi1E5ACja?=
 =?us-ascii?Q?2RG42Yb1ERLOQysAohAfRNHiWQYgYFPSm11mwZNPUaYbmQ0+5zJ6w5xUNcz6?=
 =?us-ascii?Q?ubzJk7QR9z9bSqcJruCyslwF6WePYllj8MdIv01tmiuEDAZBXItW9Fv+Gj9+?=
 =?us-ascii?Q?P1dDYq9/NI+rnik4UlBb7XavlojljnYyoEuImrgn8JnHcy9MaHKnu0AeQNc9?=
 =?us-ascii?Q?zgmRj0jD9tUa9k2RU+VDyWHSGPreNGxnzJRrIHk0pRLAZmDH90nRXdMybNAx?=
 =?us-ascii?Q?Sb/r0oQBhfR4LiZhR4wH6XQGvU5CJRSBs93/b9TmMZoP8tgOtxSF6eJxT78i?=
 =?us-ascii?Q?FbsETOPYoMCYriDvaDDmjPbg4nnz7LLEo1q7asPqauQ83mxBW87XnbbwkL4G?=
 =?us-ascii?Q?/iKkp6+P7d8LpGIHTmH+TleKkfTh369p9jWUWueDRj6JPiJBx5zEDtrzckG2?=
 =?us-ascii?Q?NsXKi/Gd4jUj9qGjQ6fFwMMZrm+pAL073K4snUqHIUEjBMw+8EWpHfZ1deq2?=
 =?us-ascii?Q?rElWkDYXA0Hy11KDw2mikN7zo34JpFyPUB1iPhLWP4T9zOHvi9kD8wFo1lNG?=
 =?us-ascii?Q?0si24mPZ3Q4yYnekPo+GBqmvZG654zE3GYuXnN44oAE8TAH4A7J+YLV0gtJW?=
 =?us-ascii?Q?bo88w/v8t4GEH7QTMjA5Hp83COkBPjia2GYSR68WOumkrmSevLVfe4kbWIG7?=
 =?us-ascii?Q?lUwqTV0W4CtGKQkfibWJ5QQSGLeoLCZkyPgO8whdyQDohn2Hnr6xOY2CwrQj?=
 =?us-ascii?Q?fgij6ep/xem5giSpkb3D0y9KC6vUnlYqFOBXzP3i9xUcU8i9JbiN3wFADht3?=
 =?us-ascii?Q?5X82GJoZmdnvmBM0ihyiOSsiIowU8DjVWU/2Q/TPJnm2+uQ2ZZI9PKLK4rMV?=
 =?us-ascii?Q?d2gGNUl1yUZ1TeZ3g4f4VNb1pjUGBE1mdu1JskKGcSoCvrFjj6kNMlAWGpcN?=
 =?us-ascii?Q?aBm39RaSmoevdYq3238Y+H3k1aEgRR4g/x1HqdORF1pIfOQ60F1zjuYuEiOk?=
 =?us-ascii?Q?gqDG1Sl7yyFi/dOAqZK6hm4GLJ61ZzLHYyyzW6QKKlcrr7u8WiW1QXWJGCmp?=
 =?us-ascii?Q?A4lJskfSpnritukOGFu28lxzhnVO1Hh1dv6p1Sn/CtkQHlOg+YsRPoZFdAzr?=
 =?us-ascii?Q?mIMyU3Zb19Mkjw0zg+s0XcziedZxsab4gtnmvzsD3ESTu4SLOc76EqSuoyGu?=
 =?us-ascii?Q?aHq+SGm819KDrMBiU6pQlGw/AYYVjNEt4M20y1rC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 21727aa6-14b3-4940-0848-08da7f3c4b1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 04:03:36.1058 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KUBbtFYQxUD4gl4hA6HPcxdjh+Z8nm2MqQGyrYwvtEN4T7wYDRrX9cVVyadN19IVQphZZi5UgZJxgRtNwpFbRw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3545
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps members
 under display.pps
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
> Sent: Friday, August 12, 2022 12:28 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: RE: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps
> members under display.pps
>=20
> On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> >> Of Jani Nikula
> >> Sent: Thursday, August 11, 2022 8:37 PM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
> >> <lucas.demarchi@intel.com>
> >> Subject: [Intel-gfx] [PATCH 10/39] drm/i915: move and group pps
> >> members under display.pps
> >>
> >> Move display related members under drm_i915_private display sub-
> struct.
> >>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  .../gpu/drm/i915/display/intel_display_core.h |  7 +++
> >>  drivers/gpu/drm/i915/display/intel_pps.c      | 48 +++++++++---------=
-
> >>  drivers/gpu/drm/i915/i915_driver.c            |  2 +-
> >>  drivers/gpu/drm/i915/i915_drv.h               |  5 --
> >>  drivers/gpu/drm/i915/i915_reg.h               |  2 +-
> >>  5 files changed, 33 insertions(+), 31 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> index fe19d4f9a9ab..030ced4068bb 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> >> @@ -101,6 +101,13 @@ struct intel_display {
> >>
> >>               wait_queue_head_t wait_queue;
> >>       } gmbus;
> >> +
> >> +     struct {
> >> +             u32 mmio_base;
> >> +
> >> +             /* protects panel power sequencer state */
> >> +             struct mutex mutex;
> >> +     } pps;
> >>  };
> > Again can this power related to be moved under a substruct intel_pm ?
>=20
> The pps is pretty well separated from rest of pm, so feels wrong to shove=
 it
> together with pm. And again, intel_pm makes me think intel_pm.c which is
> not purely display, and needs to be reorganized.
>=20
Maybe a subordinate of pm. Lets take it up later. I would prefer to have a =
TODO under all of these would lets us keep an eye on this part of the clean=
up.

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
