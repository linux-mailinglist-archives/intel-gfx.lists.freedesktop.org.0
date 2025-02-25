Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DD19AA4378E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 09:26:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82693891C0;
	Tue, 25 Feb 2025 08:26:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cYPvb6Ir";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE59D89241;
 Tue, 25 Feb 2025 08:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740472003; x=1772008003;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r2UIIbHBLZX00FjR7IZAqbY60LOMUdgrT8cqMcERfd8=;
 b=cYPvb6IrIA5JAPo9P4HO5UbrRrsIMs/VC+a/xsYy5/oQpQ77RcZt+iJ/
 wczHBo3IB/yVZbFGTif7StdeEQkkax3wSeoSobZ+KXPezQEfKqPOMqaSn
 t5yVEy0fJwkBGP4FtdvrhDzuvcYDj8L/Jma0tnnCRUTGiU3fq4iXzbX9d
 lYzk4m6fzrxyTii0A6JhPLbF0dCw0BY2s3klaNlSAxIrTpnM2vjcUjw7z
 zxaQ+aASwBtUyQKv4mDbb0QxZxfsl0Mi67qNb6jVjeqOw9uRPTXziCa6L
 Xw2acpsSoKZFes7uKx9D/w4xL4FTpDvboP7aXYFweV18U3iy7AhBC/oJ0 A==;
X-CSE-ConnectionGUID: q6otqTmWSVSgQ5Kxhzw3zA==
X-CSE-MsgGUID: mSwmjQPcSU2eVYMuo9FuaA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52690073"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52690073"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 00:26:37 -0800
X-CSE-ConnectionGUID: QOz1GHS1RR6fICxh61cVJw==
X-CSE-MsgGUID: gIxbpYyHSuO71fG4VkpDbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,313,1732608000"; d="scan'208";a="121419694"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Feb 2025 00:26:38 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 25 Feb 2025 00:26:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 25 Feb 2025 00:26:36 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 25 Feb 2025 00:26:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vG0lz0IzYS/Hb1wLOQV0HfHN6Zpyf9ID5AM/DpKVCU2hcgcCFzD4/Ia57gPXDhfyKRcz6Z5p4PVHM/F3zJqyVj6M/OZrXvXYITfcgz1KQCmaSrco8/XTE90PC5/1dM2INTmWtrfDWEnh/fw75lv6+/4e8euJxVLUshd5/RzeZ8alk5423TvE3S/UvBiY9O4McRE2yqpf0W5n4BmHNnw3DopfgGLYGXnJG0adm2sHR3zSDmZSPXRmCdOLj61NMcgbsh1LUjy1LmxPMAZ3dZNLYgdfrHOUf76rqIPx35ZdK29UPVIjCk4eIkEnTgYtgVw8VKWHHnPx7oxzd4b53njmfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dRKPXPTy32EbSuNlErw+mtpbaE/B86O5b4YEL+8UnSs=;
 b=iaemwj15RHSIVz2A5BrYB6MaHaGheBxkM7zDnFP+dxRK7XI6oFbrpC0EPsDxcTRDPI14qYy5TtvzLq3fPL71x4Dql5Y+QmtGOjYOjE0uZoznxOola09cBnpQKd/TFt+z3+jhRn6d08kqoSaZHeDZP7Efsl1IopWba3cG0aqf6GW/95CZkNq0PGZ7qiZX8IJSJZJTNdf+xeXkfTgUIS2m+di2H3gPmD+vyNVJh1Bk4b+hR9BIRRPss8iedNHDUbtSJxfRtBWZb1GKztvSSHyN+55Lnu49ZnEWQCiZrmmHLDQI26L5s2uVz2B0yR29cAZiIT+pFGIEfEUPDbU0fewsrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by MW4PR11MB5936.namprd11.prod.outlook.com (2603:10b6:303:16b::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.19; Tue, 25 Feb
 2025 08:26:06 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%5]) with mapi id 15.20.8466.016; Tue, 25 Feb 2025
 08:25:59 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>, "B, Jeevan"
 <jeevan.b@intel.com>
