Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D51C6993638
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 20:29:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 725A110E3F9;
	Mon,  7 Oct 2024 18:29:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AgOOSC9G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2C6910E215;
 Mon,  7 Oct 2024 18:29:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728325791; x=1759861791;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=xs+TWmjfrInuxlgQHwH5t8uHGshRXNgRf1C/lMY8Z98=;
 b=AgOOSC9Gi8Jw58VKs/YI/Dk0RLrQj3e/52aIN+p20w4hY89dDzDuybLz
 S6lv0mzFwckwXcE3g1R5QJvzglnoJUv3PCnY8wbSSWTvMxRL05xHSTknP
 v4SoT+UsAVQfZl09b+7VhC8iuEHkqe6eZAF/q6IIKKZ1GHxlbP8j5lmKj
 G6ouaEQK2AP/cL0OQmSo+QG7cJ2d/PwjEAX1vJgFhA4kFrkfYNTZg9CJc
 49/9V+YgNylcMT4usZMwI7BpV5qKBkBqasPAvPgTonetEl+DyNiyTDolr
 aDlNz6ECVajkK6cBHDw4K5LIsY1w5GLYuENNQjEAOqx+K+bZu/u3kx73B w==;
X-CSE-ConnectionGUID: Ly0sVFxpS1WjXxKG5CgtpQ==
X-CSE-MsgGUID: LQOgfqRxSNSeUNl8CdlnXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="38618733"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="38618733"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 11:29:51 -0700
X-CSE-ConnectionGUID: lTBKiMqARYebAGiWa4N4hA==
X-CSE-MsgGUID: qgHH9poqTYKet3gThJllJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="75678868"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 11:29:50 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:29:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 11:29:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 11:29:49 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 11:29:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZXmXNXLqhx2oAsWthbbXFkez/DYCgctYMtqUTaMZTqwSSjyW/gczL06YLHR6DWkDff/OqxdlFvHQWrtRGBZdwyTsY7OYyjNadlAHuvtpnS/RTAwbCh8+43BszkYpNkzNUph1AZCmY2sIn94j+ql8wXUvT4FtvbrqJ7ni/1dg4u6+rfI/WAZBWDZT5BHPl/eNgFSpj//+TNFNzqtgjNA4Mb5m8ipV9O28JKQcFFCIfYItSEX5hsnX7r+/8A9wDwlylACA7vaU3sPVYcN48C1WGi3+y3yraC4Ebz3gNDRriFBl0KvPeOrV+I/wDeg1R9Y9NNEzMG29ykIItEgKf9daXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iBZp/iYA0hXtf+SacTrwR5Y/f9orrWf2+dX0iyNVDWU=;
 b=TfxHNfISxFM1Beh2rWtf3kKxBvqgjyS/acDcQUltdXmBDWUmqi+csuzKPUXnWgtgbuvyY4Udj34P27zNIJP/LnpmIvj8jnJzDRZ8CGb3jQwGUtxQfM87uII4u+cnbtAKTckksLc4M0hb2+gf/AIQvZvnyj/rMixoU3EgXbzfOFbrZ/iFOHVOq6YboD1kjrxG3YFqWQqWYMYC5U/1ivoGzTrBHruBWK/oM8McZmLqFWC7TFdzAN+Vn0znQtnmbapABtk/tiPZQfR8jdrvhNN20ud+bUpbKEhpnJlBWurMeVglldsCWV1dIFGVDKU3EdgZzhjCyx6y2t3ydVFKit8kWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5445.namprd11.prod.outlook.com (2603:10b6:208:30b::7)
 by IA0PR11MB8334.namprd11.prod.outlook.com (2603:10b6:208:483::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.20; Mon, 7 Oct
 2024 18:29:46 +0000
Received: from BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161]) by BL1PR11MB5445.namprd11.prod.outlook.com
 ([fe80::b1a1:c6a6:403:8161%7]) with mapi id 15.20.8026.020; Mon, 7 Oct 2024
 18:29:46 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Cavitt, Jonathan"
 <jonathan.cavitt@intel.com>
Subject: RE: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during
 non-d3cold RPM resume
Thread-Topic: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during
 non-d3cold RPM resume
Thread-Index: AQHbGMH7qzEBLyRgx0mrEWOdtn41TLJ7nANg
Date: Mon, 7 Oct 2024 18:29:46 +0000
Message-ID: <BL1PR11MB5445566CC674BD448027A065E57D2@BL1PR11MB5445.namprd11.prod.outlook.com>
References: <20241007140531.1044630-1-imre.deak@intel.com>
 <20241007140531.1044630-2-imre.deak@intel.com>
