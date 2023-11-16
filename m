Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 472697EDC9B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 09:08:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC2B310E243;
	Thu, 16 Nov 2023 08:08:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA5910E243
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 08:08:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700122107; x=1731658107;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3+wkARm4t06oEEclwRatfAaFUYHRn3zxa0t1Jzp+lpg=;
 b=fDI29UihzwEw6bgiAyk6YoJ4AqfDoZwEtfbqrqLmsrc5VocgJGNaORGH
 xnzPwKdTPPetbXNIrApPFfY/8NLNCRgQLi19dX4YeUTScwnpuxY/jIJ7I
 RLQp+wApad7V5IbuwOqvr3m8DumRiRcKaEqYN1xmo56D1MkqsUot46c4/
 JeaUBBoUfu9qnVz6qJ9WupGGJjvnjepYTQrCX1YWAqQIfAx5YCycmDlgo
 FfkkVk80icAHeSOtsqTH55d0giT/wwDRq+W/GyTTKzC53gMpZiLJ0mdxs
 Ic9jN5jKJ94CVr4rs5vVcL5MjzqZdGg1IvoP5BATAhkzK4UwNjAp2PH9q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422131117"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="422131117"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 00:08:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="13033796"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Nov 2023 00:08:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:08:26 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 16 Nov 2023 00:08:25 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 16 Nov 2023 00:08:25 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 16 Nov 2023 00:08:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lTh5A9/K/vWrrTc8epCVQgAllLhgtU7VC7jEKadUwtUjegDLC/+VdZRp1B4aWDBfPJpI24rPGSlZWzGlL2SVWy563U/pBxg2K2mXLMLzu6JRfKDzI06iDxVPVev6n5icXvbnb1dgRRem41GE1Ebl4bwLWCqjatW2+LOdVHsPvDSL5AUImRP10PrH2FAQd16VmmRTeJe44S73tD7LtQdkoOHHmuoJB8exwqGL39uqj/5+WxZwmagBYkad+iD838GbEnuIWalRoFylC2FkifVICYi4ov9cGyro3mOqKEBDltNXXfLdYRTac5b33WP611mi9MiTmrz1wrC2i0USnmVtJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Xm7lhpgTblLgXSU7uHT6cQ9cvFoqSFUw5dfBvH3qG9M=;
 b=Z4PKyEfiWpSnEGXGkvVoDc1JC+fbS0DUWBlGGeuW88l3GSd6J5Sumxdxd+cSB6Q2GLySlvwPR4tDZQ79i43YdYFIQrgcmGj46Rxs9n9WPjeNz9ORukTiKuidgZ6qXW5h803JIFLtbnzrobzOa+tTxAeFVGUezbnJvqe5pvlilWNKLvb2RB4YfyZzbQhF3B3PA0LLkd1lgZU5jJqfXXT2J7TalqFiVzwn+rJ27bZwA1sxH2Mhnfa5HtsN/Qsci6KGGQ3MhZ6s2gu+94DQs070gsVRgSIkoqEGSMizmis+JpMSxqa5u9BRjBfEYmpyPtda0HbngEGRahqlYUMvIHJOhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ1PR11MB6178.namprd11.prod.outlook.com (2603:10b6:a03:45b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.21; Thu, 16 Nov
 2023 08:08:24 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d263:5be6:37e:bb45]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d263:5be6:37e:bb45%6]) with mapi id 15.20.7002.015; Thu, 16 Nov 2023
 08:08:23 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: Use a different vblank worker
 for atomic unpin
Thread-Index: AQHaEyJe4+CsuaJxQU6rVnA2QMVdcbB8oUIg
Date: Thu, 16 Nov 2023 08:08:23 +0000
Message-ID: <CY5PR11MB6344361B14ED8AD9334F5BD9F4B0A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
 <20231109153450.142185-3-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20231109153450.142185-3-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ1PR11MB6178:EE_
