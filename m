Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DE0A28631
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 10:11:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF1910E75B;
	Wed,  5 Feb 2025 09:11:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iu+pWzYU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B932510E75A;
 Wed,  5 Feb 2025 09:11:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738746676; x=1770282676;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lkiWcsJoziEI1sdRv6dqth4sRw3y7NSYfMr4TViu8n4=;
 b=iu+pWzYUjoYDtvMbZq7/O2YK1SQq2OKzQ8Wo604i+uSYTsJR8dBrUmYq
 u+s98BVlledWP9g2/t/QBvJA5WmDV1I4AWbCOJBtvjC/ebkyVZTWSRt0m
 U6nRAIr7n/vm88VlFsYubtWL7dRhYIL4vUORZdk+L5YGFFRNGQdp6cZmb
 5x8BUf9pRlaW0cM0Z/8dqyPphoU4+K2xLiNiSaoMAYzA6CQvlCJnBCh4X
 0c89QMoSA6k+dlgc0+JvuS5Mbpd9rHTlFgWFr5iChe6mAxfYa8/bnmWt+
 YDHSMoA8wG/IGHLxnb29DzDdlqxxH4OZIGA/pI1csUS7GBaGKPU0/yGuN Q==;
X-CSE-ConnectionGUID: V7v9x5p9TP+YegN5Dfxjjg==
X-CSE-MsgGUID: Y6IZYCPlTy+sRC+ZqyfsJA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="39197396"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="39197396"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 01:11:16 -0800
X-CSE-ConnectionGUID: nKWxWSl/StK4y1Y4YIvkMQ==
X-CSE-MsgGUID: Kk31AcpQTVSpaiPEu9ZiiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="111021392"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 01:11:14 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 01:11:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 01:11:13 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 01:11:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DGiYJ93lDYEYGRoAXKb7LYdjYczm8IsQJzHb5+5xpK27ulnDJroMo0Jz1usUykTvvU6DLYGLGnMXzJl7xEEiGzH7FVvbYSYjmpKhd3cJk5aEpFI917ub/PeHLqCt3W12psrDYi47GywdF6N3lqnh339A8Ep0Vq0/nmlNCxTyobJe6wM+TbtuiOm2LsbiSRFzg6MMQD0fP6Pj5iTQ3pdtnMajNuhumvV+QMyNorLSEUfFdepnlJuhBDHaS8vD0LOzGyXsRfEKcmtMH24XDmMbeg64pg/QZ6OP/P20Gj84Q+NOLRt9gcxKGJuGmU2bE3k4Gj+68+75bQG2EdyOUNTsZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L4ZvkG4hUcJGcVJ5/j60RaZw6TMG3flhVGp0L579Qko=;
 b=yTHSSVzsniG6cAR/DREb6nbua4gxGOERf8gFD/11ULPPns9GBtReK33w54f+fnLJs4kZWWAT0D0Wv4VHllZ/1/O/OpF0lHwAiA9NXLZLsXOJ3M6KEo/UIS421wCLAxbumYydRGbOnbTsr2LnQONc7OuqB13JIGt18xRIwL7Ou/SdmEYauHULQ4SwKSqjWHKowU6PcVkP5Nj+iPD70Ee8YtY5LL6e+RotACejAR9vusQM6rPXldH3OxxaOR+Sm0wuHfvwF9iV1VJUehdZt7TpTC4XtpOvHaoI0y+1G6g+XAbr6ZKSshsSZcqfFFGm0RsH1Jbnq020Ck5YRkMvbpuihA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CO1PR11MB4932.namprd11.prod.outlook.com (2603:10b6:303:98::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Wed, 5 Feb
 2025 09:11:05 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 09:11:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH] drm/i915/backlight: convert to use struct intel_display
