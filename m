Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD1A9B4817
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 12:16:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EF8A10E626;
	Tue, 29 Oct 2024 11:16:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aWn9RLIr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79A8A10E626
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 11:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730200577; x=1761736577;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=eOy585A+Zx3hiulW2/jzNGZSXDzKHopjsKz5f6QTsOg=;
 b=aWn9RLIrEv+rZs5TsaHP0KqdL6jU9zaTEBNlP/1fWzlimhQBWAQmvvRz
 jv5kfhyEK25rKsnOz8aIvUMKKj1TGPt0FqF2WKk5AxxWvFX33OOj0gdyT
 jE3zgKaGSg/dcCOMni2Qyi+kesjyKvvYe5Eq6q49AgTlem3Wqkwa8NDZq
 fWrunB1zO/aDsjXc3MGWIsrPPikVNKo15yAz0zaCJ/WyU1fZY1YIOEygt
 lMDklPqDB70qc4ONlvbWqKS9sVCkMZaYoN/y4Q84vj/hEQh7NBwZBAZ2H
 jO9AtuXSoGGqLtCKs8J2wTs5xir6V/aR3fkfn1Vy9xI50RQROtbtkaYzW g==;
X-CSE-ConnectionGUID: A4ZmtMvSRHWCP5HZ4s8Fgg==
X-CSE-MsgGUID: h+9xG8kwQoaubFyaZMuITQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="17468898"
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="17468898"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 04:16:16 -0700
X-CSE-ConnectionGUID: 9vxB+6L2RYmfmvY21T6G5w==
X-CSE-MsgGUID: IvvG4eXSQUSIQmpKjoJQXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="86542105"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 04:16:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 04:16:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 04:16:15 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 04:16:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SgsG1AX0h6H5GuczVvPDEXIq076vjgdzo2lXBZ/YrVJ6R0DMbYo6gBQjQvpnbUft1u7ME1jpxNaVpwf3zyBENy1/aU9ORAG5TPC7xmXMQxCWlZiaJZL1+DlLzekLA1Sg4cbN+tSwd+HJw6cWfOCq8fD7eJftJU2B1icMB4XMqOyqZqkRL9p5f9Rwfhlf6zgRVzuckuCxMsv4/U0K4hYOzHHvO+6KxcI6poNO3qx3ooHdMOdiU5hFBtDC9yCALXMdfAupIlXMie/Wz+OzCEhVdtjkZeXwsRnu5B05NtgpnPC25AKQk/tXd/Im1D2IxUnbqBkbJzIvG+NvYHA7CufXGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eOy585A+Zx3hiulW2/jzNGZSXDzKHopjsKz5f6QTsOg=;
 b=n65OeHPKC8FBM6ghueV+I4/AixfLCJRD7goQa9CqMv4XHMhWKdxjJz/0UFxAoI8x/7GcJxTBVogtddKs56nM3snnNkYHt5p5CWGku+pV57FxH0aiw52nyeL4WuTYEOToyY6T3w/BnzqdQhAx3BxzKXmYGgMyPuUrXJoccSO5EnJEnVl9cSeCOoP8pTd5Q8pv2gmhZ21dZ7I5eQDMprGSVIYWCLT0eUsdADEYhajRjlDmsi00MbGURT9qmT+0h4hpN88kAiXrL1cLhaNvK7sTlJmG2krrUQFOPNzCJvmGA6gDkUKqpUVuHlB78u50RWVqDvo2XLQITDj2QkD8aPeU3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS0PR11MB7957.namprd11.prod.outlook.com (2603:10b6:8:f8::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.29; Tue, 29 Oct 2024 11:16:13 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.023; Tue, 29 Oct 2024
 11:16:13 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [RESEND 0/4] drm/i915: add dedicated lock for each sideband
Thread-Topic: [RESEND 0/4] drm/i915: add dedicated lock for each sideband
Thread-Index: AQHbKeSPDlO2RquWR0eEhk8Yxg8B9bKdlCMA
Date: Tue, 29 Oct 2024 11:16:13 +0000
Message-ID: <b8c94f1da0b0da9b5dadbe01dd11772d02bb53d1.camel@intel.com>
References: <cover.1730193891.git.jani.nikula@intel.com>
In-Reply-To: <cover.1730193891.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS0PR11MB7957:EE_
x-ms-office365-filtering-correlation-id: 28732590-bd4f-4ec4-32a9-08dcf80b1957
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MG44MUVLeEQ1Y096UzZaRzBvTVNCUEVLeEZDUGErV2dURVYvWEJkODExNnVK?=
 =?utf-8?B?U2FVR2dock1yN2hHOGFucVdKdU1EZUNkbXUvV1VzTm1Wc1I0czZYczIxZjBC?=
 =?utf-8?B?UTNEb25xM0tYMDZ6VVE4Qm8xbVF1ZmJ1TnR2UzN5ZWFCUVpLdHVqOTdZdHRm?=
 =?utf-8?B?a1g2aWFHaW05d3R5MnlJbFNBcmlUUHFGa1N3Y1VnUS9jRGt3clBxcTlqWkxa?=
 =?utf-8?B?YitVR1BLVnllSjFYaTg1VGV0M3FJTG1jNUNCdVpPTXpqc3JKelZnRUM1dDdM?=
 =?utf-8?B?L3ZsdUxNN1dQaGU1UkQ4U1pjOTRuUTBhaFZ3aVZWamlISDZERVA3R2VJWk9u?=
 =?utf-8?B?Q0JhL1FZZUZJYm45U3VMY2xWVk01dkQ5M0gySTJHakc3TFRZc0YwL3VXaE9S?=
 =?utf-8?B?VHlyZlo3VC9uT0dxbUcxa3hrazg4cnJIUlpsMExGV3lXTElqWm1zWGhqL1Bk?=
 =?utf-8?B?YWRCWThpS2M3ODlrekhxLzV2aXI0TTBhc2JmbEV2Qy8wakMrb3hYVHhncE9B?=
 =?utf-8?B?ZUROYUpsSW8wblNHU0tISkV6cVZHb0p1MVNHeTZJOG5nMlV5YVJkakJRZDNC?=
 =?utf-8?B?R2JxcFVnZXdMVFJPL1p3b3R0M3Bud2k2ZFpZSEFtV1IyVENhbzF6eEdPUzlu?=
 =?utf-8?B?U3EvTWxuQi95andrcWVrbGZaSGFsL3l6Rm0wY1BDeElSNUhZUytZNk9JU3B3?=
 =?utf-8?B?RXpXK1VSV0dKZ09NaHFkQ1Y3SWM3ZmhnQWpnTW85UXZ4VWV3Q1ZaRmlaRTFo?=
 =?utf-8?B?emJTWSswdWY5dlF6T0xac1gwbFhHK2dyeVFDbW5LRnBWdjNFTHAxczRSOG1H?=
 =?utf-8?B?Q1RpYUV4REJydUo5L3YxQ1Y1TlRSTmdpbGNmVWhnYi82Vk9iNTlNVVpxNnhv?=
 =?utf-8?B?dmRRTTFrczRtaVBnd2FPbVBmb1NiMGx1emhUdG9WVW9KVjhDZ20ydTB4RTA4?=
 =?utf-8?B?N25Kb2tsYURqZ2pvVUV0Q3R2dDA1ZHZTU0hsU3J3UjJrd0c3UHk1a2tCK2hQ?=
 =?utf-8?B?ODZNQjJwQXZndE1CRFNPL0pRTFk3YjFIQ1NQcVNDQUVNQVpRVTBpMm90RG5M?=
 =?utf-8?B?WVpBWnB3OFRZTmpkY3c2UHR6cGZPNDF6SzFoZ0lXcWExKzNwY2RScVBwOTk1?=
 =?utf-8?B?eDI0SCs2NXpBUTN5cjZibTQ0ZTZDUjRwN3RrMUtZamc5Mm93MmlVZGVMYWd6?=
 =?utf-8?B?a2xPZVJ3Mm80eWh5c0tPaUZLN25qK3FtWUIxTWhWVExuN05BY1BURWFsQ2JD?=
 =?utf-8?B?K0FXNFFoT25lUUtJM0JpM2FmYlNaWEtDZmZoQU96bHV1Qmx0L3RiMndNY1R5?=
 =?utf-8?B?VTMyS2F5V2RCZFFNaThuODRJWE8xck5QeHU0K3o5Vm9mWjI0akpac3hJbFov?=
 =?utf-8?B?WlB3Tm9DZERRWjN3ck9xTE5HVUdsSDVSQk5jK3Z5WGVUZUQ4bTVEc2RZTExQ?=
 =?utf-8?B?aUtxM1pnL3I0Z21RVXBjNGpoNEpWQ2VXZDF5Z2syUGdDbjZUcHZYQjRKZS9W?=
 =?utf-8?B?aGMwdVh5Nkdwc3RObkZMTlpLMjZzSGc4MnhEamJOVzVUVnFhNkRQWHBzdzZZ?=
 =?utf-8?B?azBqdjJKbVdjZ1lMODh4bWx0NHVwOGd5TG5nMFZkNVpPTldsL3lTNlRURSs2?=
 =?utf-8?B?dVhPcjZMb1dZN3hkZ3E1VENZK21aY1VxRVZ3eHNXK0krQmc3ZTVwRlE1N3dC?=
 =?utf-8?B?ZHI5b3VadTI0U0RSclB2K2o1Q2RSOUROMWhNU1d2M2xoNWFndGR1VnVITFFa?=
 =?utf-8?B?RklyU0Y1a2N1MFh2MmFWYjNyRVRrYlFvd1VXSXNlRisreURVakgxL1dwTjFK?=
 =?utf-8?Q?8i3NYID3ZjUWGaih5IqCQIQ+9Agh0d6PB8Lyw=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dXlmTXprQlR5bGx5NXU4ZDh3SE9hNTRYUjR1NjhSaWdPeW5iZHpxNkFvcy9X?=
 =?utf-8?B?YVNQcEJQNXQ3UzAwNFhMbG5kOTluUDNOT2ZUYlFURG1BOGozWWREVmVNU21t?=
 =?utf-8?B?WUVyWktrME9XTkxOcnRpSnZOaStjU2U3U1ZjTW5uemxVcC9QbzFZdzVMNy9j?=
 =?utf-8?B?S2puR1B3eHdBUlh6OE9RdDU1QlgyYy9aVjhqNTk1Tmk1VlRaaXFRWEdZWko0?=
 =?utf-8?B?d1Z1YjdqcUJuaC92TEhXdG1nOW0xdWlMcVkrSU0zb3ZzVUxoUkN0eXlmSTJH?=
 =?utf-8?B?MmtIcnB3VjExUmNNRWZVQ2Zka2s2d1o5UlV5N051QkpDVDdCY2s5QVpycjZJ?=
 =?utf-8?B?NEYyb3ZlYkI5anFoaUdJamZqYUw4MW9XMnhwK1g2RFptd0xzTUsybkR3MVJR?=
 =?utf-8?B?S3JUZThkUkRxdkx5ZVJFbG5NRHJxbUpIc0luWkxlRlFQRkhVZm1vZWV5NTBt?=
 =?utf-8?B?WmJzVFF4bVZCOGs2eFZiTU5UTE9wNTJ5ZWFsRnZETlVqOUpxVE54QktZN1RW?=
 =?utf-8?B?MmV5eDVTL1Y5RTYvN2hOWUQ4alNIY01MYWFCNEZjbUQ1TTRUNGRnZ3lhVmw2?=
 =?utf-8?B?OVNUcFQ0WkF2MHAzVXBhL0YrNGpmQ28xL3F0WGN6U3BHWU1NY21WV3lScjJy?=
 =?utf-8?B?c3RlaHFNc1pLMGhyY0NiOXpnMEpCV01UQjFxY1RFUThIUGg4aWE5R3RUL0Vh?=
 =?utf-8?B?a0xDYlFwR2JSdGQ2T3RIU3RWZjI2TzdrUk1ZQUNFVWJFSFhhWHRob2p2TEhK?=
 =?utf-8?B?azhzWmYxZ1FDT2p3eTNUUUlURE9ZenVWM1dSa25iQWhCWEI3MTIxVG1sTkIy?=
 =?utf-8?B?Yll5SG1HcVJ1SWs2enllazk1Y2xSeW1YWnV4ZE52andJNzNod3VuUFZxWmVW?=
 =?utf-8?B?OHNHS0pqSTJZa3lKQkFGNXJPNTZSMDNrWUVQaWpDbGlwLzRuaXI1UlR1NWdw?=
 =?utf-8?B?ZWRCMllRS2lCK0hRZG10Ym5aV0EvTzlhamlnb1BCZTBJQzh3V1IwY01TM2sz?=
 =?utf-8?B?R3Zlb0NlTWpEY3hoYllLM0NRRU4zTENtVllEYm9XYSs5Mnd1VGpQR0c2ZVho?=
 =?utf-8?B?SEpBdHRiYVZGRXBVUGdaaTIxcFRZWXVWWFIvVzk4YngvZnlLVExXVlgvVTZ6?=
 =?utf-8?B?Y01PUzh0UGZEWW5nZElVRGNVSVF1NCtqRW1JbUhmdCtiS0R0NEp5ck5DbUkr?=
 =?utf-8?B?NHJKZzZLUWp6dWZ3UER3RjdXdVo5Z3hTRVJrOGtDV29DNGNYLy9yOUY1eFZx?=
 =?utf-8?B?MW1Hb3Z0MTlTQXJla3ZPSVp5R0ZoSnJFNkNFS3IwUGxOZHhqNVVmclQ4Ym9P?=
 =?utf-8?B?MXlST1RBUHVaWjk2Vk9BK2tDQkh0V3l3dHhZUDNEbWNaZzBWd25qUThKVFJM?=
 =?utf-8?B?Z2laTFlzWS9neURZUVpwSjhtcGpCRUR6YmlZZ0lPWkZYdU5OMzg3OUg0R1pX?=
 =?utf-8?B?ZkpQU1h4SHE4aUIwSkVyL3FLSUxFZmdYR2xrcG5jbDdQN3RLS1Q5MjBJR0ZW?=
 =?utf-8?B?a0gyRHQyL0RSU2dacWNRdlZ6V0ZKNnNuMnJ3azg2cG11Rkt3anpqTms2VEhz?=
 =?utf-8?B?QjFqd2pFZ2RyVG5VanNZZXlUZnhuaXZJK2FRckRmSzJJSDYzL3A0dmJHSk1i?=
 =?utf-8?B?cmZUcW05ZHlwZmtnN1ovbnM5QVBBbHZmUVNHTjlUci9RY2M3RXY1d3hrNU8z?=
 =?utf-8?B?SDd0Zk5OSER0bEpUN3VvTE9RUnlDQlR6UTQyaVBYanlvRzZ0MHA1djVpR0p3?=
 =?utf-8?B?RGRXU3BJSHIrd2RCenpOMGlCbEtwQnoyVVRVNjgzWXYwRGVJS0lkMU9POGhn?=
 =?utf-8?B?bXNLbS9kVHlrQlJ3WTkxVGNTUnp0RlVMT1FMVkQzMWxldC90MHRoZ0RqMkQ3?=
 =?utf-8?B?Z0l6K3Blbmd2Q3FuUGp3SU9Uc29TZWxtS0dGVU1sNTIxelFsc3JnRGlzRjNN?=
 =?utf-8?B?RjZMT2lZallsYkFkcmNZRk1kUDN0SGVlZENacGF5UjNnYjN3ei9mQTk3VSt1?=
 =?utf-8?B?U0VsWFNDRzNHOFoyWDhLT3plZmlzWGtsWUlVc3ZFbXVjeWs4cjVmYXJPVlVO?=
 =?utf-8?B?UGR3SXlCK28waVZxditCMW1qcDF1QzZvMElOa1JSWnFDRkhzTFpsMlVLWGVm?=
 =?utf-8?B?aDhPM05EcjdYVUZVZHJKdmljRnQ5YUVWRDVvRzlET0hMaG9WVjZJcG5tYjNI?=
 =?utf-8?B?VEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <884AD589F9F78F4B9FC5919D8BA4ABD0@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 28732590-bd4f-4ec4-32a9-08dcf80b1957
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 11:16:13.3088 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E4qyL2qG9uaPUBM4nm0N2Zgwfc89zIKvfxUMhrcrItG6vKQ1KJ8R3lZZYJq1m7Hdjhlf+K1F8N5VdhGhSu4lryWdDX9fpDYUK2Qoy+HYrK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7957
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

T24gVHVlLCAyMDI0LTEwLTI5IGF0IDExOjI1ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
SXQncyBtaXNsZWFkaW5nIHRvIHVzZSB0aGUgc2FtZSBzaWRlYmFuZCBtdXRleCBmb3IgTFBUL1dQ
VCBJT1NGLA0KPiBWTFYvQ0hWDQo+IElPU0YsIGFuZCBwdW5pdC4gQWRkIGRlZGljYXRlZCBsb2Nr
cyBmb3IgY2xhcml0eS4NCg0KRm9yIHRoZSB3aG9sZSBzZXJpZXM6DQoNClJldmlld2VkLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiANCj4gSmFuaSBO
aWt1bGEgKDQpOg0KPiDCoCBkcm0vaTkxNS9zYmk6IGFkZCBpbnRlbF9zYmlfe2xvY2ssdW5sb2Nr
fSgpDQo+IMKgIGRybS9pOTE1L3NiaTogYWRkIGEgZGVkaWNhdGVkIG11dGV4IGZvciBMUFQvV1BU
IElPU0Ygc2lkZWJhbmQNCj4gwqAgZHJtL2k5MTU6IGFkZCBhIGRlZGljYXRlZCBtdXRleCBmb3Ig
VkxWL0NIViBJT1NGIHNpZGViYW5kDQo+IMKgIGRybS9pOTE1OiBoaWRlIFZMViBQVU5JVCBJT1NG
IHNpZGViYW5kIHFvcyBoYW5kbGluZyBiZXR0ZXINCj4gDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3BjaF9yZWZjbGsuY8KgwqAgfCAyNiArKysrKysrKy0tLS0tLS0tLQ0KPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IHzCoCA4ICsrKystLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmjCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMTAgKysrKysrLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX3NiaS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyMiArKysrKysrKysr
KysrKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9zYmkuaMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCA0ICsrKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9zaWRl
YmFuZC5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAyOCArKysrKysrKysrKysrKystLQ0KPiAtLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L3Zsdl9zaWRlYmFuZC5owqDCoMKgwqDCoMKgwqDCoMKg
wqAgfMKgIDMgKysNCj4gwqA3IGZpbGVzIGNoYW5nZWQsIDc5IGluc2VydGlvbnMoKyksIDIyIGRl
bGV0aW9ucygtKQ0KPiANCg0K
