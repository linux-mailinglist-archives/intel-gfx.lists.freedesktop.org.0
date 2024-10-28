Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B30AD9B32D2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 15:10:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A2A10E160;
	Mon, 28 Oct 2024 14:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OHAIGN/C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E6B10E160
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2024 14:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730124608; x=1761660608;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Cp9CZ7s8aK/rsNDAjdfECedVR/zmtXllP7nFErBSNTg=;
 b=OHAIGN/CNfeRgKe5zUi4lzXsWYp6W/CiruaNSg2pL/PMqhR4LerNaCgY
 M8BtLD9MnkOd/fBKtlYM3ovjaK9eC+UpdYPdiGu9PTGJI7DeUhSWKBzNP
 FH3aRFbvvyjsHY+B5YdxhzKWbSunDyzALPuRL77LqhxmNKK2bWuUosJnb
 Sj7RUSBY1vbckBSOW3CKcLN3DGPeHLN5D9ATsqRD8F40o2RAWV6zE6J2J
 uVPOl4jElWrO/RteyjgqmR9Ft9sjd1iJelncz1sOrHfxlB9JfSO85RX2G
 HI1/0MnKqtoQ+mxwEI9vrAlJ773+eQgY1EIxBMC9FsiZ3W3IDM1gxItEJ Q==;
X-CSE-ConnectionGUID: XTuP/MPiQcmJCASh+Nj3+w==
X-CSE-MsgGUID: w8zUW7aeSiqugGAeS3Rm3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="40297749"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="40297749"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 07:10:08 -0700
X-CSE-ConnectionGUID: 6QFuDlEBSOeXOedwXD0e6g==
X-CSE-MsgGUID: m2NW39sFSe2qKfobgRnOqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81686076"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 07:10:08 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 07:10:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 07:10:07 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 07:10:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hQFJxghsnCetzHAvHWqB9haZt3MlsNw0vlX7FIYXBHc8xYescTl+6uJKrzt9d9g8gIjTUZ8bjNlsBgqfvz4E8XMioLfeRLHSlfijzLoctst6J6SceoJ88l2PTjneyqCRczgjkd9ANKwySG3OAejwrGsas1T8DfG8RhJ72Qz+f0Eeh0pa2rlzIjA6w9NIdiLRgueR5Kh23zxN99YCXiLHwzBSEPjApJODaOBOCPCsBGsy4RuYjJ4ashv5lWxY+7ZHVmD4863/dpyJyjZwGuDYubuB46XpRj8Ma2tPyWkYW0LgTFBY0/SMOjO8QymsO41d8osR7yWJIng7ou7IhKznfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Cp9CZ7s8aK/rsNDAjdfECedVR/zmtXllP7nFErBSNTg=;
 b=yby4NkZvC5LpXA0daV2FtkzaJ7+/aDeg35SsAsz6amkP7h3R01nLVL3zMDKdNCIZvy+aYGY7lmLrcNM3D2U72UjFxk+gFalG4ihGg6JG7wklUyQjhwHL0rs6WwXuFBUZK/Louh6dxHKBvnH/V8XefcYELslZFU4QbNChWZYa12E4j1WGuIdWY8OP8ocJxz/gJf8ztIpLJinaAhDEcznQaZ75YG2acLu2ks9wfFcwW/g4szkwSZRyd+fcU9ANES8C7t8MVoGInFa/Xs0e941kg9ng4EFMC3ql4ZxobrxXYyxE/kGlixRo+EwRiWblr4rb4JWyJodZMGlJrWQIwz49wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB6402.namprd11.prod.outlook.com (2603:10b6:510:1fa::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 14:09:58 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%4]) with mapi id 15.20.8093.025; Mon, 28 Oct 2024
 14:09:58 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Topic: [PATCH] drm/i915: Implement Dbuf overlap detection feature
 starting from LNL
