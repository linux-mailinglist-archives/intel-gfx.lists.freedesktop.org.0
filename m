Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D850CB917A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 16:22:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93EE010E35D;
	Fri, 12 Dec 2025 15:22:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JE8J/u4d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413AF10E35D;
 Fri, 12 Dec 2025 15:22:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765552924; x=1797088924;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=YMFECMx4cjJ5FaeCNDbvAByXs3k0TDe2Y/BCg0eblOg=;
 b=JE8J/u4d/BjHnyuAHWne0AIJ31SZarnPhSQYnKgFGB8/WZiE4QisqLfw
 XQ9V5pNmqOUzaUJV9lFa/5HStAYI6LKQH9b5umUf9+s1QubMIHJfoUBhl
 ZrKhll22QlBdor0aCyqIL5wmkTsTvNA7zzC0j8HiloX2ACAW16xyOeme/
 ZrsVQkbg7ES5DLCbiSAAJ2xxezb84PLRdz/cJC4LyhE936DqrvnyHOtGK
 b8ylvj+Ulo9jsdsXr3wg3OZwHkoFWN4ZmHPD+KxZ38jve9lxhI2UgU0on
 U71lqmh2Tv2fT75RrXHfCTmCvZRxtL4rU3vMY2p7x0Y14z8eOl3dWtI4r w==;
X-CSE-ConnectionGUID: pz2zmSYGQ6ePq2vF3efVpQ==
X-CSE-MsgGUID: AYRBbFYWQJ67zBuUp0KFRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="85152946"
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="85152946"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:22:03 -0800
X-CSE-ConnectionGUID: 4vw8tiG/RLKzxH2YNrj2Kw==
X-CSE-MsgGUID: NEiAhn5WTjeietVIYxGZdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,144,1763452800"; d="scan'208";a="197176854"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 07:22:03 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:22:02 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 07:22:02 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.14) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 07:22:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=T800/v36WlJQFotjx8Vx7J8tOx8bxlyGI1WzkDWRDp3+oA5ZWOi2Iy6DN2K0ziAZk79r4LDlxeP9UzUOx5gCRpySpwD7XpxLU8YacaV3aJUX5VkwnsCJ2HUcBgdJgLODszqwycJGQofAas/pZKUAw+GyoF9vaieb/XZHyLgYx4Z6TTcacO8FPnmT6xQ5uwTOJzII+ThN+YprrZbnH5xrM+DVLUpctYfuy9GB6foHuYiLlDJt9xsLJu7fd3grxxmphw+E3MfFiD7jrpXJy7Th2JEBe/Ppf9ADiVjHvVIM9cyL/0kgQ3FhM07nxucOknfVpczuB7qZO6YZlsx51fCIeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YMFECMx4cjJ5FaeCNDbvAByXs3k0TDe2Y/BCg0eblOg=;
 b=x+KiH0VaVa4wl8actAHb8jA1iusWs9eWNCl9tEa4fZaK8EltpM5yRLFpusJFtS+IYTlN2zv2ZTp0Ixnj27DBPygc3TaOETKgNlVohECvd6dfyXPaIrRNazTtBWo7FjKKv2RA3fp2bfuiTLUCFq5NBireDQnAkUVopkqtTXWW6fdZG+MbqBUWV/DYEX4++NGX1AhTI8ZA0sDc1GpYI1XF+B3RPFI+ZO62nzAcYH2Nr+28txjJzESaIXe5KNG6dCiZWlMy26dED/xvBkfSCsw8fdIJ+EMsYYDr55zrxlI66Q34H8q2XxX73vaCZM9034TKQoVdb+PnE9Q12bKzZTTw+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DM4PR11MB7304.namprd11.prod.outlook.com (2603:10b6:8:107::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.11; Fri, 12 Dec
 2025 15:21:59 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 15:21:59 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 32/50] drm/i915/dp: Simplify computing forced DSC BPP for
 DP-SST
Thread-Topic: [PATCH 32/50] drm/i915/dp: Simplify computing forced DSC BPP for
 DP-SST
