Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA29CB2ECAA
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 06:19:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C151610E2CD;
	Thu, 21 Aug 2025 04:19:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="njY8HWxR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3FD10E2CD;
 Thu, 21 Aug 2025 04:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755749953; x=1787285953;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=PBoj2CmQHBCCyew5+x1ny4GZ4Co4FdoXEa+5vzJbviA=;
 b=njY8HWxRJuer1z505LHva5syoleBzJoMA9Ya7IVl1MET8CVpmXcI1v9d
 5FQHQmJ4C1KPmmgbhE2m8pXaBp90ceGECdhLhHmSf/lEJpISXScxF9usx
 WjJNtd+yVExWzORoYK6+6CxPcO6U8UgPpcZ+l5Vyxrv4jv7AWDUymUMn7
 fRiMgrHkRNF/eQOGa2CKYajI/ok64pEsD6qqh3MIbMoezDdKKOU+GIiHc
 MiIE8fb0ljuxi6qFydnC0G5RFoRpJgvgRzXh+tf/kT9SFMoya11Gu6B7k
 HEvaso8zw81q80z8okyhq4anJGt8HYVqQDKJLp6LE26uZT1ntTIqw4hiW A==;
X-CSE-ConnectionGUID: YHKZ45HIQzqGiEMHqU4JUQ==
X-CSE-MsgGUID: 6Ba4QhyRSxiLX5C3XRmFOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="58098409"
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="58098409"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:19:12 -0700
X-CSE-ConnectionGUID: 1jEMi2IxSZOZiU+hWFK4WA==
X-CSE-MsgGUID: OUADO/zxTviXxwgRurwcjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,306,1747724400"; d="scan'208";a="199292945"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2025 21:19:09 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 21:19:07 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 20 Aug 2025 21:19:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.44)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 20 Aug 2025 21:19:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mt4kp38Di+/kTQsWqifw9Zcz8u+AqnXksUBgJVtMqN5l4DYf8f+ux+FPvVT9wTkiaqbrXsx1CE8T/ya4vVU4KnGA6v4lk2O6UIK7TeqiV5WGfjdwNsuU5kJFSj4WrQKqyHRlXdcFBUFUjOW/99czv4SRTbQR3T8NsJG+Cejuo88DcSIs7dTJD9V1+srFnG4hpw9YTVIcKR9KxoAwv56ezGjSodciXHIhdxyr83JJH99B4hq7x5Yf/0ruGANWD1Txkb6wattmv8TdIoVx3j9hl7MZU6ZPwRAi4vghXZ32J+UDwAF1pm+mAdeN2Vo0PpZYU47ushFL8O7P6ursmsva9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=McHutfbI5aD1/xoZ0dcHvVQeueUR/QzikC5aP/Ty/8E=;
 b=CgC/TpcZMn/vegywuzPEQSRrehPKRhg92Ui9VnFcR6tkHINYTAzByEIt1WTqZYv5UE+jvQW7dZhhTCL6fr7D4H6+gVRSzzfyWhIVN7jfqDQWcaoGPqDYWVOF9C7zv1W0z5dXQsfJ6EQsqfsZTIBLNildkCEgk96tFRF5WPMN9sS3sHtFERiYypZMlIqeqDT94pnbvC67oJVidIAJ42fXeA0p5Uh3OrXsrmgW7b2z+U1yqLEw/CvvVIEXMGdnOLB2hf1ZSoxyuF8sp3iboOERJQc0AB1ADo/HKJnYpz3I4txpZ6ezozkGdvL27Qraxs7Y2Fz4cgEtTncM4Hp7NWAaug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH0PR11MB5031.namprd11.prod.outlook.com
 (2603:10b6:510:33::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.15; Thu, 21 Aug
 2025 04:19:04 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7aab:2a1f:f728:eb01%6]) with mapi id 15.20.9031.024; Thu, 21 Aug 2025
 04:19:04 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/display: Avoid divide by zero
