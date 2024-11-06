Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A05F09BE463
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2024 11:38:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5426A10E199;
	Wed,  6 Nov 2024 10:38:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FO9sIXiU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E6E10E199;
 Wed,  6 Nov 2024 10:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730889487; x=1762425487;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=mgiuGlc8OBA0X4NIMTUh4/4I9tDjm0MW1kUW6l8HZF8=;
 b=FO9sIXiUHxNhmswcQgByWiGdVs/sKr+YaJagSJ2ecYOvVTPIvOzzmOlP
 MVtSwDV4x3OWis/7CiRIsc8YBNbPlomcpC/8gbN8Qu+hV+l3AdIfWqUDY
 lcVWGgef8O0hZBREo70gOcWWGvKVBFb4FPRC8zd4p0aH4kjjMUIw4N/UR
 NWSQqsbjAwg/0VS7yu0/IxH4nt1YYJrMdLUjaHS06Rs5IqZV82L23uByb
 8HLO8E+5NX0mqPR7+c/ucyS/cjSVzqLVR2plnOnvHoL2rjDbHJgSCrr9N
 68e0f549N+2I4E5woJWM1KmJNwieCJeTDpyY+IGOosCsh5Ta46nXta2C8 Q==;
X-CSE-ConnectionGUID: jCUpXVbbRuKDmF5qWP3Ukw==
X-CSE-MsgGUID: 0H+g4X/8SPS+07yrlAlYSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11247"; a="33524690"
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="33524690"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2024 02:38:07 -0800
X-CSE-ConnectionGUID: pPii0nXhTmy/rJII1Vyrhw==
X-CSE-MsgGUID: a8A0agM/Qxmn0j5ReMs1dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,262,1725346800"; d="scan'208";a="89041682"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Nov 2024 02:38:07 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 6 Nov 2024 02:38:06 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 6 Nov 2024 02:38:06 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 6 Nov 2024 02:38:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tD019qbuMnwP3ghzjcRyPEsjDpjOLe4KcK77oppBbnxfNv4OQr39Pjcpx2ql5Uu7gwNEcvQd1L4khMOIkT9v+hfLko7LKEDCOW5PtEiLc24jvwmBsmZ3kQm9WmU6hXHRWPL6rKfP42NxXy6amEGa20LVbno2BeDkNuHNv7zqDMx9IU3EwKU0YOeyvOjmi74Toc9iPXtuHbvvmPVjSe5KTIGvmDWhGSrlQXVQqNpsxGNOLKyYBjguuxMaHn8hJvaNQEsoe8i94zx1/J1GFwbabYohAbWtKPEbY5wSkqbyKF11wsHlK9xXyFijOtanZQBh1eoqhptHR+4FEa5BWlVw3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mgiuGlc8OBA0X4NIMTUh4/4I9tDjm0MW1kUW6l8HZF8=;
 b=g1DRDGnznayveXSD+CHcLU6SUMwd/kehdQuY/W7fVlZCSUPF9QulfpkBr31FRSUMENxMpmCD1R5vNAxAygnYy14Yj1mY2/6QsbyXcEs2hFqzxHKl5hNxgeW76TLrhhrBBQVkWHRpdCzGceUI357Ddinsa/8x8MlbE6mim3mKgVv5CtY8V26LaFYZ173Pv5iGSyKVuQdeuxTpPBjiFeiYbRza8wiIgzejQfMoxO02tmmJ7j7IdwXSewV3CKrQR4RKz80yRLRUNRWKPPinq1vzPHYbBAymy42T+UF3dyILMhKl9zKLJvwpB3jKej6ngodv5ubpq127ZBqPWaSExDauGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by DS7PR11MB8808.namprd11.prod.outlook.com (2603:10b6:8:257::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8137.19; Wed, 6 Nov
 2024 10:38:03 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8137.018; Wed, 6 Nov 2024
 10:38:03 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 09/15] drm/i915/display: convert HAS_SAGV() to struct
 intel_display