Subject: RE: [PATCH v4 3/8] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Thread-Topic: [PATCH v4 3/8] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Thread-Index: AQHbhpZxNTpblo23Wk+8sKz7pVgTUbNWRWgAgAFrAPA=
Date: Tue, 25 Feb 2025 08:25:59 +0000
Message-ID: <PH7PR11MB5981C80349C4773E9FDB713DF9C32@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-4-animesh.manna@intel.com> <87tt8j7h93.fsf@intel.com>
In-Reply-To: <87tt8j7h93.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|MW4PR11MB5936:EE_
x-ms-office365-filtering-correlation-id: 80382bab-94ca-4ffa-e5f2-08dd5576089d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?h+f1v0zGr/pAf7qC0AQs8jxkEF0gZfzwGkw+AQ21FgBXgrRGtBzk23H5BPiu?=
 =?us-ascii?Q?47EWDuRVCpIMYyc2CmEUL1jYhaV5z0VA2byaoWQw0kXOvErjGAFloEsx7Wsk?=
 =?us-ascii?Q?zNK3Pf1BceTyxAV6gCb6HegcjTlZ83zCzrKXDIrapfFEdpDeScenRgZRH2LF?=
 =?us-ascii?Q?BUiN26GHwqrEiJjXgkSY8HA7Zj7+kXr/zQGl8/6QX37CePc3KIHEW9R1CDOX?=
 =?us-ascii?Q?X8Jnzc1KnSbz3UW2x5XUojIXnPt3g48tdsFjMO1k1PcFLGgXuNlBlpYzVg2+?=
 =?us-ascii?Q?4IELjXjSXz1dmzz41FzsmMACdbjMhIf1SaMsKcPV/bZ+n4xQvgV/ZGjWVXTG?=
 =?us-ascii?Q?1iAGXEBhdiwf1omkERCOCvoxK1QRoiJXxD5mJYzqQj0/CPg3o582NcsbBt0y?=
 =?us-ascii?Q?49poRRC+wpgwrSE5tuejQdQGRlper0TZ2jyYijq3M8UrG8/58hisKTZ15TcU?=
 =?us-ascii?Q?8le/phsyQ+tyM6lqdn3c03EP+DS5oHIqiqUdeFve1MjdMhkKjMzFSstH2xwA?=
 =?us-ascii?Q?thPT8Tt9WS9RasRVsmdOt+Y4+dZmVF5H0ziG+qexoy8i1uvuwlsuDEPgFpZJ?=
 =?us-ascii?Q?2yaDeN4RcgAKnRNUFuTkXiDRP/wdA07ALOmIPqxDySW8eNh3B3RqodO0LnEC?=
 =?us-ascii?Q?nO+LzJR+/bCCFjYob6SL3wBRgHMCr5/4PG0yKkZfVpBIBmMzC2fF9foFn4Vr?=
 =?us-ascii?Q?0z0kTPKcjWoqDq0XeqneRQylOlt81qFyK7Rstntam4wK8MU4g8b8ZYHdLB7m?=
 =?us-ascii?Q?spVPEjwxFm6o9pl29KrvphVdmCoGpqBNViFyM7THYJO1xAydxBTu3w7sdlV4?=
 =?us-ascii?Q?zO0vDiG8yJ5xSRwO/KJbZ3P0hdQ4k63tCdA6+uqc/bJs4ADTbdSnCOjLEMhR?=
 =?us-ascii?Q?KXGTCpJ7o0Gsg2Kq3CpX08M1KbxW7uhX1JRPbEiijl0WeXafiQgjNkcaZuEz?=
 =?us-ascii?Q?7Bu++V2MkRZ7tnDotkKdqAwVO4BgtnqBrLAZAgXtmEhQAG4ubkan32BenPGL?=
 =?us-ascii?Q?AI7QU2K0gaSLYN3SMDPovd3oUdvwxxUTOKEID290AoK1LOq8zIdqO9l8VbJH?=
 =?us-ascii?Q?SpnSe41VUVz9/vcK/WxYR4Qx78zu2qcqkoLulT4Xo9FNTARYKFsd/QOJVogK?=
 =?us-ascii?Q?Hi+6//dvadFGPwmMifigseNgVLAHPDiVvKPMtGLT3oK/vBqgiLxjq/2i4KnT?=
 =?us-ascii?Q?f2GEkM9hNeIRgfxPbkXol6z3GWTzHKIfzGX6WwcWts/N69u0egaw7vpuOTVl?=
 =?us-ascii?Q?PtTn23QmILYCO+m8vGCfg4uIonON4XeFhIX+WY+mrNgF8Zu3LmJdq9EQMsF8?=
 =?us-ascii?Q?xAaRIowhRcB8bd2V94i36xz7fL+ZdaDDphTKtCZmmRIopMvJcYCMWtULbvlq?=
 =?us-ascii?Q?uDaPD+LmySjIbQXRjhC8F6NvIlNkNsr6RpuhYyxL0Q17nbKgYPGONtD25v+e?=
 =?us-ascii?Q?a2L0rIUw6f51/lfAHv/y2inZG+hVHwUQ?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+rHiajk5G5DG4VWg9IPnXGUEhsH+bfOKV3Iag87me88VAIsxadk0IKW7zQlF?=
 =?us-ascii?Q?t/LnraakhatzhU8jN+g5T/0WyKIPnkT5Lna4LMpxCnV4JJmkGp/zkosoQOM1?=
 =?us-ascii?Q?uSN5sTt6HHcpU686jpxY4xBiwGY0MosXBp9MTAa2O0/5SpKbKbPy6Tz6cBAD?=
 =?us-ascii?Q?Yx1pHSlfvl28pOVDpIxgdBu6LYkFRC9kdNBG56bSYbH8ULJjlaZ0sS5WePqs?=
 =?us-ascii?Q?esar9XgfSFB7XBhYHTRg2BLlmttJ2JyI81xRpR3ssNvLG5qSKBPUdWx4+Eqw?=
 =?us-ascii?Q?wAR0wzz5ebgFgrhobOfiSWvvjqAKrFppj6i6Kj0sontN23sE9K6w4xZkd95J?=
 =?us-ascii?Q?hEH0+6kOYT/w2glqOvWRnxxUY+K1eQt/Qr4rxgYWcb2LvmrYjTR0ciXDGKxW?=
 =?us-ascii?Q?fg+/kuwhB61AF0Aq59OC8rcrEy7XXjrRjeK9xL5bq93YQwWaBSE9VZnZxiS9?=
 =?us-ascii?Q?V6yMeHSMeUEh9ZXtoyU3GIGLIlKbCTvC6nvf567YyE3KY9igmNYVPoCc2/6s?=
 =?us-ascii?Q?GwCwhwXdo/I389fRHNEk1nFizaqgwd2Ya4bnDs+69Z9pBAwpzaefaWuRrxgd?=
 =?us-ascii?Q?+TJu0EcuMj7sHPrU/skBBdEcHbRX5pfNTLd/IKlMvV/41UTisPnXFnbLG8Sr?=
 =?us-ascii?Q?vlIfcr+Jvg1iH0s2bUJTFoRdLWdXOhzRas7A9kIUgfkeY/17BeFgCSldcwxt?=
 =?us-ascii?Q?XUuGoA35KtKEPttzuFhTmbuFSkW6EAENs5hsXHZw92rswtRqdWH3V/LDLdk+?=
 =?us-ascii?Q?ULf6O1YI8DkWuLYQmOxDQxLHkdXxYBfJ7Cw+24tKJck0R4V83y4gFs/tEOw3?=
 =?us-ascii?Q?cq5dbV52Q9pSADAFZfba2v2WEhjpWOAhD5Zuuyaa1ZGTzjwFamUFbNhM02OQ?=
 =?us-ascii?Q?LmLcTTzDb3JaGVHGgM757WvAByvitJkem4PoYKn9Ja/u+apwbusx06iLizD6?=
 =?us-ascii?Q?RN/G6VGTJW2PGOsuMzUfjbQbHl9Kwncee33/mUNQ+12Hec6H9LhK0ZxZu0uB?=
 =?us-ascii?Q?24TrRru4cgFfBcpSNd0Ji4erFE6dscPK73qklev1ig6MasZ4GWGVcF5H8MYY?=
 =?us-ascii?Q?PaEezSNBJA3+w0j/RZAQ0bd2vB+mJ34okuNvyq5jzdafTxnCsGMW49sfdtCn?=
 =?us-ascii?Q?FETIIfDhhtra6L3IMubYfNhWfXXG3ebvt+Xcao2pONSheWK9IeNgHrfv+TxD?=
 =?us-ascii?Q?DyiIhVMX0vDDsIE5T0aTBfPw/2WVXCfdnbVowARsrdZVdh92G7dydrfLLsP0?=
 =?us-ascii?Q?5XXY7Y6RMbXszJWYlaYdOp4cvDKPDDF3+UkKy2cfITioEIVYYhlbMqO1zk8V?=
 =?us-ascii?Q?sFEmztgLPdO7f+g6UjxK6cDyHPtYeptEXSJElPS5DSO8F9fozHuoWjJUYH/+?=
 =?us-ascii?Q?TGS6q6HZ7dFggttaneF9eWXZtMCaJsU6Zo0lEfyl5FrB2Ntf9DwLgGCnHtG9?=
 =?us-ascii?Q?BvI5ls3v+NlX+3K6RCy8D+pMLyVn/zPWGsSHlvt/41xBauV+pvTQda3uYyiB?=
 =?us-ascii?Q?LzqkObeQqUz6Ib/AQtkjKdnZEiAaRfc4bPyzYxyrze2DiVdureWvoRgsgEVJ?=
 =?us-ascii?Q?UK4s46glS3Jw2EssREHh3gYY3/gZ3CElJzGqGchE?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 80382bab-94ca-4ffa-e5f2-08dd5576089d
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Feb 2025 08:25:59.5214 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5IP/DSkE2P6I6O3vgGEX3eX0k2WCbvwWS1M/V20/B0P6Qq1fDxe8C1rBKPIXBey0PxEwd7FqDYulrLtoJFmHBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5936
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
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Monday, February 24, 2025 4:16 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Hogander, Jouni <jouni.hogander@intel.com>; B, Jeevan
> <jeevan.b@intel.com>; Manna, Animesh <animesh.manna@intel.com>
> Subject: Re: [PATCH v4 3/8] drm/i915/lobf: Add fixed refresh rate check i=
n
> compute_config()
>=20
> On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> > LOBF can be enabled with vrr fixed rate mode, so add check if vmin =3D
> > vmax =3D flipline in compute_config().
> >
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c
> > b/drivers/gpu/drm/i915/display/intel_alpm.c
> > index d94c96ba46b1..1438e125cde1 100644
> > --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> > @@ -288,6 +288,10 @@ void intel_alpm_lobf_compute_config(struct
> intel_dp *intel_dp,
> >  	if (crtc_state->has_psr)
> >  		return;
> >
> > +	if (!(crtc_state->vrr.vmin =3D=3D crtc_state->vrr.vmax &&
> > +	      crtc_state->vrr.vmin =3D=3D crtc_state->vrr.flipline))
>=20
> if vmin !=3D vmax || vmin !=3D flipline, right?

Ok.

Regards,
Animesh
>=20
>=20
> > +		return;
> > +
> >  	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
> >  	      intel_alpm_aux_less_wake_supported(intel_dp)))
> >  		return;
>=20
> --
> Jani Nikula, Intel