Thread-Topic: [PATCH] drm/i915/display: Avoid divide by zero
Thread-Index: AQHcEdaGAsKRCCf/10e/HkYJIMkatLRsgZ5Q
Date: Thu, 21 Aug 2025 04:19:04 +0000
Message-ID: <DM3PPF208195D8DA9975496515DD727C962E332A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20250820132913.496505-1-juhapekka.heikkila@gmail.com>
In-Reply-To: <20250820132913.496505-1-juhapekka.heikkila@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH0PR11MB5031:EE_
x-ms-office365-filtering-correlation-id: b7075bf5-4af6-4251-fb1d-08dde069dd30
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?wf/sd/qfPdVyC1aiaaIkDnM3EKkNEOXbufyN0Cqycif48uWcUC+GGo/RaSs2?=
 =?us-ascii?Q?UjMMwwAGrIBjy/VYb1NeapfgJSL4j+L5iLDyA4egNvUSAGiZ4FleIYXfevBm?=
 =?us-ascii?Q?SYGLH45Ugunfrg7R+0DOHN/C0uQflbe+zSwu0fwu46/FFJ+sQMRiUJ1hWykz?=
 =?us-ascii?Q?dkz0TT6y/ks8FbZE3NPGwhU+XQIe2WgGLvaGZd3SUt4L4l32wjh2OwsoDw0e?=
 =?us-ascii?Q?u8q2rsGiPS145F65mMVDsuOhHq2IwU4THKNYrzKF3pNqmQM/hzUai9bwVSWm?=
 =?us-ascii?Q?N5oVuQrV4AbpxvB0co+eZ7OPpG9L+n/TyjWlAHgCwPDTQE6fVlQtJlPWCWaO?=
 =?us-ascii?Q?NlVytBJCWXi/IPjzZHlfUQ1T2l6YXRtLPvJQ/Vj7OUS9b6rJps3ozvQg0LaC?=
 =?us-ascii?Q?KYMloJxj/Oq73EcloAAVLPMpaEGcO34mfrtpVTrKdOBHbUyAN1vWKsOppVux?=
 =?us-ascii?Q?txU1/aKGfsOjcbAsMSQV+ld8C1erCeJDCW66i27wso1JpNSi/Xxtn6Dz9oy+?=
 =?us-ascii?Q?He0P0fqwyE72iP7HtRS9uex7nbgI1MS0Niw8l+f+YpqABsoSJ3000a0sjfbn?=
 =?us-ascii?Q?Czc/5BJnkddyc2wESgujmqvOCBSqVDbCZ3ovtaziurX0LUK778T43PK1mVCH?=
 =?us-ascii?Q?Lyns7lg8AY6JuUth5/4sCJIvwRsoOwKcAoVF5TBCBonaUg4x5w9EDSMes0Fy?=
 =?us-ascii?Q?xODWj63Nnp+u4TH0agTKwzrmgRV/3NS+VBG88uhsA8vMS3iYosx55cpX07uG?=
 =?us-ascii?Q?YNA2IULH1mL47F6w2yf1RnqPYQNGeN2JW60OaexpIYFxPdchoEdcQREwP4RK?=
 =?us-ascii?Q?e3gp+XUvo/YkXWWYf1PNbTFoK/BVAc+3K3+YzYCSKwCJHpWC18Sp+ORq5dtg?=
 =?us-ascii?Q?g88EQOA9IKk0RrvDRCFEhE1exiYfla/89UidE9Ptvg/Zn6XbwxKgSUaI2HQ+?=
 =?us-ascii?Q?l5iiRYH7y5QTc0Vp8e9nRzjm0kuFXY7H2N8KOWlAPuz3Sti0T1Nqw1e1+2pa?=
 =?us-ascii?Q?om2DArCNetNwx1/70+jimAa0Rj7prHShaQCnet6rw8w/pm6ejRTLdf95rogL?=
 =?us-ascii?Q?JSVtiuap203vfTnrsy9MxrkFgfic9fZ7bsZXzTn1Hry0iwLcCO2LKuxyeDpF?=
 =?us-ascii?Q?sCSrO+1dIG6xrWYpsbd02C2pUYs1BgxSuQfxsL9ZjCbCotyZDc6zdJ72kZQb?=
 =?us-ascii?Q?0eEltMKslnDykyTx5mN7/zAKnl2b73cJqVGdV2gEAQAyoz/dANxh8pp+5C6X?=
 =?us-ascii?Q?pd7Q86FFLLv/1anGJ12MeKsFF8KD2PlKKC5Zbw1jQcjtlJ5NmG/M4IdDRSnN?=
 =?us-ascii?Q?Z6itdBRuKVkn8tWBD1PdLqx8j1Lb0eD9DsdcHUaWpx5ORu1W3X/XTwt59U/s?=
 =?us-ascii?Q?ES1Ohdig6JVqj0bBHh1TTJsvC4CoQdqH0qK8GgumWezPjR+5nYvWgGGxlOZC?=
 =?us-ascii?Q?KtYC9QBORv+Igc+DXwFs+9fgao+/e7WS16x5r7Y7fWamV28wimWPlA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?i0r2lme2aDBWU9zmy/Yg9pLReV7Q2Irzn+94V5k6G7ZN9qNvTWOmLGjsRK8W?=
 =?us-ascii?Q?AqqwHLYdBvFIMLShQyzuvKkU8kakPsZIzUIDUCcnQ2qFOaXlnD7kfAcqDiX6?=
 =?us-ascii?Q?8WHj7ecj8ViEisc3iLlN8j7PTWlEyVUMOH0jFG6cpief4jGALW6G3ikVoceb?=
 =?us-ascii?Q?zUyCp3VyCn7OK27nHzzsRzG8qVDGgQJ93yTi2u0baB97A7QHA1MMkLcN6Ot/?=
 =?us-ascii?Q?LW5qohdv4YzL0fF6FAflI9FxxsRV37fZ9OZHd3TIfRYuBFZxnPk4YYNSm78B?=
 =?us-ascii?Q?7kSo0R8SIbmsQ2Zl8EqamZfc2JZ+haufKd1nxmv1zWqcLRHy3yxYYdnwMlrB?=
 =?us-ascii?Q?L5b4qXSxPidQkI+NVNnTYwNgVW1lywpNIFvxjUZSzxWJeiqCZ7BjmUahYU7a?=
 =?us-ascii?Q?m3k6OGwApHpoNsZxkvAzyOd78t0qwltNE5QKVEJifaelECyRmCP2CFlXhbt1?=
 =?us-ascii?Q?1eSi2HcjC50Aixqtj2z+AzfF9bL3Dpb5wL0PDSmK7IUnqAETYOJzyMG1R5mL?=
 =?us-ascii?Q?Y1n9aHxZt/5EDv042oJX1E+0cH/60J32RPqXoKyUiJ/0iRJUdZfN5B+Ab/WH?=
 =?us-ascii?Q?6U84Gq8bto1JJITPcxdys5rv4fQMVHezVMm3L73OcdXHI8dDIs8KukhYa6Hd?=
 =?us-ascii?Q?AEwFnqJJxMdfYqAZ5epvkNQayFxKpY6y6s1cowWq5JbRjlSInsxBX9CCFKvz?=
 =?us-ascii?Q?NtSdP9bCy5TajrryL9Lp3B9HvljVKCzOq3A5ZrNoV/FnsNbNI9uhTi25FihM?=
 =?us-ascii?Q?4WdDZ3LtqU19If3yuTphoP88JO/AZrgMY00RkQT/t/MDxQhmdHWrMeldC0dT?=
 =?us-ascii?Q?Ttc397Wl8eOkvisjj+tyHIX0+C88WJ42wMKO8mHnfS98c79Ga97l6bpuFLkV?=
 =?us-ascii?Q?ifrYHIghXtjWDJXi/FJBjHDSUJ+7Cco3PD4gTD5Fitn29WO7u9hY23zs/G6G?=
 =?us-ascii?Q?MF088+R3z6VLa1m+dc5TIeEOEEGA+pdZZzghYQ+9o0nuwXaeByPmyV1Ne5Kj?=
 =?us-ascii?Q?Qf/hTvCdajPfKs78lt3wh7LueAKbcANcmhk1PjbzYEbHb/c8e16H98Hp6BnB?=
 =?us-ascii?Q?g5o7K1zjUaVraGpJXuKvwQQAvr8YGJuHqVkTs5Cu1d0sZq82izWpYstIebm5?=
 =?us-ascii?Q?G8m3yFYamqATlLWftjhhgryBP3NH4/k0B674bKCkk/1N5kkpbLM+82kAxFD9?=
 =?us-ascii?Q?cV4Q+E3LswPkeswwy1LUKwKFL99/D+aoSd/gvbsiyBV5JI7Nuyz3chvvHfb6?=
 =?us-ascii?Q?opy3JQc5TcmRYLsAjgfOBdoGx+1ghlPu7TlDclptnb6CzUOqfNpGsVJ5U6Sq?=
 =?us-ascii?Q?U2KMhvCGSC1UEGy+HXO0UeYfEG2xcSpWONZFpfXALgDXB9rPkhKTE3ad5/HH?=
 =?us-ascii?Q?a0o51qzAjaWEstyfiFlVd6yRx9aE/SJEZQMMzykMtSLrzCvkKFhISGQzwfzo?=
 =?us-ascii?Q?yICOfJW+p7rACArulyE8CM8Uv9/H3wik8cSr851KvRnr6xcCvm5SAOLYBzeX?=
 =?us-ascii?Q?41dCZrhFIeegumAWgNhzPipGsipYg2Sx6ugR4lcPnw7+qH8XncAyn0vV1rSD?=
 =?us-ascii?Q?ob1ZEjoaE8EOtMrtdU/CUq07hNRZawien+Xn5OWy?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b7075bf5-4af6-4251-fb1d-08dde069dd30
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2025 04:19:04.3220 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YAobE3yzEOOSsuYm6cpAed38zFzybmLb6AoTNwUBwrb5kzmCGJKZQ6UQmY3VTHgb3i3PNGwQwM1x0emIpQBvwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5031
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

> Subject: [PATCH] drm/i915/display: Avoid divide by zero
>=20
> skl_crtc_allocate_plane_ddb allow iter.data_rate to be zero which could c=
ause
> divide by zero in skl_allocate_plane_ddb, check against that.
>=20
> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
> b/drivers/gpu/drm/i915/display/skl_watermark.c
> index def5150231a4..403783504ab3 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -1388,7 +1388,7 @@ skl_allocate_plane_ddb(struct skl_plane_ddb_iter
> *iter,  {
>  	u16 size, extra =3D 0;
>=20
> -	if (data_rate) {
> +	if (data_rate && iter->data_rate) {
>  		extra =3D min_t(u16, iter->size,
>  			      DIV64_U64_ROUND_UP(iter->size * data_rate,
>  						 iter->data_rate));
> --
> 2.43.0

