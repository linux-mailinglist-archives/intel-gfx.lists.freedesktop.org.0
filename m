Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2740A36F57
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Feb 2025 17:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC1F710E1D6;
	Sat, 15 Feb 2025 16:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6CLewmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A6510E1CB;
 Sat, 15 Feb 2025 16:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739636263; x=1771172263;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=y266iBOPLi2pUTLvmslX6XjrjgnXP1EWEUDCf5PLp9Y=;
 b=M6CLewmXxZwyhqA0u4i5ga9Y9MVVlJiGr0snmSrjHTFW9pDCnsUsYjBU
 LrbLOACGmtnxcuc5zEwOMXlWJj8ELo38qbzi8xKwRXTZzkuNjflqJQ8ZO
 Brl1aD6Yw201/z43oPsDHLHVJmzLOlXvPIBE5DuPbNCDJRjtvN8p4pJIR
 b8LF3z6HfY72a00m3RodZ/u3L2pzFMjR+DF/Wv+o4ULqrpoYNaEzs6SYV
 i71TpV5Ap7mmN0Uz049l4X2qvgrjTYTR+JZ0rh/WiE1HQweIby6BKhrko
 FxCsDnExbFgkCqYv2JyK3TEXHxCi204Grg4LxfWkxMKxnvCZx2Xhl7CNu A==;
