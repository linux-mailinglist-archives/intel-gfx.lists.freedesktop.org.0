Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C90EC99BA1D
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Oct 2024 17:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 659E210E379;
	Sun, 13 Oct 2024 15:39:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PaULnKAJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B394910E379;
 Sun, 13 Oct 2024 15:39:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728833984; x=1760369984;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7e1HhmeXi6zJlzcq5X61vuqrTBnVldMQYT0CGsFsh58=;
 b=PaULnKAJ9vb7jX21Ou8Q80aIEBjICYi+guo0+77QnUBqXu4I0kp6r+HP
 UrUEWl6NZdELko/FnyxnyRHtaLl0nMUMoEalBF8k3QUeBy79ll+Xprg3t
 05FrNwmao5vFqHniZAWPRwTP1WwTy17ME7cq06yJVntyCeeQTto2SBA2Z
 GMQowYrP+iSbN8SwqNXkrYFKtsR+zj1J/5gzoJWmkOvNurqFvNub8FTLy
 i8GMPm5M5t/BSEKCHmrtAG0kE1cYnXx+GDndtoeUwdhbOc3XSTmox9nK7
 dW0fYMgbz90eXi6LO7xJRFgJ95gbmNekVlykvB7/S3WXEsj24f3awbyUo g==;
X-CSE-ConnectionGUID: nf5Cz1c6QtGa9/WdJzCHfQ==
X-CSE-MsgGUID: isg9jsXNTSS4YGOGdroVkg==
X-IronPort-AV: E=McAfee;i="6700,10204,11224"; a="28267044"
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="28267044"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2024 08:39:44 -0700
X-CSE-ConnectionGUID: a5qr0V6zQF2cQAa7mJPQ/g==
X-CSE-MsgGUID: 1+r00FqSQ/C662J5cwVqsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,201,1725346800"; d="scan'208";a="114798598"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Oct 2024 08:39:44 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 13 Oct 2024 08:39:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 13 Oct 2024 08:39:43 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 13 Oct 2024 08:39:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=OHVu9N3OogKoTSNuDtR/rCu4YgrW9XfIizRy3GFAPPq3imoqmsPRiLVwyYSziQuLCxstsNce9UL5Quqoze0Nou8Iv6PDt16hvs65TwcoCMUoTJdcakYl6A4/jwSEOAtQzq45XY4rcCVobXZaet6KfDn9uPu9LuGBDsAVdr0N+gm7ZEYdr4PUCXX8dSaUvsNSMasU08KXWjsn3L0kWoj6HcIKzSQeL0hRRDdCqUxm0+r3eDmP42wd6YUUdmq4eccrXcx/eBUhkt9vh/AElLGvp42Do+rMx/x4M23A1Z7NtchDe5IOM2nWlpUF4ArCtCJnIwTcMX4rS6pb0RzGc8v3uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UdIvOgqR859w2Flm9qrrPXxOARdH8HQtQsTueCj/YOc=;
 b=DJPQ2VWQN35JruGsrA/ly9KxP4Z5yhzHbXX1w8hiFER+pYtpSdmAlrp4qDVlBFUagsa6X2q12dggN6avzuKv2Pz1YcDIKoASOITDwGF8bWXYoxhjyoF30d3V3dLyEo/rehV8kJicnczVLMZvSD9l92Y3F5Nr3U17X28SNTMIy8HD28pnYM42HSuAwVeMR+Dg2EJE4Yv1Y9WgS9pI6QI5pirjzwqPD675dtndEodSnEnbVngKrUL3Pen3GkVvboOsgMW/tt/o5ucaE3P7MH18KLY1c7G9nwsaplkkCZdop6JN+NkKFDIu6kKCiMDenUyW7dx+ro+vKVSctL/M143WQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by PH7PR11MB6554.namprd11.prod.outlook.com (2603:10b6:510:1a8::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.24; Sun, 13 Oct
 2024 15:39:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%4]) with mapi id 15.20.8048.020; Sun, 13 Oct 2024
 15:39:38 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 6/7] drm/i915/dp: Use clamp for pipe_bpp limits with DSC