Thread-Index: AQHbKTIu0UGwDOr4f0qXDzlrwpZ+bbKcG6aAgAAYFwA=
Date: Mon, 28 Oct 2024 14:09:58 +0000
Message-ID: <b4aaa9e950a2c3a0b998fc08cde5abfb217483f7.camel@intel.com>
References: <20241028120829.78735-1-vinod.govindapillai@intel.com>
 <87iktcpfcw.fsf@intel.com>
In-Reply-To: <87iktcpfcw.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB6402:EE_
x-ms-office365-filtering-correlation-id: 14b4196d-4b0a-4995-3328-08dcf75a34cb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TWNrZ21IMjVtNmVZV2U5VVBVTVFzZFY4bWhTMS9NQTVqcmh2dGUwd0VFc0U2?=
 =?utf-8?B?TkwwK3U5VzZLU1l6dlJkYzNXMnM2d2hPbEJtR0NCSld5dlVySzJIZDdCMlZq?=
 =?utf-8?B?dVl2NitHa1BVb2JoMGJoTVVwKzhOVDc5SG1kWjM1N0xxT0NRKzNtZlNNTHpw?=
 =?utf-8?B?L1UyZzJmMWVENk94N1V4Yi96MTdDTW5EZjBMUjdqOUQ2VlRNcWMyWCtBTkNz?=
 =?utf-8?B?dDhacmVPc2s2RjlIUE1Nb2lRYkxXb0kwVk51dExlYlFWbGY3cFoyZUE5akx1?=
 =?utf-8?B?dFhEY1V6U3FVOC9tU0MyNFUreTArcmVveURZWERLOXM0OGxrMkJ3UERLTUVz?=
 =?utf-8?B?TWpMeXo0Q2RvLzJGYnRXT3ErYzB6ejNYVE45UC9rRjUzUjNJaXRPK3dneEk4?=
 =?utf-8?B?MmZabVUyM1B5aExZb2tXRmNwdkdiaTNBUDgybWxWc1NCazI4ajBNUDJMcFMr?=
 =?utf-8?B?b2xsYWVvbGk2SExwRnlGRE11Q2tac1dwOEdpWjcrRk54eFgvQ0pEQllmbC9h?=
 =?utf-8?B?NEwveHpTTFI2ZjBhUFJLNGhlV1ZUOFFoVW0xelZ1MU9VaGo3KzhZYkxGUXVa?=
 =?utf-8?B?czdkRWZlN0xsMERLS0ZuR01WY2hoSTFIR0ZxODNWeTBXOTlacmVUZ25hM0Rx?=
 =?utf-8?B?bGo5VGFTL2hHRlRveE56ZEtMSkZkaWlFS0ZDNmQwaFZibjNFaXVwN3BBdXk3?=
 =?utf-8?B?eXRlOXl0Nzg3S2pRek1Eb0dLMDBBcFVYWXVtbnBFUkxZUkQ5OWtyZzZLTnkz?=
 =?utf-8?B?SFJRejRHSWFLQWl3TVNWMHZKV3FLY1VuVzFMa2Jhc3dIMm9STEZTRTJEeEEy?=
 =?utf-8?B?bUw0ZGJCTkw1TWNUdEs5L2Q2R0FXVjVpYm5STXNYKzFIdDRMaEIxYVJwOHlU?=
 =?utf-8?B?TDd1Yk9iRm1LMzlBTTRmeXFqUnFhUFhvRWQwQjYvRlRtS2U1NDF4SjZpdlJ4?=
 =?utf-8?B?NGhZUjFVZWE2eGpwVFhnV29lK1FUeHNFVGpjRU5laHhOVkYyNi9BcUFTSHE2?=
 =?utf-8?B?NW9tRS9KR0pGQ3FoaXZZR1VXdXBzeSt2QytzUXlkckRJanA4a1hTUXY1L0xH?=
 =?utf-8?B?Wm9aclpINHBxN29mZVphdVE2NkxUSjlWem5zbzJZSWF1S3RYS1p1cFpBQy8y?=
 =?utf-8?B?VnJHRzBmMmpsajgzS0N2TTdFdzd3cFZKVXc2aTRoRXlOYUZDeEN3am5SZnJr?=
 =?utf-8?B?dXI2MUU4c0hPME9JMUVQdUZkOXZ5QlhWUkVTRHIrSEN1YkNzMTBkRjJETGp2?=
 =?utf-8?B?MU10R1h6ZEhybGtBTGRVRVhIazFZaUpwRjhWaHdrY2Fnb2xqZzBMdTFTdDBK?=
 =?utf-8?B?UEhiUUVqSGNIN2sxdXVuMmM2NkF1ZGVyUWgxMC9CV3YyblBJblF1SncvRGhC?=
 =?utf-8?B?d2lCeHUwdFVDb0FwZ09TT3NIUUVXT01HVUFRcC92WmxYb0FUdFJMdEhlVEVy?=
 =?utf-8?B?MGpzSy9GZ0Rrcm1mOUY4VlZmdUNyUjlPUTEvSE5leVVOOERmR01SSUNCc0h0?=
 =?utf-8?B?all3eVYwcFJQdFZKUjlJVnF0RTA0R0RtaDBzdlk0RkRCZFJTd01uVWY3cmNu?=
 =?utf-8?B?NnBPK3lnblA1dEZvWS9nVExSZlQ5bXNYYSt5TXlTWUNTSnhaMGFGa3dCRm4y?=
 =?utf-8?B?cGJOYzV3YVVrYlF5T2plbDNianpmTXFvdTd4c3JybHdmN1NSeGg2QVpBREIx?=
 =?utf-8?B?Y2tBdnlrV0FRUENGTHF1dmFrTkxnZXpLN3QxbmI3MkF2YkRpL0REV3BPeTJD?=
 =?utf-8?B?eTJMMkhiRGxLeHZNNGkweHM4aUpOWFRHNWthbHR0dERKOEd6QVhpYVZKajVW?=
 =?utf-8?Q?DhDyK+ab1FvmnfND3oYRYWoDg9tvbMAJ/9hqs=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eUtSdEhqam5UczB0SzlkNEphNHNtY3hWWklSNGR2T3RXdklLbjk5V3pnSURX?=
 =?utf-8?B?SEl4Y1J5WlIxYTZ3WTYwQUZDakduRExybVpmb2Zib3ZPalh5Qjk1VGcwb3BR?=
 =?utf-8?B?MU1ndDFWZktaazA0VVdlR214akVmQ01WVzd4RUR3cDBmZlQ0bUhrWWdOdnR3?=
 =?utf-8?B?S1ZBWG90Q3FxS0dXOGlwL3dZem91Zm5vbGVKNSs3WDBlbmMxVW1lbTFEZDlq?=
 =?utf-8?B?OGJISWtpclRxRlZ1TVpvN0lWZkFla3dsamNGNWJZcCtETzZpbjhxUk9CbStq?=
 =?utf-8?B?TkdOdmR0dGZCWkc2YzRGVVY0bDIzU001M25maDM2dnVHN2FFK2w3dGxnQ2Nh?=
 =?utf-8?B?aGJwR3pmS2hCcGNDdlhQOTVqZGsrVGx4bi9IQjdtZTl3QkZjRTNackFFMWhM?=
 =?utf-8?B?VEZzZlE3enI4SHJCNXRpMHlFQUZ3anhOMUxPV05iWWQ5VTY4bFl5SllObmxL?=
 =?utf-8?B?cHNwdXhodVVzUVFnMm9iUVF4RWhlVExoZXVqZWl3VTlmVHZ1WUxocGozcTgz?=
 =?utf-8?B?aHpVNUVZMjRZdTRoeEkrTU9hUnpDQnZtOWVaeHBwd2lqbEM5WVQ0TkRuaWxn?=
 =?utf-8?B?ejR1K24xb1VjM05KOFkzS2R3N0xwY0o3WlRIdW5vYlBHc3FnY3VwYUNFOTZU?=
 =?utf-8?B?NmpETXBVc2t2ZnBGN1licVBzLzJPcGtPRTBSb21IcE80YlRXM3l3SUwwSzdx?=
 =?utf-8?B?VUtZb25rZmNua1B3MUo0NzFteHhrczhXdzBNamd3c1dDd1U1empBL2NJd1d3?=
 =?utf-8?B?SkRjdGFaSWVIeTRPcVcrQ2o4NzhpRFJtNEdaRkpRZXdpaXl1MlY2Nk9jV3JT?=
 =?utf-8?B?UXdyclVvZDYrSjNKU2pDQVlyWUQ3aHJZakJ1YS9ISVZEOXV2cXBxc3hHcjNI?=
 =?utf-8?B?UzBCdFpJdC9BVkFZeExWR1JFSnZ0K1Iwc3BDb1JYTU1oZDYweFlkQm9jY1FL?=
 =?utf-8?B?Ukc2aEs3d3Z4VzZTc0pUb1Y4a2wwSk9pWitYNFFyNlc5M0FEMnFHbDZxdnZ4?=
 =?utf-8?B?WlpEeGxZb01FWEhTNEEvcVZXcFROeC9DejlDUWhjVnNBd2F5SWZZa2t0c3Zh?=
 =?utf-8?B?Q0YvZDY0eUZrY3NqWjJKeHh6dVRtd0FxWk45UWtYbTFwQzlxY0N3ejduVlA4?=
 =?utf-8?B?d0V0U0ZUZys0TjJHNXB2MGs5R0Y1aGJWTEc3eXJnUENrRW9QUVl1NC9zN2Nq?=
 =?utf-8?B?WkdyeWQ1ci8rbDV5VDhYWW9HNGJMK1R3NTlxUytWSXBiN0xjMmV4bHlhUWVJ?=
 =?utf-8?B?dFV3QXdidHFXZHhTK2gwMVdrSmhlTEw5NktBTlBjbTViMjNxV1NHTVZSMjVk?=
 =?utf-8?B?aG1QYUFIUHJzdFpTTitBdVU4UjBlK3E1cllZaVR4Tk9mVlRva2hVbGRYYjJo?=
 =?utf-8?B?VUpiajlzcmpRWlpudXQ3YUcvaS9zU3VPWlhZbnpsU1J0OEV2eWFnU2pLQlpw?=
 =?utf-8?B?SDFkUFlLR21RdTEwNjZrbmhhUTE1MGdEZTNGY1ZmZitTZlAvTHNNNElwVTU1?=
 =?utf-8?B?WkFYZjExdjdaSEwzdWFEdExqdVYzc01WNEwxWndma0VwM09sWWJTTDdxUWZ1?=
 =?utf-8?B?UXF3OFpwK0NScVdlS0RSTTdGMHY0R1ZuMmxIYzJSaVVjZjRRY04veUlJRVk2?=
 =?utf-8?B?aTdhYjM4N2FiVWpxZmgxN0FzekdwMGlBcmZrVGs5WGlrQncvaWp1SzdJWCtq?=
 =?utf-8?B?Lzk1NXduRmlyNjdxREJZUUZoMG5iYitaajBwL0dQeHNIVFB1YjFZc3lscTAr?=
 =?utf-8?B?cTZGR1ZTdHM0NWJiSjBBV1VrbVNEeitnUzE4K1MvVlVEZkZZZTVjN29aOG9V?=
 =?utf-8?B?MzMwQkxEU3p5TDh5YnBDaDR1Wk93ZFc4b0tMOGcwc3NPNENhMHhJVEx0Q2Zh?=
 =?utf-8?B?Mk16Q0JuVmlFTlB0SHFuZG1mcktuSlJBVUFqZVNpcG1SdWhLOGovcngvcnNo?=
 =?utf-8?B?NHBGTE5lUXRzV2xiSmdnK3poU2NWaUdCRVU0WkRWVEFQRXVZK0JPOWhsbm1y?=
 =?utf-8?B?VTFsYTBFNGFVa29UZW8yM2RZM25OVVh3SGlRdVRFZUpHZEJxNFRESnFTTnVu?=
 =?utf-8?B?S3dDYTFxOG9VM2IwMzNYSGNsaGhtbUEyeG1KMk5YeWhiSjZ1TnF4QUV3TWVY?=
 =?utf-8?B?NlN2QXpKYWlDUGlwSkpkVnhmMGxqR1NZUmxRNVhiZFBaaVgrNzhMd2RNeUVx?=
 =?utf-8?Q?5LfMbvRpuP+I8ps7CR2tnaE=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <654644CFB3BE0740A36753B21C93FD34@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14b4196d-4b0a-4995-3328-08dcf75a34cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 14:09:58.4352 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EqxlUAV4r3+s8p3ow6fYtsh3UBvcVcBWbKFpMJEYKEVoDpOKmOxZAF48K58miXj0sKxeXCNO/WfoYFItOO8I7+vJV8dbzTiCP2N6xrhcNzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6402
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

