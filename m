Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2E2A08713
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 06:55:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B548210EFC5;
	Fri, 10 Jan 2025 05:55:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U9BszMLH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B7D010EFC1;
 Fri, 10 Jan 2025 05:55:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736488514; x=1768024514;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Elkb6AAHHEVcSJM47aDY+BOySmrskiHOCtLJocOCbGY=;
 b=U9BszMLHcU01XGCSz5RQaV38j10pH+xhTD3MHAU8aRhE98RY1MGdFOz8
 meHXphaf9HyXsF4RmWubSkHe9OBF6aKL5BxkM1E6sxA1PgvMEsqrjKl4E
 M6CGwwZtgqyRoAT8n7mktvpSwdiJ+nMu0RlOqTqErWLYn0wIRL94qDWir
 xc1yr2L+60/wuTjjFAL3JFidk02Iy2pxgVEbxGaci71qpDq95r++b3VrU
 MafdI0IG1PcO1p/TkFE5WO5MLrY1M5bS1MXVqv72xuoF4xWrGFf7cfgxb
 dj+n+E24iiMswQId/ipKEzukbEvY7R1IyKTT3gcisW/0EsAg4cSq2WIJJ w==;
X-CSE-ConnectionGUID: q/wgDSItRN+ux/0hlvVBkQ==
X-CSE-MsgGUID: KwEYmgjDT3Wc9bFhqJ1n2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="24376518"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="24376518"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 21:55:11 -0800
X-CSE-ConnectionGUID: ImlR/KAPR3SvoJFmW+UkWg==
X-CSE-MsgGUID: Z7HQa0ujStKU19C8x1EzhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104515444"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 21:55:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 21:55:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 21:55:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 21:55:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RG4B0bvKvY5MANm07eK0aw2aRRh57oDk3noXApYstmWXpa7ppgJqkbZ5g9bTjNGvIqT8ZuLYR/vttoc5JOEpASLwtBYhhKCFABGva1l3X7HTHHqc4V7j67H3Ex5b0ayY4pspAvdx4nLlZrSYgVBPTun+pVAPqMHWxTMgxcBJWXjoKlHi9DSA53kK7j7/QIo71jmuI69YprntuA0udw9bKoI7xdPBCN1W741kay/lIC7NtuBEMzaAbSj+afbf94BrWNjfcqMIDFbI4+89U9YIYpE11GGPPJEVQ8DMJx4MDf1ko+78OCgnM4r1FWqxkphToHN59f9198DC3PNufVOPUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALDvtcUGCSDETV6kyQf6sQIX2p3XSYS6P07ie9pILLo=;
 b=VBBGZLwRKvDeAa/+DCqei1DxWbGKueeef94wZC/ZRM46Fr4NtbFLBYQuSwSCdKb1uY7nsAFBliwCrCqvRoIF0JZ/MRN8LnnjSwbLwf+GDqbMo+48PY0vJ1UxxUBnduWFu7yKFK8yyzD1qbuS1Dh5TkpvUi8CA+MSg7RfdSZ/9BwBH+PtEGHAHQS93FDodRPSlpZ3TYgEcqjjmTsZ7tvvIIIq+uxlJx8WeyOjNJLYJ/LjRU99AlQjmyPPDr+MvTO45G535GrJXnLNQGtJmTiN2DF5xQS5fzztb0n4g/UUPcVH7Bnm/gynO/sVbDxp6nKb6q5we9p5xawTq8SGgmPxrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by BN9PR11MB5257.namprd11.prod.outlook.com (2603:10b6:408:132::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 05:55:08 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 05:55:08 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: RE: [PATCH 4/5] drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs
 with algorithm
Thread-Topic: [PATCH 4/5] drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs
 with algorithm
Thread-Index: AQHa7S+G+i8IooxsikyIVD9TdmJXY7MQbcSg
Date: Fri, 10 Jan 2025 05:55:08 +0000
Message-ID: <SN7PR11MB67501D2D0C0E989A6DDF3169E31C2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240813031941.3553574-1-ankit.k.nautiyal@intel.com>
 <20240813031941.3553574-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20240813031941.3553574-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|BN9PR11MB5257:EE_
x-ms-office365-filtering-correlation-id: 665e0629-fd15-4a64-3781-08dd313b5687
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?X1zPq2GFvsdkiAXM6td2gDp/alljCPchFC4QRK5K/RUU2J9ENslGTxpfywew?=
 =?us-ascii?Q?DIdG+v2EMUztv7hZpITCmaFpJGXDgnBoNxHTI/Aq4f1KLZ1Kkq/GWpDzjHjE?=
 =?us-ascii?Q?bQaOguTSYWuEPiuTVsdwzIjf3JYZyIExx/YQurXYJWQ7Kk0V6XK9K3Mrm25S?=
 =?us-ascii?Q?MgQtDyVek0MRNFAoYqlHkCDu541L5Cx3RX/vfjrROEGmsyrM/mkxg0ueC8p8?=
 =?us-ascii?Q?5xNajXq+h/vjWEmOncLdZbVnF0KfD01fK3RPQl5Ls0eIrCHwu82CI1fcnNQN?=
 =?us-ascii?Q?q2MNhegvRjfenSyGJP7MeGg0EpbWGDg03jlEF5U9tSmOg3fwW09nsFXK4dNo?=
 =?us-ascii?Q?5cTLkku6Yy18qGaSXkvG25m5JMsrJ5PTt9NH0uJpDqBWG5TWoyyo5wgNbqyU?=
 =?us-ascii?Q?xIrqHoNva4+asFDFyEagkkdWbMmq3IkCsaKPS7ySov2ZqshxEqtfJU4siA/a?=
 =?us-ascii?Q?lq/G5DKjED62AOZtzQ5Cchgw9qbNwRipqcJuWDdQ+Y7/Ljjf+4CkGjpB0KD5?=
 =?us-ascii?Q?2zY1tzpWUdusE3JwcYb233ruDaVoDQSG8Wudz0NvqsgOQQGaKzT2KIUNhc8y?=
 =?us-ascii?Q?F8tRzMg/hfLFPnVPZYFWz5BZXWBv7OSkD1bfybIrMMZbrrekqJKABWkbB+j0?=
 =?us-ascii?Q?50B+vhLfUdRCtIzrtKB/ecx8Zjd/gx5yu++rlCe/RE7l/YKGFUvTz9VyHPBU?=
 =?us-ascii?Q?/V4MlvJWjdkBzpQHtyqk2KqAbdkGz7CJD8q0vUU7P7TJDWqZDALKw4ogmCsK?=
 =?us-ascii?Q?eayBbnjwBfwtqRuDDmFL32vCSxGifhBf+RmgDquXCJ6WIqPgHBZhmVlu3HvT?=
 =?us-ascii?Q?4V/9+6lz8IRksudrF68AzcsqfL9yPa3X+o7wnaKzu58f5FTenaD+Tjdfko7o?=
 =?us-ascii?Q?mGpmscBOWpVUPTKkNbkIpXxOX+srpMDEfMNQ47dfBoJegVMUAancFp0J+JA7?=
 =?us-ascii?Q?Rm6oukI4f5a4slmXh9km1JL75VaRg1i0i8v3417rlFjMuPVYpHa5uRe+ULfE?=
 =?us-ascii?Q?gkzjRAYOKJG20RIiWEBpjcTeS/UK95Tisup9xw0T8y0JDNkDBifBE0leTdFN?=
 =?us-ascii?Q?MEO/nifp+pYA13Z3DNJPFOh/oOg2bMZfcY7EShDOrTM97mYs3BeOsPHdzGFX?=
 =?us-ascii?Q?hVvjOZvO5X/MZMQ9lCcZHC/N4nsSPXeP8jrJ0wqy1tkcuCssyqBmN0w+C2bz?=
 =?us-ascii?Q?B45/ZodtTj7HOpsEQ17MB9tyXxzS/D/cQn2XFCfzqs76/9t/OzexXGh7ZwKV?=
 =?us-ascii?Q?om9/RkDsLMvvabNzoBYf0Ss2Rhck3OkQYTudfOWT/4Jd4av78KfydgL5m4TI?=
 =?us-ascii?Q?DSP43H2F2fD4Mb9akb4NtMni7HXa8xZrbuXj+lKdobUZpwDiV5RBc43dDihV?=
 =?us-ascii?Q?EDoTpLCVFsJz7PZYvyY5sWwShzcIWn4FUPSc2AdgOYHYaJIBBD+z2Vi4lCgy?=
 =?us-ascii?Q?gqcYpUx+jQgSGwzaTQDhw/PaDb8/QNzY?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?hlqZC9DmOI6cnqrueXt3T5EBE9XuL3d6mdjq5tLmKY0nfArtT8EpZJLV6pqa?=
 =?us-ascii?Q?GCpGLC7PHlXj503jXifolo7znWdxc+Duqi1/EnHPllitgvW/S3SkhaJnvBx3?=
 =?us-ascii?Q?LM/WEGv0Zwx1/M8MmdArlPoTq9tgVbssO63Ie7hGCvGf+c3HGN7Pyn4uFluB?=
 =?us-ascii?Q?lPufzhP40qfx/I4OByhBoSP1GaLu8aMBBvZ8DhrvOYodVd/kbcalUs7UbXMg?=
 =?us-ascii?Q?KkDJx1oEAunI6B+PRYTl7FIlq4N3upe3EUL3g9UIaSUnvKnW9ExO1Hi2IhbC?=
 =?us-ascii?Q?5VJEAFx+kIo3GnYHDWBICG9qiWZ6YWmuFZvfH/D1yZKmSOCIH2u3qehymsI/?=
 =?us-ascii?Q?66POuexq9PiirljIqxOuBDFuyRXxvGnHjMCkc6pXDybnttYHXiF5kPIsdhoR?=
 =?us-ascii?Q?WBukpbAC0FHXreFR/jaw3czVMRAV/2Dw8J3TTsgcn47oyvF7Lv/IjDEp4mrC?=
 =?us-ascii?Q?r/4DpT4wzeHDwneo9tL/7KZr9+3DkEDobUB7XlhXlHdb6gUqvPYYCTIQNVzS?=
 =?us-ascii?Q?3Ky5YsvltTZWqnRiogv1dr1HX4VWjhtOxC1WQaqv61LUKidK/gSUZ8tLT4e/?=
 =?us-ascii?Q?m0GEJvSa3pzvQ6gALS7M0vK9c15BNdGd3q7GTr5XNfssSlzX3HqR1LItrQrr?=
 =?us-ascii?Q?FxtsgUYrqAYIGoLPP1MxVarpomjRmZq1RMDtR1ZAOUeL/6NX3BXppmfHW2V1?=
 =?us-ascii?Q?0euTV8WY1o6y2Su0vwz6YT5EbKYrkhlal+/EktH+MrmrPnodSF/tJs1T0XlA?=
 =?us-ascii?Q?f9xwrQOhuvF5p3Uiv+ZevvlZtuMgFMfH8Vu8W2z0RuELRAVQ389e3xynwrWM?=
 =?us-ascii?Q?Ouz5ww6/VJ8SDPgm7QOzemGOiYh0gnr6rWfkVQUBveiC/5BFzkD30HOr7MPD?=
 =?us-ascii?Q?ZeG8UibSjd6CVYD0g6zNDgSXYTTcWW050KD36B4Ve5o8rfx+AiFZNWBxfa70?=
 =?us-ascii?Q?lt9C8rxJ0DQ+KqhLo7C5xFrWvBbkCwLEuK79hShZ9ABzJWAIj6pFRXVBnuyi?=
 =?us-ascii?Q?CIFQcBWxn4pCRTI33Zt2kNIHSscQDJXgXco8qpJZ4NzavYVwCRe0LawvHPp/?=
 =?us-ascii?Q?dFN+NbZjWziRdeBpqBVwoLmv6ZKpEO2lyKyIakQLbEJGHkZSa0N48bp0/dVu?=
 =?us-ascii?Q?p3yEuuh1e5MDiPSEbEsjUX2QX6E/iObkP5DhjxeJunpjVLuvFxZtqhd6iw75?=
 =?us-ascii?Q?a9NJ+zzzLeTd7643K2SAXc6uo9bm4ovJ35ObV9Mhu1OLS6EmLKf2P2nUYqK7?=
 =?us-ascii?Q?iczTxHtIE7PG5yOVXZzDm81PoHyl1JZq8KOCw18rh46b3eDF72C5N+6SbLlK?=
 =?us-ascii?Q?eqjEGBPyTdRLSz1mfuuC24kvphhO7JBAcB63K5AvsU1ruG5U8/6pXby0aQTt?=
 =?us-ascii?Q?1l2mq7f7YN7Yf5CkphvKaL6IaYdjdMZa+W3bm6Lkpcl2WYxM6hjypkhy3epF?=
 =?us-ascii?Q?QrfEn7kEJaBRkZBSvXad7dss/EAIh2yaqGKWz/OorgUFYBipy0ajh8cvyGoF?=
 =?us-ascii?Q?HQMIYTefpNgcV2beAlpm7Bfdm+/xNBsckrE2LYlRvV/yqcy6LaEFoeR7Tq2M?=
 =?us-ascii?Q?XSk1nI/9NBcKbLoK6EdGxpXgDkTN29Ypc2HIpySl?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 665e0629-fd15-4a64-3781-08dd313b5687
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 05:55:08.0572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0PLSH65HY5rxzrVOYczTiBNxBUQFxV6tZ1hDGS6l+ho4WTSzQNSAlKP+6iFbO4nBIyiQp9Id+oj4p+gTOY5+rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5257
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
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Anki=
t
> Nautiyal
> Sent: Tuesday, August 13, 2024 8:50 AM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: jani.nikula@linux.intel.com
> Subject: [PATCH 4/5] drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs
> with algorithm
>=20
> Add support for computing C10 HDMI PLLS using the HDMI PLL algorithm.
>=20
> v2:
> -Fixed styling issues. (Jani)
>=20
> v3:
> -Renamed function to align with filename. (Jani)
>=20

Bspec Reference here,
Otherwise LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  .../drm/i915/display/intel_snps_hdmi_pll.c    | 76 +++++++++++++++++++
>  .../drm/i915/display/intel_snps_hdmi_pll.h    |  2 +
>  2 files changed, 78 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> index e409a86f594f..7ee39b13eccf 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.c
> @@ -5,6 +5,7 @@
>=20
>  #include <linux/math.h>
>=20
> +#include "intel_cx0_phy_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_snps_phy.h"
>  #include "intel_snps_phy_regs.h"
> @@ -284,3 +285,78 @@ void intel_snps_hdmi_pll_compute_mpllb(struct
> intel_mpllb_state *pll_state, u64
>  	pll_state->mpllb_sscen =3D
>  		REG_FIELD_PREP(SNPS_PHY_MPLLB_SSC_UP_SPREAD,
> pll_params.ssc_up_spread);  }
> +
> +void intel_snps_hdmi_pll_compute_c10pll(struct intel_c10pll_state
> +*pll_state, u64 pixel_clock) {
> +	/* x axis frequencies. One curve in each array per v2i point */
> +	static const u64 c10_curve_freq_hz[2][8] =3D {
> +		{ 2500000000ULL, 3000000000ULL, 3000000000ULL,
> 3500000000ULL, 3500000000ULL,
> +		  4000000000ULL, 4000000000ULL, 5000000000ULL },
> +		{ 4000000000ULL, 4600000000ULL, 4601000000ULL,
> 5400000000ULL, 5401000000ULL,
> +		  6600000000ULL, 6601000000ULL, 8001000000ULL }
> +	};
> +
> +	/* y axis heights multiplied with 1000000000 */
> +	static const u64 c10_curve_0[2][8] =3D {
> +		{ 41174500, 48605500, 42973700, 49433100, 42408600,
> 47681900, 40297400, 49131400 },
> +		{ 82056800, 94420700, 82323400, 96370600, 81273300,
> 98630100, 81728700, 99105700}
> +	};
> +
> +	static const u64 c10_curve_1[2][8] =3D {
> +		{ 73300000000000ULL, 66000000000000ULL,
> 83100000000000ULL, 75300000000000ULL,
> +		  99700000000000ULL, 92300000000000ULL,
> 125000000000000ULL, 110000000000000ULL },
> +		{ 53700000000000ULL, 47700000000000ULL,
> 62200000000000ULL, 54400000000000ULL,
> +		  75100000000000ULL, 63400000000000ULL,
> 90600000000000ULL, 76300000000000ULL }
> +	};
> +
> +	/* Multiplied with 1000000000000 */
> +	static const u64 c10_curve_2[2][8] =3D {
> +		{ 2415790000ULL, 3136460000ULL, 2581990000ULL,
> 3222670000ULL, 2529330000ULL,
> +		  3042020000ULL, 2336970000ULL, 3191460000ULL},
> +		{ 4808390000ULL, 5994250000ULL, 4832730000ULL,
> 6193730000ULL, 4737700000ULL,
> +		  6428750000ULL, 4779200000ULL, 6479340000ULL }
> +	};
> +
> +	struct pll_output_params pll_params;
> +	u32 refclk =3D 38400000;
> +	u32 prescaler_divider =3D 0;
> +	u32 ref_range =3D 1;
> +	u32 ana_cp_int_gs =3D 30;
> +	u32 ana_cp_prop_gs =3D 28;
> +
> +	compute_hdmi_tmds_pll(pixel_clock, refclk, ref_range,
> +			      ana_cp_int_gs, ana_cp_prop_gs,
> +			      c10_curve_freq_hz, c10_curve_0,
> +			      c10_curve_1, c10_curve_2, prescaler_divider,
> +			      &pll_params);
> +
> +	pll_state->tx =3D 0x10;
> +	pll_state->cmn =3D 0x1;
> +	pll_state->pll[0] =3D REG_FIELD_PREP(C10_PLL0_DIV5CLK_EN,
> pll_params.mpll_div5_en) |
> +			    REG_FIELD_PREP(C10_PLL0_FRACEN,
> pll_params.fracn_en) |
> +			    REG_FIELD_PREP(C10_PLL0_PMIX_EN,
> pll_params.pmix_en) |
> +
> REG_FIELD_PREP(C10_PLL0_ANA_FREQ_VCO_MASK,
> pll_params.ana_freq_vco);
> +	pll_state->pll[2] =3D REG_FIELD_PREP(C10_PLL2_MULTIPLIERL_MASK,
> pll_params.multiplier);
> +	pll_state->pll[3] =3D REG_FIELD_PREP(C10_PLL3_MULTIPLIERH_MASK,
> pll_params.multiplier >> 8);
> +	pll_state->pll[8] =3D REG_FIELD_PREP(C10_PLL8_SSC_UP_SPREAD,
> pll_params.ssc_up_spread);
> +	pll_state->pll[9] =3D REG_FIELD_PREP(C10_PLL9_FRACN_DENL_MASK,
> pll_params.fracn_den);
> +	pll_state->pll[10] =3D
> REG_FIELD_PREP(C10_PLL10_FRACN_DENH_MASK, pll_params.fracn_den >>
> 8);
> +	pll_state->pll[11] =3D
> REG_FIELD_PREP(C10_PLL11_FRACN_QUOT_L_MASK,
> pll_params.fracn_quot);
> +	pll_state->pll[12] =3D
> REG_FIELD_PREP(C10_PLL12_FRACN_QUOT_H_MASK,
> +					    pll_params.fracn_quot >> 8);
> +
> +	pll_state->pll[13] =3D
> REG_FIELD_PREP(C10_PLL13_FRACN_REM_L_MASK, pll_params.fracn_rem);
> +	pll_state->pll[14] =3D
> REG_FIELD_PREP(C10_PLL14_FRACN_REM_H_MASK, pll_params.fracn_rem
> >> 8);
> +	pll_state->pll[15] =3D REG_FIELD_PREP(C10_PLL15_TXCLKDIV_MASK,
> pll_params.tx_clk_div) |
> +			     REG_FIELD_PREP(C10_PLL15_HDMIDIV_MASK,
> pll_params.hdmi_div);
> +	pll_state->pll[16] =3D REG_FIELD_PREP(C10_PLL16_ANA_CPINT,
> pll_params.ana_cp_int) |
> +			     REG_FIELD_PREP(C10_PLL16_ANA_CPINTGS_L,
> ana_cp_int_gs);
> +	pll_state->pll[17] =3D
> REG_FIELD_PREP(C10_PLL17_ANA_CPINTGS_H_MASK, ana_cp_int_gs >> 1) |
> +
> REG_FIELD_PREP(C10_PLL17_ANA_CPPROP_L_MASK,
> pll_params.ana_cp_prop);
> +	pll_state->pll[18] =3D
> +
> 	REG_FIELD_PREP(C10_PLL18_ANA_CPPROP_H_MASK,
> pll_params.ana_cp_prop >> 2) |
> +
> 	REG_FIELD_PREP(C10_PLL18_ANA_CPPROPGS_L_MASK,
> ana_cp_prop_gs);
> +
> +	pll_state->pll[19] =3D
> REG_FIELD_PREP(C10_PLL19_ANA_CPPROPGS_H_MASK, ana_cp_prop_gs >>
> 3) |
> +			     REG_FIELD_PREP(C10_PLL19_ANA_V2I_MASK,
> +pll_params.mpll_ana_v2i); }
> diff --git a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
> b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
> index 37ccf138dbcd..2e55a60c5805 100644
> --- a/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
> +++ b/drivers/gpu/drm/i915/display/intel_snps_hdmi_pll.h
> @@ -8,8 +8,10 @@
>=20
>  #include <linux/types.h>
>=20
> +struct intel_c10pll_state;
>  struct intel_mpllb_state;
>=20
>  void intel_snps_hdmi_pll_compute_mpllb(struct intel_mpllb_state *pll_sta=
te,
> u64 pixel_clock);
> +void intel_snps_hdmi_pll_compute_c10pll(struct intel_c10pll_state
> +*pll_state, u64 pixel_clock);
>=20
>  #endif /* __INTEL_SNPS_HDMI_PLL_H__ */
> --
> 2.45.2

