Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB584CB8F68
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 15:35:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EE010E17D;
	Fri, 12 Dec 2025 14:35:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BBGTcQHT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFBE510E17D;
 Fri, 12 Dec 2025 14:35:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765550103; x=1797086103;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=B9m7Un4AaewvX9oaVm1/voqtH+qyYuwsTf286Gl71z4=;
 b=BBGTcQHTvXba3cSt4TYDEJtoRaaC2Ci+vZ5XttB3UAcz5YoYKfRgzWUP
 ulLBTHjUZ2Z3oyy8iGlZPGz4xyfBGR8pJ4u86k2wpChIXrCbTF5viI4ez
 /bpN16sv6IDp4DPbuPV0BWyv6Wwaky7OGB3GAtGlYvWOTfepk2xCyrRn2
 nRt+UPA+I98Bpda3C5HthKcI2POPfcWXcyOMH2HTj1aUfj4fGaHol4awq
 kQstAp4EQS8A0v9Np0C8MUwlvj9kNlXTiMq0SzG1lYdeUw9AEeE82nOJs
 HcZfKjRrlTqQ7izw329PpQ5JbgsiW7lkTXn13R3DNO/eKd7G9JBQ+BbDl w==;
X-CSE-ConnectionGUID: kJn0AKqcQ0+fFEuh8icp5Q==
X-CSE-MsgGUID: xcuDnjBCTmuwy2RBYYcVBQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11640"; a="66723444"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="66723444"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:35:02 -0800
X-CSE-ConnectionGUID: 6O3dNurdRaGHaFiNLJgpww==
X-CSE-MsgGUID: nHHi25ueS+Cm1NdS3v6bNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="201584190"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 06:35:02 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:35:01 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 06:35:01 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 06:34:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=skrP2Ns+PlZgjqj4TQe/K/1mcLRAbyPa68A2YauSfPybjcs0/3qw7xBwsAevOapB023FdPWfHAoqltCnqA0Fe4SdigzDiQ7v5Pe8/s8le9mA7rjiNzkl+DrT1/3rCWmHptWiTSWM/UFzJ7wdwu34Pb+i+TL3Xk34lb7uZ7/BZIzvMDJ3P0OKszANK8y6Pi3EZ+jVBqCMFn6h/ZSDVI5WOcEy5mr3+gAZwqOxna+ck6BaOaXrKJxjJZKBDLWam+kI1ys515uO8WZztORp81VWt+jFLpy13mEz2eE5J8ZEHpiv14tPing1mzoYXISQB3f9g250wpzDm8r4F+g6uJAA8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B9m7Un4AaewvX9oaVm1/voqtH+qyYuwsTf286Gl71z4=;
 b=b0xMXH4bFD+haFY5dOp0X4MbGWvWk/dLcCraH16cGv26iiA3Joh6uINZdyBIynm+uyy5ZM3gDpQcr8oRAimAd3x+92QMfV5HfpzG+0APn0kM/bee51GnI9Fji2cujl2QZaNbe8gaC2jyzVjcednxqFLAp/KlHv+2R03WYKJa0yrsdYXnU4iSjxxB9XR0BMcLtoap/bCnGqpqRwdJv3yAP76YGCaGIkjFkY5U2FYujsoHryioMmrvh0rtFsgbtB0QsUCBkhw494r5x+Nvvfi3+JLL85cM6/P5k1ATNOD9z7+GJrxozptaoSM4MdLShCrKUJao7f7HviCDarRv9k+31Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by MW4PR11MB6839.namprd11.prod.outlook.com (2603:10b6:303:220::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Fri, 12 Dec
 2025 14:34:23 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::60a1:eab8:65ee:6bb8%6]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 14:34:23 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 29/50] drm/i915/dp: Use helpers to align min/max
 compressed BPPs
Thread-Topic: [PATCH 29/50] drm/i915/dp: Use helpers to align min/max
 compressed BPPs
Thread-Index: AQHcX+7DnniL05PttUWhuh3XSDbShrUeKPGA
Date: Fri, 12 Dec 2025 14:34:23 +0000
Message-ID: <444075823a4e2c2db5bfb43694eb20413dffbf96.camel@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
 <20251127175023.1522538-30-imre.deak@intel.com>