T24gTW9uLCAyMDI0LTEwLTI4IGF0IDE0OjQzICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPiBP
biBNb24sIDI4IE9jdCAyMDI0LCBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGls
bGFpQGludGVsLmNvbT4gd3JvdGU6Cj4gPiBGcm9tOiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFu
aXNsYXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiA+IAo+ID4gRnJvbSBMTkwgb253YXJkcyB0aGVy
ZSBpcyBhIG5ldyBoYXJkd2FyZSBmZWF0dXJlLCB3aGljaAo+ID4gYWxsb3dzIHRvIGRldGVjdCBp
ZiB0aGUgZHJpdmVyIHdyb25nbHkgYWxsb2NhdGVkIERCdWYKPiA+IGVudHJpZXMgYW5kIHRoZXkg
aGFwcGVuIHRvIG92ZXJsYXAuIElmIGVuYWJsZWQgdGhpcyB3aWxsCj4gPiBjYXVzZSBhIHNwZWNp
ZmljIGludGVycnVwdCB0byBvY2N1ci4KPiA+IFdlIG5vdyBoYW5kbGUgaXQgaW4gdGhlIGRyaXZl
ciwgYnkgd3JpdGluZyBjb3JyZXNwb25kZW50Cj4gPiBlcnJvciBtZXNzYWdlIHRvIGtlcm5lbCBs
b2cuCj4gPiAKPiA+IHYyOiBJbml0aWFsaXplIGRidWYgb3ZlcmxhcCBmbGFnIGluIHJ1bnRpbWVf
ZGVmYXVsdHMgKEphbmkgTmlrdWxhKQo+ID4gCj4gPiB2MzogVW5tYXNrIHRoZSBvdmVybGFwIGRl
dGVjdGlvbiBpbnRlcnJ1cHQgKFVtYSkKPiA+IAo+ID4gQnNwZWM6IDY5NDUwCj4gPiBTaWduZWQt
b2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNsYXYubGlzb3Zza2l5QGludGVsLmNv
bT4KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFw
aWxsYWlAaW50ZWwuY29tPgo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYyB8wqAgNSArKysrKwo+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmggfMKgIDIgKysKPiA+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jwqDCoMKgIHwgMTAg
KysrKysrKysrKwo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5owqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqAgMiArKwo+ID4gwqA0IGZpbGVzIGNo
YW5nZWQsIDE5IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuYwo+ID4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiA+IGluZGV4IGFhMjIx
ODllMzg1My4uMGFjOWEzNWU1ZjdiIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmMKPiA+IEBAIC0xMjI3LDYgKzEy
MjcsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm8geGUy
X2xwZF9kaXNwbGF5ID0gewo+ID4gwqDCoMKgwqDCoMKgwqDCoC5fX3J1bnRpbWVfZGVmYXVsdHMu
ZmJjX21hc2sgPQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBCSVQoSU5URUxf
RkJDX0EpIHwgQklUKElOVEVMX0ZCQ19CKSB8Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoEJJVChJTlRFTF9GQkNfQykgfCBCSVQoSU5URUxfRkJDX0QpLAo+ID4gK8KgwqDCoMKg
wqDCoMKgLl9fcnVudGltZV9kZWZhdWx0cy5oYXNfZGJ1Zl9vdmVybGFwX2RldGVjdGlvbiA9IHRy
dWUsCj4gPiDCoH07Cj4gPiDCoAo+ID4gwqBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rpc3Bs
YXlfZGV2aWNlX2luZm8geGUyX2hwZF9kaXNwbGF5ID0gewo+ID4gQEAgLTE2NjgsNiArMTY2OSwx
MCBAQCBzdGF0aWMgdm9pZCBfX2ludGVsX2Rpc3BsYXlfZGV2aWNlX2luZm9fcnVudGltZV9pbml0
KHN0cnVjdAo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqaTkKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgaWYgKElTX0RJU1BMQVlfVkVSKGk5MTUsIDEwLCAxMikgJiYKPiA+IMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIChkZnNtICYgR0xLX0RGU01fRElTUExB
WV9EU0NfRElTQUJMRSkpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkaXNwbGF5X3J1bnRpbWUtPmhhc19kc2MgPSAwOwo+ID4gKwo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCAmJgo+
IAo+IEFsd2F5cyB1c2UgZGlzcGxheSBvdmVyIGk5MTUgd2hlbiBwb3NzaWJsZToKPiAKPiBESVNQ
TEFZX1ZFUihkaXNwbGF5KQo+IAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAoZGZzbSAmIFhFMkxQRF9ERlNNX0RCVUZfT1ZFUkxBUF9ESVNBQkxFKSkKPiA+ICvCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGlzcGxheV9ydW50aW1l
LT5oYXNfZGJ1Zl9vdmVybGFwX2RldGVjdGlvbiA9IGZhbHNlOwo+ID4gwqDCoMKgwqDCoMKgwqDC
oH0KPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDIw
KSB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X2RldmljZS5oCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV9kZXZpY2UuaAo+ID4gaW5kZXggMDcxYTM2YjUxZjc5Li42YmY1NjcyZDg3NGQgMTAw
NjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
ZGV2aWNlLmgKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZXZpY2UuaAo+ID4gQEAgLTEyNSw2ICsxMjUsNyBAQCBlbnVtIGludGVsX2Rpc3BsYXlf
c3VicGxhdGZvcm0gewo+ID4gwqAjZGVmaW5lIEhBU19DRENMS19TUVVBU0goaTkxNSnCoMKgwqDC
oMKgwqDCoMKgwqAoRElTUExBWV9JTkZPKGk5MTUpLT5oYXNfY2RjbGtfc3F1YXNoKQo+ID4gwqAj
ZGVmaW5lIEhBU19DVVJfRkJDKGk5MTUpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCghSEFT
X0dNQ0goaTkxNSkgJiYgSVNfRElTUExBWV9WRVIoaTkxNSwgNywgMTMpKQo+ID4gwqAjZGVmaW5l
IEhBU19EMTJfUExBTkVfTUlOSU1JWkFUSU9OKGk5MTUpIChJU19ST0NLRVRMQUtFKGk5MTUpIHx8
IElTX0FMREVSTEFLRV9TKGk5MTUpKQo+ID4gKyNkZWZpbmUgSEFTX0RCVUZfT1ZFUkxBUF9ERVRF
Q1RJT04oX19pOTE1KSAoRElTUExBWV9SVU5USU1FX0lORk8oX19pOTE1KS0KPiA+ID5oYXNfZGJ1
Zl9vdmVybGFwX2RldGVjdGlvbikKPiA+IMKgI2RlZmluZSBIQVNfRERJKGk5MTUpwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfSU5GTyhpOTE1KS0+aGFzX2RkaSkK
PiA+IMKgI2RlZmluZSBIQVNfRElTUExBWShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAoRElTUExBWV9SVU5USU1FX0lORk8oaTkxNSktPnBpcGVfbWFzayAhPSAwKQo+ID4gwqAjZGVm
aW5lIEhBU19ETUMoaTkxNSnCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAoRElT
UExBWV9SVU5USU1FX0lORk8oaTkxNSktPmhhc19kbWMpCj4gPiBAQCAtMjMyLDYgKzIzMyw3IEBA
IHN0cnVjdCBpbnRlbF9kaXNwbGF5X3J1bnRpbWVfaW5mbyB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKg
Ym9vbCBoYXNfaGRjcDsKPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIGhhc19kbWM7Cj4gPiDCoMKg
wqDCoMKgwqDCoMKgYm9vbCBoYXNfZHNjOwo+ID4gK8KgwqDCoMKgwqDCoMKgYm9vbCBoYXNfZGJ1
Zl9vdmVybGFwX2RldGVjdGlvbjsKPiA+IMKgfTsKPiA+IMKgCj4gPiDCoHN0cnVjdCBpbnRlbF9k
aXNwbGF5X2RldmljZV9pbmZvIHsKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfaXJxLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2lycS5jCj4gPiBpbmRleCBhNGY0MmVkM2YyMWEuLjNkM2Mw
YzFmZDE4NCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9pcnEuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2lycS5jCj4gPiBAQCAtOTAyLDYgKzkwMiwxMyBAQCBnZW44X2RlX21pc2Nf
aXJxX2hhbmRsZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCB1MzIgaWlyKQo+
ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gJmRldl9w
cml2LT5kaXNwbGF5Owo+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgZm91bmQgPSBmYWxzZTsKPiA+
IMKgCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoSEFTX0RCVUZfT1ZFUkxBUF9ERVRFQ1RJT04oZGV2
X3ByaXYpKSB7Cj4gCj4gSEFTX0RCVUZfT1ZFUkxBUF9ERVRFQ1RJT04oZGlzcGxheSkKPiAKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoaWlyICYgWEUyTFBEX0RCVUZfT1ZF
UkxBUF9ERVRFQ1RFRCkgewo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkcm1fd2FybigmZGV2X3ByaXYtPmRybSzCoCAiREJ1ZiBvdmVybGFwIGRldGVj
dGVkXG4iKTsKPiAKPiBkcm1fd2FybihkaXNwbGF5LT5kcm0sIC4uLikKPiAKPiBTbyB0aGUgZW5k
IHJlc3VsdCBpcyB0aGF0IHdlIGdldCBhIHdhcm5pbmcsIGFuZCB0aGF0J3MgaXQ/CgpZZXMuIEp1
c3QgcHJpbnQgdGhlIHdhcm5pbmcuIFRoYXRzIHdoYXQgSEFTIHNheXMuCldpdGggdGhpcyBmZWF0
dXJlIHN1cHBvcnQsIG9uZSBXQSBjYW4gYmUgYXZvaWRlZCByZWxhdGVkIEZCQyArIFBBVlAuIEJ1
dCB3ZSBkb250IGhhdmUgdGhhdCBhdCB0aGUKbW9tZW50LgoKSSB3aWxsIHVwZGF0ZSB0aGUgcGF0
Y2ggd2l0aCAiZGlzcGxheSIuCgpUaGFua3MKVmlub2QKCj4gCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZvdW5kID0gdHJ1ZTsKPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiArwqDCoMKgwqDCoMKgwqB9Cj4gPiArCj4gPiDC
oMKgwqDCoMKgwqDCoMKgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxNCkgewo+ID4gwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoaWlyICYgKFhFTFBEUF9QTURFTUFORF9S
U1AgfAo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBYRUxQRFBfUE1ERU1BTkRfUlNQVE9VVF9FUlIpKSB7Cj4gPiBAQCAtMTc4OSw2ICsxNzk2
LDkgQEAgdm9pZCBnZW44X2RlX2lycV9wb3N0aW5zdGFsbChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBkZV9wb3J0X21hc2tlZCB8PSBEU0kwX1RFIHwgRFNJMV9URTsKPiA+IMKgwqDCoMKg
wqDCoMKgwqB9Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKEhBU19EQlVGX09WRVJMQVBf
REVURUNUSU9OKGRldl9wcml2KSkKPiAKPiBIQVNfREJVRl9PVkVSTEFQX0RFVEVDVElPTihkaXNw
bGF5KQo+IAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRlX21pc2NfbWFza2Vk
IHw9IFhFMkxQRF9EQlVGX09WRVJMQVBfREVURUNURUQ7Cj4gPiArCj4gPiDCoMKgwqDCoMKgwqDC
oMKgaWYgKEhBU19EU0IoZGV2X3ByaXYpKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBkZV9waXBlX21hc2tlZCB8PSBHRU4xMl9EU0JfSU5UKElOVEVMX0RTQl8wKSB8Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBHRU4xMl9EU0Jf
SU5UKElOVEVMX0RTQl8xKSB8Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiA+IGluZGV4IDQw
NWY0MDllOTc2MS4uMzI3ZDFhYTNmMjExIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aAo+ID4gQEAgLTI1ODksNiArMjU4OSw3IEBACj4gPiDCoCNkZWZpbmXCoCBHRU44X0RFX01JU0Nf
R1NFwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19CSVQoMjcpCj4gPiDCoCNkZWZpbmXC
oCBHRU44X0RFX0VEUF9QU1LCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfQklUKDE5
KQo+ID4gwqAjZGVmaW5lwqAgWEVMUERQX1BNREVNQU5EX1JTUMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBSRUdfQklUKDMpCj4gPiArI2RlZmluZcKgIFhFMkxQRF9EQlVGX09WRVJMQVBfREVURUNURUTC
oMKgUkVHX0JJVCgxKQo+ID4gwqAKPiA+IMKgI2RlZmluZSBHRU44X0RFX01JU0NfSVJRX1JFR1PC
oMKgwqDCoMKgwqDCoMKgwqDCoEk5MTVfSVJRX1JFR1MoR0VOOF9ERV9NSVNDX0lNUiwgXAo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHRU44X0RF
X01JU0NfSUVSLCBcCj4gPiBAQCAtMjg5NCw2ICsyODk1LDcgQEAKPiA+IMKgI2RlZmluZcKgwqAg
U0tMX0RGU01fUElQRV9DX0RJU0FCTEXCoMKgwqDCoMKgwqAoMSA8PCAyOCkKPiA+IMKgI2RlZmlu
ZcKgwqAgVEdMX0RGU01fUElQRV9EX0RJU0FCTEXCoMKgwqDCoMKgwqAoMSA8PCAyMikKPiA+IMKg
I2RlZmluZcKgwqAgR0xLX0RGU01fRElTUExBWV9EU0NfRElTQUJMRcKgKDEgPDwgNykKPiA+ICsj
ZGVmaW5lwqDCoCBYRTJMUERfREZTTV9EQlVGX09WRVJMQVBfRElTQUJMRcKgwqDCoMKgwqAoMSA8
PCAzKQo+ID4gwqAKPiA+IMKgI2RlZmluZSBYRTJMUERfREVfQ0FQwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgX01NSU8oMHg0MTEwMCkKPiA+IMKgI2RlZmluZcKgwqAgWEUyTFBE
X0RFX0NBUF8zRExVVF9NQVNLwqDCoMKgwqDCoFJFR19HRU5NQVNLKDMxLCAzMCkKPiAKCg==