x-ms-office365-filtering-correlation-id: c53209a0-a23c-41e6-ba84-08dbe67b3459
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uQ+1zuDJbQ5GiZ9RSA8XHMei5hLzQgmJ6iAHx3n/APppuQIu0uc++Sc5QA0jNq9Vfwslo6VI6jkXHrzJC12/oo0laI36uMq4OPs2e0pymNhrS+ap9h0Oey7tTc9zX1vGHwXKaugXVjbLfq+/YH3wMcQHEWfrXwaYDmvZZ4fLcB0iq9ubzeKJNkt4s0+HGAE5nDWujFW5+u5el67Kvo73B7c9+IEq3janqUghRzGCo/j3UGtyXO2Hb2Vm8EobcdCSAZj12Cfyx4C2OEBUxX9rKkcnhhjPwFccx4EXeyE9uSZczP/gw7czrNR13iy1P6iNet3Zu6mCsXf7okr3MT8u4Jrvf92UmYcoiu5h/obPi9aXNlGJMv5l7iY6bM2sy7kMT/IhFHejZSoI12A0tCmFn5F/782vJTlORwPySwNR8F4WQQinabsxXsqhh3B2P0zARJpkMhyUjuL5a3V4RJhRElBu1llgEWv+zQgJYqiRGxEbe7USzlAr11gAGuEGtI8cMgRCtD5jA0QrUkhMg6bMR3AMzl0lfvyL9FD/QsMWa3cMSBO+cZLn/3Oe4/tVprzszgW29KNpQQsp6bHGKAZdQgycYJ3Jhb5Hknb3n+hh1slJra1dhAFw8wpIzamsVmgX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(366004)(396003)(346002)(39860400002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(26005)(6506007)(7696005)(53546011)(71200400001)(9686003)(83380400001)(5660300002)(8676002)(8936002)(52536014)(41300700001)(2906002)(478600001)(316002)(110136005)(64756008)(66446008)(66476007)(66556008)(66946007)(76116006)(82960400001)(86362001)(33656002)(38100700002)(122000001)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zfDhNTEDKuvae2yp3nGEfVMY6GSD0xieKB8EnyjFexnKCstrOMv6BD1PMv/K?=
 =?us-ascii?Q?8AGIPI8hkxO8SIHYSDvlgXvvtkGccIr4Q25w8/4paeRFbzCAGRZ6ijCQka3g?=
 =?us-ascii?Q?3Zn9lRZk/O3ymLKwDzT6/V1dno3C6ofsxH8Fori0eow7hLLqQBoMaIJkVtMo?=
 =?us-ascii?Q?vgMGVlcWoWD9ccKtXLQd1m69dTa2AilIENR3aSJ+20ZlIdp4c22Jx2FjC+io?=
 =?us-ascii?Q?Kt4plPCdN1WhZM/jI3f1+iKRlkFcker8dNm4r+zpPNRWI6Sa0czCMy2KM1wr?=
 =?us-ascii?Q?LUZ36/sBj5D5fEKGlPBJcDAUs0AU9Ts9WfY/SgpuHBeVBuANAZjgMEI2extS?=
 =?us-ascii?Q?U3E9B30GKiJRVruc5i0lNbtYNKt9W1sVvFnKj+YK+ZueXGjeP4QWATtYiOA0?=
 =?us-ascii?Q?wn9bFGYIIhd9Kr8ysuwRZBpfA147gkP12nYQtyU5+VLmIiPpZfsaOHoVQvIP?=
 =?us-ascii?Q?cGfb0QvHTTENeSs3LAnYQ8j0kGggzbYvVuXhzFHfuBE/bPuPTaMKi0wiWrzL?=
 =?us-ascii?Q?kxgbRHGvsmWnpO96NFrwIOvtyEUCdUokSfvZN9S28ic0qhOD5eouiiQPZX2J?=
 =?us-ascii?Q?1/tKDzp3UZjNk269LRw37CwQiB85wh22hicPqqgD3cnKKlZ2ESvSW8DA20fI?=
 =?us-ascii?Q?TCt9ESerOFGyuHyAvnOGpNbiVBcqqmr7jFdPtjSo//u2WQD1Df5PT/RjIWmq?=
 =?us-ascii?Q?XquhNxlW78YyEW0jF4lEyJbWeOo5rGOCLOdv2unrRyf7Vzo8/Ertxy2F2aef?=
 =?us-ascii?Q?XqnIiLL2LbY5LCLycPbEszLSSKEdq6TXu5KEsMP7zFiWu2cKvtbYawlvivd9?=
 =?us-ascii?Q?63f9SgCMDkZigfaxm3dKMDwRF1rm6bjCamsqi2rc3d5+qqJWVyoS7jwSb/HQ?=
 =?us-ascii?Q?zYsK7gYE6ZeO6oW8GMSZ/YR4mcclatWRCfdN1pBmZmKr2lNdjOTwdHq3VYYy?=
 =?us-ascii?Q?888Ph361xwFR7y6MwPrGA2qimAxWRplgxmDzxTEtAFK9zGY6erojuNzO35X1?=
 =?us-ascii?Q?NYQYyvyLksONpSZaRFdGd9mo/+WKjKFwEU3AgFdQ7IJVRIkE8KYjGTi0suZO?=
 =?us-ascii?Q?SpwQVYT/KhHrp8TZoT/QNVLqApuDsSvkmLpRypU0+zuo2Nv97iRJ+eoG8wB+?=
 =?us-ascii?Q?8h9UmMNWmWhSpQa7ugMxyQtbSa8gokyxJrhV+WgOPjDiRVOkv5wNt8AbGHy9?=
 =?us-ascii?Q?edxN7egucMqKU4dTLSROHF+M4Pmew0k457ffujXESR57DpiU0jkcehbxbAMr?=
 =?us-ascii?Q?5im/PXpp+AuQZ6uEAcUy/orQfjVfv61F+CKX3bESORxumusl8THlMFEXzk1Y?=
 =?us-ascii?Q?DXkBaFcNHD8WLOpD7rPcnBNG6oDh642xFV35oRavAzwym7ienV9t74KLsiRG?=
 =?us-ascii?Q?mD1+06DpC9Wbzn0S9UXfSEOEIeD4uLxvJkNAf0UIo0G9LK2Q8li9V050Bbdj?=
 =?us-ascii?Q?CTvyv1eld/joIPTkWH0kcIaykn3Cre1hS+oWML2UvwW5Ip9PcqTqxGVxiCTd?=
 =?us-ascii?Q?YolpcA5HX6CU6c7h9ZXQHA/wpHoTbpt47atJElDoJC/TZpINiaTaTGymlpVW?=
 =?us-ascii?Q?YTIbiEtqQFh/oR9m1RZcC44wWnA0n8ZIOGYk7C0w?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c53209a0-a23c-41e6-ba84-08dbe67b3459
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 08:08:23.6216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +ZbuRNUVS77X+11Xd92//LIunCndFQWpVwLsnWrGYwjb5GNc/PsvA1oWNu9WNGSR5I2FP7OWK1ERLAwLQ9ipXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6178
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Use a different vblank worker
 for atomic unpin
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ma=
arten
> Lankhorst
> Sent: Thursday, November 9, 2023 9:05 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Use a different vblank worker =
for
> atomic unpin
>=20
> For the atomic codepath we unpin_work in old_plane_state to unpin the old=
 fb. As
> this happened after swapping state, this is allowed.
>=20
> Use the unpin_work only as a barrier, and keep doing the actual unpinning=
 in the
> atomic path.
>=20
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_atomic_plane.c | 18 ++++++++++++
> .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
>  drivers/gpu/drm/i915/display/intel_crtc.c     | 28 +++++++++++++++++++
>  3 files changed, 48 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> index 06c2455bdd788..6ddb4f4ec79ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> @@ -1164,6 +1164,9 @@ intel_cleanup_plane_fb(struct drm_plane *plane,
>  	intel_display_rps_mark_interactive(dev_priv, state, false);
>=20
>  	/* Should only be called after a successful intel_prepare_plane_fb()! *=
/
> +	if (old_plane_state->unpin_work.vblank)
> +		drm_vblank_work_flush(&old_plane_state->unpin_work);
> +
>  	intel_plane_unpin_fb(old_plane_state);
>  }
>=20
> @@ -1176,3 +1179,18 @@ void intel_plane_helper_add(struct intel_plane
> *plane)  {
>  	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);  }
> +
> +/* Completion is enough */
> +static void intel_plane_cursor_vblank_work(struct kthread_work *base) {
> +}

Not quite clear the role of this worker here. Can you elaborate a bit more.
Once we set a work and schedule it, what is the expectation from the worker=
 here.

Regards,
Uma Shankar

> +
> +void intel_plane_init_cursor_vblank_work(struct intel_plane_state
> *old_plane_state,
> +					 struct intel_plane_state
> *new_plane_state) {
> +	if (!old_plane_state->ggtt_vma ||
> +	    old_plane_state->ggtt_vma =3D=3D new_plane_state->ggtt_vma)
> +		return;
> +
> +	drm_vblank_work_init(&old_plane_state->unpin_work, old_plane_state-
> >uapi.crtc,
> +			     intel_plane_cursor_vblank_work); }
> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> index 191dad0efc8e6..5a897cf6fa021 100644
> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> @@ -66,5 +66,7 @@ int intel_plane_check_src_coordinates(struct
> intel_plane_state *plane_state);  void intel_plane_set_invisible(struct
> intel_crtc_state *crtc_state,
>  			       struct intel_plane_state *plane_state);  void
> intel_plane_helper_add(struct intel_plane *plane);
> +void intel_plane_init_cursor_vblank_work(struct intel_plane_state
> *old_plane_state,
> +					 struct intel_plane_state
> *new_plane_state);
>=20
>  #endif /* __INTEL_ATOMIC_PLANE_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> b/drivers/gpu/drm/i915/display/intel_crtc.c
> index 1fd068e6e26ca..755c40fd0ac13 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -559,6 +559,19 @@ void intel_pipe_update_start(struct intel_atomic_sta=
te
> *state,
>  	if (intel_crtc_needs_vblank_work(new_crtc_state))
>  		intel_crtc_vblank_work_init(new_crtc_state);
>=20
> +	if (state->base.legacy_cursor_update) {
> +		struct intel_plane *plane;
> +		struct intel_plane_state *old_plane_state, *new_plane_state;
> +		int i;
> +
> +		for_each_oldnew_intel_plane_in_state(state, plane,
> old_plane_state,
> +						     new_plane_state, i) {
> +			if (old_plane_state->uapi.crtc =3D=3D &crtc->base)
> +
> 	intel_plane_init_cursor_vblank_work(old_plane_state,
> +
> new_plane_state);
> +		}
> +	}
> +
>  	intel_crtc_vblank_evade_scanlines(state, crtc, &min, &max,
> &vblank_start);
>  	if (min <=3D 0 || max <=3D 0)
>  		goto irq_disable;
> @@ -721,6 +734,21 @@ void intel_pipe_update_end(struct intel_atomic_state
> *state,
>  		new_crtc_state->uapi.event =3D NULL;
>  	}
>=20
> +	if (state->base.legacy_cursor_update) {
> +		struct intel_plane *plane;
> +		struct intel_plane_state *old_plane_state;
> +		int i;
> +
> +		for_each_old_intel_plane_in_state(state, plane,
> old_plane_state, i) {
> +			if (old_plane_state->uapi.crtc =3D=3D &crtc->base &&
> +			    old_plane_state->unpin_work.vblank) {
> +				drm_vblank_work_schedule(&old_plane_state-
> >unpin_work,
> +
> drm_crtc_accurate_vblank_count(&crtc->base) + 1,
> +							 false);
> +			}
> +		}
> +	}
> +
>  	/*
>  	 * Send VRR Push to terminate Vblank. If we are already in vblank
>  	 * this has to be done _after_ sampling the frame counter, as
> --
> 2.39.2