In-Reply-To: <20251127175023.1522538-30-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|MW4PR11MB6839:EE_
x-ms-office365-filtering-correlation-id: 0e29bd7c-b547-4f69-f831-08de398b8b3a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700021;
x-microsoft-antispam-message-info: =?utf-8?B?a1JXVVh4TU1ycXh6WnhaNXBCUEYrYXpPNmZkUWNOSm9BeWdabExzakRSTWFM?=
 =?utf-8?B?TjFnd2FtTng1ZlFiemFrWTd5M3VRT0hzU1NSbUZqOGFZN3ptRERWK1l6ZitV?=
 =?utf-8?B?UXVOZE14S25zemVVV1N0ZURkY3B3cjhSTWVvTG0xZG5rNlBEQ1RJbkVKaHZC?=
 =?utf-8?B?d1Y5T011Y25oLy9iMzhjZUpIYVFLcVFpZkhBakcxeGJxSmNHWnlWTXJIRitM?=
 =?utf-8?B?emE3ZUNzZGY5aHJMdmRkSDlYQ3gyUW9LU1pkb3J4KzgvVnBHdk51SDZjbFNw?=
 =?utf-8?B?OHVwb2ZYWkJ2Y3U4d3gwZk1tb1FGUnd2eDY3WVBzNWhMZ1EzNVRock9HSEM2?=
 =?utf-8?B?VzFUcm1ZM2pDdHFwd1hHcjU5dHN6K1RDVkUxMGkvY0kzUzNCVkk2bUVtalIy?=
 =?utf-8?B?M1FucTdkbDE1UmRiSER6NWJpdXJRQnpkWW9xenhPWlEwK1BJaEtoTkdlM1dC?=
 =?utf-8?B?cnhTc28ySG9vUEs3ZWpOa2gzbjVqY3JMU2JabjlHWWZBUkpTQldGUk1DTmxH?=
 =?utf-8?B?Wnc4a1dVZmhOTGJML2d1MkJMQlpnWWczcDhnVmw4cVdITStVQ2s3T1lEamhw?=
 =?utf-8?B?dmdRa293dE1kdzlreGl6OG01aXUzemx2WWNkWFZ3WG9xSGtxTnJuQlZoY3Q1?=
 =?utf-8?B?NDB3VG9DMzdObUdML0l3QytwcVhsNVZPMUZFU3pzb2FjM0NFR2hCenR5VGNa?=
 =?utf-8?B?R0pObXJiQW83MC91ZW1XY1U5KzRKdmdYV09vOS9IY29HVkRxUjNhOFo1SkJF?=
 =?utf-8?B?UHd2NGZsRnJPN1hkdlZvSS9nWDF0SHZMekRLbThvcnJHeDQvZlJReC9ublFG?=
 =?utf-8?B?ZVpUeUlqNk93OHhzeVFPWlpxNGRxQWRxbVdVNzhsOTdjdjBYUmFKbENWT25i?=
 =?utf-8?B?ekdRTjRyU3RHNTZWL2NBTTB4SUhjOWFYQ2RsUU5IMU9WQjE4TXVXbmVLaFJT?=
 =?utf-8?B?azZPNjJYOTN0RWJyUmt3am9qNGtGZS9WTkwyTHRjVFNqOGdSb3plZlFKeHBN?=
 =?utf-8?B?NlBSMjQ1RkJnSngyeDEvZUZoSTZKakxjNWozNW50THZkenkvcmtPOTNnLyt4?=
 =?utf-8?B?OUptTURUVGtwb0hjOHQrcWVSckdVTWVEdXMwcm1aa1UrVS80VklpbjhTdEJK?=
 =?utf-8?B?MVE4MnowTFdyZ053clVXQy85WHJOVTBCNjUwR1g2SnVGc09oYi9vOWlteTlM?=
 =?utf-8?B?bTZkM3FVazNaOG5DVHZuMGxqdkNjZm9hWU9qTm5sRHZEVTJjWTJ4WXRmbkdD?=
 =?utf-8?B?Wm9FSzJlcnJGTjZBd3U2NjlsdU1sUnJqZ252ckJtMG5yRE9peGlYUzF2aTFT?=
 =?utf-8?B?NE1Xa1VObXNDNGhEYjd4RFM5dFEvemZhVWJEOTE4d3l4T1RHZVo5MDllQ2Qv?=
 =?utf-8?B?QjB0M25EWmNuSmVkTldwUkY0cUE2RWRTRUJFemlzcHpyamhNTHR4bllDbGoy?=
 =?utf-8?B?Z1lmN1l3aWtiVTA2R05PeklYSGlRT05HZWtjSDhVSzl1Y0RFKzNjS21CR0E2?=
 =?utf-8?B?S3NRY091OTdBTkFkZDZHRW05Tnc0am5abWdtTDNja0NXVkE1ZzJrM29BNHp0?=
 =?utf-8?B?TTE0NVI1M29KZS9PeG5qOWlncDJmZkYrZDFCM3ZSOHo4eDRCTFVUdnRDWVR1?=
 =?utf-8?B?SkQ1K09SR1VjNFVMWndaYTFnOEpUTlRxR0hxbzdTbndtZnlSK25xMnJLSThQ?=
 =?utf-8?B?cTkyWXBjcTAzQTBkVk5HMTByK3ZWcmpuZEI3YlRwY0pmQkhKZHpkQm1KcXox?=
 =?utf-8?B?RWdvcmQxWHY0RTQvZ3VJQks0dUcwQXY5N1JVR0YyTUhEOUpiMlFkbkpCWmRP?=
 =?utf-8?B?QmxLMzNxY292VVh6MTY5N1czSU1hTUJyOFVmVmNuWFZqWlhqS0RBQ1JRNlNV?=
 =?utf-8?B?aGJhRlZnZWNHcXMwOFlwaHVIRy9XeE40VTE0d0praklWOW5sWEtIamo5bjJk?=
 =?utf-8?B?UWp4V2VBMlFNcXppRGtURWwzL2hqbjI3TkptZWxCbjRrWnRZT2wwQzNiQUt5?=
 =?utf-8?B?SElyZk1WWFMrWUV4R2RsWFV2SkcrYVdxeC9SL3czYk5kTW1RdmM5TlpGZkNy?=
 =?utf-8?Q?+TxUiM?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDJoRzJyVzE5SHV6VHcrZFZlRnMvdEpCYjd0L21ZeGNhSzhjSDYyY2g1OVBN?=
 =?utf-8?B?L056TTd6TGhDVnYyVUdueGloSkFpb0RLV0tQTncySjNtb0hORzQ4VHd1R3Fp?=
 =?utf-8?B?QVVZYWNaTmhja1MvM2I4L3gybG84cnNIeHhNem9NMVFqckkvSkNHTlpUZElu?=
 =?utf-8?B?VTNoRkN3TFgrQVZHT3g4ZnIzYXQ1M2ZzYmVUaHBUb3ZQRE5uckFlNlNUaWYy?=
 =?utf-8?B?UnhZZ1FiRzJ6MmhoakZldC9VUTJ1TDd0OW43SkdTR2dWWEg2QTlTUDV5bW9s?=
 =?utf-8?B?ZGV4R1dXZyt1NVdBV3dKcUF3QTRhaW1lLzI2WlhsMXRhaXNuQVV3Wkd4QXJ3?=
 =?utf-8?B?NytXbWx3cXp2WGIwU1pNVTd1T21mb21na2xiUDJtSE9seHJvWGpPNkZzL2Np?=
 =?utf-8?B?YmVNY1pCc05IdEhYYXcrTkRXUDI4OEtNRzQ4dzZYS0ZJYlZCeXhQUFBTUDNO?=
 =?utf-8?B?SUxwaU1meGhBbnROa2xjeTBoK1gxZktVUk13a2pOcHZIY0VYTG5XUkxJZHFF?=
 =?utf-8?B?YnNkZkN4MXY5UjJoa0o0by9ydU9RL1BrMFFRelhodXFpck9rc0M4dnpwbUpq?=
 =?utf-8?B?RGpRMGo2RHFJc3FhZ1pJS0crOGE4K1dNTnVPT2lRZDhJdE1YbERMZ0laOTJw?=
 =?utf-8?B?czJHQmxxcTJ1YXNaMU1ma3NSeVhHMlN2UmRabS95ektuV1d0ZEtTMDFLS0xr?=
 =?utf-8?B?bjJtbDI3YTk2NmxCb1BqL3l6UWp5SDUxbGJPM3cxNkJ4NkYzaFlkbzNMc1VB?=
 =?utf-8?B?RWhTcGNLUEJQY3VFZnV5ZFhMQWsrOE9JUkY4MCs0T3g5RGxjZUtmZkI5K0lW?=
 =?utf-8?B?a1FGWi96UldmUEphMnNUellQTko5c0g1dElSODgzZ0ZRQzlIL0txbnJhOW83?=
 =?utf-8?B?azFmWVJ2eHBaNFRudGhuWUlJS0tSc0M1QmZXZXBLMFZOU3VvUnNIU0U2Uk9J?=
 =?utf-8?B?TDlRMngxVnphQlZqb3dBN0ZLWnFEMUlLWDJ3eDRaNGRjbU1xSFlnWFhYcm5a?=
 =?utf-8?B?TzRLTWh1ckZpQzhiZ2l4Wm01eXRWZEVqRHl0SVFKanBCbERlcXVNZS9OZkFO?=
 =?utf-8?B?Q2VqUUdjNm5uVEVFcEw3QWJhVmxEUWVuNUFDSElIeDlEOEI5TS9XWTVMVkZK?=
 =?utf-8?B?ZnJHOEFablNua2VXdDhUcFpER21vR3V1RHNPclNUaWdvUVpXOXgrNS9xUEVY?=
 =?utf-8?B?Zlk2NnVnZ24vdjVsbXgzajNacXlDTmlvTWVzVlNpYW5jRWwxODh5M3lnS2lK?=
 =?utf-8?B?TlYwVExjOEo2S2VQcTdFVnpSVmFMM1o5WjVmSmdjS3doOW1NZmNkemxzVDNQ?=
 =?utf-8?B?dnNEUFVRby9VODFkLzNCQzRmSDBWR2VMd3lqZGM5RzZLT1lleC9tankzTzVq?=
 =?utf-8?B?Rmk0MWZvcXkxc3RvL0xHWERCQzloL05JOEJNSHExL0x5b2FsQi9FNzZqYzRX?=
 =?utf-8?B?VEZaNzFXSEJ5cGJMQ0srSTFsZU5jTVkwNWxTalRFWCtVcmlWTE9FRjdVZnp5?=
 =?utf-8?B?WWt3bllNVXRyb0FyMkQ2MndHNkdzdk9qNlhRdzhOd1ZoRmxzTkNBbk5KSElB?=
 =?utf-8?B?SU1FNXN6YkdSN0ZUYU1tZyt4cmx6cW14WWdqZnhSeml0VmQwQVVqdGJKbERW?=
 =?utf-8?B?eFB5ZWJjK0pHbEkvRWlSdjBWeXg5V2ZFK3JrbU0zbFdRZGt1UmxieVhKUm5r?=
 =?utf-8?B?YVBaMWhIU21VaVcxVUhBTkFGZDd4OTJtaHVwclB0bjNaRGZmZ0FWSlhoSU9M?=
 =?utf-8?B?cFJYUVVJb1JJcWs4Rlc4VHdwYUN5d0Yvd1l4ZHRibytDVkUrNjFUZ3BpSjZO?=
 =?utf-8?B?ZzZrNVQwVC85R2FrZUZ6a2haZXFpTUN0OCtqNzd2SStNeThNNnNyeFF1UkxW?=
 =?utf-8?B?dGUwamZ5bCs1QXJsU3owZjQrSUJSNXFzQXF5SEVhMm9NMGFhZFhqd0dycDVF?=
 =?utf-8?B?QzBremRBc280M25WZmw2d2NjTTJzSVYxZTJXVGxlbXJVOWtoaURtTlA0TUVM?=
 =?utf-8?B?UnNBK3JJWnlrdVhuOEUvUXJmSlVvRTA1cmNvc05NRjd5ek1DME1Ia05TNlRn?=
 =?utf-8?B?a0pxVE45THgzcjcxWGZsZ2JkcnVLTEtCK1NrcXVGc3N6c3JJQVhDUUx3SzU4?=
 =?utf-8?B?b3pHQms4UWhNOTZzcElnUlcrWDhmWkZBNmJMT3VNTDBIOThDVmZGNjB1RXNi?=
 =?utf-8?Q?e9v8hvi35VPyedI2pz8bnYY=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <C9A096243756C64C9D7833AF006DFE81@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e29bd7c-b547-4f69-f831-08de398b8b3a
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2025 14:34:23.2202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mdqNXyf1qSwZgVH4KgI3wuby+3eK+vA9lIeUcsSyRMngzJ6N+ZDRDLyf081nx8Fyn3yhuokkU3mYMIKPTzAeRgBD+A3z/wV1cvoe0+nejM0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6839
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

