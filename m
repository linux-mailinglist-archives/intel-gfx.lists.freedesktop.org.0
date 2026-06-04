Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NZ63EcWSIWq8JAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:59:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC296412B3
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Jun 2026 16:59:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=VtVUnPa6;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D29D112861;
	Thu,  4 Jun 2026 14:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF10C112861;
 Thu,  4 Jun 2026 14:59:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780585154; x=1812121154;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=+Q7M803NS2VLSRYC0i4RUa3PMjCqi6TBueWzF23Pmis=;
 b=VtVUnPa6j1BOIGI9WvBOvCrcmotOry8gWujpZHChbIIr+rPFbm8AfqlW
 Jj0nYRMMi5j2bWTEL2XY9lYGTbRQ2FEX64a4xOmtUpYj3hVy8vQ7TjofO
 WnWF6wXXoX6mCdr5IrhwQgV057PeW8OLbqEHbwKNR9AGBDD3TQCfC2ooV
 G8ksWB00/5wJh+DxwDVO+/8cpQDLzl+jG2J6ogdF0qz85xqrkT3hU1pGn
 vLaIGH7Nw4fUYd2CieKBBm2XTyLVweQqmFp0T5yPLSsr300dR7EA3VA4y
 zo90AuogSS5Sw+3bGfbkJ1/8tisLXAY7vIATC6vbpYqyQtLNyAwSITgUV w==;
X-CSE-ConnectionGUID: 7O8qOA6bRIqChjRov+X/fQ==
X-CSE-MsgGUID: 95hWnG52Qna9Kn3QPAMgGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="104075087"
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="104075087"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:59:14 -0700
X-CSE-ConnectionGUID: n/nEWLH8S2Wy4PG9pakSdQ==
X-CSE-MsgGUID: CNOPq9O3SPmmlBs6wQqZzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,187,1774335600"; d="scan'208";a="249661902"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2026 07:59:13 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:59:12 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 4 Jun 2026 07:59:12 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.26) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 4 Jun 2026 07:59:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ShxtnNNcu78iWSmLlfXo5rjcHU8jhTdzEQMFAJOCGwyvTtFmvh3IP0hLwG7sZVCiEWw5QpTwUcDrHQ2HdZ8FQn9gMhsRAfRu/jTt2S3UHmm8TSxsR1kWcILvCBsorkNJFUCRi0HTOAalv51C2ateW9rsShrwBucSy4Qk3TjT4sq7E0bCVdL3s9ERCKtPPNkHB3zjm5Yo1KWJEqIwqg31nSepfbw5XRX+pzeM3FGxfbWy54GLQZjbwPlJ0c24H6cQJgzjkdhmp5XTXp7oHWM1e3wNHbCCAJPEwPUzCbTvD9l6rlqAGG0+ar+JX2c5rsRQOP+lW5zdHEtg3TMqfUEm8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Q7M803NS2VLSRYC0i4RUa3PMjCqi6TBueWzF23Pmis=;
 b=uRui2ml+fjqgByYdf1K5kwBn3RJ1tc3Ju+0NvwIty67hTrILtB142xH1S2WSrRLxFRPyiEKIfBVc+iChonwlQOXoU/IA+aY+Tys8BByGB9NAnx/GqB2Nxv7i2VtheFGU0+ehCI2Pql5vTrB2Mvy0PvDkOsvpIrxdj5N5bZsBCeYA7UtQ0XvjvdD3jKqr/+1nJAz1N+Mum76iY016a1u3bd2s4XRRdQhZVhPT7+Hw1GICV10uXywdLJBkvwg1sD1qbnSxx5240XzoJqJoMrnMdICUHTVH9edsUVR3ruhhXwELu9tKB5JGs2DxtAFjIKyxNowNCwZPdCU0TwCSnE4aSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7785.namprd11.prod.outlook.com (2603:10b6:8:f1::8) by
 DM3PPF74831EF4B.namprd11.prod.outlook.com (2603:10b6:f:fc00::f2e)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.8; Thu, 4 Jun 2026
 14:59:10 +0000
Received: from DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a]) by DS0PR11MB7785.namprd11.prod.outlook.com
 ([fe80::4f63:3b06:4e10:3a9a%4]) with mapi id 15.21.0092.006; Thu, 4 Jun 2026
 14:59:10 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 10/11] drm/i915/bw: Use icl_qgv_bw()
Thread-Topic: [PATCH 10/11] drm/i915/bw: Use icl_qgv_bw()
Thread-Index: AQHc7o8AdTy+QK3EfkGJRRzTmWKRHLYuiEUA
Date: Thu, 4 Jun 2026 14:59:09 +0000
Message-ID: <8c3c70565faba998122b8092b3f3d3783328e53f.camel@intel.com>
References: <20260528103458.18069-1-ville.syrjala@linux.intel.com>
 <20260528103458.18069-11-ville.syrjala@linux.intel.com>