In-Reply-To: <20241007140531.1044630-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5445:EE_|IA0PR11MB8334:EE_
x-ms-office365-filtering-correlation-id: d96a0d25-2d10-4af8-a131-08dce6fe053b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?l4suQ+kzHYKsLWHINkrqEI7tWCMke4BzeGgf03xpcGCezbar9FL6nEyMRsoA?=
 =?us-ascii?Q?CyAtYyqILfKHouhxWSs9GgOoJixZghJaFOOrtEdeuxKgdpOqWYoSf/jb5chh?=
 =?us-ascii?Q?Q8D6Espwh77jnPPc+e0xrM1N39vdX/OUB7UalVlAlB0XDhsg7B6+t+4rs6li?=
 =?us-ascii?Q?BdJOo+hU6x5OTIUza2d0N0gdw97JJjcOe+4gwInYl9zRekAJ9uZ3auJ6v+m+?=
 =?us-ascii?Q?6GqNWOkC/B/b6U3MmeDcoiaNJKVfTXLDwIo3PNaqNUl5c9d4LwfkJtjuu6K4?=
 =?us-ascii?Q?wl1xFJvw7GdE+cO/H5wNtSPILUXt2LkxCxGbFIqaDBdxz168iygqDA5cuaKO?=
 =?us-ascii?Q?xNcnMDC2ZYX1D+TTcgZyK1CmJU3wGFVf9okgLZ0mYrhEshRIqJVM/6ih1cDr?=
 =?us-ascii?Q?L2HsgDPjidvH20q2lUOV8q/tJVOPlqRfWlkq7wbWTgr11nfq8zkzDO8Thfxm?=
 =?us-ascii?Q?KRM4eUj2+9huEks97It2Kb6qjbOTrIw/JlByz+ZJdHv6+d9Yjoolv/tKCu77?=
 =?us-ascii?Q?G+bbQdSA2IIZr3IVzPjPQviZFb+sOUKyJJekbp7qcUOE1f5qaoOUpLlmoCpt?=
 =?us-ascii?Q?NYT39RWjC9PPpGPSPDb5hjjW8Zd0AV/HREoKkNRZUU0w0F9qjZGZOSoQIKDa?=
 =?us-ascii?Q?i3qPNHKgp15G4iK8Hvmw9u1yhPC12wIkMIDN7kH7Mwj2LTTirVbcdOEZvajs?=
 =?us-ascii?Q?eug54FAyNnoOZST1t2pkUaU0V/B+tFDhF6iQp108pMrrwPXZ3ONwzzTDr1cX?=
 =?us-ascii?Q?w3rM7m8sWPFgPwEYoYIpnB8TfcsSok6VkpfIVxxUtu55aZG5sESAT8+mUpwm?=
 =?us-ascii?Q?4Kg3Hw6THv0WS8gVKUvaZg50fXTRytZSPqeas3L0cq+ceMJMSil+lpCu8+F9?=
 =?us-ascii?Q?MmL2ht45R/dAJMhC+QFFGa5hqRv6TvBgSDwEAnqUZJUzm+xy7O2pPVx3wl04?=
 =?us-ascii?Q?mdVcP5iQZEaRgg63mVe38JpQcBngAeJbadPrsPEuTTzHWv4XWnIVhGJNNgFY?=
 =?us-ascii?Q?mAQXjCD88OBNMtT/olvUmCRe8wStRjXW+s9lXM6/mwmobLQsaPkgfwM4iUFk?=
 =?us-ascii?Q?cdhNYpJZXtalxqksMoSxcWKO6Bduxj0X/utdI9rzZ6IZ4sqOMaGhSQsEHElU?=
 =?us-ascii?Q?fHNrh5f8oPfbfb/0gvWuiOT+HGA2Tld1RqpNjXPjdATB2Yw/uJhpKdcCeSVw?=
 =?us-ascii?Q?+8gVGG5GS/pxBG2rcENN1Yp6WNLUjHaebWUIXtT1wqUtNpLfisccucM/OSFn?=
 =?us-ascii?Q?hA7bu+bLHdHQ5RDXIMAFmmfnytG1bqVQ76dNY1KWzeWxqNHfzjjCXS3GdT2R?=
 =?us-ascii?Q?5aSubaJzvbUI1p9d6ujgC/6qKP8W4ANEFLhoB6ZBQt/HWw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OU7rWBLTTlnT3Rs+o7P0kcZAFL9A/5AnOXespItl9WsKJ6fcC/Tq8vxJ1q0A?=
 =?us-ascii?Q?2A2euEFk9wQPSeTIx+v61sy/vccbrS12/HZl7hRd7ZGoQDs7rJknUQHVR94O?=
 =?us-ascii?Q?U6KsUcgSUm59+HvPYQmBIpdQVRf66pqmZpa2D/xnFBVL9TLXeXXGa94hUmeA?=
 =?us-ascii?Q?wlPV2xeH4uc4OwPC1Rg8TBCK/5zHzAUb1nqTZi+qFIKht6SdrhKBm5ZnCvHn?=
 =?us-ascii?Q?HEHPBfpsAnU+YavlcZ/5ih3jvUSHWO9/trc+g4IZhxrv/c3I2SOiV4uXEat8?=
 =?us-ascii?Q?fefCqnBFukEsP1JKnaz1ne9DSjmsflctYZMRrf9JFdq889ZQH72mdWdRgIQn?=
 =?us-ascii?Q?IjLLwVm1xCi0yT6kGNc/5nEVVZKt0jovd9wS1DKuZERTSjH34nuCH4EF+9vI?=
 =?us-ascii?Q?x5kX0xrX41f+kNhf9VhFwpuERz5waeKPtpxwE/kDD7GaDTb+l3WvGPn1G8bD?=
 =?us-ascii?Q?nFlwNNQaT3N34hFB7Xy6TQ1GoMKRmm7KPZxUGeL+zIyLvp0Q9Om5VOBbSnAH?=
 =?us-ascii?Q?cDFOZpGphZYbgakh92gBxeU6IsWVezadWv0dqgcPItrZ0RmA5IaDF/bcUSYt?=
 =?us-ascii?Q?XTEYIFeC4fMh8xhq+Kg57KBB75v5Y8H1xMJuwQkXVPPXEU0kzBpajXVJel33?=
 =?us-ascii?Q?bms2vLDZ6KSdYHvl1u6JkDTuAubTDH2zoRXAB649jkNPRMa3haS7E3xFwDrb?=
 =?us-ascii?Q?FOW2qHyLLcfaPXCDiYtCJWjMapzlmxE0GcBep3ly5yvNXjIdnZCworzPWSZU?=
 =?us-ascii?Q?VWmnpAAnbgxf4fxceq5O88SSwI7gbXEzhPUs+AxgpG0+VjASu5w++xDsOvcX?=
 =?us-ascii?Q?+Vos2uYfXXQBnxQ5QVozmmoxuXiUyhSzoSedD4uMkJY0IcdMywSJpGfBz5Mt?=
 =?us-ascii?Q?mtRMuz5bJ+u1Uesnwms/FDpcTFNIeKDuseu/BUj5fEKAAxQSpJCxMaNyCk+f?=
 =?us-ascii?Q?44W6f/qXGaSxSS354q8x79zOpK54gMmm48XH3Jzk2WojkkhFk+hyLIt2wVr1?=
 =?us-ascii?Q?65ND9ihSA4xbl+zzXY3FXy5UBoTfeZsCmCd6swfgnWeJT3MJMa2rEW1DA/VQ?=
 =?us-ascii?Q?VaFz2xXGlQKdS38kM5LYUqF7XT/6IRf7aajgrsdH+hDumTGU4mCdxXowQyMP?=
 =?us-ascii?Q?1ZC3Zk06VslWj31CIoHGagmc/dTBJxEZsZIKrzSzHILr7o+SjCEHG1gvnOh9?=
 =?us-ascii?Q?ppTRaZuqsD2t+uvISHu6QIun4qyShJOUCHgE+UZ7EYJ/Oi70cpmchTQhePJq?=
 =?us-ascii?Q?yc7OafnKioe7CEkupWp/xk59AGc7BCF4wVxH5wsm3n+zNPL00rs5nSkpnC/Y?=
 =?us-ascii?Q?OuZDRx1U230dVDKm4qjxluZfe88Sppa4Sz/ph4qAZNme0wPKeqgT7z24YXTq?=
 =?us-ascii?Q?KygdHRe8dSMR9ne/9jZ/L44J/Hzo/qi47PI6ZDFw5qoZZTRSowHB+kgpvyxd?=
 =?us-ascii?Q?R/7F4t5C0vXNrtoUWxpRWuLYj7T5w4ys9YnNsqiP5s2RI3uFP1mLB092u8sy?=
 =?us-ascii?Q?kgvoJVkv1/r9SuISZ0/ovo5xM/KqrqesgiqG4I9xHljF13Fd5sZP8sXaWHCQ?=
 =?us-ascii?Q?2CYvjvgAYoUeE7heoECesVPcRFhuodxwtz4D7s0E?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d96a0d25-2d10-4af8-a131-08dce6fe053b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2024 18:29:46.3270 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: BFS5XGSC04nmd8jnSAV9ZD9bVfw67nIEM2jvrPttmDVBJVCR6b1+WXGnB0KNSin82cYJX06h30Myr+Sm2tq6AiYPWUmIa+C5XYAaqTot0pE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8334
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

-----Original Message-----
From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Imre D=
eak
Sent: Monday, October 7, 2024 7:06 AM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Cc: Vivi, Rodrigo <rodrigo.vivi@intel.com>
Subject: [PATCH 2/2] drm/xe: Add missing HPD interrupt enabling during non-=
d3cold RPM resume
>=20
> Atm the display HPD interrupts that got disabled during runtime
> suspend, are re-enabled only if d3cold is enabled. Fix things by
> also re-enabling the interrupts if d3cold is disabled.
>=20
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Is there a reason this ended up as a separate patch?
Not blocking, just curious.
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

> ---
>  drivers/gpu/drm/xe/display/xe_display.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe=
/display/xe_display.c
> index cb2449b7921ac..695c27ac6b0f8 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -486,6 +486,7 @@ void xe_display_pm_runtime_resume(struct xe_device *x=
e)
>  		return;
>  	}
> =20
> +	intel_hpd_init(xe);
>  	intel_hpd_poll_disable(xe);
>  }
> =20
> --=20
> 2.44.2
>=20
>=20
