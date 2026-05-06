Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oHJFEW8Q+2mbVQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 11:57:03 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A08CB4D909D
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 11:57:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D2E10ECFE;
	Wed,  6 May 2026 09:57:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Q/Q9RMjl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EFC10EC3F;
 Wed,  6 May 2026 09:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778061420; x=1809597420;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FZ7VxutrWBonomIXZCv/g8hkiaOlk67zRrsYdjaCA9c=;
 b=Q/Q9RMjl2nMQvA/NA6b0vZ3CrNF1Nq4/0t8PZAO4S0162WChpcBIpezw
 xlBBBLrXFoRYaHnAji3g1WbH9w8OJxvmHUsqMTtEMGIHugM+uIsG8/qtv
 ENpOBY9ux/0ZqT7pfgbECbCnbQ6H+uXuecdj/6mWyU05j4K2D0qftieeW
 LqvkEj5IkQegnFnU1p88k1GNcmSI3SA2NV6vVQlaLicIqryo7N+KyYtri
 gmixjXxrDYdirEWiebe6txmKA700SLOBfFBQaNF7sV5c+ZT1twkXIkStK
 1k9Afd9dAZuEVqvoiPzBE6em6NYjHS0+rFibhjAJTIcZDPngSREbdfwJo g==;
X-CSE-ConnectionGUID: JZsC92qMQ2yiRD+5O601NA==
X-CSE-MsgGUID: p46zfKV8TCiFwjNDKn/KWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11777"; a="101660440"
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="101660440"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 02:56:59 -0700
X-CSE-ConnectionGUID: c/1qsK0sROqpbg42Wy7/XA==
X-CSE-MsgGUID: rgd5gnJ+RxOV8dg3g4dayA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,219,1770624000"; d="scan'208";a="237911087"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2026 02:56:58 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 02:56:57 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 6 May 2026 02:56:57 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 6 May 2026 02:56:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CiavaAnPj2HoQURMrchPrqJIr6+hXPgirEYlswo2yUZk9ran6kOjqUQKG8aUrmW2HFLxEv3Q69Cz2MiW0AO8n4sTWWixsuttKhEbeIp6JcD2pttGJN6jCZccqdspNnCFv7EdkVxSUEcUYlj40SCNOMqi3WBPE7VRWoxuqFE4cIItq1YxiihjLa3gTRQq2PKP3bxUzvuchszq967rb7iXRtLdRCcXjDCyjPEyPJLporm3MgDigc9IEWtkiHdXWVjtQTrIFyY0lH+nkQjCap1EKllKbB2QaZFx8oFw6vPwwWFQhZlq+/zuJG5Vi+1B/zs8Veb6qBPEn4hGzRODY6mCXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FZ7VxutrWBonomIXZCv/g8hkiaOlk67zRrsYdjaCA9c=;
 b=POQPNNSVho2iVY0xWW8dDcDeVBnsjq5wHJc+zTb/1XN+psOk0FnIntZiC3YN72Ji/UnHyodIg6aYkWhYBZvq+ltrmG4TP4vui+/p7osF6kk2fg4dBHrFpzRbK9vKjWo+FILuyaelVQzt2Zr7rMAHsU6+05C5/5PMF1sOMSfhjfaOgBtSrMKp11I/l7WHNSDInNreP0uCwrhL5QslWBmrNc5l1wZ6tXNcnEURsEmn3GrV43nTUnqHN8u1vbcIXDwDLBw4u9HSG9u7dWCTe9zjft+ZSJQJBP/F+LGXQ4wvEdMwGMU3nZq033Cvs2aaB607q8e7On2IifXvozXyZvpkbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by SA3PR11MB8047.namprd11.prod.outlook.com (2603:10b6:806:2fc::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.25; Wed, 6 May
 2026 09:56:54 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::9f66:9d6f:3199:78b2%3]) with mapi id 15.20.9891.008; Wed, 6 May 2026
 09:56:54 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Shankar, Uma" <uma.shankar@intel.com>
Subject: RE: [PATCH] drm/i915/display: Fix color pipeline state copy for
 joiner secondary planes
Thread-Topic: [PATCH] drm/i915/display: Fix color pipeline state copy for
 joiner secondary planes
Thread-Index: AQHc3TnpO9mjV+G7YEeZg8+8hkwSkbYAu8+AgAAGfYA=
Date: Wed, 6 May 2026 09:56:54 +0000
Message-ID: <PH7PR11MB8252955BE76E3B7A0268B653893F2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20260506091638.421030-1-vidya.srinivas@intel.com>
 <7881f8e6-1c7b-4d2d-bfd4-82ecc6f0da81@intel.com>