T24gVGh1LCAyMDI1LTExLTI3IGF0IDE5OjUwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFRo
ZSBtaW5pbXVtL21heGltdW0gY29tcHJlc3NlZCBCUFAgdmFsdWVzIGFyZSBhbGlnbmVkL2JvdW5k
ZWQgaW4NCj4gaW50ZWxfZHBfY29tcHV0ZV9saW5rX2JwcF9saW1pdHMoKSB0byB0aGUgY29ycmVz
cG9uZGluZyBzb3VyY2UNCj4gbGltaXRzLg0KPiBUaGUgbWluaW11bSBjb21wcmVzc2VkIEJQUCB2
YWx1ZSBkb2Vzbid0IGNoYW5nZSBhZnRlcndhcmRzLCBzbyBubw0KPiBuZWVkDQo+IHRvIGFsaWdu
IGl0IGFnYWluLCByZW1vdmUgdGhhdC4NCj4gDQo+IFRoZSBtYXhpbXVtIGNvbXByZXNzZWQgQlBQ
LCB3aGljaCBkZXBlbmRzIG9uIHRoZSBwaXBlIEJQUCB2YWx1ZSBzdGlsbA0KPiBuZWVkcyB0byBi
ZSBhbGlnbmVkLCBzaW5jZSB0aGUgcGlwZSBCUFAgdmFsdWUgY291bGQgY2hhbmdlIGFmdGVyIHRo
ZQ0KPiBhYm92ZSBsaW1pdHMgd2VyZSBjb21wdXRlZCwgdmlhIGludGVsX2RwX2ZvcmNlX2RzY19w
aXBlX2JwcCgpLiBVc2UNCj4gdGhlDQo+IGNvcnJlc3BvbmRpbmcgaGVscGVyIGZvciB0aGlzIGFs
aWdubWVudCBpbnN0ZWFkIG9mIG9wZW4tY29kaW5nIHRoZQ0KPiBzYW1lLg0KPiANCj4gU2lnbmVk
LW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAyMyArKysrKy0tLS0tLS0tLS0t
LS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9u
cygtKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmlu
ZGFwaWxsYWlAaW50ZWwuY29tPg0KDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gaW5kZXggOGI2MDE5OTRiYjEzOC4uZTM1MTc3NGY1MDhkYiAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtMjIxNywyMCArMjIx
NywxNSBAQCBzdGF0aWMgaW50IGRzY19jb21wdXRlX2NvbXByZXNzZWRfYnBwKHN0cnVjdA0KPiBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+IMKgCXN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0g
dG9faW50ZWxfZGlzcGxheShpbnRlbF9kcCk7DQo+IMKgCWNvbnN0IHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvciA9DQo+IHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uX3N0YXRlLT5jb25u
ZWN0b3IpOw0KPiDCoAlpbnQgbWluX2JwcF94MTYsIG1heF9icHBfeDE2LCBicHBfc3RlcF94MTY7
DQo+IC0JaW50IGxpbmtfYnBwX3gxNjsNCj4gwqAJaW50IGJwcF94MTY7DQo+IMKgCWludCByZXQ7
DQo+IMKgDQo+ICsJbWluX2JwcF94MTYgPSBsaW1pdHMtPmxpbmsubWluX2JwcF94MTY7DQo+IMKg
CW1heF9icHBfeDE2ID0gbGltaXRzLT5saW5rLm1heF9icHBfeDE2Ow0KPiDCoAlicHBfc3RlcF94
MTYgPSBpbnRlbF9kcF9kc2NfYnBwX3N0ZXBfeDE2KGNvbm5lY3Rvcik7DQo+IMKgDQo+IC0JLyog
Q29tcHJlc3NlZCBCUFAgc2hvdWxkIGJlIGxlc3MgdGhhbiB0aGUgSW5wdXQgRFNDIGJwcCAqLw0K
PiAtCWxpbmtfYnBwX3gxNiA9DQo+IGludGVsX2RwX291dHB1dF9mb3JtYXRfbGlua19icHBfeDE2
KHBpcGVfY29uZmlnLT5vdXRwdXRfZm9ybWF0LA0KPiBwaXBlX2JwcCk7DQo+IC0JbWF4X2JwcF94
MTYgPSBtaW4obWF4X2JwcF94MTYsIGxpbmtfYnBwX3gxNiAtIGJwcF9zdGVwX3gxNik7DQo+IC0N
Cj4gLQlkcm1fV0FSTl9PTihkaXNwbGF5LT5kcm0sICFpc19wb3dlcl9vZl8yKGJwcF9zdGVwX3gx
NikpOw0KPiAtCW1pbl9icHBfeDE2ID0gcm91bmRfdXAobGltaXRzLT5saW5rLm1pbl9icHBfeDE2
LA0KPiBicHBfc3RlcF94MTYpOw0KPiAtCW1heF9icHBfeDE2ID0gcm91bmRfZG93bihtYXhfYnBw
X3gxNiwgYnBwX3N0ZXBfeDE2KTsNCj4gKwltYXhfYnBwX3gxNiA9IGFsaWduX21heF9jb21wcmVz
c2VkX2JwcF94MTYoY29ubmVjdG9yLA0KPiBwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCwNCj4g
KwkJCQkJCcKgwqAgcGlwZV9icHAsDQo+IG1heF9icHBfeDE2KTsNCj4gwqANCj4gwqAJZm9yIChi
cHBfeDE2ID0gbWF4X2JwcF94MTY7IGJwcF94MTYgPj0gbWluX2JwcF94MTY7IGJwcF94MTYNCj4g
LT0gYnBwX3N0ZXBfeDE2KSB7DQo+IMKgCQlpZiAoIWludGVsX2RwX2RzY192YWxpZF9jb21wcmVz
c2VkX2JwcChpbnRlbF9kcCwNCj4gYnBwX3gxNikpDQo+IEBAIC0yMzQ2LDggKzIzNDEsNiBAQCBz
dGF0aWMgaW50DQo+IGludGVsX2VkcF9kc2NfY29tcHV0ZV9waXBlX2JwcChzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwLA0KPiDCoAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPQ0K
PiDCoAkJdG9faW50ZWxfY29ubmVjdG9yKGNvbm5fc3RhdGUtPmNvbm5lY3Rvcik7DQo+IMKgCWlu
dCBwaXBlX2JwcCwgZm9yY2VkX2JwcDsNCj4gLQlpbnQgZHNjX21pbl9icHA7DQo+IC0JaW50IGRz
Y19tYXhfYnBwOw0KPiDCoA0KPiDCoAlmb3JjZWRfYnBwID0gaW50ZWxfZHBfZm9yY2VfZHNjX3Bp
cGVfYnBwKGludGVsX2RwLCBsaW1pdHMpOw0KPiDCoA0KPiBAQCAtMjM2NywxNSArMjM2MCw5IEBA
IHN0YXRpYyBpbnQNCj4gaW50ZWxfZWRwX2RzY19jb21wdXRlX3BpcGVfYnBwKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+IMKgCXBpcGVfY29uZmlnLT5wb3J0X2Nsb2NrID0gbGltaXRzLT5t
YXhfcmF0ZTsNCj4gwqAJcGlwZV9jb25maWctPmxhbmVfY291bnQgPSBsaW1pdHMtPm1heF9sYW5l
X2NvdW50Ow0KPiDCoA0KPiAtCWRzY19taW5fYnBwID0gZnhwX3E0X3RvX2ludF9yb3VuZHVwKGxp
bWl0cy0NCj4gPmxpbmsubWluX2JwcF94MTYpOw0KPiAtDQo+IC0JZHNjX21heF9icHAgPSBmeHBf
cTRfdG9faW50KGxpbWl0cy0+bGluay5tYXhfYnBwX3gxNik7DQo+IC0NCj4gLQkvKiBDb21wcmVz
c2VkIEJQUCBzaG91bGQgYmUgbGVzcyB0aGFuIHRoZSBJbnB1dCBEU0MgYnBwICovDQo+IC0JZHNj
X21heF9icHAgPSBtaW4oZHNjX21heF9icHAsIHBpcGVfYnBwIC0gMSk7DQo+IC0NCj4gwqAJcGlw
ZV9jb25maWctPmRzYy5jb21wcmVzc2VkX2JwcF94MTYgPQ0KPiAtCQlmeHBfcTRfZnJvbV9pbnQo
bWF4KGRzY19taW5fYnBwLCBkc2NfbWF4X2JwcCkpOw0KPiArCQlhbGlnbl9tYXhfY29tcHJlc3Nl
ZF9icHBfeDE2KGNvbm5lY3RvciwgcGlwZV9jb25maWctDQo+ID5vdXRwdXRfZm9ybWF0LA0KPiAr
CQkJCQnCoMKgwqDCoCBwaXBlX2JwcCwgbGltaXRzLQ0KPiA+bGluay5tYXhfYnBwX3gxNik7DQo+
IMKgDQo+IMKgCXBpcGVfY29uZmlnLT5waXBlX2JwcCA9IHBpcGVfYnBwOw0KPiDCoA0KDQo=