Thread-Topic: [PATCH 09/15] drm/i915/display: convert HAS_SAGV() to struct
 intel_display
Thread-Index: AQHbLt3cZwWcoy3Vp0mvIedloLS9KrKqEi0A
Date: Wed, 6 Nov 2024 10:38:03 +0000
Message-ID: <a7af1a373b1bafd4a374bb1c435446bdf20f9edc.camel@intel.com>
References: <cover.1730740629.git.jani.nikula@intel.com>
 <2341a40233a1e14a445f6cacd318521d6308cd12.1730740629.git.jani.nikula@intel.com>
In-Reply-To: <2341a40233a1e14a445f6cacd318521d6308cd12.1730740629.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|DS7PR11MB8808:EE_
x-ms-office365-filtering-correlation-id: 77f6056e-fa03-4ec5-ee27-08dcfe4f17de
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QjBSR0RkZG8vTHlCVE9zUzQ0UGFtK0ZHSkhCbEhQYmFveFRCTThaN0pOVGxJ?=
 =?utf-8?B?YnpxanRGU1lNZUErdklGZW8vUkhUQW02VFZPaFI3RG1rNWpDUm5KRndlM2pP?=
 =?utf-8?B?RmRQelZZVjFZM0VrcGlobVN3Ni9ZRzJDaDlzN1QwZ1UxOWlsazNmb2RkYmg3?=
 =?utf-8?B?UzlCblZObmxTTmxwWUR5UE5YNzFFQUh3ekVtVmQ5TVlMZXpMa01VR3dqMWlq?=
 =?utf-8?B?YUpNTlVMR0NmbnhESFpFOElNdi9LMEdVbGs2SkxuMWJoc1BIY1VzMjAwajk1?=
 =?utf-8?B?ZmlmWnhnZlhjUHNjUUl2cDNMR0dKNTNIQzQ2cFJRcXlNR0M5VmNjWFBaWStD?=
 =?utf-8?B?aElrUGUzUS81cU5aZENsbW9oSm1KcDU0bU5FY1hYaWVKaEpTcHl3dTIzUmFS?=
 =?utf-8?B?QVo3UWpvajVLQWFRaWp2dkE1SkVwbmF4a29rU2JnV0JxUnhOQysxejFIMW5t?=
 =?utf-8?B?N0tveXcxdHN5cUdocnQ2cXdNKzdyNFh3UnFzV0NuSFFXeVUzWEYrRmpmakRj?=
 =?utf-8?B?aks4cUxXTmt0a0RDL1I0empidGY2TmZzZG5LdUtGQ3RHSHBoVDJmcHRpQnhm?=
 =?utf-8?B?RkNTUmVGeUdXYnV1WVJWWVRtSEJUL1hFOUQ1Mko5V3haV0pEaXRnbHBsZkpz?=
 =?utf-8?B?SmdINm9jUm5ER3hYcEdvTlhWakEydEU4YllTekVKc1FCdDYzSmRZb2pxcGIz?=
 =?utf-8?B?dUxwTW5DalZya2x0NFpjejZsUzY1THlXT3J2VTRweHpSWDRqZTRwNHBGR2dE?=
 =?utf-8?B?K3ZJZHZWaXF6ckJwZG1KMXRCbWp1cUxJT0lIYjFTTVNIWHZTZXRZTnNONTdw?=
 =?utf-8?B?clV5Q3VXalFIcEhlRE15WTZjRnJZUE4yYjcrcFJpdGF0dnNtQnkvdHhRTVF3?=
 =?utf-8?B?MW9TSDlFODR2SUhYazV5amgxc2l2Y1B6UUFIZ1dZWjdKdmVCVTFYQjdFSnc3?=
 =?utf-8?B?cHAreHNnWGQ4V296ZFBqS20yV0VSQU82WHVhQTdvRW1TTXdwUExjd29QRjRE?=
 =?utf-8?B?bk9VR2toaUhNUXVFL0RXZkFXQWFTaHZzczJlMFlZZlpIcDdVT3JiVnNzMkx0?=
 =?utf-8?B?Qkx0TnppRW5OaXhsd2g1UWhwVVJhZTJBUzYyei9WWUlMU2E4SmNWREFoMVFp?=
 =?utf-8?B?d2xySGtnbXJ2OW5TQk9naGJLbjk0S3BpZXllR2RJbzBsUEs1VERGMmszZ21m?=
 =?utf-8?B?Sk40UE1mUWt4NlpWelNrWGIxbXcxWFU5T05IbU9RRDVCbkVjMGx1TWk4aHh0?=
 =?utf-8?B?ZzFibjl1Tjl0Mk5WQnV0RmtrWFV2USszRFVxazNiUmFIQktNeUhXL3dTcTBM?=
 =?utf-8?B?OWEwNGN2YXBUR05iWFliSUJLOVBSWnJpZ21qTjdEaTB0Z1lheHQ3VnN0SWxB?=
 =?utf-8?B?alM2dGFGeDZ6ekRhZHZNRysyYUswN1lYQTFDQ01VaSt4TFAxL3FqTFBZb2xT?=
 =?utf-8?B?cGpZUDBPOGdzbjJKMU81N09JRUkrNUJSWDhrK25lNDVuZkp1a2xmRGw1VUZC?=
 =?utf-8?B?UXVSUTF1ejlaUngxQ05yUUhFbWlKbHUveFNiRnQ5ME5jMjR5dDFHdUVQL21a?=
 =?utf-8?B?RVFKZytPckMyS3BnMUJqUWFIU0JLL1pwUXJPRnVJeWVVTGJIekF1WlVUcW92?=
 =?utf-8?B?ejFlSzR3WVhhYWtqS2g2ZktRSUtRMlViM0Y0MGcrMTkwWGFSMTdpZTZHUEo1?=
 =?utf-8?B?VHhDSnBPK0Zxb0VjMlJrQXMzWUxwZG5BQ3l5U0FXVWd0TkFRbncvajVjTEFP?=
 =?utf-8?B?RXliRkRsZHVZQUlGekg0UUdVcUEwNFhLUi9QcWRIQ1ZJRWJZUzV1d09YSmV0?=
 =?utf-8?Q?rktjqBsa87qSwFBxJl3zm/421AYJgLrwC2giA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3JybmErd0hZblhVSnVNVTRsR1VQb2xKL1J3bTF4SDdvRGhOQ3pRZXdyRE5U?=
 =?utf-8?B?UVhNTGNJaVZkYkNIalN2azMrcER2UEdrSjBQRnZ0aDdtTkdybmdCZTN5Q0dE?=
 =?utf-8?B?QklPOGZobHRRd3Y2QVV6R0ZjdHd6ZjJoQ1M5WWZ2YnV1S2wwRFNBYzh5NHVZ?=
 =?utf-8?B?dTVtZnhvTUhGdTdaV25odVFUVUxoRTNVVGduMjc5NlFNWTlQUTcveGZlRSt0?=
 =?utf-8?B?REd6eGRVdGpTYmdVQTF5VWcyaEV2eEtIWlFDVEwvRitGQWpqTmdJR25oQ3Nr?=
 =?utf-8?B?cEF3aURGeU8rYXB2dzloVTZUenR0Q0F1VkFaNzUrSFRUWDNIdi9VYmRVRng5?=
 =?utf-8?B?N1ZDRnkvQmcyS3dtUDRqUkJhTDhjQXNINytvNEJPc2N3VmQ0WkpUZ2hQTDFP?=
 =?utf-8?B?UU5zSk0yN3ArR01LVGFjRWU1TDJjZUpDK1pCQjUyRnBxTkVPTDdRbnJvd21C?=
 =?utf-8?B?dWpSTEpnZk5GMW1KL3BaL1M1L1FXbHlvaVV3NFptcFBQd0tHaFhQUnBNekI2?=
 =?utf-8?B?ZWdvc2IzenhXQmR0amZhK3lKdWxYdTJJZHBDdlJvZ1FIQy9SRElyeUM3ekoy?=
 =?utf-8?B?Rk9waDllaGUveG9ReGtXa0ppT2Z2TmJueXdiUHNXcHROUVJUdmx3Z3k0YVdO?=
 =?utf-8?B?RnVCTjAyK2MwQzB2R1JxbEJhRVJYQkRxaUhjL21JNnVEajNYbklTZUNrVytF?=
 =?utf-8?B?b2F0UXYxclN3dS95TlIxRHI0cTNiWXJxS2FWaVowa3ExeENJbUxoT3BiU054?=
 =?utf-8?B?dGlGbWNreHlWZE5NcnVHOVZaNWJQVXhUZmJITER5dHhQOTVidlMxOGlkR1Fn?=
 =?utf-8?B?QStFRm9vdWlsV1Rwc2k2UU5IVTVaUUpyYVJGdE1ubkxLcW1xNlQzUTBVSzBY?=
 =?utf-8?B?RGFKM1lYbS9pYkU5ZGl4M0pWUjJFSzE5d2RuSVZOVHN4cGVSc0tsaUxaS0tD?=
 =?utf-8?B?cktmMkJRdXhqbVVHNDFuL2lGSTVKbzJJbENoMHFxc3oyaE14ZE9SbHFwNzc4?=
 =?utf-8?B?VmNnN2JtTjd0VUw3ZzIvczkxS2VmTFVXMDIrbmlNeWJUTWtSWnVFZDBINEQ2?=
 =?utf-8?B?d2doNmk0aGI1ckh5L2k3YWRhT0thTHhrcHltQkcwWmJMTSttT2k4T0k0TmVy?=
 =?utf-8?B?OFdGK1JjV1Q0WUU3QXdEclp0bTN6RVFib1lITk5YWGhiSWhuRE93cEhQdXVv?=
 =?utf-8?B?d1BabU1QdCtZUXZrMHpPTUlCdUZlWk9pNTJFNGx6Q1Q1N0lSTngxWDVzYWJ2?=
 =?utf-8?B?SGFqSDdkc3NWYUxIb1BJMENQaWN2VzZTclZNY2ZHUkwrMUZQTkh6ZHc5Tjl3?=
 =?utf-8?B?TlpBcEVieHlYNDRmd2g3dkJmbTJiSEdOZytzSDkxL0UySnA2OFRFcXpnTk1y?=
 =?utf-8?B?Y2xmUEtTWFlxRklibytDTnFFOWZLRG1BRE1Nc3dHakRoVTJ6eXFrUzA2SVEv?=
 =?utf-8?B?TE9uNmpiYWNZVXA3S2UybDJFbzBGeXhtSHoxUHNCVU9IVC81aFNXYldwakF5?=
 =?utf-8?B?Z3FZaTFWM3FDNFhhWFJRT1dtckxoZXYwcnRQMjVOeXZrTmxPRC9zalNETEo4?=
 =?utf-8?B?L0VvSS9XSkdEc0ZSdHhSOHRPeVJSS0FUODJBc2oyWlllSzZCc2xqK2Z5MGxj?=
 =?utf-8?B?SFZEbXlXQ3BtNmtYb2xaS1BWR2RvVXgyd1FLYUNJS2ZGUUUxNEZlRWlOSzA1?=
 =?utf-8?B?NXRscHlPNE9LaTRFdW54c1pQWVFBZXdZelNEdnpwZ3BvZnMzQjhueEI4eVNR?=
 =?utf-8?B?N0dibFdaZ1lGTnZpMHdUTWsyU09jc0NoeGw4RVJsdHdHWFV3a0tZMmRSWjJJ?=
 =?utf-8?B?QWtqSjlwb29ZQyswbHVTN3lCUWoxZVZucTFYeFhJbnZYWWordXBPLyswdjdn?=
 =?utf-8?B?bEhweXhmVHZWSjJJalE1U1ErdmNld25iYUdkYWx5WnlaVHhDcFlLT05QRmwr?=
 =?utf-8?B?V3F6Wk5LN1BrWlZmbCs5TEVzNkZ1dmdwQ05pTW9Ld2d3ekFVb2xoWnJvYXdO?=
 =?utf-8?B?TkRFd1NuU0ZzYXBKbTUwZ3pFa2cyaFZ1b3FDbzJSSVhpRnQvVEJpakxoREJH?=
 =?utf-8?B?V2VmbFpEeDNZbG9OL3M1dXhOeEQvRjBHUUlLWGtYNnF5M25YTkl2UG1nVlYy?=
 =?utf-8?B?V2ErOG9ZSTRXSUZITUlRWFQxTTFzVHdCNEZOWEthU3AxZmxsMXpvQ2N5RHZ5?=
 =?utf-8?Q?zNY8v41m0kQ2JfHN/H2PYpY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B36AAD68214AFF4F918ECFDE9DF65657@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 77f6056e-fa03-4ec5-ee27-08dcfe4f17de
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Nov 2024 10:38:03.5850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 35mHKhnoTt6AlaDmIBi1jnyO2xqHCuqS1tP0Q0oq5b0RHpZxwuQBPghSw7JWenK4XR2/l2fPr+6OfxMm0tQXWQYaByd+9/Ocq69Fzk490Zo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB8808
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

