Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00830AB6A76
	for <lists+intel-gfx@lfdr.de>; Wed, 14 May 2025 13:47:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36BEF10E617;
	Wed, 14 May 2025 11:46:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="at1JTEkQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DC910E617;
 Wed, 14 May 2025 11:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747223216; x=1778759216;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YeJpagpQ9gaTF6fZPvaSrddEVt+HjdlLrdeoO0HZHt0=;
 b=at1JTEkQeNW1qdf7hhCRfSgtVI3PfNrzp1WCCwTkXyEqNiWquPyGYYfD
 zdemoqL5bT/zbTERnk5NhAJxLND1Bf0faxinz3x/xy+rD8Reg35rQr5ub
 ZWsBeKt4uVgywdnhsSfpTpiYjzXmNyFYkGzF4l4izBqcnSOdkpP0RXgJf
 B5fEn64+VtHnR9qfaAwTjPyKasv6Z5zhtY/JAuDjekiQGWE9aqC2nq2Pz
 D0G/Poca4NJ7MaDeKqt5YsV+Av+xZnwup9weAAj/Fy1etKjbb5dUo/Xmd
 fxGCjAObRJ4estSwsnCWiXJbY/LBeeqj940vUVl0AUMyxysWBQQqNCKqm g==;
X-CSE-ConnectionGUID: jiW+nAyLRrS/JfdmUqWVzQ==
X-CSE-MsgGUID: xAqzZKmLSA+wrs+WnzHPHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11432"; a="60514569"
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="60514569"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:45:10 -0700
X-CSE-ConnectionGUID: 19sAAtaUTO2lPIsUEMbAhg==
X-CSE-MsgGUID: P5BTwNOBRoOIIkjNpihgrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,288,1739865600"; d="scan'208";a="142047371"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2025 04:45:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 14 May 2025 04:45:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 14 May 2025 04:45:08 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 14 May 2025 04:45:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=S6T03gBvnhZtcCtYrV2XXANAgZkW3ldKL3FjNtTy2SJzqmeE/3sqdejGy7BCM4SvDEFB5Wc4wNsPQMGczOQJ++GPDL80aYgmEA3wtQRoVd+l3KyQrtbQ4+Qhp1a/Oq6M5vwpfObHDnKxSehSgZ/U1ZIj/Yyjy9mqk22bDVQDNOvGtGCea85LZl8sP/IehWM9bJCgU0Qh5oHViS5ZKQp+9yQ0A4s1gNKlMbyrWK6VmnPNN3rHObe1zERMAgGvT9ZhV+Ftr53D5hrMZNIAGs5G0nwC19KaYcLYXfrf9pFXDhlb+JXq4QR8X0R2t3kx687DZqlRPasKq4WXW/ImGM7HOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=d2Mxq0fq+aHwxyP3zLE5DhPgcNoEWhJiZHhcZRLBOQw=;
 b=RgrqbBTV3Lvdpo27IClkGXalvIafcKP/+S++agfPFjWzu5VUbfjYz3iWcTt7Q7y3Qcuaru1BtPr/Jgx3Fyg/gChBZp53bQ6TXuuPGx/dtic7dQ8rwYv5HOXSW4UxcdO6Np+KXmq3147ZXTKpFTgLd9W7Ic40oMIAIckYr6VFmbUDiWIpvb3th6fvt08lcFTRUf0GQJo0NccMGMNUO5NtdcXmqgl7TeZ9s36SH1qfULealBye6XVkz/7xFGmwD0JzGfxMJxQgRU/OjVOaPNosTIyS1d2cpf1ulSM5i+kg5rgSoWFVjMfFuMXcdxAQxVXT2Mv2nQ9+TGPWW7Nm3UNzqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB7860.namprd11.prod.outlook.com (2603:10b6:8:e9::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8722.29; Wed, 14 May 2025 11:44:24 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.027; Wed, 14 May 2025
 11:44:24 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Manna,
 Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH v2 09/11] drm/i915: Program DB LUT registers before vblank