In-Reply-To: <7881f8e6-1c7b-4d2d-bfd4-82ecc6f0da81@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|SA3PR11MB8047:EE_
x-ms-office365-filtering-correlation-id: 06073520-e1be-4044-5da5-08deab55cdd1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: TBp0G11zwoc5JZCiu8m4JhsbRuNqI40dnSIuUjwy0Uj5ay6zUrst6LAVofZZEIf4GQAsdB+Usd7Qg4p2aomJAL9YKFRZCW/7l0vkd8aF5xPZMl1NRyldMvC3IVD9XUEqDpptC940vaCSDNw3E6Hw6/KEIl0Te7GZ78YZckMShP4UWyipPnifkANT8d/8TnjmzRTK68ZL82wmsC32+ufElbNrRuzfpb2Ewk+CaY7+sObk2fnzr2UJBRfZgy8yOoxDRrYIjaOS8WwsNFCi8SUf7BGm1imw4QEGkzxUYko9Mxxbx5U74dA5L9d//8L+t1mG2kfsHxBIwhEDaB3DQoMMJa6BSf1KV2SBdWyYGt7hHNfABiu2YhbZEW5Q/xiQbJTi6kSLMbGlW4S7sVEOdB2vgamew6K6wV1sli7YtnzjsmoQ228dFsKwlXgMLBG9kR6k8IgmsmAcLXrHiCEuLXXzTrknb/lt3hmz8iuxNgeDilLeO6/rPhjyL66SDTbNbDPVyoZTuar1eQeLkCn2xoI5PGcEFONPdKcCzNaHYQ+aTDwBqXJ7LamKsqSprGu2bs5l4+/DZw00/qP/OxBrCxTPhzI6HOIjjIICBsHR67jtZtE/R5zMqBJwk4mUNkH+ja/9CR9gdi7SBawRgNWov9VshIcs5ddOvEHIePUC2Y6mtf+Ge8N9k1a6Xu+cwMcRZKR5Dn6klqs666HIApOaFrN3/uOVuDyslKLRUehbe7tG45jtWQnDUFj53YF98HmtXqmM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TmdBZkl0N1VlTjgyZnhiOERtdGQ4bnByVk04Y1gwZUFMY1JOSTI0dW9BZXQy?=
 =?utf-8?B?c0tBb2xVRHhrcW5YYjAwcTdkSXVkYVZtU290YzZIZm1ieUMxcTNzcVhkVXRp?=
 =?utf-8?B?cEVRMDc5ZHNHaDBXT2NRUUYrQVhNckJlWDVwcmR3YzNCTzJkc0R3WEFGdmQ4?=
 =?utf-8?B?aEFOZGpObkhOMnRONk5PSk9KanB4eTRoeVNUY2tEZkNENWFjcWhMV1ErbGFN?=
 =?utf-8?B?SjlaeHJaZ2hMM3ZWNWY4cmd0ME5vdXRTSlJYdXFHTk0zdk9lQjl3SEZkRlds?=
 =?utf-8?B?SEJ6L1RrREFjd1N3TXRBRXRQTGNOMEY5TmRqNFIvekY1NlNIdU9zbmxQTXRJ?=
 =?utf-8?B?OHRuczh0Zll3Ync1dGg3bnNrVnpSVnBDWGRCR3hrWDZQZmV1cysvMVJKa3A3?=
 =?utf-8?B?QTFsMFlKY2RtajlldWJMSWRGVS9qLytiS2dQelBQbXI5SW5mNXFGWi8wV3V0?=
 =?utf-8?B?OFlaRU81bmVPbU9hdjZUZVEwOHVaMXRrczBnOEZUbkZNNmdpaCtFOER1TXpZ?=
 =?utf-8?B?L2F1R1ByT3pjMXFWajZMdmFZSXM2cit3R1hvNlI4NE0vdUtEU1V6Z3ZBZGN6?=
 =?utf-8?B?V3FDNElNcXVPaVFDVFBiUlJkc3RiaXRIeXRUallHVGphV3laZlY1MWU0djhF?=
 =?utf-8?B?K0FnZUN5Vzdkb2tzS0ZMdUlVK2Qxb1h2Q2hjbXorUTRmR0lIUEVyOUtsNWp1?=
 =?utf-8?B?eDVyNys3dCtzMGNyNGVWRDI2QzRaVUtVK0ozQUJVVDNGcjBkZFlnU3pLMlAx?=
 =?utf-8?B?Y1NYWVBNSnMydzFrdE5qTkNFNlZCV0lMY3FLdFhDRmtObm5yUUxJZ1RENUxI?=
 =?utf-8?B?NFlFeHNhc3ViTjhDV0JHaXVaRVJ5bnc5RVFtaS9aVStjRkdFRkg2bWNmVG5E?=
 =?utf-8?B?a2l6cTBtaVoySDBsTVgxdG5GaVBVY2c2c0FxSXZSMWxvRlVyTk9ZbUZjU0FY?=
 =?utf-8?B?VGJLQkN6SlRGV0dZQ3gyRjQ1VTl2M0p3bHBqSlJXSDRPckhaRXpHczZiVmlu?=
 =?utf-8?B?c3NHUmFEYlg0TFRuU09MQWFOMlBMUVJzcFFML1h0eFR5eVFvZFF6V2MyRjlC?=
 =?utf-8?B?NDIrZ3ZXaHE5NHljSFJXQnNaZHdZa0crb1NrMW9BVmZnUXpCM05NWjJ4UTdm?=
 =?utf-8?B?VmkrMFhpTzJJaXQ0Z29IOHpvYURJaVAxK0UvMDFLYkJpYmh1RGp0SG9CeGY1?=
 =?utf-8?B?UFVtQ2JGRnA3MC9FUDlWSldaUlJMdm80UzdOUGYwaG9vY2J2c3lqVzZkMXB6?=
 =?utf-8?B?YWxyeUl0bEhoN1QwcXVnYXdqeVQ0YTY3UkwwOXBGbVF1Zmh0czQrQStzcXZa?=
 =?utf-8?B?L0tHUEUzRGNHTWh3RmYxVmpJWUFDZHFTS3BoVmNVaTAvSHpwb1ZESUxCaHFZ?=
 =?utf-8?B?a042Q2dUUjRaTmlqV1paR0ZSYWRvVTFjVjhNaG0wRDFTMjNCRGxUTjlFM1pl?=
 =?utf-8?B?eFEyeTVtRlozWmg3eEVmU25GODQwM0ZkU1ZyYWhNZG9HRytwRHk0SVQ3QXhW?=
 =?utf-8?B?WkhNQWlaQzQ0TUU4RHUwa3ZiTmVQdHorQ1puUi82YTJIVXhnVnpSQXY3aFhv?=
 =?utf-8?B?ZWlNRnNqTTVIelh3SCtPaC8vazRmZHZZMEpTVmFETDdBb0lzeURTZ2Q5d0Yy?=
 =?utf-8?B?NzVPeHlXT0x0VTE4WDRMYytvbmVrcllPQnBCWHd0cUUyR3hna3pxMUd1WDdF?=
 =?utf-8?B?czJ5cE9wRzBIODZLWTk1TEVlelpxeGVRLzhFK3FzUlFTOXVkNSsvcEx0b014?=
 =?utf-8?B?aThaUVRPdmY5R3Nkd3ZOWTlmSlpYTmhFa1VpbDdDSXp5UFNVdHdJaC9jWVJh?=
 =?utf-8?B?U2lWcGNGVXBINWdUNG5YTGk4ak9UYzRzMG1iNHRuMlR5VVhOZkR3bEkzRUhz?=
 =?utf-8?B?YjFlYnJwdWZpcTJNdmE3Uy9zTU9ENXV1L08ydXI4K1dsZ3MrdW1lOGZsRGxv?=
 =?utf-8?B?L3ZMcmxrTkJ5cm92Q0liZkpDK2ZEV0RKZDFiOXVuUUV5SnRwa2xheWpydys1?=
 =?utf-8?B?ZUtORUVCWk8rVUd0UHBxWEJiVGFuZ3NYdklST0R3S1hBUHlrbDNMck1pNzlk?=
 =?utf-8?B?MEZTUTRGZHZhWFpSNExWbll2TWZiZ0Z1Y1JVNXk3MnNCSGhYb2ZoajBTVkhl?=
 =?utf-8?B?R3lTU3piS3gzbS9MbDNNVTFYdWsxOFh5cURzV2lZSzFkMWVPOEJuQTZrVzlE?=
 =?utf-8?B?MWRkNC92M3VWclg2UDhzNTdIYVhrdDFPMFdYV1BvRjdTNm9CY3lzc0NlbThl?=
 =?utf-8?B?YytybDFURnIxaTFwSFR2M1ZtNS9ITGI0Yzg1czFSM3dOUmhEWkdnb2tuK3dU?=
 =?utf-8?B?Uk01aWQ1Z1huT3F1ZTBPKzRFMVVPZy84d202MHJMelVRSHU3cnJJZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: lYrEpktLRNVDMt1nfQRz5/Y4TgJyUGrS4yrCG973X2RXYW92RbW3LyoWzi9kbn+oNVXCyR3BDALMyuqaZetydOciRw39RKuRjYG/UAfTzWfAI7CyXazf0UgxliV7jvd5V4X0BqlDoPphMD8zPOThnex04pX5YwRy4/PAs7LDAfXagFuigPjImcC/fThkwRW0ptV1tRPxB10K994Y9cpUiZRUptVGGFOKFF2nryIwpXj343cMf4vqMiPOqfRkqnfV4P7sTa9tDU9fLvg/+ALmQdwDN68nwfxXnzKkrDRHkCJR2I6ZpsU1dcNe3MdXkfoYiFGD1+j595qoM0Tz9TVrLw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06073520-e1be-4044-5da5-08deab55cdd1
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2026 09:56:54.5992 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: q8N/l535bt0UnGB6qFKHttpDz+sLHPdOCHPVGsncE+dKOJuWOHiENFkIdWMb4Uiis85CWAev2JUA6ti6J8Vwk/UjJ043wXPPPsiNZfbnnf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8047
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
X-Rspamd-Queue-Id: A08CB4D909D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,lists.freedesktop.org:email,PH7PR11MB8252.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[vidya.srinivas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_SEVEN(0.00)[9]

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogMDYgTWF5
IDIwMjYgMTU6MDINCj4gVG86IFNyaW5pdmFzLCBWaWR5YSA8dmlkeWEuc3Jpbml2YXNAaW50ZWwu
Y29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogaW50ZWwteGVAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVsLmNvbT4N
Cj4gU3ViamVjdDogUmU6IFtQQVRDSF0gZHJtL2k5MTUvZGlzcGxheTogRml4IGNvbG9yIHBpcGVs
aW5lIHN0YXRlIGNvcHkgZm9yIGpvaW5lcg0KPiBzZWNvbmRhcnkgcGxhbmVzDQo+IA0KPiBUaGVy
ZSBpcyBhbHJlYWR5IGEgcGF0Y2ggZm9yIHRoaXMuIFdpbGwgYXBwcmVjaWF0ZSBzb21lIHJldmll
dy4NCj4gDQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2ludGVsLWdmeC8yMDI2MDQyNDA1NDEy
OS4yMTQ4MDQ5LTItDQo+IGNoYWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20vDQoNClRoYW5r
IHlvdSBzbyBtdWNoIENoYWl0YW55YS4gS2luZGx5IGhlbHAgbWVyZ2UgdGhlIHBhdGNoLg0KUHJv
dmlkaW5nIG15IHRlc3RlZC1ieS4NClRlc3RlZC1ieTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNy
aW5pdmFzQGludGVsLmNvbT4NCg0KUmVnYXJkcw0KVmlkeWENCg0KPiANCj4gPT0NCj4gQ2hhaXRh
bnlhDQo+IA0KPiBPbiA1LzYvMjAyNiAyOjQ2IFBNLCBWaWR5YSBTcmluaXZhcyB3cm90ZToNCj4g
PiBpbnRlbF9wbGFuZV9jb2xvcl9jb3B5X3VhcGlfdG9faHdfc3RhdGUoKSBpcyBtZWFudCB0byBj
b3B5IGNvbG9yDQo+ID4gcGlwZWxpbmUgc3RhdGUgZnJvbSB0aGUgc291cmNlIHBsYW5lIChmcm9t
X3BsYW5lX3N0YXRlKSB0byB0aGUNCj4gPiBkZXN0aW5hdGlvbiBwbGFuZSAocGxhbmVfc3RhdGUp
LiBIb3dldmVyLCBpdCB3YXMgaW5jb3JyZWN0bHkgaXRlcmF0aW5nDQo+ID4gdGhlIGNvbG9yX3Bp
cGVsaW5lIGZyb20gdGhlIGRlc3RpbmF0aW9uIHBsYW5lX3N0YXRlIGluc3RlYWQgb2YgdGhlDQo+
ID4gc291cmNlIGZyb21fcGxhbmVfc3RhdGUuDQo+ID4NCj4gPiBJbiBub24tam9pbmVyIGNvbmZp
Z3VyYXRpb25zIHRoaXMgZG9lc24ndCBtYXR0ZXIgc2luY2UgYm90aCBwb2ludCB0bw0KPiA+IHRo
ZSBzYW1lIHBsYW5lLiBCdXQgaW4gYmlnam9pbmVyIG1vZGUsIHRoZSBzZWNvbmRhcnkgcGlwZSdz
IHBsYW5lIGhhcw0KPiA+IG5vIGNvbG9yX3BpcGVsaW5lIHNldCBmcm9tIHVzZXJzcGFjZSAob25s
eSB0aGUgcHJpbWFyeSBwaXBlJ3MgcGxhbmUgaXMNCj4gPiB2aXNpYmxlIHRvIHVzZXJzcGFjZSku
IFRoaXMgY2F1c2VzIHRoZSB3aGlsZSBsb29wIHRvIG5ldmVyIGV4ZWN1dGUsDQo+ID4gbGVhdmlu
ZyB0aGUgc2Vjb25kYXJ5IHBsYW5lJ3MgaHcuY3RtLCBody5kZWdhbW1hX2x1dCwgYW5kIGh3Lmdh
bW1hX2x1dA0KPiA+IGFzIE5VTEwuDQo+ID4NCj4gPiBBcyBhIHJlc3VsdCwgeGVscGRfbG9hZF9w
bGFuZV9jc2NfbWF0cml4KCkgc2tpcHMgcHJvZ3JhbW1pbmcgdGhlIHBsYW5lDQo+ID4gQ1NDIG9u
IHRoZSBzZWNvbmRhcnkgam9pbmVyIHBpcGUgKGVhcmx5IHJldHVybiBkdWUgdG8gTlVMTCBibG9i
KSwNCj4gPiBjYXVzaW5nIGEgdmlzaWJsZSBjb2xvciBzcGxpdCBiZXR3ZWVuIHRoZSBsZWZ0IGFu
ZCByaWdodCBoYWx2ZXMgb2YgdGhlDQo+ID4gZGlzcGxheSB3aGVuIEhEUiBjb2xvciBwaXBlbGlu
ZXMgYXJlIGFjdGl2ZS4NCj4gPg0KPiA+IEZpeCB0aGlzIGJ5IHJlYWRpbmcgY29sb3JfcGlwZWxp
bmUgZnJvbSBmcm9tX3BsYW5lX3N0YXRlICh0aGUgc291cmNlLw0KPiA+IHByaW1hcnkgcGxhbmUp
IHNvIHRoYXQgdGhlIEhEUiBDVE0gYW5kIExVVCBibG9icyBhcmUgcHJvcGVybHkgY29waWVkDQo+
ID4gdG8gdGhlIHNlY29uZGFyeSBqb2luZXIgcGxhbmUncyBodyBzdGF0ZS4NCj4gPg0KPiA+IEZp
eGVzOiBhNzhmMWI2YmFmNGQgKCJkcm0vaTkxNS9jb2xvcjogQWRkIGZyYW1ld29yayB0byBwcm9n
cmFtIENTQyIpDQo+ID4gU2lnbmVkLW9mZi1ieTogVmlkeWEgU3Jpbml2YXMgPHZpZHlhLnNyaW5p
dmFzQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcGxhbmUuYyB8IDIgKy0NCj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMSBkZWxldGlvbigtKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wbGFuZS5jDQo+ID4gaW5kZXggYzE4MWE3ZDA2M2VjLi5lNDAzZmU0YThh
MjAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
bGFuZS5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wbGFu
ZS5jDQo+ID4gQEAgLTM5Niw3ICszOTYsNyBAQCBpbnRlbF9wbGFuZV9jb2xvcl9jb3B5X3VhcGlf
dG9faHdfc3RhdGUoc3RydWN0DQo+IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwNCj4g
PiAgIAlib29sIGNoYW5nZWQgPSBmYWxzZTsNCj4gPiAgIAlpbnQgaSA9IDA7DQo+ID4NCj4gPiAt
CWl0ZXJfY29sb3JvcCA9IHBsYW5lX3N0YXRlLT51YXBpLmNvbG9yX3BpcGVsaW5lOw0KPiA+ICsJ
aXRlcl9jb2xvcm9wID0gZnJvbV9wbGFuZV9zdGF0ZS0+dWFwaS5jb2xvcl9waXBlbGluZTsNCj4g
Pg0KPiA+ICAgCXdoaWxlIChpdGVyX2NvbG9yb3ApIHsNCj4gPiAgIAkJZm9yX2VhY2hfbmV3X2Nv
bG9yb3BfaW5fc3RhdGUoc3RhdGUsIGNvbG9yb3AsDQo+IG5ld19jb2xvcm9wX3N0YXRlLA0KPiA+
IGkpIHsNCg0K