Thread-Index: AQHcX8kec2zSl33bUkOvAQ6yX5HfUrUeNomA
Date: Fri, 12 Dec 2025 15:21:59 +0000
Message-ID: <bd99077d08c94a4fbd924385a991347449b29d90.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-33-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-33-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DM4PR11MB7304:EE_
x-ms-office365-filtering-correlation-id: a84f37fe-6149-4b19-07b5-08de399231e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?TFZkb0ZSaW91NkdyUk5xVHdqcjNrRHh3K3hvVE8zcGd3RkZRdVpwcE4waFlE?=
 =?utf-8?B?ME94amZML21Fc0pLMVVucms3Z1VRQXUyeUF5N0JaNWo0dzR3TmpDa1hGL05U?=
 =?utf-8?B?bGRNZG05QlhCbldjdnEvOVVFTk9sWGtJdGJ3d2Y0NG9CTGdPcjZOZ0xMOEhu?=
 =?utf-8?B?QkduNVBuMS9YYWtRZFJOT2RZM3dmTm5DbXVKc0M5THN5OXY2NzRveXRrN1Ax?=
 =?utf-8?B?ZXl2SDdhNVdHVFlBaXJqblMrZXp4VXVmN2dCek41SE94VUtRM3RBb0lUVkpG?=
 =?utf-8?B?VzZaRmZQVWpCd2dBQ1VhV3NodmwzZG5Oby9jQkxabkcwUzFKUEsyeWxOemEy?=
 =?utf-8?B?K0RqMksra09HcjkrdjU3SlRZclBFcG51MmFITWNrSkNmaUsraVlScDhSUWJY?=
 =?utf-8?B?QkVHNG9JMDViTXRUd0JQV1NYTVBpdldQSlJZM3EyWHJSNjN4WXNKMm83K2tr?=
 =?utf-8?B?bzBIY1hCaWVWWE9ucGVtNzBPZzJiWjBpcTgwbFVIakl5M3VxZjdKOWVud0g2?=
 =?utf-8?B?RXpCelp5U2pqZlM2Q3AwLzNWZDA2SURLNVRMdlFSZkwvZ1JWYzNkUnAyVXEv?=
 =?utf-8?B?MkRIdjlIbTh2QmJLYjNkS2h4NDlUMlFGZWJzSTFVNFBPWHFiYlp3b25LNHJr?=
 =?utf-8?B?dTlOMTJ3NWJZWjNwbVpFOGNOU1JNWmg1OC95OTBzb1g3MllxZjI1cjU2RE5s?=
 =?utf-8?B?VlNxQkNQK0h6eEVMOFMvSDdpVkZoUE9ScTZNQjFpVW00TXdVQ3JDUlh4a2F5?=
 =?utf-8?B?eDdCUkM2Nm1VRFVleS9hWW91MjF1eElZa1lxNVloQzQ0eXN5ak5WdHFKcFQw?=
 =?utf-8?B?OWxwYWV0aGs2VStveHh5M0ZlaHdHOWlLb3MySzhwdFlxbjh4OWtNTmt4dUwx?=
 =?utf-8?B?U3ZIeVpYNG9yUHJTRW9mNVZseXgvNzE1Qkl4TjhlVklEYzk2dXNGT1I2dEcy?=
 =?utf-8?B?ODZYVVRTNDN5dWxXeVZYTm5JVExhZDFVUHFKZC9lVWk5OVVsRDBSYndQU1BV?=
 =?utf-8?B?SnF1ZHZidjNiVzkwd1hNK1FPTUpkODNaNTZNR3htTmFoV1RadXJ1S2JUV082?=
 =?utf-8?B?MTRDZE13NjNHSG0rZVZkUmxrdjRrMG9ySFJRZlJPWnJjYzJaTkZmR1FSMUFq?=
 =?utf-8?B?cC9qcEh2Zzk3bzRyRm5LNktOdVAyV3pjeklIQ3o2bVBpVzk1ckVOanpreFBM?=
 =?utf-8?B?RGY3dFQycWlrZ3ZHN3NjS29xa3BObllKMmxjSXFCUFFFcXpzazN2MmQwZkRT?=
 =?utf-8?B?LzJVeXpBZUwvRGpqWG1uODYybWZHWlVwU3QxUk44RkE0NE12TnM2ZDV3cXVP?=
 =?utf-8?B?b1dQazBPZDV6NXo5akxOVVFEOXlJdWphRitVbUxBUDJNVjY5bUdpNFMwZ1Rk?=
 =?utf-8?B?RkFHY0dBT2wydzU1L3JRcFBTc28zK0t2OWR5aTE2d2JjMnZZTGJkTHUwc0U5?=
 =?utf-8?B?WG85UFZCT1daYUFUNW1oSXdGM2E4dnRrWWZRRkN1UlJ5Rk9wR3FuMERiUHhs?=
 =?utf-8?B?MGVEaUU2bjlPelE0N05JMVdSMGc0b2pkbllZVmZwQjE0NnE5ZERaRFdEVURx?=
 =?utf-8?B?c01vZDB1Y2g3cm5Vdkh1SncvSFdKRE5mUnZhYUJqSlJJZlRLZ1FOUGJWcnd0?=
 =?utf-8?B?c08ydEJMWFJWUDkrb0RIWnhOckxaUnJwaDVTQlZPWXZHTzYzbW9UQ3JLMHk4?=
 =?utf-8?B?Ykp4dXhPZytuaFpQTUpGU0lsV0NqUTljTGt1UUpZMGl0bVJLUTkxOUIxTkU1?=
 =?utf-8?B?d3F2T0ZmcGdFYlpXaEpuRUIrWHcxUEtWV2pBQU1halJrc1hHOEJyaDN3Z2pk?=
 =?utf-8?B?aXFtTzladTNIQVRFbTF2NWxCdmtCUDNuVFYrTjlHbEcyVXNaY0EzZkgxdjFi?=
 =?utf-8?B?aHR3RkhlcXpiS280dU5ONTZhWmZXb2ZqUXpNbFFIc216WE5kU0lVbE5JTWlP?=
 =?utf-8?B?cXo3MUFwemx5aFN0OEZYK3Y4WXAxaE5sVXNFYVY2YVhxcHZPbTQ2WGFacHIx?=
 =?utf-8?B?a0tHOFpmWDEyWC9tb3dMbjFUc1p0aDA0Qk9vRGQrMWgyNmJVWjhCVG1zaC9a?=
 =?utf-8?Q?ujGD42?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?S0t0eXlaYnhHU3hIS3k0Z1ZPK2dVZXVOM20wM0ppWG1KZ0Y3Qm51RlhsVVBZ?=
 =?utf-8?B?c2x4b2ExV1NCbmRlZGgvdXBiRTRMVmJhVVY5c2hzMzJTbTVDWjExMElDcDlq?=
 =?utf-8?B?NEMzWmd5TElydUtBRnRsOHhQUW5YekFrSmRzYU1uL0RUUzVYMXdDQ2MxcXFB?=
 =?utf-8?B?WS9Ua1JoZGtQdTRzUnZ5L0VYblFNS0tjVUxQSWdzYllnN3kzL2l3SGRwMUs0?=
 =?utf-8?B?VWxQWm0za1hKVUc0dDNzc0I1RTkzMUhCb1Y2U2ZaWHdWeVBHdlRTa3AyVGtL?=
 =?utf-8?B?dEpRdU1FWjRjeEh6S1NKNGVJeXo0b0lUbnhtV0RyQzZoYmF3TXpsYXllR204?=
 =?utf-8?B?Mjc1UDVDMUJia3lrMTNuZ3NWbG9oSHlEWlJhdzNWOU5FdWs2ZHVyQTJKTHc2?=
 =?utf-8?B?UFpUSVFSZ3NveldwNUVHcXBKU0JONWNVU2IyQzduRmdta2RkR0cxWTIrUzh6?=
 =?utf-8?B?bVFoTUJ5RVdRUXpRVEsyU1RpM2ZpMkpqNnh6cmdaRlFUR3dKSklqcll2YklY?=
 =?utf-8?B?djBreHNmc0xvdGtwd1RNcnFWVDkzb3AyNWFCSVo2Y0NXalQ5d0t6cmZUM250?=
 =?utf-8?B?NmhhVmRmckNpaVNGTFNMUFBuOUVuNEtoUnlBMmF3Q1ZYQ0ptQjdNSU91bTY2?=
 =?utf-8?B?eHlrYVRBVmJEYjd0ZzVXNis5ek9NK3ByT3MxRmtkb2NYeGNJV3JpZlpQOEd5?=
 =?utf-8?B?aHl5L1JQVys5ZTB2OXlIMTdQaGg3OG42NlQ1WTU1TU5BVDlSMmt6UDBud2I3?=
 =?utf-8?B?YTR0Y0R6aHNnWWluTTBUazNTTlQ3cW9TVUVIdmxHMDZNTHRreW5RMjlqUWxy?=
 =?utf-8?B?NUVUY2ROdktLc0ZBeUZWU01MYThnY0Q1SkZEMGNKZUZ1dmhYTElBYVhubW5w?=
 =?utf-8?B?QnZtL01GUlZLNFlsQzVtN2JNeDZLVTNZUGNFVW9qMU1mVFhFanIvVnozRDZF?=
 =?utf-8?B?NmVvb1BEQXlwSG93cWRlTnQxNUhjQ1N1VDdmWk5XU3d0anhTSUtBQXpBS0FK?=
 =?utf-8?B?OEdnOFhhdENlcFEzdFBESk54RzRwaHg5MUVXV2MwaHM5MDllZ01KVlZjcGxh?=
 =?utf-8?B?UjV5WVhiZ1hybHVISGQ2S3c5UGswVmpTeU4ycXZYN0Y0R3U2M2JTdGJRSEcx?=
 =?utf-8?B?czhIVGc2ak1KY1lwN25KckZhVC81STNyeHgzcmZHSXh3RzlUUzJhK1A4M1hG?=
 =?utf-8?B?WERwVzFMSFFkSjNMMTNCdEl6Zkx6MmFhVGQ0aVpaMGlyUXRIaEZMLzlPbDBq?=
 =?utf-8?B?UU5wbGhOa3g5R0pRTXk5SkVXQVJnVzh3WU9iRXpyVWZkVFFpd2FNZWxmN2s2?=
 =?utf-8?B?Q244RXpIK2hMWnlja3l3dkcxV1RCc1Nha2d1a3NKNWdsdmFyYllDb3d0d0Zl?=
 =?utf-8?B?NXNSNGlpdHlUN2lhM05qQ0RET2lUejdyakd5YzQ4ZjVIVWk0RGZEbk5nUnh3?=
 =?utf-8?B?VDFVUFpGVXFaY3ZCODFtV2FCRTlpWm4xc3VGUlo5OThHNGVJR3lQTGFYeGcy?=
 =?utf-8?B?bVp3ZzBrZFFXTitZSGk1MjMxQVJaWTRta3orLzZsK0NBOWVsUEhRb2VmdGdz?=
 =?utf-8?B?Y05FdFlNTkZ0blRiRnRrR3gzWHNBajcyQWExSU5MZVc1YzE5cFhMTzVucVZQ?=
 =?utf-8?B?WHpXTFJWWjJhb0hlWE1IWjBDaDYzZ1VSbWJYZ2tkL01jTFUxdzVXRnZEUWt2?=
 =?utf-8?B?VHViTUlyUWlpU3RLdXBlaHJEczRqRkl1cnZaRUdlakEvdm8zUjJFYThVL2Ir?=
 =?utf-8?B?blpkVVhhWGRLREtEdWdMZDUvbm9nMVV4NmlVOE1IY2Z0VzF5VCt6b25pN0xo?=
 =?utf-8?B?enU2cEZ3QWZnWEFBaUFNTDNieHJFVm1kcEROMmZWSVE4Vko4MDFQUnhZaDVi?=
 =?utf-8?B?RTV4MWNsdE55K0pwaU51K2haek9jbVNyYUpsUlNLWHJaSlBtNEROTXExNHFl?=
 =?utf-8?B?UnEvSHV2QWxWRGpDTlJVUjlyYURZK3BMeFJTQ0pLdlRpWE5ld0I5TVRnbXpV?=
 =?utf-8?B?YjBNVmJmclUycVRTTjJvckU0Z0pYVU53elZ3dHFMQ2JMMEV0M0huNUovemhH?=
 =?utf-8?B?TmdqcFZibXlyR0NibWVkQmZtNjEvWkRxM0huQlNtODM2c3RqOUg5NWhlZjRY?=
 =?utf-8?B?YThWTmRObE0vSXUrUFcwRU0xbzRZUE5kbThVZWc1aFFha05wYnZiTTVvSTc0?=
 =?utf-8?Q?pvGc+eYpaFKLDTZzwkiX0+g=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BA50D08CC1568040AFB40A4AA2CDF167@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a84f37fe-6149-4b19-07b5-08de399231e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 15:21:59.8181 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6/U3Ud5kB2+RXIRi319t03E6w/3RwB7AVI3gMErxJ9/sDb9TWtx098s1ZuXgxr7tJbg9k56IsI8X5+demD9asyttG1M6WcvFSfZMnl7vZqk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7304
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IElm
IGRzY19jb21wdXRlX2NvbXByZXNzZWRfYnBwKCkgZmFpbGVkIHdpdGggYSBmb3JjZWQgcGlwZSBC
UFAgdmFsdWUNCj4gKHdoZXJlIHRoZSBmb3JjZWQgcGlwZSBCUFAgdmFsdWUgaXRzZWxmIGlzIHZh
bGlkIHdpdGhpbiB0aGUgbWluL21heA0KPiBwaXBlDQo+IEJQUCBsaW1pdHMpLCB0aGUgZnVuY3Rp
b24gd2lsbCBhbHNvIGZhaWwgd2hlbiBjYWxsZWQgd2l0aCB0aGUgbWF4aW11bQ0KPiBwaXBlIEJQ
UCB2YWx1ZTogZHNjX2NvbXB1dGVfY29tcHJlc3NlZF9icHAoKSB3aWxsIHRyeSBhbGwgY29tcHJl
c3NlZA0KPiBCUFBzIGJlbG93IHRoZSBwYXNzZWQgaW4gcGlwZSBCUFAgdmFsdWUgYW5kIGlmIHRo
ZSBmdW5jdGlvbiBmYWlsZWQNCj4gd2l0aA0KPiBhIGdpdmVuIChsb3cpIGNvbXByZXNzZWQgQlBQ
IHZhbHVlIGl0IHdpbGwgYWxzbyBmYWlsIHdpdGggYQ0KPiBjb21wcmVzc2VkDQo+IEJQUCB2YWx1
ZSBoaWdoZXIgdGhhbiB0aGUgb25lIHdoaWNoIGZhaWxlZCBhbHJlYWR5Lg0KPiANCj4gQmFzZWQg
b24gdGhlIGFib3ZlIHJlbW92ZSB0aGUgbG9naWMgdG8gcmV0cnkgY29tcHV0aW5nIGEgY29tcHJl
c3NlZA0KPiBCUFANCj4gdmFsdWUgd2l0aCB0aGUgbWF4aW11bSBwaXBlIEJQUCB2YWx1ZSBpZiBj
b21wdXRpbmcgdGhlIGNvbXByZXNzZWQgQlBQDQo+IGZhaWxlZCBhbHJlYWR5IHdpdGggdGhlIChs
b3dlcikgZm9yY2VkIHBpcGUgQlBQIHZhbHVlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNCArKysrLS0tLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFu
Z2VkLCA0IGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6
IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggOTAyZjNh
MDU0YTk3MS4uYTkyMTA5MmU3NjBiNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYw0KPiBAQCAtMjI5OCwxNyArMjI5OCwxMSBAQCBzdGF0aWMgaW50DQo+IGlu
dGVsX2RwX2RzY19jb21wdXRlX3BpcGVfYnBwKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+
IMKgCWludCByZXQ7DQo+IMKgDQo+IMKgCWZvcmNlZF9icHAgPSBpbnRlbF9kcF9mb3JjZV9kc2Nf
cGlwZV9icHAoaW50ZWxfZHAsIGxpbWl0cyk7DQo+ICsJaWYgKGZvcmNlZF9icHApDQo+ICsJCXBp
cGVfYnBwID0gZm9yY2VkX2JwcDsNCj4gKwllbHNlDQo+ICsJCXBpcGVfYnBwID0gbGltaXRzLT5w
aXBlLm1heF9icHA7DQo+IMKgDQo+IC0JaWYgKGZvcmNlZF9icHApIHsNCj4gLQkJcmV0ID0gZHNj
X2NvbXB1dGVfY29tcHJlc3NlZF9icHAoaW50ZWxfZHAsDQo+IHBpcGVfY29uZmlnLCBjb25uX3N0
YXRlLA0KPiAtCQkJCQkJIGxpbWl0cywNCj4gZm9yY2VkX2JwcCk7DQo+IC0JCWlmIChyZXQgPT0g
MCkgew0KPiAtCQkJcGlwZV9jb25maWctPnBpcGVfYnBwID0gZm9yY2VkX2JwcDsNCj4gLQkJCXJl
dHVybiAwOw0KPiAtCQl9DQo+IC0JfQ0KPiAtDQo+IC0JcGlwZV9icHAgPSBsaW1pdHMtPnBpcGUu
bWF4X2JwcDsNCj4gwqAJcmV0ID0gZHNjX2NvbXB1dGVfY29tcHJlc3NlZF9icHAoaW50ZWxfZHAs
IHBpcGVfY29uZmlnLA0KPiBjb25uX3N0YXRlLA0KPiDCoAkJCQkJIGxpbWl0cywgcGlwZV9icHAp
Ow0KPiDCoAlpZiAocmV0KQ0KDQo=
