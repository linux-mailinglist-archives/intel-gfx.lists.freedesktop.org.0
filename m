Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAFE1C2152F
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 17:56:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17A2E10E29D;
	Thu, 30 Oct 2025 16:56:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S51xD0Lp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF54610E29C;
 Thu, 30 Oct 2025 16:56:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761843405; x=1793379405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RadXfeGxsIoB21OT6tfJZt1HFO4vtvVqxH9HyXw52gM=;
 b=S51xD0LpiNrDPY5yGiSDws3zZY2VttvsLrAXazxBw0Y6aZxbf6TWKShs
 usEjtinsYB6jtkfrkcb6RM0qSz9CRFnzrqxIbw81hOBDuId8PbH+73GMq
 r1pKEFALq20reZh88WeM0Vk8yQ0y/X45gakiUh3gLPitiuJMI0UTluoaz
 2HLrcz0yLxvF07MUkAHHuRXynpTxiDAnJRXuFmA2Pw052WW2MLVuHqTxs
 ZfSNuRLLj2ZJXfyQFzswPpkRAsPEq5FL5+L8MHVJh0OBoFXJcDO1XJG2A
 f+MHXZYvWmhtNU/h+DqBqwzFS4MXH/9e8FQ1O+5zD9ra9hzO4yIG625A+ Q==;
X-CSE-ConnectionGUID: 1OcmesZpSY+fLbOJWSXgRA==
X-CSE-MsgGUID: ySi9Y8VkQcqDoNgQhDWmLA==
X-IronPort-AV: E=McAfee;i="6800,10657,11598"; a="75442914"
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="75442914"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 09:56:45 -0700
X-CSE-ConnectionGUID: DZWHza0MQ4+bjhhpOKQukA==
X-CSE-MsgGUID: qgmUsvGdT0K+UbFr5WVgUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,267,1754982000"; d="scan'208";a="185695480"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 09:56:44 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 09:56:44 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 09:56:44 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.16) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 09:56:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DBKFLAzqT1vRzlVIaALorQMg7SsQmELZBTarjT8dqPD5AM0Al4TI6cX8zeB6XWkRinOs1PSRk2t1FDMK2mJfBFplC9iYXULIU9zjsddlsqhy4dYsg09DHKvIoZzhRMFV7LVLC4vjSriDpH99WoBu4MiY/LNTW1UuhuZXGgsaq15yE85rIHBQk+200uj/ZhxjHMDQFGnN132RfLgtDLbKJl0ICvVQOaY3p2T0x7XJgWXufNCVasVCLvYDDZ1Tj3gCTON3qB10NNUbsaKdU7PaW9lJgsbCJfLqnAtUIlx1cixgPMpCEhAY9Vg25f/hw1kHiks+VTBo7dyly5mA9vQUIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0FSIRMW3+qzFp8xHepSQtVCdrT2kmEnNbOB9GBXHpl0=;
 b=nENNH/qW+NB4LaBW6RxkcIyr90+PtsHtqx0EWmwF2fAtvCSj4ZWUda8/ALf1J5EaL/CkPDBCyQHUwZi1ygDkoZnUvLblE++8xYlaamDs4JAmNALh/m8SkJvhlgsJMf2w5mt1h3vM0/ymFaGsyOY8oCkuTI5wyzr7pyGbuCwe0dT+036WCKXDmsM2oUp3ReexaInnSkMrFhS8BhrAO/t88B7YYi3hPTfr3E7dAwDZdFu1YX4w0hJEmq/A3rXQ48drsPEdxEbcs6xoFvKnOphPnBvC9eAecCn8D4c9atGr/chekVOuas2n/l0nAHkKNCKCY0L968bPTBfqhmTPs+FIzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA4PR11MB9369.namprd11.prod.outlook.com (2603:10b6:208:565::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Thu, 30 Oct
 2025 16:56:40 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%4]) with mapi id 15.20.9275.011; Thu, 30 Oct 2025
 16:56:40 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: RE: [PATCH v2 1/4] drm/i915/xe3p_lpd: Extend FBC support to UINT16
 formats
Thread-Topic: [PATCH v2 1/4] drm/i915/xe3p_lpd: Extend FBC support to UINT16
 formats
Thread-Index: AQHcR0dJ0/s6BPkQ7U6bdniP4E3StrTa7ZIw
Date: Thu, 30 Oct 2025 16:56:39 +0000
Message-ID: <DM4PR11MB6360A222B2B6C515E88E694FF4FBA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20251027134001.325064-1-vinod.govindapillai@intel.com>
 <20251027134001.325064-2-vinod.govindapillai@intel.com>
