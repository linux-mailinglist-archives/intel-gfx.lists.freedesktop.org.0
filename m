Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DD49E4CDD
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 04:52:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCFAE10E37A;
	Thu,  5 Dec 2024 03:52:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="juFCjSqO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F90310E06C;
 Thu,  5 Dec 2024 03:52:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733370735; x=1764906735;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6OZYq5/wf396LW88q+GRoqoRiMxd9vqf3/6dfumUghU=;
 b=juFCjSqOZ874Qn0AVbB9PPBeYgxGSFaanirB5wKxC3cOpN/Y1HzngUk6
 RwPc2U+ov6WJf/hvc9QxkGqFrPFtiFmKFqAlM07CFAxsbHhafRPe7e0Fp
 ISsixvVX53RtWoO66WLOHRnh6wEm5XwlGV/ZjWSEMrWPuBbZIwAuG0jFR
 OxAIgqH/Z7DPPNRdbontyf0cBhu05XjrWj2E4XSfovl/Bt6D9ZPeBfpT2
 oZUCJULJQn6qad8bbfhaLdLr8tHHl6Q4cGC5i/FK8EDbA4+Qok88rkeBj
 9uZ0CjJCwcGrEmOQuXb0gPuFquvZ9KXI+5TrnZ/LEHkAuQMArgTB/hUPy w==;
X-CSE-ConnectionGUID: WxxQzZb4SDGc1Q/B1uwpSQ==
X-CSE-MsgGUID: BHmG57hWQ2SVwlAdyGmTMQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="45053468"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="45053468"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 19:52:12 -0800
X-CSE-ConnectionGUID: yIUgPbS3ShiobF4L3BULXg==
X-CSE-MsgGUID: PZS1fZJ5S5Kb0qxdrv3RNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="124785719"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 19:52:12 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 19:52:11 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 19:52:11 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 19:52:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Cm0KYQJzVs51kc8lY/i9K4eWSYzPX5ZLGmSC8RSXtbdcoMQjczzpPS4JXR1IfqCg9KKakYhzcH7AEtKhM4/fCvka4S95iNpsAcGgMTOSExvGxUt6MwWz8c3Xi33VoXEGNH0DoD3rKIfBmZWo4eLz7DssM1QKbkImu+t0k13H/g424W0biKFBSpSl4oJyo4I5qj8pb6R5cofoiQrGVHOXC0+FrZ2jCXT04b0VzgvIzz4ciVQjPwm3WGlaNWqnHx4mJWRwEGspWdAc8OxtIg8RKiaHVsPfg7/hExbAoCyKupwWD/Kl8g3nNQngMpBamy5j3no69u2Lf/04/5/M9RD4JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E8vAUQ7r49PeAvNITQuJcMtLq9j/KPuVer0fKbmQ4rw=;
 b=DYjXekd91fi6uy1TpNr436C99w7ECAtigUbGqY5oLho2Q+2SBFWGTZmDfiFWht6UfiKivhunwAWUUUllByq4AGFat+Egid4uFB49rj5b8IwudgeVgdmBm83rTpsTUNvwBpgdsUZE872r5GU2As6Ve7U4JkVtlr1b9bu8gvQR52eBkArYhtJXpErO2OeMdwsRuNS1fICBcQlNJ1V3yfk5ojlt5cFqDZisiD+EbqCjKM+f1QBQMNXBioTCu2XetBkfSO8cVtkO7uriGyDf0S7R7AF7Y14/lQ4P/LGyMwwZURFYIWmc8hui1OfaTA+4r1V2pqOFMbOTQJeh/3B7eEaHVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DS0PR11MB6470.namprd11.prod.outlook.com (2603:10b6:8:c2::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8207.19; Thu, 5 Dec 2024 03:52:08 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 03:52:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH v2 5/5] drm/i915/ddi: only call shutdown hooks for valid
 encoders
Thread-Topic: [PATCH v2 5/5] drm/i915/ddi: only call shutdown hooks for valid
 encoders
