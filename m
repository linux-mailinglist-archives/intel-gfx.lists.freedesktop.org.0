Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4C3997681
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 22:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC4A510E800;
	Wed,  9 Oct 2024 20:36:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dyBndHrV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A7A110E814;
 Wed,  9 Oct 2024 20:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728506161; x=1760042161;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QgJtQhSPnbaFJjdTzCynbOwIzGMxV1zDlMfFALCEv24=;
 b=dyBndHrVOz5UuX+qxGMcKtgNAIUdxgJZG3roa5OU9HSoPfXmTRJM4r97
 W2+pGeam/5QVeyKXJQg2p5Y8oC3O5U2hhfQSauC3lxXJ1MASaXQr6V9Me
 U64XuQWindz2OurbuGcfTHpTJSUuzoFhfsymf8ZdUHVKDl3EXtevnRlv9
 K48RT2xctNnCewThWZETIVBKHdxC7TSrHbQzZ6uvXUR2lSSc0WcdWzLrf
 yCqq3uOmB+8+Q1qV58pYd0T2fq+Uk4Qv+PR2hOzEFSXlwQZiGw+B5bQNS
 cqsoVSRTrjB3oq6muGorPDi4ABmL5S9DrpdfE6IQIHbKlqfZa09EG4keb w==;
X-CSE-ConnectionGUID: FqhxGLzDRlqOqw+quwnnuA==
X-CSE-MsgGUID: xQfTVY+dQb2rezTTsxizZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27646282"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="27646282"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 13:36:01 -0700
X-CSE-ConnectionGUID: qnvHs4FKRqi1vgl+Y0QuUA==
X-CSE-MsgGUID: xTwzyCbBQRGPBhcVFNY1vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="81175913"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Oct 2024 13:36:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 13:36:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 9 Oct 2024 13:35:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 9 Oct 2024 13:35:59 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 9 Oct 2024 13:35:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YiRJHlcKHeUDY8frd2dWFIXaz6Fb1qSXGMvpMNMeRl1KNqMNr8Oq5ArLFk6IR2xNa89htbB9ygJRQTN6yRVqMBQblwKX+wCXzOkPNGf3sbnN9vNiKh2eTBJI10BkzyaihW3p2jFuDglWB2d5EMgthYkzqybXoSQ6pj8u70U9GBG9G7yepvmBoYtoH1s0v2vh/3Na59X8H8RB+01VB5bSKcK7sAD+QmlCRtCQusDJl4D3i885A/3gVXVYpQVoPLy0icXbgPQEeH+2FcHGvaw7B+M/0zRqz9e2YYd9Dutju9ohfZBdho2WzlrpATPPnLN7FOENaOOb+5zqhlZw49aiUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2nJL+YIPFc4J6gnhxQ3ECc1sNrLv9aHmHmUXtTFE8lU=;
 b=vWo+eX4eECCq7QJ4BV3/46jB8eUg4qtCzi9GU0uO+sVh/uei8qLUeMvqL9WsOCaQQ0UebfAnavKhNPNpkYiU0hK5F0E4DHP3Cet8qys4EEmGeqN5ePI0Lpht8Pr4+o81/o9u8m5vnB8MVrQFJqbS64nzRE5Yp79ExDttlU+bZpFfWMSyWUpaZGiV/DHtGWaj00onYsP82Mmzjo1i2Wep/DYM9gNCBiP9+XjKACS5pWHZKutvFMQP/koGDdihecW5ygfhtna+STsQ2wt61wqOnFvdMBaiKujVCU6HfWxulFtlUIzkQb8+HR09imhQMXXWKUCqlG6/drHmA9PYHzKqRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by SA2PR11MB5195.namprd11.prod.outlook.com (2603:10b6:806:11a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.23; Wed, 9 Oct
 2024 20:35:57 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%4]) with mapi id 15.20.8048.013; Wed, 9 Oct 2024
 20:35:56 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
Subject: RE: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime
 suspended
Thread-Topic: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime
 suspended
Thread-Index: AQHbGoOOOD75BKxKc0KbGwi7+GhuzrJ+2h1A
Date: Wed, 9 Oct 2024 20:35:56 +0000
Message-ID: <CH0PR11MB5444908185C8687D0C8F07CBE57F2@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20241009194358.1321200-1-imre.deak@intel.com>
 <20241009194358.1321200-2-imre.deak@intel.com>
