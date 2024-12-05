Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEBE9E4D99
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 07:27:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9B0210E382;
	Thu,  5 Dec 2024 06:27:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bniup+K6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D59FB10E383;
 Thu,  5 Dec 2024 06:27:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733380027; x=1764916027;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=swK3rtr2wGbovTDNsyTamzZm19+fn1pce2tcTut7Vd4=;
 b=Bniup+K6a9wZaAmxkKLUJROMWs/3PkYP4Q5x9hnpAcJAenYP7nx4anXW
 h8vi5B5KKK2n4KN68cKyMEZ3KMcXSN5PlW/lseGmEYJoGQq2Rt5UYtOpH
 SexeX2cTP8YHKuhXamO3irXa87QxoS1eTEOpT1Z2y3Zl0S3REnU6LvcoQ
 2U/TNd7XvEGOuqW0jhreb4XXlUf7nAcmQFf1FqTPlIXM+p0fNZM95h6o2
 UyNkrZNzlYHk6VubxNvImTH5o6EnYtHg4F9zwP5Cdh/vCankbvYWATzaz
 RWnF3zyS8knNQOzkv5gqCYXGoAqa+VGLzjysmscVaY3oc2H4Ic1bmt4br g==;
X-CSE-ConnectionGUID: njJJx1voTfuMFIq2LoSI9g==
X-CSE-MsgGUID: jmg2rxwwT+KiR/fYijilBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="44343865"
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="44343865"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 22:27:06 -0800
X-CSE-ConnectionGUID: 4jnNECQLS1aRslsWCDz9TA==
X-CSE-MsgGUID: 54EyYu0ER5aOBAmYHBJ4HA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,209,1728975600"; d="scan'208";a="98806051"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 22:27:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 22:27:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 22:27:05 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 22:27:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PnQSLi7THaJRHME9qlEKEiZFtcnjAyGvrBsGbsm/UB1qTkKj/GgT4LoOmknFK3QxGSaFDkhBPDepeel/Hqrs+d3C0Fhmf8DgMgV0doNwUJ4ciZfQI5j2XSzlcjC3HZ1dhe/PrRBEVzC6B1Apr16BlzzcTVOCPazm+1OsbQsunS91eke+XzSXcHl+R9RFGRZNi/qAghmXzYa4yPpMrQ+yO1f0bIpghv5bN/HxGP0/Pt3jcJWSVnkSY+ywYH/BSEylCJA+YKMUmt50AQvZuE3rhKTv8Gp3oDiUI+d+LYlRlT3T5merqLA60HIqo8hME1t5RIsdTbJ7R8MmUot+sqbk/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sM6ZcDRjWj+oN8W/IktR0xLMiG1pT3zAREK+2uJdprg=;
 b=rzldwDtzPUIH0Lq9E2P/Db7DSvrip20IOIV+W9ThdXlMXuOCFfndOQDgzVyLjE2jZPuySZ5I6lrFuSXfiU2bV7aY1XMjpPaBNdOdLnAUwRa2TB5Cp5h0zRLdbRG2khsPkYuYGpXVzD7kEN8LuUoM5n/Q2sV3GPzUkG++RWt1SNCmSw74rFqv8H1VUOKAidLUFgPEPcZ8r0YHdxhTTa+nKhnf4Iq1G/HhDDbE/P5X5Q+lnzLDpzpYfJgWO3WKs9kVoGxYK9xEr6AX5BbkNA5FVdfooSmZR5lCLYEooMwSrn+21M3lZpwZRwXVstXz88aJFv1FBeSEJ0KqM4CI9Btg5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by MW4PR11MB5799.namprd11.prod.outlook.com (2603:10b6:303:181::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Thu, 5 Dec
 2024 06:26:57 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.8207.017; Thu, 5 Dec 2024
 06:26:57 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, "Deak, Imre"
 <imre.deak@intel.com>
Subject: RE: [PATCH 04/14] drm/i915/dp: Drop check for FEC in
 intel_dp_fec_compute_config
Thread-Topic: [PATCH 04/14] drm/i915/dp: Drop check for FEC in
 intel_dp_fec_compute_config
Thread-Index: AQHbRi5EtISpngF1G0G+9LVoNo1v0LLXMCAg
Date: Thu, 5 Dec 2024 06:26:57 +0000
Message-ID: <SN7PR11MB6750C82B8A3A14523936E81FE3302@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20241204092642.1835807-1-ankit.k.nautiyal@intel.com>
 <20241204092642.1835807-5-ankit.k.nautiyal@intel.com>
In-Reply-To: <20241204092642.1835807-5-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|MW4PR11MB5799:EE_
x-ms-office365-filtering-correlation-id: a0106e6e-d6e6-4f9f-88d1-08dd14f5d1bd
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?whCkLeqOPRIR4VGKZVt0Nr1cKDEVDgPOecb4u/XJlxzI1QbytSH86rs9rBBR?=
 =?us-ascii?Q?yxKl4D/+tevOlc0xbaWdiqZXnV9QX+jtIe7h8BcRT+OAO2wMkeoT53gP8IoQ?=
 =?us-ascii?Q?HzLDpd8ie4Ymo0Qj4+BEnJF4N45VEDxkg8ja+yLMHGb6H4sgBrn3WbwaV/Rh?=
 =?us-ascii?Q?t4QUbZgmi2wtjTESN+YIlbUqvY6bTWAJi72D2jOjqQuJ/7AZ4mC40wLXgIMq?=
 =?us-ascii?Q?EmaK7iRBf+djixdmUAX19kQ6mZIT1hiEfr9UcjEqbX+sMjofm71z8Cn30mQ9?=
 =?us-ascii?Q?JEBekaCOsKqV03kXbXHbYDLAVuUfiFleHyYVUZhnoZjj9wfGgaxuMlo0yZ6s?=
 =?us-ascii?Q?s2+75uaaodHN5vJnTUYaiJ/q7tdB7fzwLQsHexc4eolUb8QOjOru/lirbrQT?=
 =?us-ascii?Q?v2ERYwXjLKMUQ6Aq7PM9Y7l0lE8LnmF4HdstLDntebHqlXFxb0fU3QQxcAhM?=
 =?us-ascii?Q?Af4G/GBOpcG5TfypMKdNSgwac5uDmX4GSefKnP6SV8i8lZ41DJ81JRMFS1HC?=
 =?us-ascii?Q?BvVvB5SB9utlsJn9pvIBn1cUgFpIco8ms6ZMUdcJrvSJuLsvh3QH9ZS4J+7V?=
 =?us-ascii?Q?34lMs/7tgiKcAPMvhQeaGgh6NS8uvXzpI4LV5Pqd3BKYyHDcIecDbc79n6Sh?=
 =?us-ascii?Q?Te77YyPPSUKlSTQaBfTziZ5il19fCya+nepkSnH+JRhndjcVRDXmwhEErqfJ?=
 =?us-ascii?Q?vkb8Bv7TftUbD2a41+KsBvq2bMCbnPfYMOZl8KZwKz17Harh/WLq2zTkWA8J?=
 =?us-ascii?Q?Qz+YbKwytHG+rS5UASC1BAv3Njvke2+25AKwro2CodyJADTlgwmcUc/R5vwH?=
 =?us-ascii?Q?DjEPY1aUEh80Fck3VmCAjFXEElislQUa3zp+cjo8DMBYZLKgJGcMR8wiz9IT?=
 =?us-ascii?Q?yui77M+HK5jchunorHn+qcC/O8nUk2LONYyy49nxSHF5ZPlImzsEqQRHK2l2?=
 =?us-ascii?Q?lDHOTdM9uQdONtLo5HhS7PIbtm7DNfhfT7uOiak5nwxfnC69BhTcwLUgCOIu?=
 =?us-ascii?Q?iPe+TBG+TcLxKRP9BPh3jxMNJRFD2hHRuhE1xQeDsUy6qTiUFcWD7zaPu3u7?=
 =?us-ascii?Q?4SzOykBIGgLeNGFTZcJpdXo1ijR2epwniHttG3T/te9QEXuaF7NhsBoQCkdT?=
 =?us-ascii?Q?hUFyAGg263ED4mXkGBj4dsSFkm/fxjzdvku186jEvLzEyISQnxCIaL7QCBwL?=
 =?us-ascii?Q?tf3ISQGVKDJNPCQWwa/LMggNRj3R5wpPxEteYyNtCesb+LOiIG3fSUk6g+uz?=
 =?us-ascii?Q?OBaBgUoUAS0pXt2q2/8RBrAhbJC4HReMW+inw9OlasEs+wwSMbjUlCBnZR7x?=
 =?us-ascii?Q?pZWArTC6mkwhlcn11zfFpZTjVSuQWbxY9hweoyFutpjEG1ylqhwR6B/ovTkT?=
 =?us-ascii?Q?H8CCY3rTB2Qk+3wzN3ggO7RrhVFy+kg17B+2S/MRp3dYqRWKGQ=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?IfPmUIjrOoVMgIe6qZk2hn2Ilw46Oaafayz6DzUo+KygigqCe/ozbWETL0hQ?=
 =?us-ascii?Q?4GilqkA4VD3JWHS5ZJT7acMk0kcRumodeXEgYCWb/bNP0HV7KDQtZIkyeHI7?=
 =?us-ascii?Q?IZp8TgYL1DBhgvBxzlm3O76SYB0Zd5Oq1NS+sLWXLPsyLqpPpAyZHYscOsmc?=
 =?us-ascii?Q?7iavsGzYZnXGHaS3WiG6FcS4mp7AU0MkIDjHcYWGVXY9YzlysXznwGIgrqOI?=
 =?us-ascii?Q?Z6J8AzS6KehzviwVoJjPqX4qOA9KMiXcsYJvQQXBfiTdsNPgJ+uP8XtFAhQb?=
 =?us-ascii?Q?rQdY8YEOzJsV5oVBtyKyA+bgXPHZD8FfuzcjhNbGS/B+aC4DFbnBildD6Ve2?=
 =?us-ascii?Q?2MFD3g7SIsSQ+pt8dTZO0Zyz24dkENMdCiGtUekRDIWVrN8Vw2CkToWZGv1g?=
 =?us-ascii?Q?63FO8Xnqfv3NTOpojMcuIvTegBYoqA0GYjCH2zxY1oxJwloK5Rkj2iKsQQk1?=
 =?us-ascii?Q?5WAly4V7/1DX1BvGfGMkO/4Kyxku2URpL1026AmxJ9/NTRsfF+ttb6y8ZBu+?=
 =?us-ascii?Q?eFlQBl97Q/e/NCXUsm0XfjY4gMdutl3Vn5mCRaKgW5YgsYvRgV+WGkaEIa3q?=
 =?us-ascii?Q?9SNLN6vuyg/Gv1zypA6AQyinAfYuVns3Py0vI+D1nN+P9L5duK2xKLACYZnE?=
 =?us-ascii?Q?9YUVB7mNcb7gv9kqZGLrklKlK8ynlkpOaTEjIobal0QwZnpuXRGH7Y7pNUaK?=
 =?us-ascii?Q?eq+eWcjn0XMFnkM/t98F6TklW6+nRtohe1dvPrqHcNYYaCsH51+IettgiHqc?=
 =?us-ascii?Q?ZzXM5I0GCFfF1u4aYPjUUhCcPo0NdYO6cUZIfl8BdFtXBEiU+KANM0G8TN99?=
 =?us-ascii?Q?bEB0T6Q5o7Yg7DlCpIHOBnFVQR1KE4JJCZqzoriyRSPD2w2S9d+PChUONtJe?=
 =?us-ascii?Q?1875PKGIJ2scwdAGoNpnDuLZ2fli1EqS0xN3PxtkjU9CIZNFLJxxjZFO9Ax1?=
 =?us-ascii?Q?NT26ENs9Ee16dDjgg7LfYL8Qw4OhChtKK3OIW/nrTNcR9uybOFSsmgM/Z7Z+?=
 =?us-ascii?Q?g3j9tgpdCqLEElwX0UE+xNUTzi5hl7lTxv13cbku8koMSFeeTS/Mo8vez502?=
 =?us-ascii?Q?D+EVFoLaGHeOfprcWUVfwLpuEPD9gtyDElVk/XbopdhMH5IcAgxmcsVdBhWL?=
 =?us-ascii?Q?vLqHT8OvIuwLjduD9qlW74i49fjDb3mCIb7mQYKrM37g6dT01w3Qj3qDLubN?=
 =?us-ascii?Q?b2R8mYbjQoBBZmMvwtvjjdCh4u51XvkFz8HWfLEKm9rJHfZukGheBQZVYBEm?=
 =?us-ascii?Q?FcuUGzXsAvjX33HztTjRiO3F4P6d2MN6d+gKPiSJ+SnoMROlz4Au3tBxUhry?=
 =?us-ascii?Q?3VM6AkUOGewjd0yHcaz1maDY1D4xvCBmEFuOo7cDMYQcsqcPC8mHbjEi6E0f?=
 =?us-ascii?Q?bq8QLSYUaqbOrEGZhRw3cAoMBrv0A1hto091amHcpXhB1GY1NWPAEzO/CwDP?=
 =?us-ascii?Q?9jNAuP89bfvEv04oJVbzYeBYyaOpolJxjTkWKOIeEHXRSI0g/FhlwQrJS3gM?=
 =?us-ascii?Q?5kHDzUwAoaZ89o1TE7ZUvLmpBXxmtIdnh0t/hCd49hktFr4qfIw87AumtFDp?=
 =?us-ascii?Q?VXdFzih6jfEKKwIYiVLRBci/SKYivaEDEKQaTueD?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0106e6e-d6e6-4f9f-88d1-08dd14f5d1bd
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2024 06:26:57.4468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0M8kPWoSzVXYUWWqA45EVZtBG3RpELLO38PtT5Y2cBEq64fRWwkoReDdaUC1BS6bGa+3ylRr1rcHe5JBPsKL/g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5799
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
> Sent: Wednesday, December 4, 2024 2:57 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: intel-xe@lists.freedesktop.org; Kandpal, Suraj <suraj.kandpal@intel.c=
om>;
> jani.nikula@linux.intel.com; Deak, Imre <imre.deak@intel.com>
> Subject: [PATCH 04/14] drm/i915/dp: Drop check for FEC in
> intel_dp_fec_compute_config
>=20
> Support for FEC is already checked in intel_dp_supports_dsc().
> Therefore the check can be dropped from the helper
> intel_dp_fec_compute_config.

I think the commit message can be improved=20
"Support for FEC is already checked by intel_dp_supports_dsc() in
Intel_dp_dsc_compute_config() which gets called before intel_dp_fec_compute=
_config()

With that fixed LGTM,
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>

>=20
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index ccc495842518..d48fa94b2705 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2345,7 +2345,6 @@ static int intel_edp_dsc_compute_pipe_bpp(struct
> intel_dp *intel_dp,  }
>=20
>  static void intel_dp_fec_compute_config(struct intel_dp *intel_dp,
> -					const struct intel_connector
> *connector,
>  					struct intel_crtc_state *crtc_state)  {
>  	if (crtc_state->fec_enable)
> @@ -2359,9 +2358,6 @@ static void intel_dp_fec_compute_config(struct
> intel_dp *intel_dp,
>  	if (intel_dp_is_edp(intel_dp))
>  		return;
>=20
> -	if (!intel_dp_supports_fec(intel_dp, connector, crtc_state))
> -		return;
> -
>  	if (intel_dp_is_uhbr(crtc_state))
>  		return;
>=20
> @@ -2384,7 +2380,7 @@ int intel_dp_dsc_compute_config(struct intel_dp
> *intel_dp,
>  	int num_joined_pipes =3D intel_crtc_num_joined_pipes(pipe_config);
>  	int ret;
>=20
> -	intel_dp_fec_compute_config(intel_dp, connector, pipe_config);
> +	intel_dp_fec_compute_config(intel_dp, pipe_config);
>=20
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config-
> >output_format))
>  		return -EINVAL;
> --
> 2.45.2