T24gTW9uLCAyMDI0LTExLTA0IGF0IDE5OjE5ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBD
b252ZXJ0IEhBU19TQUdWKCkgdG8gc3RydWN0IGludGVsX2Rpc3BsYXkuIERvIG1pbmltYWwgZHJp
dmUtYnkKPiBjb252ZXJzaW9ucyB0byBzdHJ1Y3QgaW50ZWxfZGlzcGxheSBpbiB0aGUgY2FsbGVy
cyB3aGlsZSBhdCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPgo+IC0tLQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZXZpY2UuaMKgwqAgfMKgIDMgKy0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3dhdGVybWFyay5jwqAgfCA1MCArKysrKysrKysrKy0tLS0tLS0tCj4gwqAyIGZpbGVzIGNo
YW5nZWQsIDMwIGluc2VydGlvbnMoKyksIDIzIGRlbGV0aW9ucygtKQo+IApSZXZpZXdlZC1ieTog
Vmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2
aWNlLmgKPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZp
Y2UuaAo+IGluZGV4IGEwZmVkNDBiNzc3OS4uYzIzODIzNzY5OTExIDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaAo+IEBA
IC0xNzMsNyArMTczLDggQEAgc3RydWN0IGludGVsX2Rpc3BsYXlfcGxhdGZvcm1zIHsKPiDCoCNk
ZWZpbmUgSEFTX1BTUihpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChE
SVNQTEFZX0lORk8oaTkxNSktPmhhc19wc3IpCj4gwqAjZGVmaW5lIEhBU19QU1JfSFdfVFJBQ0tJ
TkcoaTkxNSnCoMKgwqDCoMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLT5oYXNfcHNyX2h3X3RyYWNr
aW5nKQo+IMKgI2RlZmluZSBIQVNfUFNSMl9TRUxfRkVUQ0goaTkxNSnCoMKgwqDCoMKgwqDCoChE
SVNQTEFZX1ZFUihpOTE1KSA+PSAxMikKPiAtI2RlZmluZSBIQVNfU0FHVihpOTE1KcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoaTkxNSkgPj0gOSAmJiAhSVNf
QlJPWFRPTihpOTE1KSAmJgo+ICFJU19HRU1JTklMQUtFKGk5MTUpKQo+ICsjZGVmaW5lIEhBU19T
QUdWKF9fZGlzcGxheSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElTUExBWV9WRVIoX19kaXNw
bGF5KSA+PSA5ICYmIFwKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICEoX19kaXNwbGF5KS0+cGxh
dGZvcm0uYnJveHRvbiAmJiAhKF9fZGlzcGxheSktCj4gPnBsYXRmb3JtLmdlbWluaWxha2UpCj4g
wqAjZGVmaW5lIEhBU19UUkFOU0NPREVSKGk5MTUsIHRyYW5zKcKgwqDCoMKgKChESVNQTEFZX1JV
TlRJTUVfSU5GTyhpOTE1KS0+Y3B1X3RyYW5zY29kZXJfbWFzayAmIFwKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIEJJVCh0cmFucykpICE9IDApCj4gwqAjZGVmaW5lIEhBU19VTkNPTVBSRVNT
RURfSk9JTkVSKGk5MTUpwqDCoChESVNQTEFZX1ZFUihpOTE1KSA+PSAxMykKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jCj4gaW5kZXggODNlMmNiYmZj
YWYwLi4wOWFmNjkzZGE1ODYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfd2F0ZXJtYXJrLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L3NrbF93YXRlcm1hcmsuYwo+IEBAIC03NywyMCArNzcsMjMgQEAgc3RhdGljIGJvb2wgc2tsX25l
ZWRzX21lbW9yeV9id193YShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiDCoGJvb2wK
PiDCoGludGVsX2hhc19zYWd2KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+IMKgewo+
IC3CoMKgwqDCoMKgwqDCoHJldHVybiBIQVNfU0FHVihpOTE1KSAmJgo+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBpOTE1LT5kaXNwbGF5LnNhZ3Yuc3RhdHVzICE9IEk5MTVfU0FHVl9O
T1RfQ09OVFJPTExFRDsKPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlz
cGxheSA9ICZpOTE1LT5kaXNwbGF5Owo+ICsKPiArwqDCoMKgwqDCoMKgwqByZXR1cm4gSEFTX1NB
R1YoZGlzcGxheSkgJiYgZGlzcGxheS0+c2Fndi5zdGF0dXMgIT0gSTkxNV9TQUdWX05PVF9DT05U
Uk9MTEVEOwo+IMKgfQo+IMKgCj4gwqBzdGF0aWMgdTMyCj4gwqBpbnRlbF9zYWd2X2Jsb2NrX3Rp
bWUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gwqB7Cj4gLcKgwqDCoMKgwqDCoMKg
aWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0KSB7Cj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGlu
dGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSAmaTkxNS0+ZGlzcGxheTsKPiArCj4gK8KgwqDCoMKgwqDC
oMKgaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB1MzIgdmFsOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHZhbCA9IGludGVsX2RlX3JlYWQoaTkxNSwgTVRMX0xBVEVOQ1lfU0FHVik7Cj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCA9IGludGVsX2RlX3JlYWQoZGlzcGxheSwgTVRM
X0xBVEVOQ1lfU0FHVik7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJl
dHVybiBSRUdfRklFTERfR0VUKE1UTF9MQVRFTkNZX1FDTEtfU0FHViwgdmFsKTsKPiAtwqDCoMKg
wqDCoMKgwqB9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKSB7Cj4gK8KgwqDCoMKg
wqDCoMKgfSBlbHNlIGlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAxMikgewo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTMyIHZhbCA9IDA7Cj4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpbnQgcmV0Owo+IMKgCj4gQEAgLTk4LDE0ICsxMDEsMTQgQEAgaW50ZWxf
c2Fndl9ibG9ja190aW1lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBHRU4xMl9QQ09ERV9SRUFEX1NBR1ZfQkxPQ0tfVElNRV9VUywKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgJnZhbCwgTlVMTCk7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAo
cmV0KSB7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBk
cm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiQ291bGRuJ3QgcmVhZCBTQUdWIGJsb2NrIHRpbWUhXG4i
KTsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9k
Ymdfa21zKGRpc3BsYXktPmRybSwgIkNvdWxkbid0IHJlYWQgU0FHViBibG9jayB0aW1lIVxuIik7
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IDA7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gwqAKPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiB2YWw7Cj4gLcKgwqDCoMKgwqDCoMKgfSBlbHNl
IGlmIChESVNQTEFZX1ZFUihpOTE1KSA9PSAxMSkgewo+ICvCoMKgwqDCoMKgwqDCoH0gZWxzZSBp
ZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPT0gMTEpIHsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiAxMDsKPiAtwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKEhBU19TQUdW
KGk5MTUpKSB7Cj4gK8KgwqDCoMKgwqDCoMKgfSBlbHNlIGlmIChIQVNfU0FHVihkaXNwbGF5KSkg
ewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDMwOwo+IMKgwqDCoMKg
wqDCoMKgwqB9IGVsc2Ugewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IDA7Cj4gQEAgLTExNCwzMSArMTE3LDMzIEBAIGludGVsX3NhZ3ZfYmxvY2tfdGltZShzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKPiDCoAo+IMKgc3RhdGljIHZvaWQgaW50ZWxfc2Fndl9p
bml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+IMKgewo+IC3CoMKgwqDCoMKgwqDC
oGlmICghSEFTX1NBR1YoaTkxNSkpCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGk5
MTUtPmRpc3BsYXkuc2Fndi5zdGF0dXMgPSBJOTE1X1NBR1ZfTk9UX0NPTlRST0xMRUQ7Cj4gK8Kg
wqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSAmaTkxNS0+ZGlzcGxh
eTsKPiArCj4gK8KgwqDCoMKgwqDCoMKgaWYgKCFIQVNfU0FHVihkaXNwbGF5KSkKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheS0+c2Fndi5zdGF0dXMgPSBJOTE1X1NBR1Zf
Tk9UX0NPTlRST0xMRUQ7Cj4gwqAKPiDCoMKgwqDCoMKgwqDCoMKgLyoKPiDCoMKgwqDCoMKgwqDC
oMKgICogUHJvYmUgdG8gc2VlIGlmIHdlIGhhdmUgd29ya2luZyBTQUdWIGNvbnRyb2wuCj4gwqDC
oMKgwqDCoMKgwqDCoCAqIEZvciBpY2wrIHRoaXMgd2FzIGFscmVhZHkgZGV0ZXJtaW5lZCBieSBp
bnRlbF9id19pbml0X2h3KCkuCj4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3CoMKgwqDCoMKgwqDC
oGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDExKQo+ICvCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZ
X1ZFUihkaXNwbGF5KSA8IDExKQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc2ts
X3NhZ3ZfZGlzYWJsZShpOTE1KTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGRybV9XQVJOX09OKCZp
OTE1LT5kcm0sIGk5MTUtPmRpc3BsYXkuc2Fndi5zdGF0dXMgPT0gSTkxNV9TQUdWX1VOS05PV04p
Owo+ICvCoMKgwqDCoMKgwqDCoGRybV9XQVJOX09OKGRpc3BsYXktPmRybSwgZGlzcGxheS0+c2Fn
di5zdGF0dXMgPT0gSTkxNV9TQUdWX1VOS05PV04pOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaTkx
NS0+ZGlzcGxheS5zYWd2LmJsb2NrX3RpbWVfdXMgPSBpbnRlbF9zYWd2X2Jsb2NrX3RpbWUoaTkx
NSk7Cj4gK8KgwqDCoMKgwqDCoMKgZGlzcGxheS0+c2Fndi5ibG9ja190aW1lX3VzID0gaW50ZWxf
c2Fndl9ibG9ja190aW1lKGk5MTUpOwo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgIlNBR1Ygc3VwcG9ydGVkOiAlcywgb3JpZ2luYWwgU0FHViBibG9jayB0aW1l
OiAldSB1c1xuIiwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cl95
ZXNfbm8oaW50ZWxfaGFzX3NhZ3YoaTkxNSkpLCBpOTE1LT5kaXNwbGF5LnNhZ3YuYmxvY2tfdGlt
ZV91cyk7Cj4gK8KgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiU0FHViBz
dXBwb3J0ZWQ6ICVzLCBvcmlnaW5hbCBTQUdWIGJsb2NrIHRpbWU6ICV1IHVzXG4iLAo+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RyX3llc19ubyhpbnRlbF9oYXNfc2Fn
dihpOTE1KSksIGRpc3BsYXktPnNhZ3YuYmxvY2tfdGltZV91cyk7Cj4gwqAKPiDCoMKgwqDCoMKg
wqDCoMKgLyogYXZvaWQgb3ZlcmZsb3cgd2hlbiBhZGRpbmcgd2l0aCB3bTAgbGF0ZW5jeS9ldGMu
ICovCj4gLcKgwqDCoMKgwqDCoMKgaWYgKGRybV9XQVJOKCZpOTE1LT5kcm0sIGk5MTUtPmRpc3Bs
YXkuc2Fndi5ibG9ja190aW1lX3VzID4gVTE2X01BWCwKPiArwqDCoMKgwqDCoMKgwqBpZiAoZHJt
X1dBUk4oZGlzcGxheS0+ZHJtLCBkaXNwbGF5LT5zYWd2LmJsb2NrX3RpbWVfdXMgPiBVMTZfTUFY
LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIkV4Y2Vzc2l2ZSBT
QUdWIGJsb2NrIHRpbWUgJXUsIGlnbm9yaW5nXG4iLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCBpOTE1LT5kaXNwbGF5LnNhZ3YuYmxvY2tfdGltZV91cykpCj4gLcKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGk5MTUtPmRpc3BsYXkuc2Fndi5ibG9ja190aW1l
X3VzID0gMDsKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgZGlzcGxh
eS0+c2Fndi5ibG9ja190aW1lX3VzKSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ZGlzcGxheS0+c2Fndi5ibG9ja190aW1lX3VzID0gMDsKPiDCoAo+IMKgwqDCoMKgwqDCoMKgwqBp
ZiAoIWludGVsX2hhc19zYWd2KGk5MTUpKQo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBpOTE1LT5kaXNwbGF5LnNhZ3YuYmxvY2tfdGltZV91cyA9IDA7Cj4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGRpc3BsYXktPnNhZ3YuYmxvY2tfdGltZV91cyA9IDA7Cj4gwqB9Cj4g
wqAKPiDCoC8qCj4gQEAgLTM4MzIsMTMgKzM4MzcsMTQgQEAgREVGSU5FX1NIT1dfQVRUUklCVVRF
KGludGVsX3NhZ3Zfc3RhdHVzKTsKPiDCoAo+IMKgdm9pZCBza2xfd2F0ZXJtYXJrX2RlYnVnZnNf
cmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCj4gwqB7Cj4gLcKgwqDCoMKg
wqDCoMKgc3RydWN0IGRybV9taW5vciAqbWlub3IgPSBpOTE1LT5kcm0ucHJpbWFyeTsKPiArwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSA9ICZpOTE1LT5kaXNwbGF5
Owo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fbWlub3IgKm1pbm9yID0gZGlzcGxheS0+ZHJt
LT5wcmltYXJ5Owo+IMKgCj4gLcKgwqDCoMKgwqDCoMKgaWYgKEhBU19JUEMoaTkxNSkpCj4gK8Kg
wqDCoMKgwqDCoMKgaWYgKEhBU19JUEMoZGlzcGxheSkpCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X2lwY19zdGF0dXMiLCAwNjQ0LCBt
aW5vci0+ZGVidWdmc19yb290LCBpOTE1LAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgJnNrbF93YXRlcm1hcmtf
aXBjX3N0YXR1c19mb3BzKTsKPiDCoAo+IC3CoMKgwqDCoMKgwqDCoGlmIChIQVNfU0FHVihpOTE1
KSkKPiArwqDCoMKgwqDCoMKgwqBpZiAoSEFTX1NBR1YoZGlzcGxheSkpCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1X3NhZ3Zfc3RhdHVz
IiwgMDQ0NCwgbWlub3ItPmRlYnVnZnNfcm9vdCwgaTkxNSwKPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZpbnRl
bF9zYWd2X3N0YXR1c19mb3BzKTsKPiDCoH0KCg==