In-Reply-To: <20251027134001.325064-2-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA4PR11MB9369:EE_
x-ms-office365-filtering-correlation-id: f8290b2b-614a-4029-36d4-08de17d54bc5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?u7SMadFnFNOmaigCQPYDkCffZvDCIrrA9qUgR7oWhu0v0rOYkctGEssE8Dhd?=
 =?us-ascii?Q?3bg9TsT5JTEJzlvv/CT5yR6PYD3HCgdMv+PqGr3CLnfGisuxrCIh9TgMT90p?=
 =?us-ascii?Q?TCQVPiADXBw8k5Uxh+5MsdE1H+XMZgkmF/uKzFW1vQOxM0XH56Dd8hdfBkKN?=
 =?us-ascii?Q?fTkXCCUlb526RhEAMlPXdOHUP6mmSH6o/JFFQ+ZLdAiLalP6ZrOpzCy/ICgn?=
 =?us-ascii?Q?57duerxgBTV+r7CdZFliTI7zrFD4BVS7RdtCG/MbdIPM8+/eN16wVsDkjzrD?=
 =?us-ascii?Q?Vx/qH7hf/xkoJ7+Am9eN3CIJ/QC3FVSCQ9oaZlKxv3n+WRh5XG+mBbxBQp1w?=
 =?us-ascii?Q?EZ/tcEXHY7K4pNzLoEvgksgWscUWfZi/3MiRKjb8ISqYblbOH9k7wgJnzR8S?=
 =?us-ascii?Q?+jEFAIR2sEJ1AXd5fk+r4OByJ+6uR6TGxmNyqmGcRaWuMYQlHAxxNaln46ud?=
 =?us-ascii?Q?T1BYIMFIefDfKhGUA6ndBK9pyQL05LxN92NGb/hH4Io7ZiuHtV3W8L+j3HN1?=
 =?us-ascii?Q?P3Pjs9ofc5Ws+pIGyh3pkeI1HN6/srb8nbBHrG6WBwD7NJEU/asfdxFnm1Y3?=
 =?us-ascii?Q?7JKcUCe8YZhw5ATHAYE3x249scPgYapgA+mqQzMtZL9lfgIDUHKXHmhhvMUl?=
 =?us-ascii?Q?VdD/OLWvqygFKwbUKkRpqJZilFZ861yaoP2s1H+YZdiLZ3Ilqt2zta9Tg8O3?=
 =?us-ascii?Q?VKLg75VNOX1yqYMe/dVyyPHZWej4/PxMFkMGqW4SrGZXVWY+xkxQad7laIXP?=
 =?us-ascii?Q?cswWyvqFjrfZroTNhmpZiuQ1pHzsBhegrF1QFXN+uDBp3nFhFd8tvhi+8PTw?=
 =?us-ascii?Q?Tnr7mwTNn/IRSsUJg/cw0I5ZANAx/ppnIi4OEqF36aqXH5dY1FgQDzNJQ8Gx?=
 =?us-ascii?Q?xUooBT06rHK56RfVhGFm9Eq3HZdgWi9hlaUekUXXmlJyjF4DTO7XOztvRnpr?=
 =?us-ascii?Q?LqKkh+xhBHE5opMb7FO53CHPgccxu+UAy254FPuYzEpgxmqJcpV13SRjwdyT?=
 =?us-ascii?Q?YAnHDiskdsa6b/JZf0bWvFGmbI5LAvxHIiHm+zTJrs45uWLRkS907cYdA2qH?=
 =?us-ascii?Q?PHhd+LfCS9jIRcregQvGLcRxH7TkRbM7tLz5vLtLhp/H81xEqtLvCih5HRn8?=
 =?us-ascii?Q?qm/HFsO09D6zpx/FFFCRUkE0RfSuSX1TPRqnvIAQPcCKvxYqycWTAgorqWdk?=
 =?us-ascii?Q?0BAJC3RfSqGkRjD9Q+rC6KoqQoIhVh1d1UtUgCLo7EINdHL2YMdCZyWgCwdu?=
 =?us-ascii?Q?dN9chUf77RgkmNq5yj3kZtjIwSP6cDdIoeIPaMeE/AO8zYzwWIqGqxWOP0qt?=
 =?us-ascii?Q?Ag9M026QZC7SiNdffSuokTLKFomCkt+LGmV6Q1WVOS4H0Hqnb4034ADFhiiM?=
 =?us-ascii?Q?voDj+Bdpb/HzBVgRZqEdB4J9v6MfKTGNGOg9ZtNuuuwCip7q/WnBBqqXsWxv?=
 =?us-ascii?Q?ek2lmZ8oUcc6U7PIB7vIFF1Rw8zmAB4d35zUp4KVgbJWQwxj593QDVb/9M7S?=
 =?us-ascii?Q?duTjNdFJn6MwW1p84ExU5ZCFYSYrXiGwXIsV?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?H1oHyeCyToKSUCixn1k0I3rHNVEjehdkGLhJtmoQQKcW3tzz2mSkec3hGA0I?=
 =?us-ascii?Q?necrYdv0JmjRaeMuOjpnGlHhvQItzx3JQq7Tw+n0Hehj9XYRlgj2sOcW7gVE?=
 =?us-ascii?Q?DjV9Tzm4guAIk3nunsfY2Oit1F34B9oe1+jX63CctqJZV/7Rbiffl4/XhV7z?=
 =?us-ascii?Q?KNRX4+iIx8uSOMN8BCPdubTaGF4X6jxVe93KqQHEh3zdslTNrcoaLG9IHWoO?=
 =?us-ascii?Q?gOGZN6WB8VwkQjwBNdtGhCaR820kYJusBRtQtibca1G3j58rTI5z94jornis?=
 =?us-ascii?Q?eTEjqn6BbeTRDPq/qmS6cK7FHWzMdxk4KAdXvIPaxHkpWrJHOw+RlxdxHMS0?=
 =?us-ascii?Q?OXFtwRNi1caxh3CkKSLwsnN3zPylkwB/eitzngHIu/IRsT62y4WOPJfDLPEG?=
 =?us-ascii?Q?uvk3WAEnv/f0rt0n9Dg/d86hj2UlWN985Zp6LZ42bzc0aDhasfka1NE1efsP?=
 =?us-ascii?Q?68rbQqJX/uLMOubhozz3pzCC9+kv21rSOyQRTQHHUhS6f+4kr9cRKl2tVb54?=
 =?us-ascii?Q?nqCgfnj+Akbq8Wg0S8iId45yLRPZfQk6PCDNRm7qRv1mYYFCMTeeBSytqtcw?=
 =?us-ascii?Q?kSrNvQceN4cAoYrnvSRMeD4felVGtXDER7apeXiMG1jHebN+Pgk8jbFCNxxO?=
 =?us-ascii?Q?BnB75Y7upa2eECJK/Imm5hvaoN/4NBBnRsuC8SO8l2hftY2/Or8peSrdnWJU?=
 =?us-ascii?Q?qTBCVcZefx2PnRZqhj2oKV0jGzZ1AcreTBleDOwSYU+y8k7nndGaG0/F/KO2?=
 =?us-ascii?Q?YWtDlnoXRb1pXNSO84TQy4sqZ3yx7OcLA90GrFKkiDyGDsiHVhkp/I676wAH?=
 =?us-ascii?Q?fZj5J8yn7cuw5Y+MIRHKdQmiXsC0KfWq/XODdycerjVkNZWsajqiKEgpzUPu?=
 =?us-ascii?Q?AJ76RkBP1ieqdWl3c28lxyOubcD3knJxA+07gUUCDjWz7CrfbrSDIbQMknLG?=
 =?us-ascii?Q?FMHuPv01hmCetac4Ki6rVj7QsGXPliWgkg1hx3c8qIwqemKpRcacUyRpvUhz?=
 =?us-ascii?Q?H9Zg3YvqcgsqDX8Itu49Gl/guCXpG1eYlRIZ1g49P+RtCnu7ESRLL9+WyxpS?=
 =?us-ascii?Q?UcHgq0EQrOUJts4i0JXaGq5wTf9aNZ4j7qUoI64rl9KYxN+cGg0HcOEgB4Lp?=
 =?us-ascii?Q?lRApmLc8pJ7c87HhCqLBRYiIq0nVm6jMIuw0zBNVJwW+uTnifqPKhOfNgtFV?=
 =?us-ascii?Q?/EbsJklXsuOYEgdLhsmBz1HexShu2JHiYuh0rQyA8NezBLnYVO0e5zuvYC7K?=
 =?us-ascii?Q?zCiYB7sVUDji/4lAhEOkqLs1eW3oS+dw6xqekA5ELT7hYJs49XecV/+nvRVV?=
 =?us-ascii?Q?5uCCNAA9iT2DPQaLBCHHur70oWVE00/IIlyaToE3KTw7S/e2cCZWreLTSiBs?=
 =?us-ascii?Q?kwNHSS9g0bMeapWzcq7hqkaas09COvYYgMluRrtRmHgHzjLjGwerCQqGhHG3?=
 =?us-ascii?Q?yHiFAxAJn1cd8LAwVO2zc+NZ7qRBYOiBYSPfTyf/EEMf4zJLFzxll7hGVv/N?=
 =?us-ascii?Q?g4m+9clE7+RdENmE6Bh9R552+sPCQ8NloY26s+wrnG6vba9WZ9wOywy+8/Nc?=
 =?us-ascii?Q?zvpgSWY8wro7NPdjEB+SuPIdKLXEiQR2oE/Pv41L?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f8290b2b-614a-4029-36d4-08de17d54bc5
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Oct 2025 16:56:39.9277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i1RUuitcxxeswDeJY7tuCBpJquMcedGjp+caFEw22MAfME9baIj3MOMYU/SyXW8O6hMgo3rshr0DJYfOPXnZZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9369
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
> From: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Sent: Monday, October 27, 2025 7:10 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Govindapillai, Vinod <vinod.govindapillai@intel.com>; Sousa, Gustavo
> <gustavo.sousa@intel.com>; Nikula, Jani <jani.nikula@intel.com>; Syrjala,=
 Ville