Thread-Topic: [PATCH] drm/i915/backlight: convert to use struct intel_display
Thread-Index: AQHbdwhP75oGxOXMl0Wtjtg4hvhM7LM4bY+Q
Date: Wed, 5 Feb 2025 09:11:04 +0000
Message-ID: <SN7PR11MB67508B47B517EA6DD93BE4CFE3F72@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20250204132423.2910978-1-jani.nikula@intel.com>
In-Reply-To: <20250204132423.2910978-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CO1PR11MB4932:EE_
x-ms-office365-filtering-correlation-id: e3a9d400-d415-42c2-5d88-08dd45c504da
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?b6A1B/zeyztscvF5FTEzzj5wTYT3MnA6UWdSdg4WZEka7i/dNTnUsZQOFq4o?=
 =?us-ascii?Q?hOf4gJItL03g2Nx9tD//RRSkChCbaKlAFEtR+sJ3n0Wta21umU7QBgJFkWFK?=
 =?us-ascii?Q?lamZP2N+xzXfkLx3952Z+llqydH4kcJyMo9Ba9hJP4KGFqlqPvP5QqxsRF3d?=
 =?us-ascii?Q?YpS07D0Qp+Zeh6eY7Q6Eum+mEA8/fjOKHiKFT9OgInYm70IXWuNSpQmU2YTF?=
 =?us-ascii?Q?6QKKi+G9UqaY+bgTgooC0hxNNKnFlgo9htpKi7rk4XOxXwFNCQw1eOzg2VK6?=
 =?us-ascii?Q?bxoaATK5wepFXDPHywDK9fFDhy1l8ffTP2+xCkXmSkb7VenM/K4lj2TkvcS4?=
 =?us-ascii?Q?gNGcp/wXLu3jDMGffL/I6+pHH7XanuUXQWpliEU/gQ5P/zXeuWEMnjLwCW8I?=
 =?us-ascii?Q?NMijBNRjOCRyjcfdPUc9puiLbKngqVx4tB++RwKuqNU4hmoHjmotw2VKoyUc?=
 =?us-ascii?Q?RH8esbRTIXze4xpOpw6GjqUSIgpAdfyhP5EWsp5goEX84OnKDMiEDe1uiEEn?=
 =?us-ascii?Q?cAC/aXcFEODk5IJXyEniJpcQFRCdzESmajYm5hoGwTbQft+QydYeBZTSxtpE?=
 =?us-ascii?Q?nAf2kkA970rvR/PnhLt160kyPUEpzAKBfpl1SFpCfCNczZZnUzVtmIRegfDh?=
 =?us-ascii?Q?743BjNG/Hw9tTKzq3B8Xo1QncHLaLUI/0X9Dm3u70GqSfD0CFmEl8T4vcolp?=
 =?us-ascii?Q?WVumjgw1MhAuYX9fRiDvd+wyYuT4aSHppAAxGZbaqsgM4/Ppl0PyEwn6QSb6?=
 =?us-ascii?Q?uTCdrxDzmxxdtIXJpVcqR9uuuhX0S6HM073Tc+dHoL/7NztEPHUQRaob22f0?=
 =?us-ascii?Q?JZb51HsxF48kfwtDrNx5ipUa6O373y0LK3arRzSZ/B2J0SIut3uld0q2LnBM?=
 =?us-ascii?Q?fHtpdZdtcy5xnmc9J3HA6jPJiwNBBDT5luB3mWoAw8Y+EwjANKp6KTVyb3xB?=
 =?us-ascii?Q?HuQFV7E3VSjF36LbNHdehW85nTBT+GPT/sE3Vo0DMLBMuybF0B9HTY4a9L+B?=
 =?us-ascii?Q?zG9sI0x8JitYeZJlCA7yyj4YwMfMDLqL1rQbptzHUOYN8A25xoQT1KOnHlB0?=
 =?us-ascii?Q?OlfIGmidKFnZ/X9Yqbd3F9pcc4odqvDKidXKOAJyLv4k4igxlp2ahIrYk0Ea?=
 =?us-ascii?Q?h8IHyrBwjHqwKuB80SZxtnaFNYyv/ppoj9mUgM6Xt6NAd+IoYqa4SkwDdNGk?=
 =?us-ascii?Q?VI04IMVRRTUV2S7czK8nyAvIQJLIMXnkaWdLWI4TmIN/8xrKW3QyOUKWt7x2?=
 =?us-ascii?Q?f5/rlF9gMJU+0M4xBlIG5gCdJH9IA8aRWji3RNMYz3NCXY+aW5BvyH2DTU+i?=
 =?us-ascii?Q?++7iitaqEVknRjTFJFA3hSR8jwMwUzTQfdrKNa0m5XcmgM+eapSN8O7ZEjSo?=
 =?us-ascii?Q?0wwmJSV5T8VhdRLTlxUg3lAYYE3uF/t08JhyOk6CgczTalTxwIyFm4lHRfDd?=
 =?us-ascii?Q?rOz8aDGjoxTcJt6qWWz2WmtT7ssyjp+G?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ABpXBHGkYV8o8d0Ljj6DcR7ePGyVG+Rv+soqHwquTCGTmv2HeMINwhVY4/IZ?=
 =?us-ascii?Q?O9ZY6ics1pAiLCCzVx3pbWde+fYFDI4CXqZhajYMjWcHJww7oZrcj9NUxoYU?=
 =?us-ascii?Q?ni2F1Zt+8dhzZEmkUARO+c7NWtK11WIq5JQFxNcCpCyXQmqWV3ZPr/tEGtEr?=
 =?us-ascii?Q?vVN2ktAMGKd9dvOt/FJb0Do9/TsLi3mcKpl2TTpn54jmcj1LKSYKtUjDfqmQ?=
 =?us-ascii?Q?P0xwQ2K8hgLoPN/Nrk5TOUN5YhANwocUfh5nk4cEpvU099EefrO6hnSvZrEz?=
 =?us-ascii?Q?C2fBey3EXoQlPhLlWjqi+YuRMmz0E4tOwEvRfIxVrvbqsi6Q36Yoa6wDDDTt?=
 =?us-ascii?Q?fuzbJujv6KkBGOooI7bjsd9A/l1tJnr93Ghx+xCcqv8i505Sl/bWQNPE4w9c?=
 =?us-ascii?Q?RBDaMgwG4OvdY+zruBxr8h7HRebUN3lJCIzpC+tkaJNvrRWUOlt/VeGVVZ5m?=
 =?us-ascii?Q?VJ4fFHjFOZ47Tpv9pPVqAP/1EdkrxvV/QBb6xeZoHMibzR+9SKpNXT+amzkI?=
 =?us-ascii?Q?23CXaury+DMC0Fyed28ZCnD9f5+Kz7YeQwc8PNHCFO6pJ/sztiwOeIqF/bge?=
 =?us-ascii?Q?MtUoW8I2oYjwv4Xh2neb7lwISP4m/pCjCYfk8nH9az07mSOjfvVXGGbBqzoG?=
 =?us-ascii?Q?0TFXLrSMTNoydRsNne9FrwKvjFIsIEV9gF+Ce02po27s87TI55FIuKdai7Da?=
 =?us-ascii?Q?/mjJj+9dQ6+ryagknk0bvsLHcokq03i9EnkEI/qDLvGvH904BiFUzjVLlwHn?=
 =?us-ascii?Q?s1dgWu3ttIpbjkpExiD1JpZmdGGD8jcHjqXacXDBgy9n4DnlExB5Lh9tetE+?=
 =?us-ascii?Q?AhPGb6YIW7pBeeIb5Ck/Rniy+z42I86Pof4f65hBX6VB0rvtJik90zQI1CVc?=
 =?us-ascii?Q?mn0cFHTNU0Bojo3vwxaaVT0BT+WkEgmfKGQC6GqTdWq5OYgvBolIaGN6S2R7?=
 =?us-ascii?Q?9RYXp1Pss/vDWyXs0YcTrO7p+jt2WPrlhL5zryS8Hy4PTeu/w0iuuWVH0TCv?=
 =?us-ascii?Q?PEpZ2nmWq8YWbCc11rARZAGRQtypFNf5Y9cMh6l6nrq2umd6N8l3n73sDbtK?=
 =?us-ascii?Q?FVkedoAyuRkxyflG+FGShBe5a/AA2WwK0M54aXt5L24gQo0CtLc/3QvKW6AF?=
 =?us-ascii?Q?44QfmISJ7gM6/Dd07g1kB/nYz1+yACWQxbldGQQIvyCYqDdnvWettsWD2b92?=
 =?us-ascii?Q?hxDWTsKN1W49YYIPB2euXsM2zr9QQLawepBUuma2tLCV+8fnEeHi1PG0B/wA?=
 =?us-ascii?Q?BZKUjzQ8tbydP6HpGC7JydxgtSVdUW12gGiczViczirMHk7cSJ7zTRPmjVBa?=
 =?us-ascii?Q?olWigEFTvIP6g363y25SP7W5IHNaabLwf2pIpO/bKYixSRBWXXqzk/7Bnlsb?=
 =?us-ascii?Q?7i8VnWndzURLKoRrcvqRt6TeM4/h5WncJL9rYBMFDeAr24ocJcze0gKy7g1q?=
 =?us-ascii?Q?TtcXRe8JXc9TRp4X45x9I8mUaap7tNYNaCyqc2H2U6NE9u28IOfbdVVuALXS?=
 =?us-ascii?Q?O6siSliac2kHMbXZOoIXqjqFPsX4hf96KCYzsIXVRt3cJJvgFk9bXe7t12qb?=
 =?us-ascii?Q?BB3aKPErwb1XTbAuIkMr/m/A/+X98dDogF1MnZYq?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e3a9d400-d415-42c2-5d88-08dd45c504da
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2025 09:11:04.8689 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: krtvQZr0lp9UUFEp8a7zDwTMXnbTHOf+Yp03qECMvb6owN9gOo3tsVRi5r104TfCwoaYNlDv4yhsfTVmOe6FFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4932
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ja=
ni
> Nikula
> Sent: Tuesday, February 4, 2025 6:54 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [PATCH] drm/i915/backlight: convert to use struct intel_display
>=20
> Going forward, struct intel_display will be the main display data
> structure. Convert as much as possible of backlight code to use it.
>=20
> There are some stragglers mainly around PCH checks.
>=20
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 494 +++++++++---------
>  1 file changed, 260 insertions(+), 234 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c
> b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 7e6ce905bdaf..477b21af71a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -104,20 +104,20 @@ u32 intel_backlight_invert_pwm_level(struct
> intel_connector *connector, u32 val)
>  void intel_backlight_set_pwm_level(const struct drm_connector_state
> *conn_state, u32 val)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight PWM
> =3D %d\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] set backlight
> PWM =3D %d\n",
>  		    connector->base.base.id, connector->base.name, val);
>  	panel->backlight.pwm_funcs->set(conn_state, val);
>  }
>=20
>  u32 intel_backlight_level_to_pwm(struct intel_connector *connector, u32
> val)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
> -	drm_WARN_ON_ONCE(&i915->drm,
> +	drm_WARN_ON_ONCE(display->drm,
>  			 panel->backlight.max =3D=3D 0 || panel-
> >backlight.pwm_level_max =3D=3D 0);
>=20
>  	val =3D scale(val, panel->backlight.min, panel->backlight.max,
> @@ -145,32 +145,33 @@ u32 intel_backlight_level_from_pwm(struct
> intel_connector *connector, u32 val)
>=20
>  static u32 lpt_get_backlight(struct intel_connector *connector, enum pip=
e
> unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
> -	return intel_de_read(i915, BLC_PWM_PCH_CTL2) &
> BACKLIGHT_DUTY_CYCLE_MASK;
> +	return intel_de_read(display, BLC_PWM_PCH_CTL2) &
> BACKLIGHT_DUTY_CYCLE_MASK;
>  }
>=20
>  static u32 pch_get_backlight(struct intel_connector *connector, enum pip=
e
> unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
> -	return intel_de_read(i915, BLC_PWM_CPU_CTL) &
> BACKLIGHT_DUTY_CYCLE_MASK;
> +	return intel_de_read(display, BLC_PWM_CPU_CTL) &
> BACKLIGHT_DUTY_CYCLE_MASK;
>  }
>=20
>  static u32 i9xx_get_backlight(struct intel_connector *connector, enum pi=
pe
> unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 val;
>=20
> -	val =3D intel_de_read(i915, BLC_PWM_CTL) &
> BACKLIGHT_DUTY_CYCLE_MASK;
> -	if (DISPLAY_VER(i915) < 4)
> +	val =3D intel_de_read(display, BLC_PWM_CTL) &
> BACKLIGHT_DUTY_CYCLE_MASK;
> +	if (DISPLAY_VER(display) < 4)
>  		val >>=3D 1;
>=20
>  	if (panel->backlight.combination_mode) {
> +		struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  		u8 lbpc;
>=20
> -		pci_read_config_byte(to_pci_dev(i915->drm.dev), LBPC,
> &lbpc);
> +		pci_read_config_byte(pdev, LBPC, &lbpc);
>  		val *=3D lbpc;
>  	}
>=20
> @@ -179,20 +180,20 @@ static u32 i9xx_get_backlight(struct intel_connecto=
r
> *connector, enum pipe unuse
>=20
>  static u32 vlv_get_backlight(struct intel_connector *connector, enum pip=
e
> pipe)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
> -	if (drm_WARN_ON(&i915->drm, pipe !=3D PIPE_A && pipe !=3D PIPE_B))
> +	if (drm_WARN_ON(display->drm, pipe !=3D PIPE_A && pipe !=3D PIPE_B))
>  		return 0;
>=20
> -	return intel_de_read(i915, VLV_BLC_PWM_CTL(pipe)) &
> BACKLIGHT_DUTY_CYCLE_MASK;
> +	return intel_de_read(display, VLV_BLC_PWM_CTL(pipe)) &
> BACKLIGHT_DUTY_CYCLE_MASK;
>  }
>=20
>  static u32 bxt_get_backlight(struct intel_connector *connector, enum pip=
e
> unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
> -	return intel_de_read(i915, BXT_BLC_PWM_DUTY(panel-
> >backlight.controller));
> +	return intel_de_read(display, BXT_BLC_PWM_DUTY(panel-
> >backlight.controller));
>  }
>=20
>  static u32 ext_pwm_get_backlight(struct intel_connector *connector, enum
> pipe unused)
> @@ -207,69 +208,70 @@ static u32 ext_pwm_get_backlight(struct
> intel_connector *connector, enum pipe un
>  static void lpt_set_backlight(const struct drm_connector_state *conn_sta=
te,
> u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	u32 val;
>=20
> -	val =3D intel_de_read(i915, BLC_PWM_PCH_CTL2) &
> ~BACKLIGHT_DUTY_CYCLE_MASK;
> -	intel_de_write(i915, BLC_PWM_PCH_CTL2, val | level);
> +	val =3D intel_de_read(display, BLC_PWM_PCH_CTL2) &
> ~BACKLIGHT_DUTY_CYCLE_MASK;
> +	intel_de_write(display, BLC_PWM_PCH_CTL2, val | level);
>  }
>=20
>  static void pch_set_backlight(const struct drm_connector_state *conn_sta=
te,
> u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	u32 tmp;
>=20
> -	tmp =3D intel_de_read(i915, BLC_PWM_CPU_CTL) &
> ~BACKLIGHT_DUTY_CYCLE_MASK;
> -	intel_de_write(i915, BLC_PWM_CPU_CTL, tmp | level);
> +	tmp =3D intel_de_read(display, BLC_PWM_CPU_CTL) &
> ~BACKLIGHT_DUTY_CYCLE_MASK;
> +	intel_de_write(display, BLC_PWM_CPU_CTL, tmp | level);
>  }
>=20
>  static void i9xx_set_backlight(const struct drm_connector_state *conn_st=
ate,
> u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 tmp, mask;
>=20
> -	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max =3D=3D 0);
> +	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max =3D=3D
> 0);
>=20
>  	if (panel->backlight.combination_mode) {
> +		struct pci_dev *pdev =3D to_pci_dev(display->drm->dev);
>  		u8 lbpc;
>=20
>  		lbpc =3D level * 0xfe / panel->backlight.pwm_level_max + 1;
>  		level /=3D lbpc;
> -		pci_write_config_byte(to_pci_dev(i915->drm.dev), LBPC,
> lbpc);
> +		pci_write_config_byte(pdev, LBPC, lbpc);
>  	}
>=20
> -	if (DISPLAY_VER(i915) =3D=3D 4) {
> +	if (DISPLAY_VER(display) =3D=3D 4) {
>  		mask =3D BACKLIGHT_DUTY_CYCLE_MASK;
>  	} else {
>  		level <<=3D 1;
>  		mask =3D BACKLIGHT_DUTY_CYCLE_MASK_PNV;
>  	}
>=20
> -	tmp =3D intel_de_read(i915, BLC_PWM_CTL) & ~mask;
> -	intel_de_write(i915, BLC_PWM_CTL, tmp | level);
> +	tmp =3D intel_de_read(display, BLC_PWM_CTL) & ~mask;
> +	intel_de_write(display, BLC_PWM_CTL, tmp | level);
>  }
>=20
>  static void vlv_set_backlight(const struct drm_connector_state *conn_sta=
te,
> u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	enum pipe pipe =3D to_intel_crtc(conn_state->crtc)->pipe;
>  	u32 tmp;
>=20
> -	tmp =3D intel_de_read(i915, VLV_BLC_PWM_CTL(pipe)) &
> ~BACKLIGHT_DUTY_CYCLE_MASK;
> -	intel_de_write(i915, VLV_BLC_PWM_CTL(pipe), tmp | level);
> +	tmp =3D intel_de_read(display, VLV_BLC_PWM_CTL(pipe)) &
> ~BACKLIGHT_DUTY_CYCLE_MASK;
> +	intel_de_write(display, VLV_BLC_PWM_CTL(pipe), tmp | level);
>  }
>=20
>  static void bxt_set_backlight(const struct drm_connector_state *conn_sta=
te,
> u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
> -	intel_de_write(i915, BXT_BLC_PWM_DUTY(panel-
> >backlight.controller), level);
> +	intel_de_write(display, BXT_BLC_PWM_DUTY(panel-
> >backlight.controller), level);
>  }
>=20
>  static void ext_pwm_set_backlight(const struct drm_connector_state
> *conn_state, u32 level)
> @@ -284,10 +286,10 @@ static void
>  intel_panel_actually_set_backlight(const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] set backlight level
> =3D %d\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] set backlight level
> =3D %d\n",
>  		    connector->base.base.id, connector->base.name, level);
>=20
>  	panel->backlight.funcs->set(conn_state, level);
> @@ -300,7 +302,7 @@ void intel_backlight_set_acpi(const struct
> drm_connector_state *conn_state,
>  			      u32 user_level, u32 user_max)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 hw_level;
>=20
> @@ -313,9 +315,9 @@ void intel_backlight_set_acpi(const struct
> drm_connector_state *conn_state,
>  	if (!panel->backlight.present || !conn_state->crtc)
>  		return;
>=20
> -	mutex_lock(&i915->display.backlight.lock);
> +	mutex_lock(&display->backlight.lock);
>=20
> -	drm_WARN_ON(&i915->drm, panel->backlight.max =3D=3D 0);
> +	drm_WARN_ON(display->drm, panel->backlight.max =3D=3D 0);
>=20
>  	hw_level =3D clamp_user_to_hw(connector, user_level, user_max);
>  	panel->backlight.level =3D hw_level;
> @@ -329,13 +331,13 @@ void intel_backlight_set_acpi(const struct
> drm_connector_state *conn_state,
>  	if (panel->backlight.enabled)
>  		intel_panel_actually_set_backlight(conn_state, hw_level);
>=20
> -	mutex_unlock(&i915->display.backlight.lock);
> +	mutex_unlock(&display->backlight.lock);
>  }
>=20
>  static void lpt_disable_backlight(const struct drm_connector_state
> *old_conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D
> to_intel_connector(old_conn_state->connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	u32 tmp;
>=20
>  	intel_backlight_set_pwm_level(old_conn_state, level);
> @@ -348,26 +350,26 @@ static void lpt_disable_backlight(const struct
> drm_connector_state *old_conn_sta
>  	 * This needs rework if we need to add support for CPU PWM on PCH
> split
>  	 * platforms.
>  	 */
> -	tmp =3D intel_de_read(i915, BLC_PWM_CPU_CTL2);
> +	tmp =3D intel_de_read(display, BLC_PWM_CPU_CTL2);
>  	if (tmp & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU
> backlight was enabled, disabling\n",
> +		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] CPU
> backlight was enabled, disabling\n",
>  			    connector->base.base.id, connector->base.name);
> -		intel_de_write(i915, BLC_PWM_CPU_CTL2, tmp &
> ~BLM_PWM_ENABLE);
> +		intel_de_write(display, BLC_PWM_CPU_CTL2, tmp &
> ~BLM_PWM_ENABLE);
>  	}
>=20
> -	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE,
> 0);
> +	intel_de_rmw(display, BLC_PWM_PCH_CTL1,
> BLM_PCH_PWM_ENABLE, 0);
>  }
>=20
>  static void pch_disable_backlight(const struct drm_connector_state
> *old_conn_state, u32 val)
>  {
>  	struct intel_connector *connector =3D
> to_intel_connector(old_conn_state->connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>=20
> -	intel_de_rmw(i915, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
> +	intel_de_rmw(display, BLC_PWM_CPU_CTL2, BLM_PWM_ENABLE, 0);
>=20
> -	intel_de_rmw(i915, BLC_PWM_PCH_CTL1, BLM_PCH_PWM_ENABLE,
> 0);
> +	intel_de_rmw(display, BLC_PWM_PCH_CTL1,
> BLM_PCH_PWM_ENABLE, 0);
>  }
>=20
>  static void i9xx_disable_backlight(const struct drm_connector_state
> *old_conn_state, u32 val)
> @@ -377,48 +379,49 @@ static void i9xx_disable_backlight(const struct
> drm_connector_state *old_conn_st
>=20
>  static void i965_disable_backlight(const struct drm_connector_state
> *old_conn_state, u32 val)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(old_conn_state->connector-
> >dev);
> +	struct intel_connector *connector =3D
> to_intel_connector(old_conn_state->connector);
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>=20
> -	intel_de_rmw(i915, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
> +	intel_de_rmw(display, BLC_PWM_CTL2, BLM_PWM_ENABLE, 0);
>  }
>=20
>  static void vlv_disable_backlight(const struct drm_connector_state
> *old_conn_state, u32 val)
>  {
>  	struct intel_connector *connector =3D
> to_intel_connector(old_conn_state->connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	enum pipe pipe =3D to_intel_crtc(old_conn_state->crtc)->pipe;
>=20
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>=20
> -	intel_de_rmw(i915, VLV_BLC_PWM_CTL2(pipe), BLM_PWM_ENABLE,
> 0);
> +	intel_de_rmw(display, VLV_BLC_PWM_CTL2(pipe),
> BLM_PWM_ENABLE, 0);
>  }
>=20
>  static void bxt_disable_backlight(const struct drm_connector_state
> *old_conn_state, u32 val)
>  {
>  	struct intel_connector *connector =3D
> to_intel_connector(old_conn_state->connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>=20
> -	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> +	intel_de_rmw(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
>  		     BXT_BLC_PWM_ENABLE, 0);
>=20
>  	if (panel->backlight.controller =3D=3D 1)
> -		intel_de_rmw(i915, UTIL_PIN_CTL, UTIL_PIN_ENABLE, 0);
> +		intel_de_rmw(display, UTIL_PIN_CTL, UTIL_PIN_ENABLE, 0);
>  }
>=20
>  static void cnp_disable_backlight(const struct drm_connector_state
> *old_conn_state, u32 val)
>  {
>  	struct intel_connector *connector =3D
> to_intel_connector(old_conn_state->connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
>  	intel_backlight_set_pwm_level(old_conn_state, val);
>=20
> -	intel_de_rmw(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> +	intel_de_rmw(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
>  		     BXT_BLC_PWM_ENABLE, 0);
>  }
>=20
> @@ -436,7 +439,7 @@ static void ext_pwm_disable_backlight(const struct
> drm_connector_state *old_conn
>  void intel_backlight_disable(const struct drm_connector_state
> *old_conn_state)
>  {
>  	struct intel_connector *connector =3D
> to_intel_connector(old_conn_state->connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
>  	if (!panel->backlight.present)
> @@ -448,49 +451,51 @@ void intel_backlight_disable(const struct
> drm_connector_state *old_conn_state)
>  	 * backlight. This will leave the backlight on unnecessarily when
>  	 * another client is not activated.
>  	 */
> -	if (i915->drm.switch_power_state =3D=3D
> DRM_SWITCH_POWER_CHANGING) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Skipping
> backlight disable on vga switch\n",
> +	if (display->drm->switch_power_state =3D=3D
> DRM_SWITCH_POWER_CHANGING) {
> +		drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] Skipping
> backlight disable on vga switch\n",
>  			    connector->base.base.id, connector->base.name);
>  		return;
>  	}
>=20
> -	mutex_lock(&i915->display.backlight.lock);
> +	mutex_lock(&display->backlight.lock);
>=20
>  	if (panel->backlight.device)
>  		panel->backlight.device->props.power =3D
> BACKLIGHT_POWER_OFF;
>  	panel->backlight.enabled =3D false;
>  	panel->backlight.funcs->disable(old_conn_state, 0);
>=20
> -	mutex_unlock(&i915->display.backlight.lock);
> +	mutex_unlock(&display->backlight.lock);
>  }
>=20
>  static void lpt_enable_backlight(const struct intel_crtc_state *crtc_sta=
te,
>  				 const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 pch_ctl1, pch_ctl2;
>=20
> -	pch_ctl1 =3D intel_de_read(i915, BLC_PWM_PCH_CTL1);
> +	pch_ctl1 =3D intel_de_read(display, BLC_PWM_PCH_CTL1);
>  	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH
> backlight already enabled\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] PCH backlight already
> enabled\n",
>  			    connector->base.base.id, connector->base.name);
>  		pch_ctl1 &=3D ~BLM_PCH_PWM_ENABLE;
> -		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
> +		intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
>  	}
>=20
>  	if (HAS_PCH_LPT(i915))
> -		intel_de_rmw(i915, SOUTH_CHICKEN2,
> LPT_PWM_GRANULARITY,
> +		intel_de_rmw(display, SOUTH_CHICKEN2,
> LPT_PWM_GRANULARITY,
>  			     panel->backlight.alternate_pwm_increment ?
>  			     LPT_PWM_GRANULARITY : 0);
>  	else
> -		intel_de_rmw(i915, SOUTH_CHICKEN1,
> SPT_PWM_GRANULARITY,
> +		intel_de_rmw(display, SOUTH_CHICKEN1,
> SPT_PWM_GRANULARITY,
>  			     panel->backlight.alternate_pwm_increment ?
>  			     SPT_PWM_GRANULARITY : 0);
>=20
>  	pch_ctl2 =3D panel->backlight.pwm_level_max << 16;
> -	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
> +	intel_de_write(display, BLC_PWM_PCH_CTL2, pch_ctl2);
>=20
>  	pch_ctl1 =3D 0;
>  	if (panel->backlight.active_low_pwm)
> @@ -500,9 +505,9 @@ static void lpt_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  	if (HAS_PCH_LPT(i915))
>  		pch_ctl1 |=3D BLM_PCH_OVERRIDE_ENABLE;
>=20
> -	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
> -	intel_de_posting_read(i915, BLC_PWM_PCH_CTL1);
> -	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1 |
> BLM_PCH_PWM_ENABLE);
> +	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
> +	intel_de_posting_read(display, BLC_PWM_PCH_CTL1);
> +	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1 |
> BLM_PCH_PWM_ENABLE);
>=20
>  	/* This won't stick until the above enable. */
>  	intel_backlight_set_pwm_level(conn_state, level);
> @@ -512,63 +517,66 @@ static void pch_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  				 const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	u32 cpu_ctl2, pch_ctl1, pch_ctl2;
>=20
> -	cpu_ctl2 =3D intel_de_read(i915, BLC_PWM_CPU_CTL2);
> +	cpu_ctl2 =3D intel_de_read(display, BLC_PWM_CPU_CTL2);
>  	if (cpu_ctl2 & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] CPU
> backlight already enabled\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] CPU backlight already
> enabled\n",
>  			    connector->base.base.id, connector->base.name);
>  		cpu_ctl2 &=3D ~BLM_PWM_ENABLE;
> -		intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
> +		intel_de_write(display, BLC_PWM_CPU_CTL2, cpu_ctl2);
>  	}
>=20
> -	pch_ctl1 =3D intel_de_read(i915, BLC_PWM_PCH_CTL1);
> +	pch_ctl1 =3D intel_de_read(display, BLC_PWM_PCH_CTL1);
>  	if (pch_ctl1 & BLM_PCH_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PCH
> backlight already enabled\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] PCH backlight already
> enabled\n",
>  			    connector->base.base.id, connector->base.name);
>  		pch_ctl1 &=3D ~BLM_PCH_PWM_ENABLE;
> -		intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
> +		intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
>  	}
>=20
>  	if (cpu_transcoder =3D=3D TRANSCODER_EDP)
>  		cpu_ctl2 =3D BLM_TRANSCODER_EDP;
>  	else
>  		cpu_ctl2 =3D BLM_PIPE(cpu_transcoder);
> -	intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2);
> -	intel_de_posting_read(i915, BLC_PWM_CPU_CTL2);
> -	intel_de_write(i915, BLC_PWM_CPU_CTL2, cpu_ctl2 |
> BLM_PWM_ENABLE);
> +	intel_de_write(display, BLC_PWM_CPU_CTL2, cpu_ctl2);
> +	intel_de_posting_read(display, BLC_PWM_CPU_CTL2);
> +	intel_de_write(display, BLC_PWM_CPU_CTL2, cpu_ctl2 |
> BLM_PWM_ENABLE);
>=20
>  	/* This won't stick until the above enable. */
>  	intel_backlight_set_pwm_level(conn_state, level);
>=20
>  	pch_ctl2 =3D panel->backlight.pwm_level_max << 16;
> -	intel_de_write(i915, BLC_PWM_PCH_CTL2, pch_ctl2);
> +	intel_de_write(display, BLC_PWM_PCH_CTL2, pch_ctl2);
>=20
>  	pch_ctl1 =3D 0;
>  	if (panel->backlight.active_low_pwm)
>  		pch_ctl1 |=3D BLM_PCH_POLARITY;
>=20
> -	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1);
> -	intel_de_posting_read(i915, BLC_PWM_PCH_CTL1);
> -	intel_de_write(i915, BLC_PWM_PCH_CTL1, pch_ctl1 |
> BLM_PCH_PWM_ENABLE);
> +	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1);
> +	intel_de_posting_read(display, BLC_PWM_PCH_CTL1);
> +	intel_de_write(display, BLC_PWM_PCH_CTL1, pch_ctl1 |
> BLM_PCH_PWM_ENABLE);
>  }
>=20
>  static void i9xx_enable_backlight(const struct intel_crtc_state *crtc_st=
ate,
>  				  const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 ctl, freq;
>=20
> -	ctl =3D intel_de_read(i915, BLC_PWM_CTL);
> +	ctl =3D intel_de_read(display, BLC_PWM_CTL);
>  	if (ctl & BACKLIGHT_DUTY_CYCLE_MASK_PNV) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight
> already enabled\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] backlight already
> enabled\n",
>  			    connector->base.base.id, connector->base.name);
> -		intel_de_write(i915, BLC_PWM_CTL, 0);
> +		intel_de_write(display, BLC_PWM_CTL, 0);
>  	}
>=20
>  	freq =3D panel->backlight.pwm_level_max;
> @@ -578,11 +586,11 @@ static void i9xx_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  	ctl =3D freq << 17;
>  	if (panel->backlight.combination_mode)
>  		ctl |=3D BLM_LEGACY_MODE;
> -	if (IS_PINEVIEW(i915) && panel->backlight.active_low_pwm)
> +	if (display->platform.pineview && panel->backlight.active_low_pwm)
>  		ctl |=3D BLM_POLARITY_PNV;
>=20
> -	intel_de_write(i915, BLC_PWM_CTL, ctl);
> -	intel_de_posting_read(i915, BLC_PWM_CTL);
> +	intel_de_write(display, BLC_PWM_CTL, ctl);
> +	intel_de_posting_read(display, BLC_PWM_CTL);
>=20
>  	/* XXX: combine this into above write? */
>  	intel_backlight_set_pwm_level(conn_state, level);
> @@ -592,25 +600,26 @@ static void i9xx_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  	 * 855gm only, but checking for gen2 is safe, as 855gm is the only gen2
>  	 * that has backlight.
>  	 */
> -	if (DISPLAY_VER(i915) =3D=3D 2)
> -		intel_de_write(i915, BLC_HIST_CTL,
> BLM_HISTOGRAM_ENABLE);
> +	if (DISPLAY_VER(display) =3D=3D 2)
> +		intel_de_write(display, BLC_HIST_CTL,
> BLM_HISTOGRAM_ENABLE);
>  }
>=20
>  static void i965_enable_backlight(const struct intel_crtc_state *crtc_st=
ate,
>  				  const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	enum pipe pipe =3D to_intel_crtc(conn_state->crtc)->pipe;
>  	u32 ctl, ctl2, freq;
>=20
> -	ctl2 =3D intel_de_read(i915, BLC_PWM_CTL2);
> +	ctl2 =3D intel_de_read(display, BLC_PWM_CTL2);
>  	if (ctl2 & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight
> already enabled\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] backlight already
> enabled\n",
>  			    connector->base.base.id, connector->base.name);
>  		ctl2 &=3D ~BLM_PWM_ENABLE;
> -		intel_de_write(i915, BLC_PWM_CTL2, ctl2);
> +		intel_de_write(display, BLC_PWM_CTL2, ctl2);
>  	}
>=20
>  	freq =3D panel->backlight.pwm_level_max;
> @@ -618,16 +627,16 @@ static void i965_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  		freq /=3D 0xff;
>=20
>  	ctl =3D freq << 16;
> -	intel_de_write(i915, BLC_PWM_CTL, ctl);
> +	intel_de_write(display, BLC_PWM_CTL, ctl);
>=20
>  	ctl2 =3D BLM_PIPE(pipe);
>  	if (panel->backlight.combination_mode)
>  		ctl2 |=3D BLM_COMBINATION_MODE;
>  	if (panel->backlight.active_low_pwm)
>  		ctl2 |=3D BLM_POLARITY_I965;
> -	intel_de_write(i915, BLC_PWM_CTL2, ctl2);
> -	intel_de_posting_read(i915, BLC_PWM_CTL2);
> -	intel_de_write(i915, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
> +	intel_de_write(display, BLC_PWM_CTL2, ctl2);
> +	intel_de_posting_read(display, BLC_PWM_CTL2);
> +	intel_de_write(display, BLC_PWM_CTL2, ctl2 | BLM_PWM_ENABLE);
>=20
>  	intel_backlight_set_pwm_level(conn_state, level);
>  }
> @@ -636,21 +645,22 @@ static void vlv_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  				 const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>  	u32 ctl, ctl2;
>=20
> -	ctl2 =3D intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
> +	ctl2 =3D intel_de_read(display, VLV_BLC_PWM_CTL2(pipe));
>  	if (ctl2 & BLM_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight
> already enabled\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] backlight already
> enabled\n",
>  			    connector->base.base.id, connector->base.name);
>  		ctl2 &=3D ~BLM_PWM_ENABLE;
> -		intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
> +		intel_de_write(display, VLV_BLC_PWM_CTL2(pipe), ctl2);
>  	}
>=20
>  	ctl =3D panel->backlight.pwm_level_max << 16;
> -	intel_de_write(i915, VLV_BLC_PWM_CTL(pipe), ctl);
> +	intel_de_write(display, VLV_BLC_PWM_CTL(pipe), ctl);
>=20
>  	/* XXX: combine this into above write? */
>  	intel_backlight_set_pwm_level(conn_state, level);
> @@ -658,47 +668,49 @@ static void vlv_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  	ctl2 =3D 0;
>  	if (panel->backlight.active_low_pwm)
>  		ctl2 |=3D BLM_POLARITY_I965;
> -	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2);
> -	intel_de_posting_read(i915, VLV_BLC_PWM_CTL2(pipe));
> -	intel_de_write(i915, VLV_BLC_PWM_CTL2(pipe), ctl2 |
> BLM_PWM_ENABLE);
> +	intel_de_write(display, VLV_BLC_PWM_CTL2(pipe), ctl2);
> +	intel_de_posting_read(display, VLV_BLC_PWM_CTL2(pipe));
> +	intel_de_write(display, VLV_BLC_PWM_CTL2(pipe), ctl2 |
> BLM_PWM_ENABLE);
>  }
>=20
>  static void bxt_enable_backlight(const struct intel_crtc_state *crtc_sta=
te,
>  				 const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>  	u32 pwm_ctl, val;
>=20
>  	/* Controller 1 uses the utility pin. */
>  	if (panel->backlight.controller =3D=3D 1) {
> -		val =3D intel_de_read(i915, UTIL_PIN_CTL);
> +		val =3D intel_de_read(display, UTIL_PIN_CTL);
>  		if (val & UTIL_PIN_ENABLE) {
> -			drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s]
> utility pin already enabled\n",
> +			drm_dbg_kms(display->drm,
> +				    "[CONNECTOR:%d:%s] utility pin already
> enabled\n",
>  				    connector->base.base.id, connector-
> >base.name);
>  			val &=3D ~UTIL_PIN_ENABLE;
> -			intel_de_write(i915, UTIL_PIN_CTL, val);
> +			intel_de_write(display, UTIL_PIN_CTL, val);
>  		}
>=20
>  		val =3D 0;
>  		if (panel->backlight.util_pin_active_low)
>  			val |=3D UTIL_PIN_POLARITY;
> -		intel_de_write(i915, UTIL_PIN_CTL,
> +		intel_de_write(display, UTIL_PIN_CTL,
>  			       val | UTIL_PIN_PIPE(pipe) |
> UTIL_PIN_MODE_PWM | UTIL_PIN_ENABLE);
>  	}
>=20
> -	pwm_ctl =3D intel_de_read(i915, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
> +	pwm_ctl =3D intel_de_read(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
>  	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] backlight
> already enabled\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] backlight already
> enabled\n",
>  			    connector->base.base.id, connector->base.name);
>  		pwm_ctl &=3D ~BXT_BLC_PWM_ENABLE;
> -		intel_de_write(i915, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
> +		intel_de_write(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
>  			       pwm_ctl);
>  	}
>=20
> -	intel_de_write(i915, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller),
> +	intel_de_write(display, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller),
>  		       panel->backlight.pwm_level_max);
>=20
>  	intel_backlight_set_pwm_level(conn_state, level);
> @@ -707,9 +719,9 @@ static void bxt_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  	if (panel->backlight.active_low_pwm)
>  		pwm_ctl |=3D BXT_BLC_PWM_POLARITY;
>=20
> -	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> pwm_ctl);
> -	intel_de_posting_read(i915, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
> -	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> +	intel_de_write(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller), pwm_ctl);
> +	intel_de_posting_read(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
> +	intel_de_write(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
>  		       pwm_ctl | BXT_BLC_PWM_ENABLE);
>  }
>=20
> @@ -717,19 +729,19 @@ static void cnp_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  				 const struct drm_connector_state
> *conn_state, u32 level)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 pwm_ctl;
>=20
> -	pwm_ctl =3D intel_de_read(i915, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
> +	pwm_ctl =3D intel_de_read(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
>  	if (pwm_ctl & BXT_BLC_PWM_ENABLE) {
> -		drm_dbg_kms(&i915->drm, "backlight already enabled\n");
> +		drm_dbg_kms(display->drm, "backlight already enabled\n");
>  		pwm_ctl &=3D ~BXT_BLC_PWM_ENABLE;
> -		intel_de_write(i915, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
> +		intel_de_write(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
>  			       pwm_ctl);
>  	}
>=20
> -	intel_de_write(i915, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller),
> +	intel_de_write(display, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller),
>  		       panel->backlight.pwm_level_max);
>=20
>  	intel_backlight_set_pwm_level(conn_state, level);
> @@ -738,9 +750,9 @@ static void cnp_enable_backlight(const struct
> intel_crtc_state *crtc_state,
>  	if (panel->backlight.active_low_pwm)
>  		pwm_ctl |=3D BXT_BLC_PWM_POLARITY;
>=20
> -	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> pwm_ctl);
> -	intel_de_posting_read(i915, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
> -	intel_de_write(i915, BXT_BLC_PWM_CTL(panel->backlight.controller),
> +	intel_de_write(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller), pwm_ctl);
> +	intel_de_posting_read(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
> +	intel_de_write(display, BXT_BLC_PWM_CTL(panel-
> >backlight.controller),
>  		       pwm_ctl | BXT_BLC_PWM_ENABLE);
>  }
>=20
> @@ -782,37 +794,37 @@ void intel_backlight_enable(const struct
> intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
>=20
>  	if (!panel->backlight.present)
>  		return;
>=20
> -	drm_dbg_kms(&i915->drm, "pipe %c\n", pipe_name(pipe));
> +	drm_dbg_kms(display->drm, "pipe %c\n", pipe_name(pipe));
>=20
> -	mutex_lock(&i915->display.backlight.lock);
> +	mutex_lock(&display->backlight.lock);
>=20
>  	__intel_backlight_enable(crtc_state, conn_state);
>=20
> -	mutex_unlock(&i915->display.backlight.lock);
> +	mutex_unlock(&display->backlight.lock);
>  }
>=20
>  #if IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
>  static u32 intel_panel_get_backlight(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 val =3D 0;
>=20
> -	mutex_lock(&i915->display.backlight.lock);
> +	mutex_lock(&display->backlight.lock);
>=20
>  	if (panel->backlight.enabled)
>  		val =3D panel->backlight.funcs->get(connector,
> intel_connector_get_pipe(connector));
>=20
> -	mutex_unlock(&i915->display.backlight.lock);
> +	mutex_unlock(&display->backlight.lock);
>=20
> -	drm_dbg_kms(&i915->drm, "get backlight PWM =3D %d\n", val);
> +	drm_dbg_kms(display->drm, "get backlight PWM =3D %d\n", val);
>  	return val;
>  }
>=20
> @@ -831,16 +843,16 @@ static void intel_panel_set_backlight(const struct
> drm_connector_state *conn_sta
>  				      u32 user_level, u32 user_max)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 hw_level;
>=20
>  	if (!panel->backlight.present)
>  		return;
>=20
> -	mutex_lock(&i915->display.backlight.lock);
> +	mutex_lock(&display->backlight.lock);
>=20
> -	drm_WARN_ON(&i915->drm, panel->backlight.max =3D=3D 0);
> +	drm_WARN_ON(display->drm, panel->backlight.max =3D=3D 0);
>=20
>  	hw_level =3D scale_user_to_hw(connector, user_level, user_max);
>  	panel->backlight.level =3D hw_level;
> @@ -848,18 +860,18 @@ static void intel_panel_set_backlight(const struct
> drm_connector_state *conn_sta
>  	if (panel->backlight.enabled)
>  		intel_panel_actually_set_backlight(conn_state, hw_level);
>=20
> -	mutex_unlock(&i915->display.backlight.lock);
> +	mutex_unlock(&display->backlight.lock);
>  }
>=20
>  static int intel_backlight_device_update_status(struct backlight_device =
*bd)
>  {
>  	struct intel_connector *connector =3D bl_get_data(bd);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
> -	drm_modeset_lock(&i915->drm.mode_config.connection_mutex,
> NULL);
> +	drm_modeset_lock(&display->drm-
> >mode_config.connection_mutex, NULL);
>=20
> -	drm_dbg_kms(&i915->drm, "updating intel_backlight,
> brightness=3D%d/%d\n",
> +	drm_dbg_kms(display->drm, "updating intel_backlight,
> brightness=3D%d/%d\n",
>  		    bd->props.brightness, bd->props.max_brightness);
>  	intel_panel_set_backlight(connector->base.state, bd-
> >props.brightness,
>  				  bd->props.max_brightness);
> @@ -880,7 +892,7 @@ static int intel_backlight_device_update_status(struc=
t
> backlight_device *bd)
>  		bd->props.power =3D BACKLIGHT_POWER_OFF;
>  	}
>=20
> -	drm_modeset_unlock(&i915->drm.mode_config.connection_mutex);
> +	drm_modeset_unlock(&display->drm-
> >mode_config.connection_mutex);
>=20
>  	return 0;
>  }
> @@ -888,6 +900,7 @@ static int intel_backlight_device_update_status(struc=
t
> backlight_device *bd)
>  static int intel_backlight_device_get_brightness(struct backlight_device=
 *bd)
>  {
>  	struct intel_connector *connector =3D bl_get_data(bd);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	intel_wakeref_t wakeref;
>  	int ret =3D 0;
> @@ -895,13 +908,13 @@ static int
> intel_backlight_device_get_brightness(struct backlight_device *bd)
>  	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
>  		u32 hw_level;
>=20
> -		drm_modeset_lock(&i915-
> >drm.mode_config.connection_mutex, NULL);
> +		drm_modeset_lock(&display->drm-
> >mode_config.connection_mutex, NULL);
>=20
>  		hw_level =3D intel_panel_get_backlight(connector);
>  		ret =3D scale_hw_to_user(connector,
>  				       hw_level, bd->props.max_brightness);
>=20
> -		drm_modeset_unlock(&i915-
> >drm.mode_config.connection_mutex);
> +		drm_modeset_unlock(&display->drm-
> >mode_config.connection_mutex);
>  	}
>=20
>  	return ret;
> @@ -914,7 +927,7 @@ static const struct backlight_ops
> intel_backlight_device_ops =3D {
>=20
>  int intel_backlight_device_register(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	struct backlight_properties props;
>  	struct backlight_device *bd;
> @@ -930,7 +943,8 @@ int intel_backlight_device_register(struct
> intel_connector *connector)
>  	WARN_ON(panel->backlight.max =3D=3D 0);
>=20
>  	if (!acpi_video_backlight_use_native()) {
> -		drm_info(&i915->drm, "Skipping intel_backlight
> registration\n");
> +		drm_info(display->drm,
> +			 "Skipping intel_backlight registration\n");
>  		return 0;
>  	}
>=20
> @@ -967,7 +981,8 @@ int intel_backlight_device_register(struct
> intel_connector *connector)
>  		 */
>  		kfree(name);
>  		name =3D kasprintf(GFP_KERNEL, "card%d-%s-backlight",
> -				 i915->drm.primary->index, connector-
> >base.name);
> +				 display->drm->primary->index,
> +				 connector->base.name);
>  		if (!name)
>  			return -ENOMEM;
>  	}
> @@ -975,7 +990,7 @@ int intel_backlight_device_register(struct
> intel_connector *connector)
>  				       &intel_backlight_device_ops, &props);
>=20
>  	if (IS_ERR(bd)) {
> -		drm_err(&i915->drm,
> +		drm_err(display->drm,
>  			"[CONNECTOR:%d:%s] backlight device %s register
> failed: %ld\n",
>  			connector->base.base.id, connector->base.name,
> name, PTR_ERR(bd));
>  		ret =3D PTR_ERR(bd);
> @@ -984,7 +999,7 @@ int intel_backlight_device_register(struct
> intel_connector *connector)
>=20
>  	panel->backlight.device =3D bd;
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] backlight device %s registered\n",
>  		    connector->base.base.id, connector->base.name, name);
>=20
> @@ -1011,9 +1026,9 @@ void intel_backlight_device_unregister(struct
> intel_connector *connector)
>   */
>  static u32 cnp_hz_to_pwm(struct intel_connector *connector, u32
> pwm_freq_hz)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
> -	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(i915)-
> >rawclk_freq),
> +	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(display)-
> >rawclk_freq),
>  				 pwm_freq_hz);
>  }
>=20
> @@ -1073,9 +1088,9 @@ static u32 lpt_hz_to_pwm(struct intel_connector
> *connector, u32 pwm_freq_hz)
>   */
>  static u32 pch_hz_to_pwm(struct intel_connector *connector, u32
> pwm_freq_hz)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>=20
> -	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(i915)-
> >rawclk_freq),
> +	return DIV_ROUND_CLOSEST(KHz(DISPLAY_RUNTIME_INFO(display)-
> >rawclk_freq),
>  				 pwm_freq_hz * 128);
>  }
>=20
> @@ -1089,13 +1104,13 @@ static u32 pch_hz_to_pwm(struct
> intel_connector *connector, u32 pwm_freq_hz)
>   */
>  static u32 i9xx_hz_to_pwm(struct intel_connector *connector, u32
> pwm_freq_hz)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	int clock;
>=20
> -	if (IS_PINEVIEW(i915))
> -		clock =3D KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
> +	if (display->platform.pineview)
> +		clock =3D KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq);
>  	else
> -		clock =3D KHz(i915->display.cdclk.hw.cdclk);
> +		clock =3D KHz(display->cdclk.hw.cdclk);
>=20
>  	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 32);
>  }
> @@ -1107,13 +1122,13 @@ static u32 i9xx_hz_to_pwm(struct
> intel_connector *connector, u32 pwm_freq_hz)
>   */
>  static u32 i965_hz_to_pwm(struct intel_connector *connector, u32
> pwm_freq_hz)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	int clock;
>=20
> -	if (IS_G4X(i915))
> -		clock =3D KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
> +	if (display->platform.g4x)
> +		clock =3D KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq);
>  	else
> -		clock =3D KHz(i915->display.cdclk.hw.cdclk);
> +		clock =3D KHz(display->cdclk.hw.cdclk);
>=20
>  	return DIV_ROUND_CLOSEST(clock, pwm_freq_hz * 128);
>  }
> @@ -1125,17 +1140,17 @@ static u32 i965_hz_to_pwm(struct
> intel_connector *connector, u32 pwm_freq_hz)
>   */
>  static u32 vlv_hz_to_pwm(struct intel_connector *connector, u32
> pwm_freq_hz)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	int mul, clock;
>=20
> -	if ((intel_de_read(i915, CBR1_VLV) &
> CBR_PWM_CLOCK_MUX_SELECT) =3D=3D 0) {
> -		if (IS_CHERRYVIEW(i915))
> +	if ((intel_de_read(display, CBR1_VLV) &
> CBR_PWM_CLOCK_MUX_SELECT) =3D=3D 0) {
> +		if (display->platform.cherryview)
>  			clock =3D KHz(19200);
>  		else
>  			clock =3D MHz(25);
>  		mul =3D 16;
>  	} else {
> -		clock =3D KHz(DISPLAY_RUNTIME_INFO(i915)->rawclk_freq);
> +		clock =3D KHz(DISPLAY_RUNTIME_INFO(display)->rawclk_freq);
>  		mul =3D 128;
>  	}
>=20
> @@ -1144,16 +1159,16 @@ static u32 vlv_hz_to_pwm(struct intel_connector
> *connector, u32 pwm_freq_hz)
>=20
>  static u16 get_vbt_pwm_freq(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	u16 pwm_freq_hz =3D connector->panel.vbt.backlight.pwm_freq_hz;
>=20
>  	if (pwm_freq_hz) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "VBT defined backlight frequency %u Hz\n",
>  			    pwm_freq_hz);
>  	} else {
>  		pwm_freq_hz =3D 200;
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "default backlight frequency %u Hz\n",
>  			    pwm_freq_hz);
>  	}
> @@ -1163,20 +1178,20 @@ static u16 get_vbt_pwm_freq(struct
> intel_connector *connector)
>=20
>  static u32 get_backlight_max_vbt(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u16 pwm_freq_hz =3D get_vbt_pwm_freq(connector);
>  	u32 pwm;
>=20
>  	if (!panel->backlight.pwm_funcs->hz_to_pwm) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "backlight frequency conversion not supported\n");
>  		return 0;
>  	}
>=20
>  	pwm =3D panel->backlight.pwm_funcs->hz_to_pwm(connector,
> pwm_freq_hz);
>  	if (!pwm) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "backlight frequency conversion failed\n");
>  		return 0;
>  	}
> @@ -1189,11 +1204,11 @@ static u32 get_backlight_max_vbt(struct
> intel_connector *connector)
>   */
>  static u32 get_backlight_min_vbt(struct intel_connector *connector)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	int min;
>=20
> -	drm_WARN_ON(&i915->drm, panel->backlight.pwm_level_max =3D=3D 0);
> +	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max =3D=3D
> 0);
>=20
>  	/*
>  	 * XXX: If the vbt value is 255, it makes min equal to max, which leads
> @@ -1204,7 +1219,7 @@ static u32 get_backlight_min_vbt(struct
> intel_connector *connector)
>  	 */
>  	min =3D clamp_t(int, connector->panel.vbt.backlight.min_brightness, 0,
> 64);
>  	if (min !=3D connector->panel.vbt.backlight.min_brightness) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "clamping VBT min backlight %d/255 to %d/255\n",
>  			    connector->panel.vbt.backlight.min_brightness,
> min);
>  	}
> @@ -1215,24 +1230,25 @@ static u32 get_backlight_min_vbt(struct
> intel_connector *connector)
>=20
>  static int lpt_setup_backlight(struct intel_connector *connector, enum p=
ipe
> unused)
>  {
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 cpu_ctl2, pch_ctl1, pch_ctl2, val;
>  	bool alt, cpu_mode;
>=20
>  	if (HAS_PCH_LPT(i915))
> -		alt =3D intel_de_read(i915, SOUTH_CHICKEN2) &
> LPT_PWM_GRANULARITY;
> +		alt =3D intel_de_read(display, SOUTH_CHICKEN2) &
> LPT_PWM_GRANULARITY;
>  	else
> -		alt =3D intel_de_read(i915, SOUTH_CHICKEN1) &
> SPT_PWM_GRANULARITY;
> +		alt =3D intel_de_read(display, SOUTH_CHICKEN1) &
> SPT_PWM_GRANULARITY;
>  	panel->backlight.alternate_pwm_increment =3D alt;
>=20
> -	pch_ctl1 =3D intel_de_read(i915, BLC_PWM_PCH_CTL1);
> +	pch_ctl1 =3D intel_de_read(display, BLC_PWM_PCH_CTL1);
>  	panel->backlight.active_low_pwm =3D pch_ctl1 & BLM_PCH_POLARITY;
>=20
> -	pch_ctl2 =3D intel_de_read(i915, BLC_PWM_PCH_CTL2);
> +	pch_ctl2 =3D intel_de_read(display, BLC_PWM_PCH_CTL2);
>  	panel->backlight.pwm_level_max =3D pch_ctl2 >> 16;
>=20
> -	cpu_ctl2 =3D intel_de_read(i915, BLC_PWM_CPU_CTL2);
> +	cpu_ctl2 =3D intel_de_read(display, BLC_PWM_CPU_CTL2);
>=20
>  	if (!panel->backlight.pwm_level_max)
>  		panel->backlight.pwm_level_max =3D
> get_backlight_max_vbt(connector);
> @@ -1251,19 +1267,19 @@ static int lpt_setup_backlight(struct
> intel_connector *connector, enum pipe unus
>  	if (cpu_mode) {
>  		val =3D pch_get_backlight(connector, unused);
>=20
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "CPU backlight register was enabled, switching to
> PCH override\n");
>=20
>  		/* Write converted CPU PWM value to PCH override register
> */
>  		lpt_set_backlight(connector->base.state, val);
> -		intel_de_write(i915, BLC_PWM_PCH_CTL1,
> +		intel_de_write(display, BLC_PWM_PCH_CTL1,
>  			       pch_ctl1 | BLM_PCH_OVERRIDE_ENABLE);
>=20
> -		intel_de_write(i915, BLC_PWM_CPU_CTL2,
> +		intel_de_write(display, BLC_PWM_CPU_CTL2,
>  			       cpu_ctl2 & ~BLM_PWM_ENABLE);
>  	}
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight
> control\n",
>  		    connector->base.base.id, connector->base.name);
>=20
> @@ -1272,14 +1288,14 @@ static int lpt_setup_backlight(struct
> intel_connector *connector, enum pipe unus
>=20
>  static int pch_setup_backlight(struct intel_connector *connector, enum p=
ipe
> unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 cpu_ctl2, pch_ctl1, pch_ctl2;
>=20
> -	pch_ctl1 =3D intel_de_read(i915, BLC_PWM_PCH_CTL1);
> +	pch_ctl1 =3D intel_de_read(display, BLC_PWM_PCH_CTL1);
>  	panel->backlight.active_low_pwm =3D pch_ctl1 & BLM_PCH_POLARITY;
>=20
> -	pch_ctl2 =3D intel_de_read(i915, BLC_PWM_PCH_CTL2);
> +	pch_ctl2 =3D intel_de_read(display, BLC_PWM_PCH_CTL2);
>  	panel->backlight.pwm_level_max =3D pch_ctl2 >> 16;
>=20
>  	if (!panel->backlight.pwm_level_max)
> @@ -1290,11 +1306,11 @@ static int pch_setup_backlight(struct
> intel_connector *connector, enum pipe unus
>=20
>  	panel->backlight.pwm_level_min =3D
> get_backlight_min_vbt(connector);
>=20
> -	cpu_ctl2 =3D intel_de_read(i915, BLC_PWM_CPU_CTL2);
> +	cpu_ctl2 =3D intel_de_read(display, BLC_PWM_CPU_CTL2);
>  	panel->backlight.pwm_enabled =3D (cpu_ctl2 & BLM_PWM_ENABLE)
> &&
>  		(pch_ctl1 & BLM_PCH_PWM_ENABLE);
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight
> control\n",
>  		    connector->base.base.id, connector->base.name);
>=20
> @@ -1303,16 +1319,16 @@ static int pch_setup_backlight(struct
> intel_connector *connector, enum pipe unus
>=20
>  static int i9xx_setup_backlight(struct intel_connector *connector, enum =
pipe
> unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 ctl, val;
>=20
> -	ctl =3D intel_de_read(i915, BLC_PWM_CTL);
> +	ctl =3D intel_de_read(display, BLC_PWM_CTL);
>=20
> -	if (DISPLAY_VER(i915) =3D=3D 2 || IS_I915GM(i915) || IS_I945GM(i915))
> +	if (DISPLAY_VER(display) =3D=3D 2 || display->platform.i915gm || displa=
y-
> >platform.i945gm)
>  		panel->backlight.combination_mode =3D ctl &
> BLM_LEGACY_MODE;
>=20
> -	if (IS_PINEVIEW(i915))
> +	if (display->platform.pineview)
>  		panel->backlight.active_low_pwm =3D ctl &
> BLM_POLARITY_PNV;
>=20
>  	panel->backlight.pwm_level_max =3D ctl >> 17;
> @@ -1336,7 +1352,7 @@ static int i9xx_setup_backlight(struct
> intel_connector *connector, enum pipe unu
>=20
>  	panel->backlight.pwm_enabled =3D val !=3D 0;
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using native PWM for backlight
> control\n",
>  		    connector->base.base.id, connector->base.name);
>=20
> @@ -1345,15 +1361,15 @@ static int i9xx_setup_backlight(struct
> intel_connector *connector, enum pipe unu
>=20
>  static int i965_setup_backlight(struct intel_connector *connector, enum =
pipe
> unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 ctl, ctl2;
>=20
> -	ctl2 =3D intel_de_read(i915, BLC_PWM_CTL2);
> +	ctl2 =3D intel_de_read(display, BLC_PWM_CTL2);
>  	panel->backlight.combination_mode =3D ctl2 &
> BLM_COMBINATION_MODE;
>  	panel->backlight.active_low_pwm =3D ctl2 & BLM_POLARITY_I965;
>=20
> -	ctl =3D intel_de_read(i915, BLC_PWM_CTL);
> +	ctl =3D intel_de_read(display, BLC_PWM_CTL);
>  	panel->backlight.pwm_level_max =3D ctl >> 16;
>=20
>  	if (!panel->backlight.pwm_level_max)
> @@ -1369,7 +1385,7 @@ static int i965_setup_backlight(struct
> intel_connector *connector, enum pipe unu
>=20
>  	panel->backlight.pwm_enabled =3D ctl2 & BLM_PWM_ENABLE;
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using native PWM for backlight
> control\n",
>  		    connector->base.base.id, connector->base.name);
>=20
> @@ -1378,17 +1394,17 @@ static int i965_setup_backlight(struct
> intel_connector *connector, enum pipe unu
>=20
>  static int vlv_setup_backlight(struct intel_connector *connector, enum p=
ipe
> pipe)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 ctl, ctl2;
>=20
> -	if (drm_WARN_ON(&i915->drm, pipe !=3D PIPE_A && pipe !=3D PIPE_B))
> +	if (drm_WARN_ON(display->drm, pipe !=3D PIPE_A && pipe !=3D PIPE_B))
>  		return -ENODEV;
>=20
> -	ctl2 =3D intel_de_read(i915, VLV_BLC_PWM_CTL2(pipe));
> +	ctl2 =3D intel_de_read(display, VLV_BLC_PWM_CTL2(pipe));
>  	panel->backlight.active_low_pwm =3D ctl2 & BLM_POLARITY_I965;
>=20
> -	ctl =3D intel_de_read(i915, VLV_BLC_PWM_CTL(pipe));
> +	ctl =3D intel_de_read(display, VLV_BLC_PWM_CTL(pipe));
>  	panel->backlight.pwm_level_max =3D ctl >> 16;
>=20
>  	if (!panel->backlight.pwm_level_max)
> @@ -1401,7 +1417,7 @@ static int vlv_setup_backlight(struct intel_connect=
or
> *connector, enum pipe pipe
>=20
>  	panel->backlight.pwm_enabled =3D ctl2 & BLM_PWM_ENABLE;
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using native PWM for backlight
> control (on pipe %c)\n",
>  		    connector->base.base.id, connector->base.name,
> pipe_name(pipe));
>=20
> @@ -1411,25 +1427,25 @@ static int vlv_setup_backlight(struct
> intel_connector *connector, enum pipe pipe
>  static int
>  bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 pwm_ctl, val;
>=20
>  	panel->backlight.controller =3D connector-
> >panel.vbt.backlight.controller;
>=20
> -	pwm_ctl =3D intel_de_read(i915,
> +	pwm_ctl =3D intel_de_read(display,
>  				BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
>=20
>  	/* Controller 1 uses the utility pin. */
>  	if (panel->backlight.controller =3D=3D 1) {
> -		val =3D intel_de_read(i915, UTIL_PIN_CTL);
> +		val =3D intel_de_read(display, UTIL_PIN_CTL);
>  		panel->backlight.util_pin_active_low =3D
>  					val & UTIL_PIN_POLARITY;
>  	}
>=20
>  	panel->backlight.active_low_pwm =3D pwm_ctl &
> BXT_BLC_PWM_POLARITY;
>  	panel->backlight.pwm_level_max =3D
> -		intel_de_read(i915, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller));
> +		intel_de_read(display, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller));
>=20
>  	if (!panel->backlight.pwm_level_max)
>  		panel->backlight.pwm_level_max =3D
> get_backlight_max_vbt(connector);
> @@ -1441,7 +1457,7 @@ bxt_setup_backlight(struct intel_connector
> *connector, enum pipe unused)
>=20
>  	panel->backlight.pwm_enabled =3D pwm_ctl & BXT_BLC_PWM_ENABLE;
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using native PWM for backlight
> control (controller=3D%d)\n",
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.controller);
> @@ -1449,8 +1465,10 @@ bxt_setup_backlight(struct intel_connector
> *connector, enum pipe unused)
>  	return 0;
>  }
>=20
> -static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
> +static int cnp_num_backlight_controllers(struct intel_display *display)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
>  	if (INTEL_PCH_TYPE(i915) >=3D PCH_MTL)
>  		return 2;
>=20
> @@ -1463,15 +1481,17 @@ static int cnp_num_backlight_controllers(struct
> drm_i915_private *i915)
>  	return 1;
>  }
>=20
> -static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i=
915,
> int controller)
> +static bool cnp_backlight_controller_is_valid(struct intel_display *disp=
lay, int
> controller)
>  {
> -	if (controller < 0 || controller >=3D
> cnp_num_backlight_controllers(i915))
> +	struct drm_i915_private *i915 =3D to_i915(display->drm);
> +
> +	if (controller < 0 || controller >=3D
> cnp_num_backlight_controllers(display))
>  		return false;
>=20
>  	if (controller =3D=3D 1 &&
>  	    INTEL_PCH_TYPE(i915) >=3D PCH_ICP &&
>  	    INTEL_PCH_TYPE(i915) <=3D PCH_ADP)
> -		return intel_de_read(i915, SOUTH_CHICKEN1) &
> ICP_SECOND_PPS_IO_SELECT;
> +		return intel_de_read(display, SOUTH_CHICKEN1) &
> ICP_SECOND_PPS_IO_SELECT;
>=20
>  	return true;
>  }
> @@ -1479,7 +1499,7 @@ static bool cnp_backlight_controller_is_valid(struc=
t
> drm_i915_private *i915, int
>  static int
>  cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	u32 pwm_ctl;
>=20
> @@ -1488,19 +1508,20 @@ cnp_setup_backlight(struct intel_connector
> *connector, enum pipe unused)
>  	 * controller. ICP+ can have two controllers, depending on pin muxing.
>  	 */
>  	panel->backlight.controller =3D connector-
> >panel.vbt.backlight.controller;
> -	if (!cnp_backlight_controller_is_valid(i915, panel-
> >backlight.controller)) {
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] Invalid
> backlight controller %d, assuming 0\n",
> +	if (!cnp_backlight_controller_is_valid(display, panel-
> >backlight.controller)) {
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] Invalid backlight controller
> %d, assuming 0\n",
>  			    connector->base.base.id, connector->base.name,
>  			    panel->backlight.controller);
>  		panel->backlight.controller =3D 0;
>  	}
>=20
> -	pwm_ctl =3D intel_de_read(i915,
> +	pwm_ctl =3D intel_de_read(display,
>  				BXT_BLC_PWM_CTL(panel-
> >backlight.controller));
>=20
>  	panel->backlight.active_low_pwm =3D pwm_ctl &
> BXT_BLC_PWM_POLARITY;
>  	panel->backlight.pwm_level_max =3D
> -		intel_de_read(i915, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller));
> +		intel_de_read(display, BXT_BLC_PWM_FREQ(panel-
> >backlight.controller));
>=20
>  	if (!panel->backlight.pwm_level_max)
>  		panel->backlight.pwm_level_max =3D
> get_backlight_max_vbt(connector);
> @@ -1512,7 +1533,7 @@ cnp_setup_backlight(struct intel_connector
> *connector, enum pipe unused)
>=20
>  	panel->backlight.pwm_enabled =3D pwm_ctl & BXT_BLC_PWM_ENABLE;
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using native PCH PWM for backlight
> control (controller=3D%d)\n",
>  		    connector->base.base.id, connector->base.name,
>  		    panel->backlight.controller);
> @@ -1523,22 +1544,25 @@ cnp_setup_backlight(struct intel_connector
> *connector, enum pipe unused)
>  static int ext_pwm_setup_backlight(struct intel_connector *connector,
>  				   enum pipe pipe)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>  	const char *desc;
>  	u32 level;
>=20
>  	/* Get the right PWM chip for DSI backlight according to VBT */
>  	if (connector->panel.vbt.dsi.config->pwm_blc =3D=3D PPS_BLC_PMIC) {
> -		panel->backlight.pwm =3D pwm_get(i915->drm.dev,
> "pwm_pmic_backlight");
> +		panel->backlight.pwm =3D pwm_get(display->drm->dev,
> +					       "pwm_pmic_backlight");
>  		desc =3D "PMIC";
>  	} else {
> -		panel->backlight.pwm =3D pwm_get(i915->drm.dev,
> "pwm_soc_backlight");
> +		panel->backlight.pwm =3D pwm_get(display->drm->dev,
> +					       "pwm_soc_backlight");
>  		desc =3D "SoC";
>  	}
>=20
>  	if (IS_ERR(panel->backlight.pwm)) {
> -		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to get the
> %s PWM chip\n",
> +		drm_err(display->drm,
> +			"[CONNECTOR:%d:%s] Failed to get the %s PWM
> chip\n",
>  			connector->base.base.id, connector->base.name,
> desc);
>  		panel->backlight.pwm =3D NULL;
>  		return -ENODEV;
> @@ -1556,7 +1580,8 @@ static int ext_pwm_setup_backlight(struct
> intel_connector *connector,
>  		level =3D intel_backlight_invert_pwm_level(connector, level);
>  		panel->backlight.pwm_enabled =3D true;
>=20
> -		drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] PWM
> already enabled at freq %ld, VBT freq %d, level %d\n",
> +		drm_dbg_kms(display->drm,
> +			    "[CONNECTOR:%d:%s] PWM already enabled at
> freq %ld, VBT freq %d, level %d\n",
>  			    connector->base.base.id, connector->base.name,
>  			    NSEC_PER_SEC / (unsigned long)panel-
> >backlight.pwm_state.period,
>  			    get_vbt_pwm_freq(connector), level);
> @@ -1566,7 +1591,7 @@ static int ext_pwm_setup_backlight(struct
> intel_connector *connector,
>  			NSEC_PER_SEC / get_vbt_pwm_freq(connector);
>  	}
>=20
> -	drm_dbg_kms(&i915->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] Using %s PWM for backlight
> control\n",
>  		    connector->base.base.id, connector->base.name, desc);
>=20
> @@ -1632,17 +1657,17 @@ void intel_backlight_update(struct
> intel_atomic_state *state,
>  			    const struct drm_connector_state *conn_state)
>  {
>  	struct intel_connector *connector =3D to_intel_connector(conn_state-
> >connector);
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct intel_panel *panel =3D &connector->panel;
>=20
>  	if (!panel->backlight.present)
>  		return;
>=20
> -	mutex_lock(&i915->display.backlight.lock);
> +	mutex_lock(&display->backlight.lock);
>  	if (!panel->backlight.enabled)
>  		__intel_backlight_enable(crtc_state, conn_state);
>=20
> -	mutex_unlock(&i915->display.backlight.lock);
> +	mutex_unlock(&display->backlight.lock);
>  }
>=20
>  int intel_backlight_setup(struct intel_connector *connector, enum pipe p=
ipe)
> @@ -1793,13 +1818,14 @@ void intel_backlight_init_funcs(struct intel_pane=
l
> *panel)
>  {
>  	struct intel_connector *connector =3D
>  		container_of(panel, struct intel_connector, panel);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
>=20
>  	if (connector->base.connector_type =3D=3D
> DRM_MODE_CONNECTOR_DSI &&
>  	    intel_dsi_dcs_init_backlight_funcs(connector) =3D=3D 0)
>  		return;
>=20
> -	if (IS_GEMINILAKE(i915) || IS_BROXTON(i915)) {
> +	if (display->platform.geminilake || display->platform.broxton) {
>  		panel->backlight.pwm_funcs =3D &bxt_pwm_funcs;
>  	} else if (INTEL_PCH_TYPE(i915) >=3D PCH_CNP) {
>  		panel->backlight.pwm_funcs =3D &cnp_pwm_funcs;
> @@ -1810,13 +1836,13 @@ void intel_backlight_init_funcs(struct intel_pane=
l
> *panel)
>  			panel->backlight.pwm_funcs =3D &spt_pwm_funcs;
>  	} else if (HAS_PCH_SPLIT(i915)) {
>  		panel->backlight.pwm_funcs =3D &pch_pwm_funcs;
> -	} else if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915)) {
> +	} else if (display->platform.valleyview || display-
> >platform.cherryview) {
>  		if (connector->base.connector_type =3D=3D
> DRM_MODE_CONNECTOR_DSI) {
>  			panel->backlight.pwm_funcs =3D &ext_pwm_funcs;
>  		} else {
>  			panel->backlight.pwm_funcs =3D &vlv_pwm_funcs;
>  		}
> -	} else if (DISPLAY_VER(i915) =3D=3D 4) {
> +	} else if (DISPLAY_VER(display) =3D=3D 4) {
>  		panel->backlight.pwm_funcs =3D &i965_pwm_funcs;
>  	} else {
>  		panel->backlight.pwm_funcs =3D &i9xx_pwm_funcs;
> @@ -1826,7 +1852,7 @@ void intel_backlight_init_funcs(struct intel_panel
> *panel)
>  		if (intel_dp_aux_init_backlight_funcs(connector) =3D=3D 0)
>  			return;
>=20
> -		if (!intel_has_quirk(&i915->display,
> QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
> +		if (!intel_has_quirk(display,
> QUIRK_NO_PPS_BACKLIGHT_POWER_HOOK))
>  			connector->panel.backlight.power =3D
> intel_pps_backlight_power;
>  	}
>=20
> --
> 2.39.5

