Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30FAD929B45
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jul 2024 06:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FDC510E012;
	Mon,  8 Jul 2024 04:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cIis+6Oa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BE910E012
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jul 2024 04:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720412267; x=1751948267;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/M5my0eMgJNr7RNfpHK9Qg5s2CMocSBoKm8bSsEWbkY=;
 b=cIis+6OaJNm9WXsAJ0vR6OXN0w9D0dxLcaQVnNKQKwn4x82FNBww2CT2
 rodWD8Nb0v1e7xeUcUgk9wIlRJwCwbB+maK9DO2u2oZCnlhKtyONT6ySj
 INkfbE8FqxLXue45vTGzpTQm/tGwA8GgJUbU2Mnuzrkt2jINf5ihTWPCA
 YC7lTZGM/ZQnDYR52cUjn4aRUmteHEnQehTlQOs6O8KLTlQnTj16OpIZC
 vBTndY9XsHSg0eQHr8CeaSfpOAAzUfPs4QPiuDDwzfnzNuw76tXAlml6b
 2+5vhoDZgVqR0PjAnywuPu+5Lb7NK2P5RZFz7iOjki13Hc/VN2Wg2jyjt g==;
X-CSE-ConnectionGUID: kKf/+R/sTvKiOvM3UDznDg==
X-CSE-MsgGUID: 4JKzysVGSliugJw7eQND6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11126"; a="17729355"
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="17729355"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2024 21:17:47 -0700
X-CSE-ConnectionGUID: GPvBDBpORWS2I2vaB3Fs3g==
X-CSE-MsgGUID: ETRDMPZjT0KXZOwh6EFVgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,191,1716274800"; d="scan'208";a="70587308"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jul 2024 21:17:46 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 7 Jul 2024 21:17:46 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 7 Jul 2024 21:17:46 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 7 Jul 2024 21:17:46 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 7 Jul 2024 21:17:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V8CCaio8yyHRnj6XVfceTZe4LG8wno/O0kjW1H2LEodt04u2Yo1QuXQ1qN4SjqRJ89GpK5pPW7CI1EwxB97AIRIXGHHQrIx1SsUlQDHvDVLLPTj+uIY2fhg460HCvQpLVEXBARTKdJFJQFfVEjOxmGBMopEGZ5omG1gbruhKg36uuzTXRoi9xeWri/ZhEE+QT/iK5DEYQ1x1vlQbEEdVwjUUOBrTAXQRw+V9UMNs39063X9A9CdGHg8hHHVcTwihopdPxr/y339e1PzmaBZtDkIs6YVLcFvMNl38Dw0n1N5u3VIoDC7UhfAWjEvWV2SUBmuD3SdXdinCrMlurD6tFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kSpC/441jyD8FtROeLtrn+pvK9HGT9hLGlw2vzkfb3M=;
 b=RlGibZImdcszcgHUxKQ/+E93G4vIJUFGpa32kX+ZPOiyA/HDuDzTblEGd2w22worS6YpBmQYOH5DIvwBD5PrSIzWf3JpiryKpNNLH/4Ii+of9uiKVLLlLY+dYE3ble9hq1KJ8/cGHVesK2MB8/K7AH5FApZE1hVGsKVDUMk0aU9XoG4gI/E47ABj/+jz9NxbdhEDeHp6AttAI9LIAFoC5keU3Z2Ifmkup4ZBER1ioKNazRLckdd/MKWa1rlBkbEtezVUIljL5vHq+wHhDboPyRIGUGFP2Zn+zscjvISJV/1K3ZzDR4aMsYwQBLoY0DiecqBrYmanQ2RQEUQ1KSraug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MN2PR11MB4632.namprd11.prod.outlook.com (2603:10b6:208:24f::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Mon, 8 Jul
 2024 04:17:44 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7741.033; Mon, 8 Jul 2024
 04:17:43 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Thread-Topic: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1
 xosc clock
Thread-Index: AQHawjTQw14gCVqdo0qBxMIkOloEG7HsVkUw
Date: Mon, 8 Jul 2024 04:17:43 +0000
Message-ID: <SN7PR11MB675027B3F1EFD432DA3DB679E3DA2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240619103803.865289-1-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20240619103803.865289-1-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MN2PR11MB4632:EE_
x-ms-office365-filtering-correlation-id: 08195a08-09e1-49af-b6b0-08dc9f04ea40
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?hPa/nr7hprBlZ32ohIhxzKXr4bBUCxY2GeFnnnH7uYkxABL+6l9WrCiKx/2A?=
 =?us-ascii?Q?iiTC31/6KW9rAL6CASoY5lVCj/D/u63CGY0Zyo/o3IMF0p05vrKRuHTh8uCH?=
 =?us-ascii?Q?zW75wWuGw496O4dw13oKWbxWjLJx458sqy+k3T38jypJFkyM6U1ic8D4bGRh?=
 =?us-ascii?Q?xY/GiqtJE9YE8UIlK2a0ApvgOGGpMy3pCytSusdrnHsQkymbT0nWhgGPGXul?=
 =?us-ascii?Q?ZkTYqk+7SYwY4iuzti700dAsZmtxDVXjJA2lKVUUl1ALyZaXxFsao5FeOQlv?=
 =?us-ascii?Q?EQFzcsEkHL1jGYLfdxJ+m5zvi20wMtw4/c5H8ktNBx1R81qsccSv4U4c/WV5?=
 =?us-ascii?Q?vlMAb6nPIUeTokkap3Ue8whPkdRxjMJeMtva4Dcyd71mV77kWpiVD582fLI3?=
 =?us-ascii?Q?HVP66Y0D9uPzg+CSYmtqIFzcJg1YFywoONJJo/YDbmne3/ZNGYJPOC1Jw2Cf?=
 =?us-ascii?Q?jSbi0xY643frU4qCw1kSUsqF6cMDpNUqq+57hARZU/O7ZfErMIar2tELJ5f/?=
 =?us-ascii?Q?ntvYlz0sHpWB+bDUbD/WjI1RS+VnuUVnI46spW9ugRM1QVqOnw7BNtpyoUn+?=
 =?us-ascii?Q?WAg4HqxL161qU0amw7wVwye7f4NkEl+kgJtOQmgMKdaLkJDliMkpWYkefIQ9?=
 =?us-ascii?Q?NQYguiXCfPMpQna5HB+7RyjQQI/fSYBCPRsHkKqhTwtidplSMNR1XF2RcAmp?=
 =?us-ascii?Q?Y6aC+IVukXJfYgjo7TKihQmMJSPZ63chXShdTADsYhwYVHOZAeFD5QhqL9dP?=
 =?us-ascii?Q?9A+ZfudZoYX/2yuQMLkcODGR1oetyjqAriCA8okbvp7g/YuwedxLizk/np8k?=
 =?us-ascii?Q?q4iz3nsgy6z9wySxY74stBBD78n3dX1I851c0Dr2Fj05Yxn8A/aSYPDKJ0F1?=
 =?us-ascii?Q?z016rcjnCwvgS7ADY3QDxPUB5ZfaDBUWZbA+OxgnSPVzlXP//q1P/GuqNjPd?=
 =?us-ascii?Q?u5ovHF623vS6jVMwfxCoBwgBSD+X7iujop9+GG6AfDE7PVhgFApFbV/e5YZX?=
 =?us-ascii?Q?uHhyYNHZ0eGGdoUnV/D6BozvfzQPyETY87zVM1k/B9q7xU6SF5GhtyyIOmcu?=
 =?us-ascii?Q?XW62d4W6JuKFQhhUSByKIt50TbY8KXYwCiqYnWPejiuyg6tSVOf6bX214Ord?=
 =?us-ascii?Q?FV2z8j9tMM2eRwY8OKA8Qs7004y5BNkVkvNk7GlAvFgCY6NJ+Sz6YDvimEO/?=
 =?us-ascii?Q?bL3iIhxcyJOsZdERwZzIO/hsiq/SZAe8Z4uJCYN+zA8c+BJjZ2DDTraU+3XJ?=
 =?us-ascii?Q?bl2x0j5xKw2Cb10e/S3IFPhOpU4CP4TeRJBK1NKTkICWnVlFviL5ZPcuyP/+?=
 =?us-ascii?Q?l1wWjSM+SzYeDtz7XRzfIdjymAhdV/hFEjm7VQ/aDI9WkOEyOsCxatCDRUdD?=
 =?us-ascii?Q?VnBXRdX0AwSAddCiQB3ew1BY8ZxThIzsvUwUxVRnVVA3L/OuAA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?L95sHBIe9iwwBJalXYasyWv+sPEdyXOMJwUgPIZpA6pjlxLsXXUoC2hDQZCS?=
 =?us-ascii?Q?JLYyCFncD0L20lt6fDJwQweyTqcbmp8MV5JF9PZCNjSmdGL1kma9YA2Y41Cd?=
 =?us-ascii?Q?2SymbYWOCN8EnipZ1amdlnbih2NblJY9/alndE9jPoD2RHZ6OP9z8xrYXXjY?=
 =?us-ascii?Q?H0MO8rWUX6ODjbZhTeRpi1TbAqBgnPfEnC9y0rieyc0RSYnc/Qb4K9AAHgUg?=
 =?us-ascii?Q?3xxql+u5beqIjtAN6ZWqJGpjAcf9BIrJMBXtvBLtiCVpU8lHtOHLCndgiFXj?=
 =?us-ascii?Q?eI4GIIsd8Bcb2ym08goYWP2lNmfED5wPE4oVzxO/voigG/jWdmkDRLmXEFaq?=
 =?us-ascii?Q?M+YVacJiq1uEP1nw3zaAq+zHDiZaTv3+Oak9wjeKt+nrmnTnjf8KGIhbof2k?=
 =?us-ascii?Q?gTSwq7HLXvLADHX3Dy1y6carxb9bb+6MSP/nYqvYXhOxGnNb5ud2ayPNwJ0s?=
 =?us-ascii?Q?H0zX4uLIZFikD7TZgcW1lsm++y6UUzUUSTRvI6Uv1ZOAhqynzV2+9HKrAtkj?=
 =?us-ascii?Q?hAUuTtrALGwqiFuEyQxCzDqfQEheGgByKFK8ANk11HCsTc/O32RvW0+UjYSj?=
 =?us-ascii?Q?jdx5v6+Mpfsa3+PZwFV6HEycNPq23vcMBc34m69l41FaXZ/E+6aWjFvRaq0L?=
 =?us-ascii?Q?9sPW3n7ev4TuyjQ02afujIqFbKoAkcxn+vq6Zp7jBoKQ5HYV4xo/oG0esKO0?=
 =?us-ascii?Q?LEKBN+HV9U+3odOn5UUQAXCy/5MH8USY+Gk6Lu7JWSGEF412UrUxYtv9eKgm?=
 =?us-ascii?Q?h8vzq9OAFDT7Ydm7QYk0rwAf2UULHa1+Z8xzLpsHYEcahjV5dCFu1xm/JQeN?=
 =?us-ascii?Q?qEWYIQQJV4d74HW01Y0iFkIhqaeMTjGVIHO0hfJ+YP8fB3Z/2/tpNR15sXvr?=
 =?us-ascii?Q?dxZO6TxLch0phx1IJt1NkVxA8r8ZAKBGKfmpWLdSMmL/OEgUQ9QUv6YgHPHf?=
 =?us-ascii?Q?W2RLUSUgHnB0B0DOAdJj87vjQ/QEeHC+nuh38AvbGY2bTm9uT6xY4176u5RG?=
 =?us-ascii?Q?OFsPTN+G9T8muRZW0pfS5i3csMtxqC70DItoR8xPSRBMBviFlmzDmDlaHIe5?=
 =?us-ascii?Q?nFAKTN+MdiSnMucMQKHukaulYXKnZhUJAvK8UdOMdIj0PEXcqa9w9IYuJ/G8?=
 =?us-ascii?Q?/wTxqr8MiwrFDcyWxEua8B2BUPX/FPblmhDQ50wXqWLkSrP4FqX/ZCu35H5M?=
 =?us-ascii?Q?orW6wQ9LEIa1MFepgOQ5DQhdRWohFZpZsAiqLpz1NzHacmb15KCvS2/1b2+B?=
 =?us-ascii?Q?KiR2kybbwtOnh2P7kiEC0E+naJajBWSMDdZfOdUWLbW+zHBI4XvA+qHGyZuq?=
 =?us-ascii?Q?/2UFOcmhpO3fpsA4KDoVPZAqlkgHJegP7RCP+hDwsxW8uvnKuT1cNEcO3+9+?=
 =?us-ascii?Q?XsGFbnj/NKHkyKR00lhgVpa8OPRNzMc7hTRCP2zQKxjuSVtf3GtJQFjgyU/y?=
 =?us-ascii?Q?iT4pwUP9Wc08FtuPVHd0pAKP6bMEsjhDblIXC56aIjaVjkVjo4vH/+hxMSqg?=
 =?us-ascii?Q?3ld2Y0wWN3HXA7AxnOzlGkQ+00qZXzhjx8OHqyR4rt7wXjef9olbVLJX5N1s?=
 =?us-ascii?Q?ILi7FZg7KMv3y1Qqw6GRM+hTW1oYr/B614ahpP+Z?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 08195a08-09e1-49af-b6b0-08dc9f04ea40
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2024 04:17:43.7959 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 33BRthpvb2e1v8UrbZyAYqVi0bks4FdXnKA+NlmcTWb+HOq+xYbNJaIrpuE6pOimDZmAGbZ9t8sMnlzMwYkPgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4632
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
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Mi=
tul
> Golani
> Sent: Wednesday, June 19, 2024 4:08 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [PATCH v3] drm/i915/display: WA for Re-initialize dispcnlunitt1 =
xosc
> clock
>=20
> The dispcnlunit1_cp_xosc_clk should be de-asserted in display off and onl=
y
> asserted in display on. But during observation it found clk remains activ=
e in
> display OFF. As workaround, Display driver shall execute set-reset sequen=
ce at
> the end of the Initialize Sequence.
>=20
> Wa_15013987218
>=20

No need to explain the problem just the solution and what you are doing in
The patch
Also Nit:
Write above as HSD: 15013987218

Regards,
Suraj Kandpal
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index e288a1b21d7e..aef54c1a2ba9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1704,6 +1704,14 @@ static void icl_display_core_init(struct
> drm_i915_private *dev_priv,
>  	/* Wa_14011503030:xelpd */
>  	if (DISPLAY_VER(dev_priv) =3D=3D 13)
>  		intel_de_write(dev_priv, XELPD_DISPLAY_ERR_FATAL_MASK,
> ~0);
> +
> +	/* Wa_15013987218 */
> +	if (DISPLAY_VER(dev_priv) =3D=3D 20) {
> +		intel_de_write(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			       PCH_GMBUSUNIT_CLOCK_GATE_DISABLE);
> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D,
> +			     PCH_GMBUSUNIT_CLOCK_GATE_DISABLE, 0);
> +	}
>  }
>=20
>  static void icl_display_core_uninit(struct drm_i915_private *dev_priv)
> --
> 2.45.2