Thread-Topic: [PATCH 6/7] drm/i915/dp: Use clamp for pipe_bpp limits with DSC
Thread-Index: AQHbFYDhSPWhl4/FkEGV8vupCp19s7KE4PjA
Date: Sun, 13 Oct 2024 15:39:38 +0000
Message-ID: <SN7PR11MB67503EE8166F44D427126D60E37B2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241003104343.984060-1-ankit.k.nautiyal@intel.com>
 <20241003104343.984060-7-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241003104343.984060-7-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|PH7PR11MB6554:EE_
x-ms-office365-filtering-correlation-id: 068e6c13-d082-46be-de15-08dceb9d3f81
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?1DxbM5p5YlJ1Asdrww0SuIlIBsbWM3nZODJg1FCJHO3kS9JANLpDMJ+KpSVg?=
 =?us-ascii?Q?ZDtO56LHQm2QR1TdYm+IbtiDDnYTXrK6dhCyEJUNAiT7dZwiIT4gcSFsNKUR?=
 =?us-ascii?Q?UvhEplkQTob9lnzWM4EQbwD1Yu4IhQIPQ3pUX1pvcnZM6LbGruC9qX9sDRFx?=
 =?us-ascii?Q?vI/fpA67YN8TVQHDdy00CJ8suvdCCxt/iYGoYsy/t0mTH9kTEHoMVIgOqD7O?=
 =?us-ascii?Q?Vd8dlKkjTkeEglQEJjSyR8X9JUw5ZUUTDsCOoXkeSUK4TK22InK7HgUyFfLt?=
 =?us-ascii?Q?Iv3qV+jmWB8/VcIvCDlUtYmeUsDz7jLE/kX8oyfrTLoWcCQpQgxpC+L/MtL+?=
 =?us-ascii?Q?gDbdNgjwxn9tVGY4moeuLUMjAdy0rA3GUSZDAXnLE6napoKpz6VA+MF3yDR7?=
 =?us-ascii?Q?IdhDCvTIdF7Lws8co9qp+1+lyA8EXvioEhE/C3CKzl4lr9FrX0jo1BUHfZnf?=
 =?us-ascii?Q?IVQlsTNQBYUEw/IMVbtrTGhZ+ssD7sjf2JVqJEz1zNe4zplDc8vWL+9OpXrM?=
 =?us-ascii?Q?7wZ/QmP71zYqMX3GdtfEtfu2DWxHUlj6pi0HAXWao6umHI/nwzGuMoAr4N1f?=
 =?us-ascii?Q?ckwm197rLsSlhrT0EYyccuYPH32pQwKQF/j9kc80M3ryI0PczaKqOOiSmeSR?=
 =?us-ascii?Q?5tpGRGyXInwptJzGGI/plFT9fLub8s2hP3ssibNs8iuKPfGpKLiuma2Tkl73?=
 =?us-ascii?Q?R44z4WEEQnzsn5aHe+HWJiRxbYeC9h/6bEsmg16WH5jNyQJiWd+pKuG+sO+6?=
 =?us-ascii?Q?MLNVbKwTvW40Qo3vgZdKKKz8gMmoPHvRZPCBxRliAdxD9MfE4b8PU/wRiUkc?=
 =?us-ascii?Q?oT3rAHrZHVsGQT6SDcGo+c7npJaqttd1QzRvP3YA5bSEIk5g7xJ3XZa5+mTt?=
 =?us-ascii?Q?VFkws+AxvbhqiyyrjxF3PbBz0kgUZVYRolxoANMOlsvfnXYRzGqdlk5MeV7I?=
 =?us-ascii?Q?lnlsXopil7D5lV3UWHDn0f7A93pInKilLf59i7KO7UsK6GJPDgqTWCtQauY/?=
 =?us-ascii?Q?DpM9ZXyAipleWf92axsEcewdnidoweoGFJJAjhNtPM6V8uzYzmBgyujM7wEc?=
 =?us-ascii?Q?fqRVz43fOoca6Uo2CNqDVNTQpns7EpeqUmhpe0NDSUyyFSqJnTgf84NzagmV?=
 =?us-ascii?Q?KXKsdw3pRGwGGS2T+3IGvsIdeuJvgUe+H2FI7g6PBxTQrqWlwVgC+c8S3SQ/?=
 =?us-ascii?Q?jYqKmZLlQjLjz0kA4ikDRmOifpfN1ezniexajs6e0P1TBjhWXG0tPpV5hJCF?=
 =?us-ascii?Q?bgJHETQYtB27xi/s2U3qLS+1nsIP1glYwU+iNwGL9w=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?iWXqRraMOH1FhV6xaVzSkEoNwpMdPyGgp4umDlVOzrSQu9TKnzIP5ZDKXj2W?=
 =?us-ascii?Q?Lp8uQ+eElr/BupT8C6tWZ4L+S88UJycC2d9nMW3qsmRrjPgdWqeOkWfDLOHQ?=
 =?us-ascii?Q?7haoJrXUZ3Vz20DJdc+9z5rEmzG3T7xClKvbTWvzNwEL6sDma9TFEfqWQ61l?=
 =?us-ascii?Q?gh/W1AvG7MlgiHLUetoveVExeCRbHp55Uh9ATQC6sQ8hc7h/SXzB3GZDo0gT?=
 =?us-ascii?Q?WicmcRL0y9+HbKk5RI4zv8Hee/R9MH28Ce1284mbELyOUpVoocYcj/1LbM6J?=
 =?us-ascii?Q?7jBEeQ+k4GBjqIxx2fnuxHFdTYCnPtPuBKavRAGkUnj7gQADk4hNasNYpJLy?=
 =?us-ascii?Q?CjR00zm9NRgTb+cWMmctIn9TRk/qVS+xY4b9xu3UC/7p0eADyOuCfU6pRvFn?=
 =?us-ascii?Q?qfzN2AEyWBje7ewCcpdBygkkHxAwX5njFKU4x3K+ndFuAZBDgu5rsyNjPQFQ?=
 =?us-ascii?Q?iMovUzEu0cC9WrCm8z4FZR94ExHUMnESEOTzcAYzImHEmKQNEmJO/HiEmlZP?=
 =?us-ascii?Q?wlSLKJC6CuWaKJhdTPOzVpIAfZLhUPQ5YlzzJm/hXFssYZD+be3cp1zZYF1w?=
 =?us-ascii?Q?B8A4wWG4ZOkdc8GGJBTG0ctk+pL8v0IYFHWzbHdQK5RhW4lMhLynmew4uh6T?=
 =?us-ascii?Q?jjHRnFAb2V/TEztYYbNsdhfe5JDyHsk94FA2aHM+ljGFh0ceavHoQBVr5Rhj?=
 =?us-ascii?Q?gF+aSYEHsGOtGEzQlfShqVB0jIRPwFFof8OcI+qCoIu1w6abh1/pGi1x3TMf?=
 =?us-ascii?Q?BZOThmQCUKy+XzkIykunPuNjVSs1f5wu5c7zEOW4tDBm0TXxb+DnpeWKJTeV?=
 =?us-ascii?Q?aHVAI0uougNauz/bJ9G/MHvfFJ9Q17oezJufWheL47u8eniCVp7Q5jKyHysm?=
 =?us-ascii?Q?cRlvdGdS34OOm8tbKiR4bolasTTcJz/hTz5fMu5PAB9NRAIbwMRBmR3kS1+P?=
 =?us-ascii?Q?l0GSSN0kUhLKX9FAt1MJSi7prwkI0CEV9RpTlxpQFFSWC6wJzLrHMkWBxdbe?=
 =?us-ascii?Q?fHU8BFxu3phbt0jCcBCT4PU5Z6+9nCtogiz8eGFx3m4H8Kz4wm1gxPgbCbH6?=
 =?us-ascii?Q?2lXTVP+Fq9wf8xA/FkbWABWkgEKzRhdyIjLBEzdkyPyTHwSKBTMHSyU2Cskt?=
 =?us-ascii?Q?ry6NuABRHoU3aP5xPyEVu0H2psZktyY8JA83flxvPvzaMJ83AwD8G+YiTdRH?=
 =?us-ascii?Q?QUZ0CByGmx6rXk87PMU1DuGGW5ABL18kDk0DKQ/yMZEUH3yRevqW+0VgmzN1?=
 =?us-ascii?Q?9H1GWJs74PrNZ27/cxu2UnC9XZxEVFcVLTLHywHu4MaVIhgm03fUU7/y6Nly?=
 =?us-ascii?Q?RfQydmc1rGRTT7bYb3YG3Fxnuv8+HPhdKKD4HID/970wf9MS6znHOhdUqpKj?=
 =?us-ascii?Q?Htow6xUsSgibPq7+yARdxWXA5GqNxKBxnpnjMwGq4PWVUVA6dKRL6Q8okZiR?=
 =?us-ascii?Q?ounDJk8CCEf11HJIjA/rDOyyy5Hxwel3ccgNV3Qxf3tpQ2r1zD1MOrOeBy6/?=
 =?us-ascii?Q?GSAoDUeVDbEWkwoTuW38fBInC4PeS05xc3HDNS10ujQcozb8i07xCKAVdD7J?=
 =?us-ascii?Q?7EeRtkQEU9yPuHgqo5lPqVSIAdxi2IirQs041PhS?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 068e6c13-d082-46be-de15-08dceb9d3f81
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2024 15:39:38.7130 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7g5EwGu9gN3SRh3hsOojqdnBZvBSI48xWsfZcz5OMkN0v/ZqdjHfDOMaDrliPofXFWO94WAIsnxNek/ipNsJ8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6554
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
> From: Nautiyal, Ankit K <ankit.k.nautiyal@intel.com>
> Sent: Thursday, October 3, 2024 4:14 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj
> <suraj.kandpal@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH 6/7] drm/i915/dp: Use clamp for pipe_bpp limits with DSC
>=20
> Currently to get the max pipe_bpp with dsc we take the min of
> limits->pipe.max_bpp and dsc max bpp (dsc max bpc * 3). This can result
> in problems when limits->pipe.max_bpp is less than the computed dsc min
> bpp (dsc min bpc * 3).
>=20
> Replace the min/max functions with clamp while computing
> limits->pipe.max/min_bpp to ensure that the pipe_bpp limits are
> limits->constrained
> within the DSC-defined minimum and maximum values.
>=20

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 55ee438a4fec..02009ae03840 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2490,8 +2490,11 @@ intel_dp_compute_config_limits(struct intel_dp
> *intel_dp,
>  		int dsc_min_bpc =3D intel_dp_dsc_min_src_input_bpc(display);
>  		int dsc_max_bpc =3D
> intel_dp_dsc_max_src_input_bpc(display);
>=20
> -		limits->pipe.max_bpp =3D min(limits->pipe.max_bpp,
> dsc_max_bpc * 3);
> -		limits->pipe.min_bpp =3D max(limits->pipe.min_bpp,
> dsc_min_bpc * 3);
> +		limits->pipe.max_bpp =3D clamp(limits->pipe.max_bpp,
> +					     dsc_min_bpc * 3, dsc_max_bpc *
> 3);
> +
> +		limits->pipe.min_bpp =3D clamp(limits->pipe.min_bpp,
> +					     dsc_min_bpc * 3, dsc_max_bpc *
> 3);
>  	}
>=20
>  	if (intel_dp->use_max_params) {
> --
> 2.45.2