Thread-Topic: [PATCH v2 09/11] drm/i915: Program DB LUT registers before vblank
Thread-Index: AQHbqHed51vR/teYzkCS03VccHSmqrPSOeOQ
Date: Wed, 14 May 2025 11:44:24 +0000
Message-ID: <DM4PR11MB6360A229DCC77AC481D9142AF491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
 <20250408110022.1907802-10-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250408110022.1907802-10-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB7860:EE_
x-ms-office365-filtering-correlation-id: 7181f9c3-61bb-4c7c-d89c-08dd92dcaceb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?YyrElfeMSuXMrINOcKmj8kk3ubSYUzXiM3/Cdly58V5qkT0mTqeHkyFznvhe?=
 =?us-ascii?Q?kBOnYtfclkUqGjDMx9Je1blIbTzdzEBCvy9IHvxcnJITNRJXJZJsEHnRPgKK?=
 =?us-ascii?Q?RcrbsDFiULkYp/fbdlM6iK+TgE+xJzMbOJL4YrhnXcYs8QF5nZIIMcPiNV4d?=
 =?us-ascii?Q?BaSgeI86HSq+M6GiwC3AcPLtsU1i98gnYXsdUnsqvFGxctksmgCr/pS+i1Ct?=
 =?us-ascii?Q?Ob7GyAGbLZc+9O/2MhSH79Ytow0yE9Qr2T+ghngX6e7BvKZv6/mDHbp3pi36?=
 =?us-ascii?Q?mKB+czS08S1H9m/sBIQbm3d+STKtO2+WvHOq0jLnqma/zrKPL3/VI30tICNc?=
 =?us-ascii?Q?FaHyvimDeBub24wIzWp7HF8m8sZh/lns0jM0c66qZQeAA4BkaBUcz94Bszqb?=
 =?us-ascii?Q?7E5GGsx2LC/G4TFx2PeCNTo7+RIvN8CIuNdXe08E+vLuH1/tDaSoqlGAT3bm?=
 =?us-ascii?Q?yWvJ7sLy08SXg//ahLQF2RpR1wdGkefd6UOYbstVSLQ7i36AFU9kUXV3Cxfm?=
 =?us-ascii?Q?2eQMnAA7TswxY403yPuvnms8cKELX5e1Lf6mdvf2OJnK1ZaVyZ2COYf/G54x?=
 =?us-ascii?Q?ysb6msrM9JnCWdE7R1fQekjtTzmQiShPDMpxV5vaUCty+lGVDbn2rPoBVtBO?=
 =?us-ascii?Q?jwdsYA+9Cm2ew13UNI6qWk2bWFOQ9YHFklPi9lvcT0UUgRJrEQAT5QJCVWxc?=
 =?us-ascii?Q?Ozu/C7awvbjQjQmeucrZw/a2VviHMLO1F1pSggoLZeDCTWJ5+y9vH3FhD/G2?=
 =?us-ascii?Q?cK6vSqPaUD7zziasW0ln3DozjRxKvX1q7jIozfVdJ93lgJAOkrVfGIVVEiQU?=
 =?us-ascii?Q?vLOv0EOojct+6+ZLUfZRpZsyhoqDkbTzVshts3VbgOAG6oN61sZuVnABCI5Q?=
 =?us-ascii?Q?sQMqY99zYmMtAQqdT+In3/esmlydLeD0lVFF5pcxYUPpbm4ujHMqLG6L2wuK?=
 =?us-ascii?Q?YMTrch1VSmdVuWfDxmXZvk7N9CXEddu+tLTxBZCqMWZJHvOXxWaIdOkryeR6?=
 =?us-ascii?Q?y3/5Xwyryi3iMZnsHUSuYzuKVs8/3mzw74qJRaN0mn7BJ1q5hEIW2pXrEYxw?=
 =?us-ascii?Q?yq05M2oUNSe7HKFqWqao4/fhaCcwcki/WDICdkq/SrjPxmOh51Fzbrhvd5IH?=
 =?us-ascii?Q?F1h02FwVpxZqbeUhf7OTOgOv/B995t08RsYyNpvhoLskSA7vu1QrpOHd8+iV?=
 =?us-ascii?Q?JjMH+n035qcucAkAdL2CzyyeTZGnLcdmiH8KYnCFdeeA3qZIYs7NbRGfY5G3?=
 =?us-ascii?Q?TTIpJiM6soYZ7/YDoJDZBXd5/umZsKRDV6+O90ZAYDdSNhzuN/Yv/N6axSLh?=
 =?us-ascii?Q?Dg4cC5jJTtwl0iGJ7UtK0BKRkSmNbpfCISHXg8v9ZdTeILpgge9EHPWstZM/?=
 =?us-ascii?Q?ipZVbr6uc6b53nzbBn+1OQRU+1tumHdXx5zdI9ioMNU9lBOZ7tRa75Xif1po?=
 =?us-ascii?Q?lzVdP9/9kueAv++JkZOgGwReYnHsKgMbwUZLH4BH4mCw3TP0cz1+91judCww?=
 =?us-ascii?Q?Kdvy2ukH8AScD9M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Ta/H6bf/vPUNEKmGfIHwU2eBLxSHvNzy9eeYO68KjB9cy8ws1nhkP94j+Ugg?=
 =?us-ascii?Q?C3UUKVLnBmhtZPLS574DKtn2fF5UR/5jmedswuikzF69pL9QjNIhvXC5F/nX?=
 =?us-ascii?Q?R1dlwNacagXg1jMOhzNWlQtyVeQfNsqiuSYx4zpsypmsRSVgEVgw1dClqdpt?=
 =?us-ascii?Q?xvAlyR7G/8MS9IPxX5Bj4ZPBNWt1Ss4VVoxpoj+pFgjh7SBoX8grfeQ2KOp7?=
 =?us-ascii?Q?hqXYDY3P8iA6EX84s2sQgdlYa0QfLo0SRagaN9yRdOVmoCN0G4qxvyn8njQ2?=
 =?us-ascii?Q?KhZ5WXVKbfyc/JKDrX/eCQtYTNT7EXOR7m6R0nl3uJEhV5AzgyXAZ2L3t96i?=
 =?us-ascii?Q?qzjNgnegEMnFOGdPW9KvVqcPcnYDfsUiThMfha7GJHjTYjYV/MKNJzLoCg4O?=
 =?us-ascii?Q?W+lg056J3wEtk7fSOxV4BgA783aSSLy7BgvFxUg00cNvyPDY99T4RbGuGWYG?=
 =?us-ascii?Q?7eG/F557PzB64lHe9PLceWSO4HGIMdhUj5H4YkLLYor7JWgcpjmPpdZowZ+F?=
 =?us-ascii?Q?dXn6VJhpKtCJ+aqAEOfa970MynSwn59PV+K/yA6OkdQWwX2WCiauly6jh3/y?=
 =?us-ascii?Q?VVyppAlX0MJUxgNffYXUexSWxAOPtfwIxRKKJhXxKfBk7pcvY1TXng6PyIPH?=
 =?us-ascii?Q?LeeVl6DsDZeMSl8nOL5/84vKe3CkOVKhDH7eDACScdy0IaSb6v3kFR4XluzA?=
 =?us-ascii?Q?Q7jvYU0Pka8iXv24Rt+fIBtm8Jg6OiTSQI+03RuutDZmnE0vuKwddr8mMabo?=
 =?us-ascii?Q?op7ieY4MrwKrr8Hn8ScX3v5L0DG2ImkbhJxrUTqRpGAeOg1JtyyDS3/Dmcu9?=
 =?us-ascii?Q?EQDG0Vu/X5FjmWiHLLMK/tOIhjvs+I8/GI5uHjHtQrwTyRl2aeKvrzNxYZ5u?=
 =?us-ascii?Q?U8LkfiMJCy39+iIzVl+6oByC5revmJ59vmw3AHZDRvWnEJG2XP6IoUFjHQc5?=
 =?us-ascii?Q?SUdplXvvADV41kJgCALnhhsvsyu65NqBru8gLFqNIYsXx3UtEFElL6Be6Jdw?=
 =?us-ascii?Q?aKu7iNo+SCgCAAnCxU48XhkKqD8yNqKcbbIG9QV8XGQsnUTX/uLoyp30KR5A?=
 =?us-ascii?Q?RZureBszx/HhgM9E6kLw2T/Igcjx2yRjpzceoMNWDEoiPll8IZNVtRuc+hIP?=
 =?us-ascii?Q?VVtkdc+jxZhN1ofTLEYcxJxuZMRFKLaOvDzgOWA/N5x/Oeh8lXNmIPTjP80t?=
 =?us-ascii?Q?MdDiZsNy0238jX/VDA6t/TQ2kUIK/OYvjfWb5azMBBy7AwZvIadmT1TmMFKs?=
 =?us-ascii?Q?9WnI1DPn5TRu1eZdNscDHGqWyswSLP059P8xtYTPfhUpyNDUYXgP0i6fHPBs?=
 =?us-ascii?Q?kMZFkxGMxhFdm9Y+Z857cKIyjNY9VJfeOjzh9ewVusgZsW/fyeJYJOOZ1ML8?=
 =?us-ascii?Q?6Nw85hmw4wpNrUTjHSsX1miwUQtJ4MNjj9VPPUugDvD0zvQ72U0W/4V7iAlb?=
 =?us-ascii?Q?c8te/e0BxQevm8Rhikn4kEF3eLEp5/l35DbcrHOSvoABsXlvo74Bf5zqZIjH?=
 =?us-ascii?Q?6f+5Vy4Lj9tJ0B3cU3ABd/nfr6alGlv5oXXnrbshnwVl25WTTw91jq6L6ohg?=
 =?us-ascii?Q?OFP8ZxbiFutDvr7SQ/sMKCFa8tgNUsqaq99jHGqI?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7181f9c3-61bb-4c7c-d89c-08dd92dcaceb
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2025 11:44:24.7866 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3sxv2pkgaXu/T5aRtvh1ugpP9xK2MQOBSjnIyS+H9uPwEOD7TjuLSOqdRGh1Da2ch7hMiMlY6jcBnwp4pdw+OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7860
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
> From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Sent: Tuesday, April 8, 2025 4:30 PM
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: [PATCH v2 09/11] drm/i915: Program DB LUT registers before vblan=
k
>=20
> Double Buffered LUT registers can be programmed in the active region.
> This patch implements the MMIO path for it. Program the registers after e=
vading
> vblank. The HW latches on to the registers after delayed vblank.
> It takes around 1024 cdclk cycles(~one scanline) for this.
>=20
> Following assumptions have been made while making this change
>=20
>  - Current vblank evasion time is sufficient for programming
>    the LUT registers.
>  - Current guardband calculation would be sufficient for the HW
>    to latch on to the new values
>=20
> v2: move loading LUTs to commit_pipe_post_planes() since a vblank
>     evasion failure for this is probably less drastic than
>     for plane programming. (Ville)

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 58a84829fe58..398606f328e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6634,6 +6634,7 @@ static void commit_pipe_post_planes(struct
> intel_atomic_state *state,
>  	struct intel_display *display =3D to_intel_display(state);
>  	const struct intel_crtc_state *new_crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> +	bool modeset =3D intel_crtc_needs_modeset(new_crtc_state);
>=20
>  	drm_WARN_ON(display->drm, new_crtc_state->use_dsb);
>=20
> @@ -6642,10 +6643,15 @@ static void commit_pipe_post_planes(struct
> intel_atomic_state *state,
>  	 * get a catastrophic underrun even if the two operations
>  	 * end up happening in two different frames.
>  	 */
> -	if (DISPLAY_VER(display) >=3D 9 &&
> -	    !intel_crtc_needs_modeset(new_crtc_state))
> +	if (DISPLAY_VER(display) >=3D 9 && !modeset)
>  		skl_detach_scalers(NULL, new_crtc_state);
>=20
> +	if (!modeset &&
> +	    intel_crtc_needs_color_update(new_crtc_state) &&
> +	    !intel_color_uses_dsb(new_crtc_state) &&
> +	    HAS_DOUBLE_BUFFERED_LUT(display))
> +		intel_color_load_luts(new_crtc_state);
> +
>  	if (intel_crtc_vrr_enabling(state, crtc))
>  		intel_vrr_enable(new_crtc_state);
>  }
> --
> 2.25.1