In-Reply-To: <20260528103458.18069-11-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7785:EE_|DM3PPF74831EF4B:EE_
x-ms-office365-filtering-correlation-id: 4696721d-00fb-416b-8b52-08dec249d54d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|10070799003|38070700021|22082099003|18002099003|11063799006|56012099006|4143699003;
x-microsoft-antispam-message-info: XVDbziWsFqEXHWz7Z/cSfvFspcu2LNJtxPNRPL43MUZvOKLH2gcX9U2BuxfLFYqjQ9UNMjySSdwyH5QH/WATErAzJm6N6I8BYiDip8+DkAh0etMR7QCIcIU5phaqWHUiCP5UHu/tR6canV0fLX3RbeFwsvtwVKdO/TZgM4L515csgBy1xwzucJlslampan2O9YBEIjFbgTIzQXaz8zGUAqoCaMTqWgfhqiknX8ygZmNcqqv6Z1cRtDuMX8YaN1zgzqzxlhoIg8qXGz7+pt/IikkKYYKr38ttKRL9SgmRd+2vo79w0ITwl6NBeGtwVRnE5UtQlg/+l0bp5cN0s7SfvatxvKzu0NGTIjz7U+ZqywDlWe0iVdzBqJp6NOM8JA95SgwF1RI0QioruLYtDuRaCz5Y90HafJCy9uOmk0hUiDtVy3qdd2NzGwNyoT9I/+/EWMyDhWA5QmWHfROau4MrHsSYW+nFvQtA8GZIZ7gLXWCe56Oj79b2/tD9U3PgTdgQJ2p65rP9YJRAJBh2kFxxUCA/DqblUnLmKl63Zb/lppHRdStRmxTkqoNRbw3YN1bffqsvpLKQ+3fAZNBHzKhy/RxODrsseEGXmaAzH9k/UpTkZWlMdPorrTmDw2B4CBB5RFtuaHBFsZ4pDomWn9kAiIoEF7/l8ohRzQrz+3SPeUFhGF4p+dYwUjkD2AhSVDpA2i+4BEnkgUDmBR5+P9c2G8smy0T89LzZ+m5Hbje9kJQrZJJRxDTLlNuS/VxBGak3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7785.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003)(38070700021)(22082099003)(18002099003)(11063799006)(56012099006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWpEVC9NTU1LVVM4ZHFvQWNSRFZjbVA2OHJjQXpGelplbi81SDU1R09zaDIw?=
 =?utf-8?B?bHZGdmJydEpQQWVjWU5vcWpqVGY5WkdjaHhlUE1mRzNvRHNEczNqc00wbkR4?=
 =?utf-8?B?MW1BdE1XYW92cHdLUVpEOU9USmhmUnhlSlV2NlJoSWFETmZ1cHBxTUg1b21z?=
 =?utf-8?B?R2NpelMzVk9XOGxjcmwxa0JvNFoza2dMTm9HQnhWWUhVVWEyM1dEQ3BRZG1w?=
 =?utf-8?B?Q2xGNS9CeTQrZEQrRHR1VnNOVnpDV2c0S1JaZ2ZLUGNTRldmSDQ1OXY4bTRu?=
 =?utf-8?B?RzBPblZUc1pJWkUrZVl3dHhhN3RLQzdTMVR6cTlXUWQrMkovVW4yY2dUV2Rl?=
 =?utf-8?B?bkxGWFpNaVI4NGR1SzVGV09BUm1KejZ6SFZwRUErLzJFTHRodWc5dTdqdVlG?=
 =?utf-8?B?bHBYM3BKeGszQ2szTnRMc2o4bTBvRW1Ga3JMZVhIeTVMQ2VhV0VvQmFVbks3?=
 =?utf-8?B?ZVNWVXhRQnI5QWpBMVRweGtoNkFpbFF5TmJzTVZkZmJXUlVoTklZbjlPb21O?=
 =?utf-8?B?bFh2VThBZ3dycUN5Nk9mM3k4SlprdHQ0Y204c3JkS21qWU5xVnIwT1V0Wngr?=
 =?utf-8?B?Vk03b2Y3bjdUK0lRTk0za1g4N0FkU0dvbndXNHhLUURjTDRtN1M3bTcxbEpK?=
 =?utf-8?B?blF0MnBVNURZazNFQTRPQ1M2MWZ4NEYyV1ZlWGJWQmU3RER6clpMdFErNjd1?=
 =?utf-8?B?MVIwZ2hNbkI1WWRvOGhOZ1VqSm9pTVVhTW53Vy9WaHp2VWFERmdWYm42T1N3?=
 =?utf-8?B?UE9jbjV6Uy91ekMrcEpMR3NrMjBrQ2lXVENDYVRFZGE1dUVRRUJiNUtZb3FN?=
 =?utf-8?B?bkRCZnpvUDZBMmtuL05wMkdhdEUyaXlsVVkzN01rOUNFdTBEQk81WW81UERQ?=
 =?utf-8?B?SHVFdDlwYi9heEZaRTdGNDZiWUt1R0tNejFKOTZudkdka2IvUFcyTFZyNnRW?=
 =?utf-8?B?bGN6Ri9nSzZyMHlwVjE0Sm90TDRXT3o4cVRRZTBRTGhYWkRJQUlkMHZqSUlh?=
 =?utf-8?B?dmpFTkxVTHZPRGZiZnF1UHEwWkRINEdPSVcrREtDczdOcmJaaS9mRTFsV0kw?=
 =?utf-8?B?Z3hoakVYUE81cFZPK1A4cHJReFo2WnlIQ3NmZHRsRDFjcUc4eW0rbU02S1Jq?=
 =?utf-8?B?V2tJNTcwQXMxQTJ2Y3k3ODFLOU9pMTNFTVdrbzZKejBRanBlZTJSbDNlbEV5?=
 =?utf-8?B?RVlNV1BBUUp1K1orQU9ZV1hLRU5Ddi9qZEFpNW9BR3BXWHd4c1I4TTY5d0k0?=
 =?utf-8?B?SHRkbzAvK0k0WVZmdG00VkJvM241UjU0a3BKRi84ZGMxMmRhQTV2MzJMUE1q?=
 =?utf-8?B?R0tXUUNGNnRZUFl2Yit4SUdaU28rS2J4d3djWG1SeGNWb2o5d3hIRWVtZjVO?=
 =?utf-8?B?RHo5cldoenVkUVpSWGJRS2hqdzJGdHNXbEM3MTZCTERYeXA1ZGFMRHhqVndC?=
 =?utf-8?B?U0I4cmJKUjgyUFVOWUx0dVN0alo0VnZtMGpQb1p5clJZV3Y4SWZlcGl6Mkhs?=
 =?utf-8?B?SUZIR2crUWhORktzaXdHT2x2WlZZd0hVcFFhZnFKQ21lS1pMKzY3SFpXaGR6?=
 =?utf-8?B?c3FuY3FMWWZDK3B6aFZxWlJmRldON1BwelVxSjBEbGQ2eWFyVTRVQitzQ3RJ?=
 =?utf-8?B?Z29PcnRMeC92aHhmWW9VcVZBUE1MUldZbkZDZUJEMEY2UXFlclFBVEVubXk1?=
 =?utf-8?B?cjd4c2xKT1dxNVFTbGIybkFFeHdxMk11Z1hSWTBndHFTM0lnY1ZrT2VpR3Nj?=
 =?utf-8?B?ZGhuekNPOUVvQUVPc29BeVJJZnFZV0Vmd0dPcnRuTTJqTkFQUmtwSTlONDdw?=
 =?utf-8?B?U0h5citGM1A3anZRejlwWHRBTDB5bnJKK0FtTUhBT2JXYXlLQUJwUlBLSG9G?=
 =?utf-8?B?SEg5YlpIZ3lTdWJ0TFlTYmlpRTBPWWthZTZ6YTl4RDFiZnQ5NzRDYnRHaExM?=
 =?utf-8?B?MFlKMWRBVjZhT25lTWlMY3lBWFlQTlBFTDU5UjdieTVwQTZ1ZEdHMzlQbEF1?=
 =?utf-8?B?ZTJUNWRtdmlSNW9TMEQ5d1BqNjJMTks1bTlOYXRxQVJBN1I0ZklmcWJzeWVT?=
 =?utf-8?B?RDB3dyt6YlFaQmpxTUtTSmUvQVFEeGVEVjN2ZVA3UkpkdXRRZ3R2dHhJdHhN?=
 =?utf-8?B?YThheHRsYVAyVW1ubGsxbW5YTG1sVVl0QXBVZFZZVzVUSE81NG82Mld6bnhN?=
 =?utf-8?B?Z3JYY0hteFFoWnVCc08waWo1RGE2ZDdveTBaQU96UklmckhLeGlDaXMzSVgw?=
 =?utf-8?B?elBVbEE5eXFRM2U3dzYyUEpWaXI1a1hpNzdvL2F6TG5OL3BZR3Q1bUxCL1hs?=
 =?utf-8?B?S0ppUEwyM3FERG1FdVhiSyt3R2hkbHBFUG0rSndBcG10cW1RalZPaXFtUHlw?=
 =?utf-8?Q?IqJQ7u0nn5TJtKJAVmSQ2rJE0lxbekAAW3aHlb6/3yitv?=
x-ms-exchange-antispam-messagedata-1: 1M9iKPtmUtysqNOfcfbNar0vyT2xK2u4Bik=
Content-Type: text/plain; charset="utf-8"
Content-ID: <758FDB8C49438B44BA911FD4CE259E3E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: S3jwTfCZ0w3L2+TS5r643Ezkkm5kyl0H1jhjQFOh4xokU4iDRisU8gDlYszVhfQnM+j714E2Acuphj6kVtxmW+dGXH/DQFLOuK10RnYiQwnSw0ifJXVTQB+KM5j3brmdRsep2hCum6ddmaFppeI/UZ9LIeeCdCy94GUVsaAelsf+MLXivrNzR2fEfoMXgZlNl2rdIO9ryLLIYoRQAHdZBRrP3Yz5faqVdepE2o42wXeiA9ElGlhfPcPgALdpnydfodaqlmB6Kpn/IF93ELWnAKRxzWtvH2N6KxNv4pFpMcLo7iDyOJk3OAMHnh7zF73gvv+K7uM4XmcWyWU82zZirw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7785.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4696721d-00fb-416b-8b52-08dec249d54d
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2026 14:59:09.9651 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: A2TXfzAxAxgy1vBlpPK/2yMBSx8bxmCDh5Ze1N0I30Cyfi2M5ZocvcM5RX4CM5se4Bh/duH4Jq6h3oTzXrkwv4yeU6+mBb2pzOywGsa7rAc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF74831EF4B
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9DC296412B3

T24gVGh1LCAyMDI2LTA1LTI4IGF0IDEzOjM0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUmVwbGFjZSBhIGhhbmQgcm9sbGVkIGNvcHkgb2YgaWNsX3Fndl9idygpIHdpdGggdGhl
IHJlYWwgdGhpbmcuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2J3LmMgfCAxMCArKy0tLS0tLS0tDQo+IMKgMSBmaWxlIGNoYW5nZWQs
IDIgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gaW5kZXggZjQxMjEyMjNhNThiLi40MjNjYWUyZmYy
MDggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMNCj4gQEAg
LTExMDYsMTQgKzExMDYsOCBAQCBzdGF0aWMgaW50IG10bF9maW5kX3Fndl9wb2ludHMoc3RydWN0
DQo+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IMKgCSAqIG9mZmVyZWQgcGVyIHBsYW5lIGdy
b3VwDQo+IMKgCSAqLw0KPiDCoAlmb3IgKGkgPSAwOyBpIDwgbnVtX3Fndl9wb2ludHM7IGkrKykg
ew0KPiAtCQl1bnNpZ25lZCBpbnQgYndfaW5kZXggPQ0KPiAtCQkJdGdsX21heF9id19pbmRleChk
aXNwbGF5LCBudW1fYWN0aXZlX3BsYW5lcywNCj4gaSk7DQo+IC0JCXVuc2lnbmVkIGludCBtYXhf
ZGF0YV9yYXRlOw0KPiAtDQo+IC0JCWlmIChid19pbmRleCA+PSBBUlJBWV9TSVpFKGRpc3BsYXkt
PmJ3Lm1heCkpDQo+IC0JCQljb250aW51ZTsNCj4gLQ0KPiAtCQltYXhfZGF0YV9yYXRlID0gZGlz
cGxheS0NCj4gPmJ3Lm1heFtid19pbmRleF0uZGVyYXRlZGJ3W2ldOw0KPiArCQl1bnNpZ25lZCBp
bnQgbWF4X2RhdGFfcmF0ZSA9DQo+ICsJCQlpY2xfcWd2X2J3KGRpc3BsYXksIG51bV9hY3RpdmVf
cGxhbmVzLCBpKTsNCj4gwqANCj4gwqAJCWlmIChtYXhfZGF0YV9yYXRlIDwgZGF0YV9yYXRlKQ0K
PiDCoAkJCWNvbnRpbnVlOw0KDQpXb25kZXIgaWYgdGhpcyBjb3VsZCBiZSBzcXVhc2hlZCB0byBw
YXRjaCAzIGluIHRoZSBzZXJpZXMgZm9yDQpjb21wbGV0ZW5lc3MuDQoNClJldmlld2VkLWJ5OiBW
aW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg==
