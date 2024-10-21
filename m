Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5963C9A6986
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2024 15:03:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D7DA10E4E4;
	Mon, 21 Oct 2024 13:03:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="di8ZWTeH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F387410E12C;
 Mon, 21 Oct 2024 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729515834; x=1761051834;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CeM6M2it6gZ1rlXV2AAsDbvi1t9z40qsiCTVuVFhpio=;
 b=di8ZWTeHbv2Ea4nwwcN0sj+Kz6tSSGqAEqi2hc6O+YU07Nwc0JZPZcLz
 75EG2iirVUe6nfNEi1UCXFrNqWb0HrZhwe83qFhKPKGP0c9w79Iso5FmM
 WENy7XtpBZOyM/5UYI3tVSN5cJ/HSBjn67ypW9qfDyawIB015LJpyVz1L
 3UXZzUXrJl3Zor6sEbd2UtBTLjG5CCPJEfcqzTSrE6iLZUfjHeuOmgoy1
 LvQLFeK2meh1Q9ssb068PQ73K2Wc5lqaIGtqFacVASP9z20CJT+1/M7dx
 925nvdIfHOPi/tPmQvo78rFaojsXr2sYYGpK/bgMqts2WieVPpxTJ2heD w==;
X-CSE-ConnectionGUID: O8rdMkZFRry9ok/3uk8F1w==
X-CSE-MsgGUID: iDZW39YNT+Suzka/DFEMpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32680956"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32680956"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2024 06:03:53 -0700
X-CSE-ConnectionGUID: BgxAr3PnQDWmMbJJkSbJPw==
X-CSE-MsgGUID: ZGm+I1JWTB2moMir2qBTjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="84339038"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Oct 2024 06:03:54 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 21 Oct 2024 06:03:53 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 21 Oct 2024 06:03:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 21 Oct 2024 06:03:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Gru6MsOpkij9knUU2YlZwWEPoEccWKpq36T1OxundWoPUkQTk7DbD9Icpau0Boy8apD6iH/IeVlVYSuyakHbT+W1rMwg5PG58fa5hDiCsfWx3XXDyh24rFaOaSWvs8FhLaiQ5Hykj97WoAU/Bo7dtq1cb5zng3EwHY7NIvonA29CrEWrDwpId70qhY2rrwS9jBRdCJ6VhmZiizUNmf2MNBWzFskNjuYYgm4+L2P6ZzerBrcC+HPXSG+I7wD95OoGCof/gwqTNDzWINxlpNrCcH36UB1YKuE8a8urCKrqmFIfcWbwShMwzE/2HvHcY+MtsC8+DVGxWYo2h7U3PubsrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CeM6M2it6gZ1rlXV2AAsDbvi1t9z40qsiCTVuVFhpio=;
 b=CmmMKkxv9VeO/hRrkvdUJ8Um4DqpHPHscb3BduarEg/RFKtaZq18h0nW8X8EXHYjeROUvfpJ5pxQouDfYNRAlm15TBNaF4T5/X9D8Lx9sErvPkE35spEuXcozd2xf+6QCZd+Pk9+pVw36UHP5HfTLQ3ucQ3fJACwuHGci7blZq2GXX4Vne/casShQWcUXqe6EijbUQV6FEtnZ2+NeqXpwwtI4kFgjJltnyqkla0esE3h+a1GmUbnFc6XLKhlA/Bn09YawjY/RBccAYvYo1Xvs3mnlAzU3zEcu8Omv+z1OGQasmslQVRnDKQf0AiyTBiwkXzdPiTa0r+JrBD2OkMIWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by LV2PR11MB6000.namprd11.prod.outlook.com (2603:10b6:408:17c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8069.18; Mon, 21 Oct
 2024 13:03:47 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8069.024; Mon, 21 Oct 2024
 13:03:47 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Atwood, Matthew S"
 <matthew.s.atwood@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Atwood, Matthew S" <matthew.s.atwood@intel.com>
Subject: RE: [PATCH 12/12] drm/i915/xe3lpd: Power request asserting/deasserting
Thread-Topic: [PATCH 12/12] drm/i915/xe3lpd: Power request
 asserting/deasserting
Thread-Index: AQHbIZ9QYzX+Xss3cEWQ5FilpBiyxLKRJtcAgAAIuuA=
Date: Mon, 21 Oct 2024 13:03:47 +0000
Message-ID: <MW4PR11MB70544F523ECC60B92D9CD3CAEF432@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241018204941.73473-1-matthew.s.atwood@intel.com>
 <20241018204941.73473-13-matthew.s.atwood@intel.com>
 <172951384271.2472.17701650801593072084@gjsousa-mobl2>
In-Reply-To: <172951384271.2472.17701650801593072084@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|LV2PR11MB6000:EE_
x-ms-office365-filtering-correlation-id: cb8c6a33-fd65-49c3-5b57-08dcf1d0cced
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?L05vY3ZPeEVpSnVXMWFiQm45ZEZTMFJJYTRHbDN3SEthUWIyTE1heTVQYjl5?=
 =?utf-8?B?UFVrd2pISTNVdTJVZjZtWTRyZFVzUGtyTW9FaGJWZE4wbEt2UEZDUVRJOURs?=
 =?utf-8?B?Rk8ybHd1bnhQZGM5QTUyWnl5MUlrZ0ZrelJNZG1KeG1zeHRxVndlRTZUMGFz?=
 =?utf-8?B?YWw0SFIwcGRwb3dhRlZSWGE0Sm5WWEpJYjdnMTZ5VFdwSEpiQlNYOFRvRmo3?=
 =?utf-8?B?MlpZdVFUaXFrbE5XVGVZL2FGR2lBQWVBSSsxOStzekNlRHpQa2tTNTJQMHA4?=
 =?utf-8?B?Mi9TU2M0QzhNNno2dkh1K0NydzBwb2lvV3h5U0dIZUdvRVF3WDhYaHRSdU9o?=
 =?utf-8?B?TSt1b0xSY3B1ZUF0MHh1eDZnY0Z6VVRQZzNoZTRNOTJKdmZtQWJ3aUhCcWtP?=
 =?utf-8?B?eUVQb3Z0WWdrTGxvdUJ6ZndaWXhrbW0yUFU3Q2VacHZybFhOTVBwT0hYbzZE?=
 =?utf-8?B?T0FkSzRzZzNnMHRhYm5hK3RJTmRPSkQzYmVPOVNVQU44MjVHREdGM0JWOUta?=
 =?utf-8?B?dmVodVBxVHFCZlNLck0rejNNNXRuSEFVUTdsN1BWNWhKZDRrcDJucmFxWGE5?=
 =?utf-8?B?Y3A2TzRldFdRNHNCek95UU5DWUpoTkJzY0tyeWI3QnIxbGdwZmhMZnBMWUVD?=
 =?utf-8?B?MDRUMEhiRUtFNkZjd3F0N0NnaUpvZ0pGeGJMeGdNY3ZVOHBsNnZud3BOY0lv?=
 =?utf-8?B?dTl4SEpuaVIrSDRkWXIrS1dBSmFDdkRiNktOVGNrVHI5N0hXbU4vc3Jscnk4?=
 =?utf-8?B?ZXQ3MlNRNjMyc3p6ZkhzajIzQ05SNTYvM3BCUUZkOUptZmozc0E3dVFhUWFP?=
 =?utf-8?B?WWtFb0RxMkpobXhnZGdTNGcvMks1cnd0aFZRYUcwcUY0T0JVa1dWeEh6MVN3?=
 =?utf-8?B?NVFFNjN1V3dGMEFqU2piQ2xibHl6V3h2ZlVuU0NHVVlCczFaY0s4VHhpeHVa?=
 =?utf-8?B?OVdPNEtEYTZ1Yll2MVBUbU4zY3V4VTNuaTZrNjRHS2IzODF3NmFYakVxYmNl?=
 =?utf-8?B?V1M2V1o3bmpKNENnUkhMeTlvK2RFNDBabEM2aTRVWHNlTWRHMDJ1OUpCWFpl?=
 =?utf-8?B?R2pNK2RZdk5DZlhqTXJicTF3Ri9pRU5qY2diQi9pSGEwNmZuSXg1VnhLRXBv?=
 =?utf-8?B?T3pHdmhJK3VOaHUrdzFFSnowdzU4aG5rTlFraUswMENIYUNkTVZOcTh2L3FG?=
 =?utf-8?B?WnpQRThQYW9nMGlEWk1oZWZFVHBCT2R5U2syYTJJV1M0U0VQMC9jNnRvRndh?=
 =?utf-8?B?UkxIcFRhc1A1Y1JXRkFaVFVhaDBFcEY1TkhDM1ZiWUVVVDFEcnptRTNDL1ly?=
 =?utf-8?B?L2tRRnMzZWdWZzdvN2VOdEpBNldoTkJNUzB4cXZKNHN1RTlSK00zUU96OERt?=
 =?utf-8?B?T3dpMmo5ZnhEc2hRTlVJVWd6OEcyNUpZdXJ6OVJWMm43YnFDUWdPYjEvTGt3?=
 =?utf-8?B?SmcxK0c1ZTRlNjZLTmlaNGtPRHl2c0tYaWV2TWp2bmRmM2hJYlA2cHZMMVND?=
 =?utf-8?B?a2JYUE40SEVXTlEwSXBPRVhNNWtrMnJyQ2dhMjNXSG9mT1NCV3pZbGpjVUlT?=
 =?utf-8?B?TDFnWjJ0Q0IwR1ZET09ZZnYvNW84NVBwbkdiUTl2OXh2MGk1Ynd0TzVCN29m?=
 =?utf-8?B?V2FzYURvc0RMSTVuSXZjeGtwY1VWSkc3NlZXb1BuQmVWbm5uRFdsblZqTDVM?=
 =?utf-8?B?UjNTaU93NURVUFJPNnNIeERLYzVtbHhrWjBCYnRXMlRNWGVxUDNDbURUeGtL?=
 =?utf-8?B?MHdWU05XTVcyOE5OYXczcC9OeHR0dkJETU56dUF6eFRKS1dxVzV4MTBWc0lO?=
 =?utf-8?Q?Hurxl/5QS47KfmKYH2tFjAOFgKtGRpjlqwIuk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWJxelVyQXp6Umg5Q0RNLzNWTDJwZnZGQVNRSFFwTHhTSmRnYlFwdGdrMnV5?=
 =?utf-8?B?R3dPTjB3V1h3ZDE5REJZLy9GbWpXN2JtMk90OGtoWFVVZnZWMFlmd3FXTXNv?=
 =?utf-8?B?THBjTUo4OHkvYVVGOU1QMWdJZDRsNWdCZVdaS25vZWtjbnBVVzVBR2xDdERD?=
 =?utf-8?B?MFcvRUVaN3N0VGJIekUvUS90OGdoSHo5N01JM2NuK2xybzl5dlBHUE9tcExn?=
 =?utf-8?B?YTVSZEVEYklzU2haN3lzRHF6d3NqY1F3aW9BNWhZQ3E5M0oveDRCT2MrczhC?=
 =?utf-8?B?VzVhVndacFFYWUxIMWplZWhlMmd1bitTT243TlRhL3VRQ1NDdXhIRHBYQ0FB?=
 =?utf-8?B?MDJYdzF6WDdoTElVRzNEWEM4N1BzWUZYbHhlNlZzaFZWUThJa1A4ViswV2JB?=
 =?utf-8?B?NVZISzhsZHVPdXBnVlVncTVsRmFvWFRpNDZMN0k4VUF1alNzblhIbzlLWm5Z?=
 =?utf-8?B?NVB3OTcwdC9lNC9VdVBaRVc3cUVvdTlUdzdSRHc5QnRTc0tKU2JVWGpoVFdw?=
 =?utf-8?B?SHJVQWVUZjN3STBDNDBUM3JTZ0lpdW05RTJ3K2Y0V1VVK2VFMnlrTmVNL0xU?=
 =?utf-8?B?NXRSN1R1M3J6NHNJd3liZzgvREFGSEovR2lrWGZWRnhkOHZ0UHZTOXBLNW9y?=
 =?utf-8?B?QmR6USt4YVA1K21xS2hXZXR3RElURVM0RjYvTGMvQUU0cUl1RlpPYytzMEJm?=
 =?utf-8?B?TTU2UHprYlNIREtmY3dub3VPVVpLL1RINUxnaTc4Y0pxKzFrQkFnTDRkR1Mx?=
 =?utf-8?B?dC8vSGFvVVFWS3NoZHpzQTJKVDdlVVcvSmQ0cjQ5a2w1TUhYWml2b2s0UDRG?=
 =?utf-8?B?ZkpZajJ5VlNkQlJEYS9rd3haMStjMStHeGNDY0NKYW5aQnRkcTd0cVVYcmln?=
 =?utf-8?B?N1RnSlg0bml3UWU1Y1Jsc0J5Yk9qM1M0VUkzYTZsU052TGxtbi9GQWVVVXpN?=
 =?utf-8?B?eU5BcFVVZjV4TlFOeHBnV1hnVXdrSDd5T2pQRENNZlRGR3lRQ1k3QkZrVkxK?=
 =?utf-8?B?aWNKYmZQY3E2Z25UbTJ4RUhHSm02MUJBVk03Vm8wbkFHTkxPSDY0Y1IzbXhI?=
 =?utf-8?B?Q3dMaXZtT3VXYzhMaGRhTGtMYkFqV2VZamdSYUh5S0JhSVFCSTlmeTQvaDhJ?=
 =?utf-8?B?bmtZNmlMQmJSRXQ0aEhWZzhlcUpPUHlDei9RTXpsWDRIUURMdnZLTTRkVkJt?=
 =?utf-8?B?NGlRUTF1eitHcGRJTlhJRE81MW51OFdESG5qaUtONk8wUXJpSWo4eXRDZXQ1?=
 =?utf-8?B?MWRTRk5vL2p6L0hQTTh5bGcxRnZzSDRnQ2dhQTFBand0ZU1FWFBiZnE3VUtS?=
 =?utf-8?B?VFJ0ei9McmlWeTdmbW0rdjg3WndDbTVUVnFGR1kwS2R3Q1ZhcU80MEgxaUpS?=
 =?utf-8?B?ckxxT0tYVW8zWXExZFRiZ0tUeDNjOTlSUlg1azBaMVhNVTdTZ2hScTdYQVpR?=
 =?utf-8?B?RmFFQUhaOHI4bUNPb2hxQUJOcmdVbDZDbkdMS3pjZnBOV1QySlJXOW11NC9U?=
 =?utf-8?B?cWZGL0NjOWVWdjRkVlpOYlA5MGVsY1ZUTVpnZjh4T2FVaW55QTlISzZvVHVG?=
 =?utf-8?B?WmZvYytDREVTQ2hSK0U5VUxneXJQcER4SjAwVE4xUzFWR1IxWUFzd0tSb2Rx?=
 =?utf-8?B?Ui9MNDVnV2ZhNXJrc2RpalJIeklyWmpEdHdDTG1UZTF0bXo4ODcwbWVYOFNJ?=
 =?utf-8?B?NGtLWGpDM014UkV3NnNGRG50S0xvVUpCZTZtZlM0ZlN0TVlYMEVzNlVuRkwx?=
 =?utf-8?B?U1owY0lkd25JNmxXU2N2ZGFpRW5wOFRFSDBQVzlMN3ptZnN1S3FBNGdVUkRw?=
 =?utf-8?B?RE1VcmxLV2oxRTFOK25EU0F0b2lLK2U3VVJqKzBMR0RoZlZFdUVnY1NHRS9j?=
 =?utf-8?B?K1VvVWxiQlBzejBRb1ExclhwK05mbDhtR3QvcWYxaVRxelpFVWs0ZjltanJm?=
 =?utf-8?B?YjIrOWJqSXgrcHdnSytMaWVBNUJ2cndQU3hxZUd6MyswMHlyN2R0aEY2bXdi?=
 =?utf-8?B?UTVISXUvalVDT1h5ajltY29XZC9ubmdIQnorMEF0RXdOeEZQL2w2aWJiUGUv?=
 =?utf-8?B?RHN1OTRSMFczN1BCaE9qNWhWS3EweG9UNEdVQldBQ2VRb1hSTG12amk0RHBZ?=
 =?utf-8?Q?H5j8ZvwUwJ5W8vOPdfsCYC3Yt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb8c6a33-fd65-49c3-5b57-08dcf1d0cced
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2024 13:03:47.2917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wy1RFd4zsDbpDG8nVhdnOIGs8JbTJiUptjTlE0SbkDvWeQjTQ7I31Uld6LVj6ROPmdPSSWZr2eT08bAuqN+nYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6000
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3Vz
dGF2by5zb3VzYUBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgMjEgT2N0b2JlciAyMDI0IDE1
LjMxDQo+IFRvOiBBdHdvb2QsIE1hdHRoZXcgUyA8bWF0dGhldy5zLmF0d29vZEBpbnRlbC5jb20+
OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnDQo+IENjOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47
IEF0d29vZCwgTWF0dGhldyBTDQo+IDxtYXR0aGV3LnMuYXR3b29kQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSCAxMi8xMl0gZHJtL2k5MTUveGUzbHBkOiBQb3dlciByZXF1ZXN0DQo+
IGFzc2VydGluZy9kZWFzc2VydGluZw0KPiANCj4gUXVvdGluZyBNYXR0IEF0d29vZCAoMjAyNC0x
MC0xOCAxNzo0OTo0MS0wMzowMCkNCj4gPkZyb206IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBp
bnRlbC5jb20+DQo+ID4NCj4gPlRoZXJlIGlzIGEgSFcgaXNzdWUgdGhhdCBhcmlzZXMgd2hlbiB0
aGVyZSBhcmUgcmFjZSBjb25kaXRpb25zIGJldHdlZW4NCj4gPlRDU1MgZW50ZXJpbmcvZXhpdGlu
ZyBUQzcgb3IgVEMxMCBzdGF0ZXMgd2hpbGUgdGhlIGRyaXZlciBpcw0KPiA+YXNzZXJ0aW5nL2Rl
YXNzZXJ0aW5nIFRDU1MgcG93ZXIgcmVxdWVzdC4gQXMgYSB3b3JrYXJvdW5kLCBEaXNwbGF5DQo+
ID5kcml2ZXIgd2lsbCBpbXBsZW1lbnQgYSBtYWlsYm94IHNlcXVlbmNlIHRvIGVuc3VyZSB0aGF0
IHRoZSBUQ1NTIGlzIGluDQo+ID5UQzAgd2hlbiBUQ1NTIHBvd2VyIHJlcXVlc3QgaXMgYXNzZXJ0
ZWQvZGVhc3NlcnRlZC4NCj4gPg0KPiA+VGhlIHNlcXVlbmNlIGlzIHRoZSBmb2xsb3dpbmcNCj4g
Pg0KPiA+MS4gUmVhZCBtYWlsYm94IGNvbW1hbmQgc3RhdHVzIGFuZCB3YWl0IHVudGlsIHJ1bi9i
dXN5IGJpdCBpcw0KPiA+ICAgY2xlYXINCj4gPjIuIFdyaXRlIG1haWxib3ggZGF0YSB2YWx1ZSAn
MScgZm9yIHBvd2VyIHJlcXVlc3QgYXNzZXJ0aW5nDQo+ID4gICBhbmQgJzAnIGZvciBwb3dlciBy
ZXF1ZXN0IGRlYXNzZXJ0aW5nIDMuIFdyaXRlIG1haWxib3ggY29tbWFuZA0KPiA+cnVuL2J1c3kg
Yml0IGFuZCBjb21tYW5kIHZhbHVlIHdpdGggMHgxIDQuIFJlYWQgbWFpbGJveCBjb21tYW5kIGFu
ZA0KPiA+d2FpdCB1bnRpbCBydW4vYnVzeSBiaXQgaXMgY2xlYXINCj4gPiAgIGJlZm9yZSBjb250
aW51aW5nIHBvd2VyIHJlcXVlc3QuDQo+IA0KPiBJcyB0aGVyZSBhIFdBIGxpbmVhZ2UgbnVtYmVy
IHdlIGNhbiByZWZlciB0byBmb3IgdGhpcz8NCg0KVW5mb3J0dW5hdGVseSwgdGhlcmUgaXNuJ3Qg
YW55IG9mZmljaWFsIFdBIG51bWJlciBmb3IgdGhpcy4gVGhpcyBpcyBzb21ld2hhdCB1bm9mZmlj
aWFsbHkgcHJvcG9zZWQgZml4Lg0KDQotTWlrYS0NCg0KPiANCj4gLS0NCj4gR3VzdGF2byBTb3Vz
YQ0KPiANCj4gPg0KPiA+U2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xhQGlu
dGVsLmNvbT4NCj4gPlNpZ25lZC1vZmYtYnk6IE1hdHQgQXR3b29kIDxtYXR0aGV3LnMuYXR3b29k
QGludGVsLmNvbT4NCj4gPi0tLQ0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuYyB8IDQwICsrKysrKysrKysrKysrKysrKysrKysrKysNCj4gPiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgfCAgNyArKysrKw0KPiA+IDIgZmlsZXMgY2hhbmdl
ZCwgNDcgaW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID5kaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID5iL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYw0KPiA+aW5kZXggNmYyZWU3ZGJjNDNiLi43ZDlmODdkYjM4MWMgMTAwNjQ0
DQo+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gPisr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+QEAgLTEwMTMs
NiArMTAxMywzOSBAQCB4ZWxwZHBfdGNfcGh5X3dhaXRfZm9yX3Rjc3NfcG93ZXIoc3RydWN0DQo+
IGludGVsX3RjX3BvcnQgKnRjLCBib29sIGVuYWJsZWQpDQo+ID4gICAgICAgICByZXR1cm4gdHJ1
ZTsNCj4gPiB9DQo+ID4NCj4gPitzdGF0aWMgYm9vbCB4ZWxwZHBfdGNfcGh5X3dhaXRfZm9yX3Rj
c3NfcmVhZHkoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4rICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJvb2wgZW5hYmxlKSB7DQo+ID4rICAg
ICAgICBpZiAoRElTUExBWV9WRVIoaTkxNSkgPCAzMCkNCj4gPisgICAgICAgICAgICAgICAgcmV0
dXJuIHRydWU7DQo+ID4rDQo+ID4rICAgICAgICAvKiBjaGVjayBpZiBtYWlsYm94IGlzIHJ1bm5p
bmcgYnVzeSAqLw0KPiA+KyAgICAgICAgaWYgKGludGVsX2RlX3dhaXRfZm9yX2NsZWFyKGk5MTUs
IFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRCwNCj4gPisgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfUlVOX0JVU1ksIDEwKSkgew0KPiA+
KyAgICAgICAgICAgICAgICBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiA+KyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAidGltZW91dCB3YWl0aW5nIGZvciBUQ1NTIG1haWxib3ggcnVuL2J1
c3kgYml0IHRvIGNsZWFyXG4iKTsNCj4gPisgICAgICAgICAgICAgICAgcmV0dXJuIGZhbHNlOw0K
PiA+KyAgICAgICAgfQ0KPiA+Kw0KPiA+KyAgICAgICAgaWYgKGVuYWJsZSkNCj4gPisgICAgICAg
ICAgICAgICAgaW50ZWxfZGVfd3JpdGUoaTkxNSwgVENTU19ESVNQX01BSUxCT1hfSU5fREFUQSwg
MSk7DQo+ID4rICAgICAgICBlbHNlDQo+ID4rICAgICAgICAgICAgICAgIGludGVsX2RlX3dyaXRl
KGk5MTUsIFRDU1NfRElTUF9NQUlMQk9YX0lOX0RBVEEsIDApOw0KPiA+Kw0KPiA+KyAgICAgICAg
aW50ZWxfZGVfd3JpdGUoaTkxNSwgVENTU19ESVNQX01BSUxCT1hfSU5fQ01ELA0KPiA+KyAgICAg
ICAgICAgICAgICAgICAgICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0RBVEEoMSkpOw0KPiA+
Kw0KPiA+KyAgICAgICAgLyogd2FpdCB0byBjbGVhciBtYWlsYm94IHJ1bm5pbmcgYnVzeSBiaXQg
YmVmb3JlIGNvbnRpbnVpbmcgKi8NCj4gPisgICAgICAgIGlmIChpbnRlbF9kZV93YWl0X2Zvcl9j
bGVhcihpOTE1LCBUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTUQsDQo+ID4rICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZLCAx
MCkpIHsNCj4gPisgICAgICAgICAgICAgICAgZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwNCj4gPisg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgInRpbWVvdXQgd2FpdGluZyBmb3IgVENTUyBtYWls
Ym94IHJ1bi9idXN5IGJpdCB0byBjbGVhclxuIik7DQo+ID4rICAgICAgICAgICAgICAgIHJldHVy
biBmYWxzZTsNCj4gPisgICAgICAgIH0NCj4gPisNCj4gPisgICAgICAgIHJldHVybiB0cnVlOw0K
PiA+K30NCj4gPisNCj4gPiBzdGF0aWMgdm9pZCBfX3hlbHBkcF90Y19waHlfZW5hYmxlX3Rjc3Nf
cG93ZXIoc3RydWN0IGludGVsX3RjX3BvcnQNCj4gPip0YywgYm9vbCBlbmFibGUpICB7DQo+ID4g
ICAgICAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRjX3RvX2k5MTUodGMpOyBA
QCAtMTAyMiw2DQo+ID4rMTA1NSwxMyBAQCBzdGF0aWMgdm9pZCBfX3hlbHBkcF90Y19waHlfZW5h
YmxlX3Rjc3NfcG93ZXIoc3RydWN0DQo+ID5pbnRlbF90Y19wb3J0ICp0YywgYm9vbCBlbmENCj4g
Pg0KPiA+ICAgICAgICAgYXNzZXJ0X3RjX2NvbGRfYmxvY2tlZCh0Yyk7DQo+ID4NCj4gPisgICAg
ICAgIC8qDQo+ID4rICAgICAgICAgKiBHZnggZHJpdmVyIHdvcmthcm91bmQgZm9yIFBUTCB0Y3Nz
X3J4ZGV0ZWN0X2Nsa3N3Yl9yZXEvYWNrIGhhbmRzaGFrZQ0KPiA+KyAgICAgICAgICogdmlvbGF0
aW9uIHdoZW4gcHd3cmVxPSAwLT4xIGR1cmluZyBUQzcvMTAgZW50cnkNCj4gPisgICAgICAgICAq
Lw0KPiA+KyAgICAgICAgZHJtX1dBUk5fT04oJmk5MTUtPmRybSwNCj4gPisgICAgICAgICAgICAg
ICAgICAgICF4ZWxwZHBfdGNfcGh5X3dhaXRfZm9yX3Rjc3NfcmVhZHkoaTkxNSwgZW5hYmxlKSk7
DQo+ID4rDQo+ID4gICAgICAgICB2YWwgPSBpbnRlbF9kZV9yZWFkKGk5MTUsIHJlZyk7DQo+ID4g
ICAgICAgICBpZiAoZW5hYmxlKQ0KPiA+ICAgICAgICAgICAgICAgICB2YWwgfD0gWEVMUERQX1RD
U1NfUE9XRVJfUkVRVUVTVDsgZGlmZiAtLWdpdA0KPiA+YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+aW5kZXggMjc0
M2EyZGQwYTNkLi5kMjc3NWEzMmJmMTggMTAwNjQ0DQo+ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oDQo+ID4rKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
DQo+ID5AQCAtNDUzOSw2ICs0NTM5LDEzIEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiA+ICNk
ZWZpbmUgIFRDU1NfRERJX1NUQVRVU19IUERfTElWRV9TVEFUVVNfVEJUICAgICAgICBSRUdfQklU
KDEpDQo+ID4gI2RlZmluZSAgVENTU19ERElfU1RBVFVTX0hQRF9MSVZFX1NUQVRVU19BTFQgICAg
ICAgIFJFR19CSVQoMCkNCj4gPg0KPiA+KyNkZWZpbmUgVENTU19ESVNQX01BSUxCT1hfSU5fQ01E
ICAgICAgICAgICAgICAgIF9NTUlPKDB4MTYxMzAwKQ0KPiA+KyNkZWZpbmUgICBUQ1NTX0RJU1Bf
TUFJTEJPWF9JTl9DTURfUlVOX0JVU1kgICAgICAgIFJFR19CSVQoMzEpDQo+ID4rI2RlZmluZSAg
IFRDU1NfRElTUF9NQUlMQk9YX0lOX0NNRF9DTURfTUFTSyAgICAgICAgUkVHX0dFTk1BU0soNywg
MCkNCj4gPisjZGVmaW5lICAgVENTU19ESVNQX01BSUxCT1hfSU5fQ01EX0RBVEEoeCkNCj4gVENT
U19ESVNQX01BSUxCT1hfSU5fQ01EX1JVTl9CVVNZIHwgXA0KPiA+Kw0KPiBSRUdfRklFTERfUFJF
UChUQ1NTX0RJU1BfTUFJTEJPWF9JTl9DTURfQ01EX01BU0ssICh4KSkNCj4gPisjZGVmaW5lIFRD
U1NfRElTUF9NQUlMQk9YX0lOX0RBVEEgICAgICAgICAgICAgICAgX01NSU8oMHgxNjEzMDQpDQo+
ID4rDQo+ID4gI2RlZmluZSBQUklNQVJZX1NQSV9UUklHR0VSICAgICAgICAgICAgICAgICAgICAg
ICAgX01NSU8oMHgxMDIwNDApDQo+ID4gI2RlZmluZSBQUklNQVJZX1NQSV9BRERSRVNTICAgICAg
ICAgICAgICAgICAgICAgICAgX01NSU8oMHgxMDIwODApDQo+ID4gI2RlZmluZSBQUklNQVJZX1NQ
SV9SRUdJT05JRCAgICAgICAgICAgICAgICAgICAgICAgIF9NTUlPKDB4MTAyMDg0KQ0KPiA+LS0N
Cj4gPjIuNDUuMA0KPiA+DQo=