> <ville.syrjala@intel.com>; Shankar, Uma <uma.shankar@intel.com>
> Subject: [PATCH v2 1/4] drm/i915/xe3p_lpd: Extend FBC support to UINT16
> formats
>=20
> From: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>=20
> Starting Xe3p_LPD, FBC is supported on UINT16 formats as well. Also
> UINT16 being a 64bpp format, will use cpp of 8 for cfb stride and thus si=
ze
> calculations.
>=20
> v2: simplify getting the cpp per format (Ville)
>     simplify the pixel format is valid for xe3p_lp (Vinod)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
> BSpec: 68881, 68904, 69560
> Signed-off-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 33 ++++++++++++++++++++----
>  1 file changed, 28 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 10ef3136dadc..83dcf62e4ebe 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -141,15 +141,18 @@ static unsigned int intel_fbc_plane_stride(const st=
ruct
> intel_plane_state *plane
>  	return stride;
>  }
>=20
> -static unsigned int intel_fbc_cfb_cpp(void)
> +static unsigned int intel_fbc_cfb_cpp(const struct intel_plane_state
> +*plane_state)
>  {
> -	return 4; /* FBC always 4 bytes per pixel */
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +	unsigned int cpp =3D fb->format->cpp[0];
> +
> +	return max(cpp, 4);
>  }
>=20
>  /* plane stride based cfb stride in bytes, assuming 1:1 compression limi=
t */  static
> unsigned int intel_fbc_plane_cfb_stride(const struct intel_plane_state
> *plane_state)  {
> -	unsigned int cpp =3D intel_fbc_cfb_cpp();
> +	unsigned int cpp =3D intel_fbc_cfb_cpp(plane_state);
>=20
>  	return intel_fbc_plane_stride(plane_state) * cpp;  } @@ -203,7 +206,7
> @@ static unsigned int intel_fbc_cfb_stride(const struct intel_plane_stat=
e
> *plane_s
>  	struct intel_display *display =3D to_intel_display(plane_state->uapi.pl=
ane-
> >dev);
>  	unsigned int stride =3D intel_fbc_plane_cfb_stride(plane_state);
>  	unsigned int width =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> -	unsigned int cpp =3D intel_fbc_cfb_cpp();
> +	unsigned int cpp =3D intel_fbc_cfb_cpp(plane_state);
>=20
>  	return _intel_fbc_cfb_stride(display, cpp, width, stride);  } @@ -1081,=
11
> +1084,31 @@ static bool lnl_fbc_pixel_format_is_valid(const struct
> intel_plane_state *plane_
>  	}
>  }
>=20
> +static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct
> +intel_plane_state *plane_state) {
> +	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> +
> +	if (lnl_fbc_pixel_format_is_valid(plane_state))
> +		return true;
> +
> +	switch (fb->format->format) {
> +	case DRM_FORMAT_XRGB16161616:
> +	case DRM_FORMAT_XBGR16161616:
> +	case DRM_FORMAT_ARGB16161616:
> +	case DRM_FORMAT_ABGR16161616:
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
>  static bool pixel_format_is_valid(const struct intel_plane_state *plane_=
state)  {
>  	struct intel_display *display =3D to_intel_display(plane_state->uapi.pl=
ane-
> >dev);
>=20
> -	if (DISPLAY_VER(display) >=3D 20)
> +	if (DISPLAY_VER(display) >=3D 35)
> +		return xe3p_lpd_fbc_pixel_format_is_valid(plane_state);
> +	else if (DISPLAY_VER(display) >=3D 20)
>  		return lnl_fbc_pixel_format_is_valid(plane_state);
>  	else if (DISPLAY_VER(display) >=3D 5 || display->platform.g4x)
>  		return g4x_fbc_pixel_format_is_valid(plane_state);
> --
> 2.43.0