In-Reply-To: <20241009194358.1321200-2-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|SA2PR11MB5195:EE_
x-ms-office365-filtering-correlation-id: 05d20de4-5f1b-407a-6bcc-08dce8a1fa6c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?FTMN13P4g97mgQe1VD3FK76U+6PgTCN0CAe8GsFq599ss0zuQNtI57oHCMBa?=
 =?us-ascii?Q?gdTTaFXNmj+J9LamCrTueHYaa2hv7EywmMbxgkQnDK60OKl0R49KLJQ1m8aH?=
 =?us-ascii?Q?VQ7dO0k1GEGx1mPNLHTuT9xt2M3xpk1C3dSWTgWvjm6YkPFsq+9GsIUrKgPT?=
 =?us-ascii?Q?EJrGKgRj4GptVFUjps+l6pIJT5KR/F5xk3LTGk/9nvnf8LiDaYefKMmTNoXQ?=
 =?us-ascii?Q?sQYW5ekP7MCXCiNjKl0G7kGAq1qUgGZcdT3MtvIpAe/XUqvMHXmTYRW29ZWF?=
 =?us-ascii?Q?wI9fZY3kHqnYFMXJpMUNExQCDkpguT5UUlwCOzCOZvwHfMpHu9+xCX2wYDeJ?=
 =?us-ascii?Q?eMZMkb8fXwAl/wYA9+G8yB9wYpd2wFq+XSpvqvGze2ZHMKYZDXNKJU4IJiFf?=
 =?us-ascii?Q?vhCVbLev3imsgolMv9S2D35gJOeDLTE2XpsdBRrqIE4WpCzjgGez9coMgKG5?=
 =?us-ascii?Q?34/xdwlM+a/1PbKZ3vW6nTHR/Zukl40U9usKJABdah5N+SEAfqGvC+x4/rcC?=
 =?us-ascii?Q?Zj0MtzGC9Nt8mijBR2RNuj0XtgiTAdPJjDq0IoVuFkIXdGUDBV1N04rvhaMj?=
 =?us-ascii?Q?GWz6EN1sq6nbQM0utm/6IQjdxubYPlDdj9Y72navqomBL+yVbjHTbRjHeoJ7?=
 =?us-ascii?Q?zPODX8g8kZQai79Vaorvpm2H7AWeoqMzzXdFIZi6eWap/dSz3c4sTz6AQ8Mo?=
 =?us-ascii?Q?yzL3X7cP3RDcAZHTL41vOPqrvMZDphx12GQmpHD+6ImiytB9N4I5EYVgj0wC?=
 =?us-ascii?Q?51NIlrB1RplNuIFrXAcI/R0AEYxWfrHuO3IxJ5djdtlVKnMD1cq58HAzgsI7?=
 =?us-ascii?Q?d6O3YXIj7M1hyv71xJzLap2G0fd4WVl6vrh3MNy/lh94v9EeeSd4O3dhbkUy?=
 =?us-ascii?Q?gw5dVsIYVXDmQH/mil6wTfkggQXTJiDRVi5wUzdZfiQCTYtSYDINCBA0aFYi?=
 =?us-ascii?Q?htszKvJqcrMh+Ikd8rA3cEnydmRJPpKKPAp0+ayuGQpydL+N9uSw72K+Xo5k?=
 =?us-ascii?Q?bV2stybXVJwFmNTe4itKwCX48UH7TqxHd+zpHIDU2uc/KsZT0OUM6F+UIzyl?=
 =?us-ascii?Q?NmqLpZyUvZsjPSmqpd4KIW/FPqF7WKMx0moPr+NPECGS7th1Gd4wTGTkwsy3?=
 =?us-ascii?Q?ELsNzi1jFN6YsqGLHkRs04WHWDyfMR/tQEw91tvbB2HkdCn0hWR/aR9PO0pG?=
 =?us-ascii?Q?B5u6wuo/PEpoQYEG++51lD951UKJuUvknlEvYjloQCTBMWZhXN99nGqVCR5M?=
 =?us-ascii?Q?QK4GvN0EORFyBehILT0lLkH9/U0baUo9qtKV+CzQndL8pyX5Kfz8uXg0X2b9?=
 =?us-ascii?Q?lWy9CXwGJOx9Iaz65MwhoQcC?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+TCcbu1jGeE5AzY1493DuBeKkhx+h9NiJcmoHWnj2ztWPPbTj8KOqFKsVxAf?=
 =?us-ascii?Q?yOp2Pw+KFhn2829PGhJt7nCku1BQPLS6q7iP2Wpb2YES0L0OtkRoDhyL5ZEU?=
 =?us-ascii?Q?uzWFGePyFRVDBxH9iNY1wqohA+UQtzBxo8WaWOmxiInFtt+sWwmO+Pd3tvqH?=
 =?us-ascii?Q?tk1Eo0sIc7btl8xZ25Gq/xUNg/NLCPpw/GholUl4OEq6dtQkFn42S34sXoHM?=
 =?us-ascii?Q?l0J7LNzXzxVuWE+Kse0J3M6k7rmovwXuhzCn2Ruva3BTdvZClMvwx2QOb/yQ?=
 =?us-ascii?Q?/UFJnP1j/P4p2FBhqQYeOvRI2wBvnpp3JXGMqX/amblpxJbb6sbLjXyKH8wb?=
 =?us-ascii?Q?3t3oRjOqiEMtbqfSSurc5ZuGhIApQTaHfaFp/j/QYRnhX8+G82dKwR8kIpvp?=
 =?us-ascii?Q?UWSvavpZLAE0qLBGAVBv9icJXPWpt8Z0TRTcO9mlyx7LSKigmndizjasT2dz?=
 =?us-ascii?Q?pHROybojYC945OGqP761L71EOq3JkRn5B9Z6xPA1Yp4jwjuY2ArGYGc6kwIy?=
 =?us-ascii?Q?O+Nk8cFCha20/OXgL0iRuoGd/lyRgmfX0gh+KCjDARYIq4c2M831ItSCtNXu?=
 =?us-ascii?Q?25n2VMBJ4Sn0nm0n6P0C2JF3pFtZAmLr8vuuae3CnCOHLOkF2u+JDe6D6WkO?=
 =?us-ascii?Q?inGOunyY7cvR6HfZeoEuO8C3grj5bpsqz1kjFrrDHzLvAp+KaHK2oXjMqVB+?=
 =?us-ascii?Q?g+Kxa8ruNsja9ItAxxTItPeAI3xkghJv5YOlXznWCujRIMeJh9RV3W1J9KqZ?=
 =?us-ascii?Q?JCXWK7VYMDz8y9XsE9qAaxphdPmcLW9Ye6Lp8dXEqeDIyLgSoOiT3VZ1qtOT?=
 =?us-ascii?Q?xtQqhRoPGupboN8pjRFzZByJ9wm5qB6x54Df0hEsFfpusDVvvP6ONMCdP2xQ?=
 =?us-ascii?Q?QmTPfmXdLfu7eES2LNKGn61yCqOJP1ffsbWjjue4X+1RK4gMs1kIjjIYrhcs?=
 =?us-ascii?Q?8yv3N4IuQFoYZezFQkLrtj9LbPToN2cPB34i18KpNpDcHeGtY+FXasmKnoBe?=
 =?us-ascii?Q?raFaZvIgvO95MamL388ihI+XeqWTuvWvPl2vIC0k4MvmK01bSKLnwFiXkeOq?=
 =?us-ascii?Q?iE+9oXqgeP5SW7EAK07GJg+He0AitCRywWpDI2PxcTZ+WbJuXlV0v2jyX81z?=
 =?us-ascii?Q?px72cqTXRLJ8r/uCV6iDx7+rsiiKASRhtta24h3bgU9BWia/u9mAVvqEiJjj?=
 =?us-ascii?Q?6zuxuJ0v25pwgOls6sIANfrwcbY6JIZhybvobwiGqzNScA1iSIfxykgzMpN+?=
 =?us-ascii?Q?oetM2/3bSb+f/0Y5zslmCu5GNtJV0u/kfWkwgSGX1sbN+w54o+5+HnU34b6d?=
 =?us-ascii?Q?e1lPo1xMNYsK/LansUkVWLzurKUNDmebzattXlKAT0IEl2hM4Q0WPdvrxqqR?=
 =?us-ascii?Q?0uuNzMFFZJLakw7GkOl2M1OcsJZsXWb5d4RSd6jCA0S3vAH8TDvwUdlnXD2X?=
 =?us-ascii?Q?sjw2DqTl2f3Npj9peCMmgVdwLdmoVOYbtpy1xGgvdDtdot91bUdTV/4krYzG?=
 =?us-ascii?Q?ddswOPNb4rdtvSjGwmWJM8W9dFPhQ/E5Z4H3ONSBA98btlmnQ7JzmaXcqwfX?=
 =?us-ascii?Q?zykkACfgBLT6b3gx2XpiIpyt/H4xWC7WGwAdxGXFTgOOYJNwqKtSbFvJWyGn?=
 =?us-ascii?Q?Wg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05d20de4-5f1b-407a-6bcc-08dce8a1fa6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Oct 2024 20:35:56.8216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CO1oxngOJk3wYzRKXWas7L6LdgFDABT/Ae8fwkg/romuHTBP9Q/Mu5sF13hFb0fPX+D0khXAT+UbWEfXiwC5KaWdax+D9SSj6fgJfHNoXIA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5195
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
Sent: Wednesday, October 9, 2024 12:44 PM
To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
Subject: [PATCH v2 1/4] drm/i915/dp: Assume panel power is off if runtime s=
uspended
>=20
> If the device is runtime suspended the eDP panel power is also off.
> Ignore a short HPD on eDP if the device is suspended accordingly,
> instead of checking the panel power state via the PPS registers for the
> same purpose. The latter involves runtime resuming the device
> unnecessarily, in a frequent scenario where the panel generates a
> spurious short HPD after disabling the panel power and the device is
> runtime suspended.
>=20
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c                   | 5 ++++-
>  drivers/gpu/drm/i915/intel_runtime_pm.h                   | 8 +++++++-
>  drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h | 8 ++++++++
>  3 files changed, 19 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index fbb096be02ade..3eff35dd59b8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -85,6 +85,7 @@
>  #include "intel_pch_display.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> +#include "intel_runtime_pm.h"
>  #include "intel_quirks.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
> @@ -6054,7 +6055,9 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_p=
ort, bool long_hpd)
>  	u8 dpcd[DP_RECEIVER_CAP_SIZE];
> =20
>  	if (dig_port->base.type =3D=3D INTEL_OUTPUT_EDP &&
> -	    (long_hpd || !intel_pps_have_panel_power_or_vdd(intel_dp))) {
> +	    (long_hpd ||
> +	     intel_runtime_pm_suspended(&i915->runtime_pm) ||
> +	     !intel_pps_have_panel_power_or_vdd(intel_dp))) {

From what I'm reading, I'm fairly certain that
"i915->runtime_pm->kdev" is equivalent to "i915->drm.dev".
At least, this seems to be the case according to this comment on
the intel_runtime_pm struct in intel_runtime_pm.h:

"	struct device *kdev; /* points to i915->drm.dev */"

So, "intel_runtime_pm_suspended(&i915->runtime_pm)" seems
to be logically equivalent to
"pm_runtime_suspended(i915->drm.dev)", which would mean we
wouldn't need to declare the new helper function
"intel_runtime_pm_suspended" as both want to operate
pm_runtime_suspended on the same relative path for their target
drm device.

Though, perhaps I'm missing some other reasons we would want
the additional helper function besides, so I won't block on this:

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
-Jonathan Cavitt

>  		/*
>  		 * vdd off can generate a long/short pulse on eDP which
>  		 * would require vdd on to handle it, and thus we
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.h b/drivers/gpu/drm/i9=
15/intel_runtime_pm.h
> index 126f8320f86eb..e22669d61e954 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> @@ -96,10 +96,16 @@ intel_rpm_wakelock_count(int wakeref_count)
>  	return wakeref_count >> INTEL_RPM_WAKELOCK_SHIFT;
>  }
> =20
> +static inline bool
> +intel_runtime_pm_suspended(struct intel_runtime_pm *rpm)
> +{
> +	return pm_runtime_suspended(rpm->kdev);
> +}
> +
>  static inline void
>  assert_rpm_device_not_suspended(struct intel_runtime_pm *rpm)
>  {
> -	WARN_ONCE(pm_runtime_suspended(rpm->kdev),
> +	WARN_ONCE(intel_runtime_pm_suspended(rpm),
>  		  "Device suspended during HW access\n");
>  }
> =20
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/=
drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> index cba587ceba1b6..274042bff1bec 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> @@ -20,6 +20,14 @@ static inline void enable_rpm_wakeref_asserts(void *rp=
m)
>  {
>  }
> =20
> +static inline bool
> +intel_runtime_pm_suspended(struct xe_runtime_pm *pm)
> +{
> +	struct xe_device *xe =3D container_of(pm, struct xe_device, runtime_pm)=
;
> +
> +	return pm_runtime_suspended(xe->drm.dev);
> +}
> +
>  static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm =
*pm)
>  {
>  	struct xe_device *xe =3D container_of(pm, struct xe_device, runtime_pm)=
;
> --=20
> 2.44.2
>=20
>=20