X-CSE-ConnectionGUID: 4SAQd5klTCGuQ5hU1r+orQ==
X-CSE-MsgGUID: 9t1Srq8bR12reG6sZOuaWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11346"; a="39553475"
X-IronPort-AV: E=Sophos;i="6.13,289,1732608000"; d="scan'208";a="39553475"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2025 08:17:42 -0800
X-CSE-ConnectionGUID: qwCKXGxPRe2CbuhdgZUX/g==
X-CSE-MsgGUID: lFJriwkVTBmZmv/Z0ceB0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,289,1732608000"; d="scan'208";a="144578139"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Feb 2025 08:17:42 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Sat, 15 Feb 2025 08:17:41 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sat, 15 Feb 2025 08:17:41 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sat, 15 Feb 2025 08:17:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sy3bVtHVtWB4CVNR1Jqrb+PF04YQn4zSmhFoZHXEeENvJasES06nKMBWCLenWbnhQQFEz8jM/z/64eH5IBSJCgeaIBg64lSUOLUFZHTquebwP/xuhAJk52FykEWTyFq9JYEZToEqdYvHXNUEIX5GXOkASzr17iVRw99F5PDuQ+H0d6eYU8imUTo/2W7gc2KEwAg3nSuyFmehmz/YNWncOw/892MLJ1VzXfjaiaiLhrOQrHf+4G2a/AK9iXlOHbqkkDKxzhL6gGL7vyS4S7UXfpjU2ZWv7BauzeWIsf2BYCHrMXO6OVJtV92xJGZ6g4DVf00Uev0RZNMrpeIYvo317g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9HE4cJZ0Tva4PdFDMby7KipwqlqPCmzr/OYWbLlhkL0=;
 b=MDA9ppV+6gkRct4TJzChkU+FHgQxfVx8MGRpWxMtKGLvJ5j+VRmwP5p6BExbApgdUyBfhReCvxm2ZWxqisQlbRE0Jp9Opixi7HNvxUkSlpVjoZ7t9Sfv0sm7PlKpLGSD3/h2UBAk+n15hI+lW2l+sf2+Uaj9MndSPn23g4SRVIEwaV7l84m2O1Y+P9TYpeD/uXwjaagvbRvvRioLaP6N5zgB9oy8/kBIIe9K8YUq65DgPnF8tz5GEIl9SjdjyfVEi8L/1v90dFwocl2QOCcnKQ4ltNNbeG3Sse12XOzUOxnP0uL5hAXbdu+yIcnpCEBorexXbXQIgKvcC9jGDqsHww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SJ0PR11MB8270.namprd11.prod.outlook.com (2603:10b6:a03:479::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.16; Sat, 15 Feb
 2025 16:16:58 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8445.017; Sat, 15 Feb 2025
 16:16:58 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>
CC: "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>
Subject: Regression on linux-next (next-20250210)
Thread-Topic: Regression on linux-next (next-20250210)
Thread-Index: Adt/w6jEykrzTRy2T0i5mvGBU6SHFw==
Date: Sat, 15 Feb 2025 16:16:58 +0000
Message-ID: <SJ1PR11MB6129D6C5644D4A6C858A4F04B9F92@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SJ0PR11MB8270:EE_
x-ms-office365-filtering-correlation-id: 142a3123-4f5f-4771-eea2-08dd4ddc2c1b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?iso-8859-1?Q?lJ2lV8cCsPaEqvky2QRZWFq0S/yoUrH24syBtqlKHdKWs+hlY0X+og4+Ai?=
 =?iso-8859-1?Q?d8sTlBA0ousNqIVUFJ9D4NIWHY4vQyF+VyT6uRNO9JnH16CaQia9l0WhfO?=
 =?iso-8859-1?Q?DMHdVfvt+0gAapM/q0tNxrzrMh0NEa879TIRGqN4SdlmeagtodKKGJ1NH2?=
 =?iso-8859-1?Q?IOqL3FoktTeNz82fb3+z31StSl3w4XUt0aCZiyuvdaad5yyiTKF36JQGEO?=
 =?iso-8859-1?Q?CgevP2MInGTH8dC15n4qPQcc7UYwQ67pXRKq1BlT8hCCpI9l0Ae+Z63kWl?=
 =?iso-8859-1?Q?rae7XcPxDrVmt1Jsm5O0BS9kdK0Iwqkl0IBjBxp1hKBi2jiLyfR3AVKcMr?=
 =?iso-8859-1?Q?YDruTJZySeHs40g2wfCi/iqvIpvGvu+5l5vqToZzaRm0CgnMufksKYcGO6?=
 =?iso-8859-1?Q?KWBA1kdZGD6Hten5PpjoUtlki5Nvamyu2Q8HP+q11TwpD5eRKA0F4J3Zp0?=
 =?iso-8859-1?Q?aDesHg/iYWNzgzR/Nceiyb6CLrESut9VEUjXK//8Dlis1XhkR9+MQ8ifOd?=
 =?iso-8859-1?Q?soOuPOG0sPkH2l4rjjNVyF1oSxSCFRRKjZoaNDXUsa8xkGAg8HWeKfi0r9?=
 =?iso-8859-1?Q?Zc/wbkdDd5JO1Rr2W4JB2z0/9zaAe6pvL/qtYBkD7Orbv03+SOtRbMktyL?=
 =?iso-8859-1?Q?vEJn2QrbBCbFdmvSdeUgXPsPyKFfn4LcJox+ZUi+Tdl6jtRviUI9dauX8E?=
 =?iso-8859-1?Q?nE+D2ECGlwwwKWIXZfYrvJ+lANxO0dG+PvEjiY++rcpy5gM9WGS88Xx+C8?=
 =?iso-8859-1?Q?+5FkSNXUw3AkDyywmMsk44lLeFdXCaUKP2LSjwL+c6L1otbKnt1W7ZalXP?=
 =?iso-8859-1?Q?RqWYRNCTcb+n50KNnjvZAGehLKOzs9b5ZHXhY2Qqux/1uob6uLfgYnzhU7?=
 =?iso-8859-1?Q?73LHaAFgabvL3g5OA9FfH6gx0f2AqCTY8q9TwG6I/cmpf7SV7NYz8xaNAF?=
 =?iso-8859-1?Q?dpZvAQWBjs8lZTByzFb33qUqP45IrO/iSMiJ4Pb963qxfZN4eRPt8S+OyG?=
 =?iso-8859-1?Q?zhTAjdqZ6pCzIQelQVhMHayL5LhH5FCMHXvAUF3wVAdJCutAE8gqA4Ju/A?=
 =?iso-8859-1?Q?UDz0coZ5q1MHU0FgGENp3xpjuCISfl3VbZjFTwFLqbmwJ0gA96lF1zHCYU?=
 =?iso-8859-1?Q?c5S4xXuYf43N7g9oxGOHTk6qa37lGEXAdhhqMcsK7yzhUBK0ZKQtXF3GpP?=
 =?iso-8859-1?Q?1feI7m6cgmuvjF15Blav2/LwjPGbjJf6lmVMiXySKWt0VuuPevbYQSnN/w?=
 =?iso-8859-1?Q?05WBEn95h2yRBaJW3qlc4GMyI4CWQ1CWHXiRMOgEYEgZT+AvajMuKVSS6d?=
 =?iso-8859-1?Q?BjfaK2y471w1v5EVLkMbRLguwEGz+YFWb+G7TgpwG5qkGTBEmcol3T+xxA?=
 =?iso-8859-1?Q?XSuglpYYsi3XdvIaDPrUaNDtN0HpxLGgiJBWJM3rUOPCwIA7iedPpLdwgY?=
 =?iso-8859-1?Q?MGbtvPnn6OBW3y0rSGqsqluxfYjZMCKpxMz0Mw=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?TZZqSY9oapzxZkZ+ZW3gVgDbwFpS+jYtpfmtxJ5KGiCkZeOCXmgXzPznvS?=
 =?iso-8859-1?Q?cee+GDOVVjJ6W1hSSFFrQjjzg2J1iRcg2YfRQdeezSfWJ7OOo0qZCYPTx9?=
 =?iso-8859-1?Q?LskNtEAhXqdp+nLwHRUERNT4OQsxuN8CKtyRju6yMMlHSGVCBebCBVs6KP?=
 =?iso-8859-1?Q?YfrjmhYl8tgKbUy3aPoNeoRUtlA6w2bAv5MDUxtG/AWIe+3m6581sDg2lv?=
 =?iso-8859-1?Q?n+Krnn3I+5SGR9yHUi6/JE5EZOsWxx55FyHmZ121GLTI5oBmmlF2K98Fc+?=
 =?iso-8859-1?Q?Q1yD/iD9+W8WX6wsdXvu4zPy/bcjejOFj7Kk3YPLtUYEDffmXfkmlvLNbL?=
 =?iso-8859-1?Q?vGar3vr3Kp4kHSRU7rsOBIJLgP8I7tKovr+9dmi5rijCZBTvsqsdnY0kuE?=
 =?iso-8859-1?Q?V0KRuSvDd139U7J6/pMg0FPDADwt3O9trBIGXOYArtwXwz3VqK0LrMtY60?=
 =?iso-8859-1?Q?6oHWWDnIXUQtABm9vFfPlIgAs7h/EZK+IEjUUmyKxiwjHI4IQcdzi0L5bg?=
 =?iso-8859-1?Q?/+ROAj2xXnZcsx89dFPbLykVfpFCP0UXcbLPNQ6yJewmag/DX+28gYcy1p?=
 =?iso-8859-1?Q?OwrE4el6YdkD0wYmjQvlnhePc5oTBqdEXX2n2nTjzggjlk/GXJhsAcw9Dg?=
 =?iso-8859-1?Q?qGQ66DVEFi75mjIkoDTrvk5owC94kMTs/uDdOEH2Jmq35D4twroQbqP84Q?=
 =?iso-8859-1?Q?hV+PnCIvWNzB7S13/aq+RDnomowazT0y6MnWC1YiDl4aeyCCwsqV/nXZNY?=
 =?iso-8859-1?Q?iggGTjkYF1TNd9dNiiuJlK0EHgpycG/GNMbNmDzYdJWwyIQHmd4WZkeJTX?=
 =?iso-8859-1?Q?hYHiwDc4Uo4wiiC3yzA/MzOJg553RXKOtL0dAqOR8Pu3IDhXp3nlMHbcdo?=
 =?iso-8859-1?Q?n+OwREgi5tBE6MyrngY3mVmIZDXvnr+wrmoSvtINEQ2BkPsJkDGngn+6FG?=
 =?iso-8859-1?Q?jq5ST7l9inzdSUgRs4Bv0dkUIkNLQcLumCng+YJbjOgXKpbja0jg6QWF2E?=
 =?iso-8859-1?Q?Y4jzf2wx6FkL0qHW2nS8AQa3FL2lOiEo6LZ3v+mx1sIJR333liw2pm3p7X?=
 =?iso-8859-1?Q?ehRncdseFCk6lHf/jQ2/jn8KbW9kM2De7SEBuTRx7Z1scVJtf5w4XFbVOu?=
 =?iso-8859-1?Q?hPCb52+yiAhb0szM+Gtf2QrPZZ/tqatQUh/NIuCPIKHTpZdP5RMBSHntdG?=
 =?iso-8859-1?Q?pVKGTwOgf0XIsH9ODyqlwwBrCW0sCetdq4CTCQB4YXi9l6jcpkzFjPUlCg?=
 =?iso-8859-1?Q?yw0aqH0cQd41hwTLjcx6v/mAJoIjdfmj74n3Zu3CQRMzVOt8laZZUIhJZh?=
 =?iso-8859-1?Q?lEkqCCWGWWxuB8bkwRPOM4zu6/D1trOUvXpwzoLnNxMUdCaA8FlMtyCxcI?=
 =?iso-8859-1?Q?orJRJMIcmeMPJp7OliDBa+gi1utuK6OlwpkdSWQlPKEWWmVFuyWufrm+o8?=
 =?iso-8859-1?Q?rn7nBygmgsM0szCnPdJIC3suyoG9D+TI56c26N1B4QniQtYzsP6obZEZv/?=
 =?iso-8859-1?Q?igLFqTGl40FK2VVkh1UCxPI18oTf9gSK/SfxpRFMcibcElJwVi/hsGKiOg?=
 =?iso-8859-1?Q?Vz1Y8aVCCFZGGeDxxI2kcF1lSrSQJBq7gIWPNI+FiOW7rBAftm0xp9mqFB?=
 =?iso-8859-1?Q?shyocttliIlcFEXBMVyVDtsKOLveOA/OHc32wOU6P3EytZ3eIbu9JHgw?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 142a3123-4f5f-4771-eea2-08dd4ddc2c1b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Feb 2025 16:16:58.4088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S7enMRf/3Rlg0ZW8nJUdLVpa8upTivxYpAfLLeim5N1g0Fc2G/WRSH5tk2fQ+yaOnNoUF7ZBqezvdfdOY/N/eo0keUSc9A6+H53RH8Zofr8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB8270
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

Hello Andy,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20250210 [2], many machines in our CI are unable to =
boot.

Unfortunately, we have  not been able to collect any logs (even from pstore=
).

However after bisecting the tree, the following patch [3] seems to be the f=
irst "bad"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit bfd3d4a40f3905ec70b17dbfa9b78764e59e4b4f
Author: Andy Shevchenko mailto:andriy.shevchenko@linux.intel.com
Date:=A0=A0 Mon Feb 3 14:14:56 2025 +0200

=A0=A0=A0 serial: 8250_dw: Drop unneeded NULL checks in dw8250_quirks()

=A0=A0=A0 Since platform data is being provided for all supported hardware,
=A0=A0=A0 no need to NULL check for it. Drop unneeded checks.

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We also verified that if we revert the patch the issue is not seen.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250210
[3] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250210&id=3Dbfd3d4a40f3905ec70b17dbfa9b78764e59e4b4f=20