Thread-Index: AQHbRl5TTS7QU2Kbs0unLIUH12ipVLLXBSXg
Date: Thu, 5 Dec 2024 03:52:08 +0000
Message-ID: <SN7PR11MB67507D4737A59FF4F49C35A9E3302@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <cover.1733324735.git.jani.nikula@intel.com>
 <c2c5a2b276064842c1493a7efb9e6bd3159e2a98.1733324735.git.jani.nikula@intel.com>
In-Reply-To: <c2c5a2b276064842c1493a7efb9e6bd3159e2a98.1733324735.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DS0PR11MB6470:EE_
x-ms-office365-filtering-correlation-id: dbdbdfb0-65d9-4144-bcaf-08dd14e030f9
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?OR6rtFqeoL+cXuSTUw4C2yOv9RaSdyex48XO6BYNIfMspCux3zf3isJXaK/F?=
 =?us-ascii?Q?xXdAv/axmauwVvnuVOtyPqKlWO/l0494tlH8Zq2jzs79Amm0iuFkObQ0/B0Q?=
 =?us-ascii?Q?/osZcjvYWmShGe0+lhg4gACukiHM89TNOQoHPxOHyGOV++jANnohINAONBvc?=
 =?us-ascii?Q?8m1qx+Mg+GngfFcfe8jQFRPUvLdAgKd/O4uwB9IkbhGDPDCMAvfTpnyiKddi?=
 =?us-ascii?Q?kYYsldef7RzpLUfYqUdNZ05TC1rkNTnyIUF9v6do2HPq/gui4dgdTS+0pEka?=
 =?us-ascii?Q?1EErDKTz6MHZ7aoK/eNDcz7xl1NmjuHocY9RAINMIBrw0zceaRxFW80017aC?=
 =?us-ascii?Q?BNJmTGIhdh5TnIMTxZo3YXN1YGh3Ct2b0oipBEkHs61O774NaEDPagwmcGxQ?=
 =?us-ascii?Q?01YRNZy9sMFaXamK2Snfw75oP3nT2Fvwnd7kf1WvC7i3oqk6ORv1UCK/DRzu?=
 =?us-ascii?Q?5+6PLYFUGVPW+AKJQlJdBqxcsyd6+WAn62i5z74y8OPRy+xuIcZmSMfKOnWJ?=
 =?us-ascii?Q?x8YsN2UeqxId684jMSygJXmxCtIqDxt9W5yg3h70XLVI4pElwuyyUZo2Ug0p?=
 =?us-ascii?Q?4wfIp0tFhotAHsBaQ73IrPt/B8hKbSUjM/FXwGrGvCqVTezOP2T/zyS0WMzh?=
 =?us-ascii?Q?8DBrRNIEIq06MEpLMco6Boedv6AsXXatAWfM/+ML/bCorr+bfiYXW9tHGKrP?=
 =?us-ascii?Q?xIQFHcGQnTVqWYlbXfmwDjr2FMJ9orS0+t08yOOjOJX/dn0nD7L+xO4W0ST9?=
 =?us-ascii?Q?mDlXqNFmn7vgE21ZVZbwyl90IYssdgH9vcmoJNhrwBNbs/6zjo8w5GqwzaqG?=
 =?us-ascii?Q?CQAPVMWoV9D6XRf1Da+EP6WALUrHg982Gq8VPnOy+LcS6BKgP2mLYf2BBivZ?=
 =?us-ascii?Q?gGx4BAQbZjckvdIgsvLpapE1qtVDoxKQaVgx9zuyxzFFQZ5jNVnHoBuzBWHt?=
 =?us-ascii?Q?uzhRFvdC4Srkrs9IoqjInmW6AzRKflBM1Hjw0YVBfGJFJ/ojyj6xapcX7ebh?=
 =?us-ascii?Q?ZAQVqfzMhiScbxL27m+zylBYXvXY2Ue+X+VvI3A338RDqXKrTflDvh/tja7z?=
 =?us-ascii?Q?AMklUpVY9QOPer9HLruLAf7GU6tQ7f/4u5xiiXDWK5r++OQCixz/391fPL48?=
 =?us-ascii?Q?2dkJG4ZIoHFIPMp5awfriLMG4X6Obivi9HjalN7vKmQU1RYOyf7JvkOBMG5V?=
 =?us-ascii?Q?zOEAyMngigdX8nGXPiEQHrsSA+zaUjC54gyGRrYPMCZ2G1ZvkTijs3Il1WcG?=
 =?us-ascii?Q?/IEXHNC+An93SVui6m0vmJ+9Pfl5Z1bQG0HlS1nc3nl317TWWNzpgEFQRcty?=
 =?us-ascii?Q?GC07+lBYZl1pT0Y/eAZLKVvx5B3p3K/6Cvh7kCp73L4FgI6v+owmjJSuhTrA?=
 =?us-ascii?Q?q5LcrFXshLDoRqfSjfozy3f6NZx7A58EYawtk6GRfuUCt5KupA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?4XCSDE9Q2gW7EIiovQF34jqpft7caS5RouSoB518z72eYxqm7WMD7icCGFm2?=
 =?us-ascii?Q?AfE02zs8pBuQrPrc5eNFF/Z4yFBjOkGTIGEcSayWSrFKehMwFV+IYIp+sTbY?=
 =?us-ascii?Q?etOyNWtghP7zIA3GpgGC0O9CBkc+Ao7M3wwM/yyJZzsqr5cF+trPCxsIHSNO?=
 =?us-ascii?Q?/yyMU1ksYUsYGFGJC2Y/P7I9TA3omKi/2KXekeER3A1L24hyjXiBNZV8bElG?=
 =?us-ascii?Q?wBt4VpN2bwUmuWBZ42362hyKyV2rqR0/Broix2BN5ZU0j258cjY7s6eOjKUA?=
 =?us-ascii?Q?3OBg0g3ktKf4Ip0COK9cjIQGniUDeXSRiq+c4NFhwjnnEC0qdroALG1uU6Io?=
 =?us-ascii?Q?lDfOM+jA0K+8p1IyUlCmFmNZvKkCfvcTT1+lE7wHsjOhpstaW+fK0QreIqRA?=
 =?us-ascii?Q?8GBMnqOF9irHnQPf4Op2RZUKJ4zSb+S5b8OTzf2g/YSRQmXesk2EE1T3CaUg?=
 =?us-ascii?Q?uFA3k7cWvYR5KJmHXH+Wgs6SBp/87eyHWP4fl8iVHqhWtFAAFifQWTyiW9hV?=
 =?us-ascii?Q?1spZuK95u8mi6lQACNIc38QtLPwR6tKrwcj178eEoIUv9fnj5fJC2YHGT983?=
 =?us-ascii?Q?syZYO4wpxcQlisXW2J57V59gyqKfevaeFy+tyXhj4dAnLtX9zrlV41W22TXk?=
 =?us-ascii?Q?jkqr6KhbMKoa/HxpwjBloAHXTBtMahYCNC1r4EtLwpnZ5xln4MUhlGuM/t6r?=
 =?us-ascii?Q?jKtUy+sIeRtCyMnA3QptMwrqXtpN8s8IXDis8IsEypZv/HJGHh6syrKHnFSE?=
 =?us-ascii?Q?5KC1JzStEyn3N89SIwYCjRiSyiVmAFI+gkF9A4EtnM6evet9QXLBEj/f4NlY?=
 =?us-ascii?Q?UUl2TyWS0rszRvrev6VAW3ShjlZTJbkrK0X+JG/ZXgZU6Pa1/bqRx8RuTcEB?=
 =?us-ascii?Q?/fSCWlKAEmULghWZ0gGF/MOm2c5ceDz+QRfHoSe6mnHqnH0R9o3h8ONBWoAS?=
 =?us-ascii?Q?qnQpyHWUDEl6hnMctmt4XxHtYxowuVTftP4fkY7JP/MbnJWi0Y1DlhdRDzEk?=
 =?us-ascii?Q?XKQ9vn4eh8DQvTsOE6sGc/De6gCwVauF8Yhmap+eToL+6JNGLCMuJK1VF//A?=
 =?us-ascii?Q?YlhSKfWO5u6yMOdBPY95fm3ME8sYeF3I+Ww12gBXsDwK2EvaIaprxrVVzPpX?=
 =?us-ascii?Q?1DlbiEKPWqAdJOEe1wl/2g28gHsSIcgOMIBDJWGLXDi6I8uEIkD0HSgNzsPv?=
 =?us-ascii?Q?okuNBIaabom0QGyfbzJvnOvGvTuM+sSxIWfNpSYllT5gqA62vN6HwGL8HhNQ?=
 =?us-ascii?Q?RPbx/7pcgf+MFxvfl4MV9onw+LCRznTxwHKvN/zWLCzgU/QUCS7ppAOjDewn?=
 =?us-ascii?Q?n7gHZL/x1f3y329mRuud1RnDOFbF6wvSOoaITGTolP5Pa4nlKO6M/BSAz8pS?=
 =?us-ascii?Q?O655AmVL9Z1ul7Ll0kC9pfv6XccKz2DWA9AvStNHHGjo1XcNBD3ACk1btrQv?=
 =?us-ascii?Q?s13gflgHIeHUP3LndDWTMN36lldduVUTXFOkRUphJ+dFLCsS5l4mQUqlWL8K?=
 =?us-ascii?Q?u2Tqs6R1/aMiSSUZO+Lav3mvpBouDrc1qIpTRPzQcl4jPeUclG+EECMa/ltE?=
 =?us-ascii?Q?8krzKdtOHyWe7gWky20GJNrePSSZZAPsKjWsA9SJ?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dbdbdfb0-65d9-4144-bcaf-08dd14e030f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 03:52:08.2812 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: unpuZvGJQb9EpFL3Hs7MKpSeQg8lwsfV8p5s68ZcBPuncVKi0TwXL+tz6GLODvpH72ax1onMKjb+Gz4QLNn5Nw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6470
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Wednesday, December 4, 2024 8:37 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Sergey Senozhatsky
> <senozhatsky@chromium.org>; Ville Syrjala <ville.syrjala@linux.intel.com>
> Subject: [PATCH v2 5/5] drm/i915/ddi: only call shutdown hooks for valid
> encoders
>=20
> DDI might be HDMI or DP only, leaving the other encoder uninitialized. Ca=
lling
> the shutdown hook on an uninitialized encoder may lead to a NULL pointer
> dereference. Check the encoder types (and thus validity via the DP output=
_reg
> or HDMI hdmi_reg checks) before calling the hooks.
>=20
> Reported-by: Sergey Senozhatsky <senozhatsky@chromium.org>
> Closes: https://lore.kernel.org/r/20241031105145.2140590-1-
> senozhatsky@chromium.org
> Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> ---
>=20
> TODO: We should probably audit all DDI encoder hooks for this, and add th=
e
> necessary checks.
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 67bbfba58b54..f3e27c67c419 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4920,8 +4920,10 @@ static void
> intel_ddi_tc_encoder_suspend_complete(struct intel_encoder *encoder)
>=20
>  static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)  {
> -	intel_dp_encoder_shutdown(encoder);
> -	intel_hdmi_encoder_shutdown(encoder);
> +	if (intel_encoder_is_dp(encoder))
> +		intel_dp_encoder_shutdown(encoder);
> +	if (intel_encoder_is_hdmi(encoder))
> +		intel_hdmi_encoder_shutdown(encoder);
>  }
>=20
>  static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder
> *encoder)
> --
> 2.39.5

